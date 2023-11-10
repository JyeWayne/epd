unit MAJORTRA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, ComCtrls, ExtCtrls, Buttons, Contnrs, ADODB;

type
  TFrmMAJORTRA = class(TFrmMain)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    GroupBox5: TGroupBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    Edit4: TEdit;
    GroupBox6: TGroupBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    Edit5: TEdit;
    GroupBox7: TGroupBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    Edit6: TEdit;
    Edit12: TEdit;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox8: TGroupBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    Edit10: TEdit;
    GroupBox9: TGroupBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    Edit11: TEdit;
    GroupBox10: TGroupBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    GroupBox11: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox3: TCheckBox;
    CheckBox6: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function insertFirstTRAUMA(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
  public
    { Public declarations }
    confwrit,havdata: Boolean;
  end;

var
  FrmMAJORTRA: TFrmMAJORTRA;

implementation

uses REFERRAL_Rept, DBDM, Commfunc, Global, MyUser, MySQLc;

{$R *.dfm}

procedure TFrmMAJORTRA.BitBtn1Click(Sender: TObject);
var
  i,seqno :integer;
  tempstr,DD,DTIM,ALLNO :string;
  SQLo : TObjectList;
  sqls : TStringList;
  all_no,SEQ_no :integer;
  TempQ : TAdoQuery;
  chk1,chk2,chk3 : Boolean;
begin
  inherited;
  //check data
  chk1 := False;
  chk2 := False;
  chk3 := False;
  for i := 1 to 7 do
    if (i <> 3) and (i <> 6) then
      if TCheckBox(FrmMAJORTRA.FindComponent('CheckBox'+IntToStr(i))).Checked then
        chk1 := True;
  for i := 8 to 12 do
    if TCheckBox(FrmMAJORTRA.FindComponent('CheckBox'+IntToStr(i))).Checked then
      chk2 := True;
  for i := 27 to 34 do
    if TCheckBox(FrmMAJORTRA.FindComponent('CheckBox'+IntToStr(i))).Checked then
      chk3 := True;
  if (chk1) and (chk2) and (chk3) then
  begin
    DD := ROCDate(Now,'');
    DTIM:= ROCTimes(Now,'');
    SQLo := TObjectList.Create;
    TempQ := TAdoQuery.Create(self);
    TempQ.Connection := Dm.ADOLink;
    TempQ.Close;
    TempQ.SQL.Clear;
    TempQ.SQL.Add('select max(nvl(SEQ_NO,0)) as seq_no,max(nvl(allorder_no,0)) as all_no from EPD_TABULATION where fee_no='+qt(getFeeNo)+' and order_date='+qt(GetEpdDate));
    TempQ.Open;
    all_no := TempQ.FieldByName('all_no').AsInteger;
    SEQ_no := TempQ.FieldByName('seq_no').AsInteger;
    Inc(all_no);

    for i := FrmMAJORTRA.ComponentCount-1 downto  0 do
    begin
      tempstr := '';
      if (FrmMAJORTRA.Components[i] is TEdit) then
      begin
        if trim(TEdit(FrmMAJORTRA.Components[i]).Text) <> '' then
        begin
          Inc(SEQ_no);
          SQLs := TStringList.Create;
          SQLs.Add(insertFirstTRAUMA('REFERRAL', trim(TEdit(FrmMAJORTRA.Components[i]).Text) + '_' + TEdit(FrmMAJORTRA.Components[i]).Name,'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
          SQLo.Add(SQLs);
        end;
      end;
      if (FrmMAJORTRA.Components[i] is TCheckBox) then
      begin
        if TCheckBox(FrmMAJORTRA.Components[i]).Checked then
        begin
          tempstr := 'Y';
          Inc(SEQ_no);
          SQLs := TStringList.Create;
          SQLs.Add(insertFirstTRAUMA('REFERRAL',tempstr +'_'+ trim(TCheckBox(FrmMAJORTRA.Components[i]).Name),'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
          SQLo.Add(SQLs);
        end;
      end;
    end;
    if not DM.ExecSQL(SQLo) then
    begin
      ShowMessage('寫入資料庫失敗');
      SQLo.Free;
      exit;
    end
    ELSE
    BEGIN
      SQLo.Free;
      //PRINT
      confwrit := True;
      havdata := true;
      if not assigned(FrmREFERRAL_Rept) then
        FrmREFERRAL_Rept := TFrmREFERRAL_Rept.Create(Self);
      FrmREFERRAL_Rept.QRLabel2.Caption := Label1.Caption+Label2.Caption;
      FrmREFERRAL_Rept.QRLabel3.Caption := Label3.Caption;
      FrmREFERRAL_Rept.QRLabel5.Caption := Label6.Caption;
      FrmREFERRAL_Rept.QRLabel6.Caption := Label5.Caption;
      FrmREFERRAL_Rept.QRLabel4.Caption := '轉出日期:'+ROCDate(DateTimePicker1.DateTime,'/')+' '+ROCTime(DateTimePicker2.DateTime,':');
      FrmREFERRAL_Rept.PrepareSQL;
      if assigned(FrmREFERRAL_Rept) then
        FrmREFERRAL_Rept := nil;
    END;
    Self.Close;
  end
  else
  begin
    ShowMessage('第一、二、五項為必填資料請填寫');
  end;
end;

function TFrmMAJORTRA.insertFirstTRAUMA(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
var
  q_str : string;
begin
  q_str := 'INSERT INTO EPD_TABULATION(FEE_NO,KIND,SEQ_NO,TEXT,ORDER_SORT,ALLORDER_NO,UPD_OPER,UPD_DATE,UPD_TIME,VS_CODE,ORDER_DATE,ORDER_TIME,DEL_FLAG)' +
           ' VALUES($FEE_NO$,$KIND$,$SEQ_NO$,$TEXT$,$ORDER_SORT$,$ALLORDER_NO$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$VS_CODE$,$ORDER_DATE$,$ORDER_TIME$,$DEL_FLAG$) ';
  SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
  SetParamter(q_str,'$KIND$',qt(kind));
  SetParamter(q_str,'$SEQ_NO$',QT(first));
  SetParamter(q_str,'$TEXT$',qt(TEXT));
  SetParamter(q_str,'$ORDER_SORT$',qt(STATUS));
  SetParamter(q_str,'$ALLORDER_NO$',QT(ALLNO));
  SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
  SetParamter(q_str,'$UPD_DATE$',qt(UPD_DATE));
  SetParamter(q_str,'$UPD_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$VS_CODE$',qt(GetVsCode));
  SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
  SetParamter(q_str,'$ORDER_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$DEL_FLAG$',qt('N'));
  Result := q_str;
end;

procedure TFrmMAJORTRA.BitBtn2Click(Sender: TObject);
begin
  inherited;
  //if havdata then
    Close
 // else
  //  ShowMessage('填寫資料才可離開');
end;

procedure TFrmMAJORTRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmMAJORTRA.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmMAJORTRA := nil;
end;

procedure TFrmMAJORTRA.FormShow(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Label1.Caption := SetSys.ReadString('SYSTEM','HOSPTAILNAME','');
  Label3.Caption := '姓名:'+GetPatName;
  Label6.Caption := '病歷號:'+GetChrNo;
  Label5.Caption := '生日:'+GetBirth;
  DateTimePicker1.DateTime := Now;
  DateTimePicker2.DateTime := Now;
  confwrit := False;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from EPD_TABULATION where kind = ''REFERRAL'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''REFERRAL'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    havdata := true;
    while not DM.QryTemp.Eof do
    begin
      for i := FrmMAJORTRA.ComponentCount-1 downto  0 do
      begin
        if (FrmMAJORTRA.Components[i] is TEdit) then
           if TEdit(FrmMAJORTRA.Components[i]).Name = ReturnName((trim(DM.QryTemp.FieldByName('text').AsString))) then
              TEdit(FrmMAJORTRA.Components[i]).Text := ReturnId(trim(DM.QryTemp.FieldByName('text').AsString));
        if (FrmMAJORTRA.Components[i] is TCheckBox) then
          if TCheckBox(FrmMAJORTRA.Components[i]).Name = ReturnName(trim(DM.QryTemp.FieldByName('text').AsString)) then
            if ReturnId(trim(DM.QryTemp.FieldByName('text').AsString)) ='Y' then
            begin
              TCheckBox(FrmMAJORTRA.Components[i]).Checked := True;
            end
            else
            begin
              TCheckBox(FrmMAJORTRA.Components[i]).Checked := False;
            end;
      end;
      DM.QryTemp.Next;
    end;
  end
  else
  begin//沒資料
    for i := FrmMAJORTRA.ComponentCount-1 downto  0 do
    begin
      if (FrmMAJORTRA.Components[i] is TEdit) then
        TEdit(FrmMAJORTRA.Components[i]).Text := '';
      if (FrmMAJORTRA.Components[i] is TCheckBox) then
        TCheckBox(FrmMAJORTRA.Components[i]).Checked := False;
    end;
    DateTimePicker1.DateTime := Now;
    DateTimePicker2.DateTime := Now;
  end;
end;

end.
