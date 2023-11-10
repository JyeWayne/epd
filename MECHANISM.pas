unit MECHANISM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, CheckLst, ExtCtrls, ComCtrls, DateUtils, Mask;

type
  TFrmMECHANISM = class(TFrmMain)
    Panel9: TPanel;
    RBAMI: TRadioButton;
    RBCVA: TRadioButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckListBox2: TCheckListBox;
    CheckBox10: TCheckBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CheckListBox1: TCheckListBox;
    Edit4: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    CheckBox1: TCheckBox;
    MaskEdit2: TMaskEdit;
    Bevel1: TBevel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FEE_NO,incident_dt,OPNMAJ : STRING;
  end;

var
  FrmMECHANISM: TFrmMECHANISM;

implementation

uses Commfunc, DBDM, ERsFunc, Global, MySQLc;

{$R *.dfm}

procedure TFrmMECHANISM.Button1Click(Sender: TObject);
var
  sql,DTL_NO,CHKSTR,compname,trm :string;
  i,vh,vs : integer;
  ok : Boolean;
begin
  inherited;
    ok := False;
    OPNMAJ := 'N';
    CHKSTR := '';
    compname := '';
    DTL_NO := '0';
    FOR I := 0 TO CheckListBox2.Count-1 DO
    BEGIN
      IF CheckListBox2.Checked[I] THEN
      BEGIN
        CHKSTR := CHKSTR + CheckListBox2.Items.Strings[I]+'_';
        compname := compname +CheckListBox2.Items.Names[i]+'_';
        ok := True;
      END;
    END;
    IF CheckBox10.Checked THEN
    BEGIN
      ok := True;
      CHKSTR := CHKSTR + CheckBox10.Caption+':'+Trim(Edit3.Text)+'_';
      compname := compname +CheckBox10.Name+'_';
    END;
    if not ok then
    begin
      ShowMessage('請勾選"事故類別"');
      exit;
    end;
    ok := false;
    if CheckBox1.Checked then
    begin
       CHKSTR := CHKSTR + CheckBox1.Caption;
       chtrm := 'N';
       ok := True;
    end
    else
    begin
      FOR I := 0 TO CheckListBox1.Count-1 DO
      BEGIN
        IF CheckListBox1.Checked[I] THEN
        BEGIN
          CHKSTR := CHKSTR + trim(CheckListBox1.Items.Strings[I])+'_';
          compname := compname +CheckListBox1.Items.Names[i]+'_';
          OPNMAJ := 'Y';
          chtrm := 'Y';
          ok := True;
        END;
      END;
      IF Edit4.Text <> '' THEN
        CHKSTR := CHKSTR + '其他:'+ TRIM(Edit4.Text)+'_';
    end;

    if not ok then
    begin
      ShowMessage('請勾選"Trauma blue"選項');
      exit;
    end;

    sql := getMAJOR_sql(2);
    SetParamter(sql,'$FEE_NO$',QT(fee_no));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text := sql;
    DM.QryTemp.Open;
    DTL_NO := NullStrTo(DM.QryTemp.FieldByName('SEQ_NO').AsString,'0');
    DTL_NO := IntToStr(StrToInt(DTL_NO)+1);
    //if incident_dt<>'' then
    //vh :=(MinutesBetween(now,ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)))) div 60;
    //vs :=(MinutesBetween(now,ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)))) mod 60;
    if (MaskEdit1.Text<>'') and (MaskEdit2.Text<> '') then
    begin
      vh :=(MinutesBetween(now,ROCToDate(MaskEdit1.Text)+ROCToTime(MaskEdit2.Text))) div 60;
      vs :=(MinutesBetween(now,ROCToDate(MaskEdit1.Text)+ROCToTime(MaskEdit2.Text))) mod 60;
    end;
    sql := getMAJOR_sql(6);//查詢
    SetParamter(sql,'$FEE_NO$',QT(fee_no));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text := sql;
    DM.QryTemp.Open;
    if DM.QryTemp.IsEmpty then
    begin
      sql := getMAJOR_sql(5);//insert
      SetParamter(sql,'$SEQ_NO$',DTL_NO);
      SetParamter(sql,'$KIND$',qt('T'));
      SetParamter(sql,'$FEE_NO$',qt(fee_no));
      SetParamter(sql,'$MAJOR_NO$','3');
      SetParamter(sql,'$MAJOR_NAME$',qt('Trauma'));
      SetParamter(sql,'$START_DATE$',qt(ROCDate(Now,'')));
      SetParamter(sql,'$START_TIME$',qt(ROCTimes(Now,'')));
      SetParamter(sql,'$END_DATE$',qt(''));
      SetParamter(sql,'$END_TIME$',qt(''));
      SetParamter(sql,'$TIME_SUM$',qt(AddChar(IntToStr(vh),'0',2)+':'+AddChar(IntToStr(vs),'0',2)));
      SetParamter(sql,'$DOC_CODE$',qt(getUserId));
      SetParamter(sql,'$START_FLAG$',qt(OPNMAJ));
      SetParamter(sql,'$NOTE$',qt(CHKSTR));
      SetParamter(sql,'$OCCUR_DATE$',qt(MaskEdit1.Text));
      SetParamter(sql,'$OCCUR_TIME$',qt(MaskEdit2.Text));

      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      dm.QryInsert.SQL.Text := SQL;
    end
    else
    begin
      sql := getMAJOR_sql(7);//update
      SetParamter(sql,'$START_DATE$',qt(ROCDate(Now,'')));
      SetParamter(sql,'$START_TIME$',qt(ROCTimes(Now,'')));
      SetParamter(sql,'$END_DATE$',qt(''));
      SetParamter(sql,'$END_TIME$',qt(''));
      SetParamter(sql,'$TIME_SUM$',qt(AddChar(IntToStr(vh),'0',2)+':'+AddChar(IntToStr(vs),'0',2)));
      SetParamter(sql,'$DOC_CODE$',qt(getUserId));
      SetParamter(sql,'$START_FLAG$',qt(OPNMAJ));
      SetParamter(sql,'$NOTE$',qt(CHKSTR));
      SetParamter(sql,'$OCCUR_DATE$',qt(MaskEdit1.Text));
      SetParamter(sql,'$OCCUR_TIME$',qt(MaskEdit2.Text));
      SetParamter(sql,'$FEE_NO$',qt(fee_no));
      SetParamter(sql,'$KIND$',qt('T'));
      SetParamter(sql,'$MAJOR$','3');
      SetParamter(sql,'$MAJORNAME$',qt('Trauma'));
      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      dm.QryInsert.SQL.Text := SQL;
    end;

    //if OPNMAJ = 'Y' then//啟動重症
    //begin
    //  setstatus(GetFeeNo,'9','1_0_0_T_N_Trauma_10');

    //end;
    DM.ADOLink.BeginTrans;
    try
      DM.QryInsert.ExecSQL;
    except
      DM.ADOLink.RollbackTrans;
    end;
   DM.ADOLink.CommitTrans;
   Self.Close;
end;

procedure TFrmMECHANISM.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmMECHANISM := nil;
end;

procedure TFrmMECHANISM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmMECHANISM.FormShow(Sender: TObject);
begin
  inherited;
  Edit2.Text := incident_dt;
  MaskEdit1.Text := ROCDate(Now,'');
end;

procedure TFrmMECHANISM.CheckBox1Click(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if CheckBox1.Checked then
  begin
    Edit4.Text := '';
    Edit4.Enabled := False;
    for i := 0 to CheckListBox1.Count-1 do
      CheckListBox1.Checked[i] := False;
  end;

end;

procedure TFrmMECHANISM.CheckListBox1ClickCheck(Sender: TObject);
var
  i :integer;
  ch : Boolean;
begin
  inherited;
  ch := false;
  for i := 0 to CheckListBox1.Count-1 do
  begin
    if CheckListBox1.Checked[i] then
    begin
      //108.10.23 shh ITe 11138 modify 啟動條件 by 急診
      //if CheckListBox1.Items.Strings[i]='其他啟動Trauma blue條件' then
      if CheckListBox1.Items.Strings[i]='其它臨床判斷' then
         Edit4.Enabled := True;
      ch := True;
    end;
  end;
  if ch then
    CheckBox1.Checked := False;
end;

procedure TFrmMECHANISM.Button2Click(Sender: TObject);
begin
  inherited;
  OPNMAJ := 'C';
  chtrm := 'N';
  Self.Close;
end;

end.
