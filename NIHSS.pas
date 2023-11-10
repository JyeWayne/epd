unit NIHSS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls;

type
  TFrmNIHSS = class(TFrmMain)
    rdgChecktime: TRadioGroup;
    pgcNIHSS: TPageControl;
    tbcNIH1: TTabSheet;
    Panel1: TPanel;
    Shape14: TShape;
    Label40: TLabel;
    Button1: TButton;
    Button2: TButton;
    cbbNIHSScode: TComboBox;
    Label27: TLabel;
    lbetatol: TLabel;
    Button3: TButton;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Shape1: TShape;
    Label1: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Label6: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape7: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Shape8: TShape;
    Label22: TLabel;
    Label23: TLabel;
    Shape9: TShape;
    Label20: TLabel;
    Label52: TLabel;
    Shape10: TShape;
    Label32: TLabel;
    Label33: TLabel;
    Shape11: TShape;
    Label31: TLabel;
    Label34: TLabel;
    Shape12: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Shape13: TShape;
    Label38: TLabel;
    Label39: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    RBTAWARENESS0: TRadioButton;
    RBTAWARENESS1: TRadioButton;
    RBTAWARENESS2: TRadioButton;
    RBTAWARENESS3: TRadioButton;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    RBTANSWER0: TRadioButton;
    RBTANSWER1: TRadioButton;
    RBTANSWER2: TRadioButton;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    RBTCOMPLY0: TRadioButton;
    RBTCOMPLY1: TRadioButton;
    RBTCOMPLY2: TRadioButton;
    Panel5: TPanel;
    Label41: TLabel;
    GroupBox4: TGroupBox;
    RBTGAZE0: TRadioButton;
    RBTGAZE1: TRadioButton;
    RBTGAZE2: TRadioButton;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    RBTVISION0: TRadioButton;
    RBTVISION1: TRadioButton;
    RBTVISION2: TRadioButton;
    RBTVISION3: TRadioButton;
    Panel7: TPanel;
    GroupBox6: TGroupBox;
    RBTFACIAL_PALSY0: TRadioButton;
    RBTFACIAL_PALSY1: TRadioButton;
    RBTFACIAL_PALSY2: TRadioButton;
    RBTFACIAL_PALSY3: TRadioButton;
    Panel8: TPanel;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    RBTLEFTARM0: TRadioButton;
    RBTLEFTARM1: TRadioButton;
    RBTLEFTARM2: TRadioButton;
    RBTLEFTARM3: TRadioButton;
    RBTLEFTARM4: TRadioButton;
    RBTLEFTARMUN: TRadioButton;
    Edit1: TEdit;
    Panel9: TPanel;
    GroupBox8: TGroupBox;
    Label18: TLabel;
    RBTRIGHTARM0: TRadioButton;
    RBTRIGHTARM1: TRadioButton;
    RBTRIGHTARM2: TRadioButton;
    RBTRIGHTARM3: TRadioButton;
    RBTRIGHTARM4: TRadioButton;
    RBTRIGHTARMUN: TRadioButton;
    Edit2: TEdit;
    Panel10: TPanel;
    GroupBox10: TGroupBox;
    Label24: TLabel;
    RBTLEFTLEG0: TRadioButton;
    RBTLEFTLEG1: TRadioButton;
    RBTLEFTLEG2: TRadioButton;
    RBTLEFTLEG3: TRadioButton;
    RBTLEFTLEG4: TRadioButton;
    RBTLEFTLEGUN: TRadioButton;
    Edit4: TEdit;
    Panel11: TPanel;
    GroupBox11: TGroupBox;
    Label26: TLabel;
    RBTRIGHTLEG0: TRadioButton;
    RBTRIGHTLEG1: TRadioButton;
    RBTRIGHTLEG2: TRadioButton;
    RBTRIGHTLEG3: TRadioButton;
    RBTRIGHTLEG4: TRadioButton;
    RBTRIGHTLEGUN: TRadioButton;
    Edit5: TEdit;
    Panel12: TPanel;
    GroupBox9: TGroupBox;
    RBTATAXIA0: TRadioButton;
    RBTATAXIA1: TRadioButton;
    RBTATAXIA2: TRadioButton;
    RBTATAXIAUN: TRadioButton;
    Edit3: TEdit;
    Panel13: TPanel;
    GroupBox17: TGroupBox;
    RBTFEELING0: TRadioButton;
    RBTFEELING1: TRadioButton;
    RBTFEELING2: TRadioButton;
    Panel14: TPanel;
    GroupBox18: TGroupBox;
    RBTLANGUAGE_SKILLS0: TRadioButton;
    RBTLANGUAGE_SKILLS1: TRadioButton;
    RBTLANGUAGE_SKILLS2: TRadioButton;
    RBTLANGUAGE_SKILLS3: TRadioButton;
    Panel15: TPanel;
    GroupBox19: TGroupBox;
    Label37: TLabel;
    RBTDYSARTHRIA0: TRadioButton;
    RBTDYSARTHRIA1: TRadioButton;
    RBTDYSARTHRIA2: TRadioButton;
    RBTDYSARTHRIAUN: TRadioButton;
    Edit9: TEdit;
    Panel16: TPanel;
    Label51: TLabel;
    GroupBox20: TGroupBox;
    RBTATTENTION_LOSS0: TRadioButton;
    RBTATTENTION_LOSS1: TRadioButton;
    RBTATTENTION_LOSS2: TRadioButton;
    procedure RBTAWARENESS0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbbNIHSScodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbNIHSScodeChange(Sender: TObject);
    procedure rdgChecktimeClick(Sender: TObject);
    procedure RBTAWARENESS0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vsdoc,datachage : string;
    tatol: integer;
    procedure Scoring;
  public
    { Public declarations }
    scop :integer;
    arrdate,tPadate,ctdate : string;
  end;

var
  FrmNIHSS: TFrmNIHSS;

implementation

uses Commfunc, DBDM, ERsFunc, MySQLc, Global, MajorRept;

{$R *.dfm}

{ TFrmNIHSS }

procedure TFrmNIHSS.Scoring;
VAR
  I : integer;
begin
  tatol := 0;
  for i := 0 to FrmNIHSS.ComponentCount-1 do
  begin
    if FrmNIHSS.Components[i] is TRadioButton then
    begin
      if TRadioButton(FrmNIHSS.Components[i]).Checked then
        if TRadioButton(FrmNIHSS.Components[i]).Parent is TGroupBox then
        begin
          TGroupBox(TRadioButton(FrmNIHSS.Components[i]).Parent).Caption := TRadioButton(FrmNIHSS.Components[i]).Hint;
          if TRadioButton(FrmNIHSS.Components[i]).Hint <> 'UN' then
            tatol := tatol + StrToInt(TRadioButton(FrmNIHSS.Components[i]).Hint);
        end;
    end;
  end;
  lbetatol.Caption := IntToStr(tatol);
end;

procedure TFrmNIHSS.RBTAWARENESS0Click(Sender: TObject);
begin
  inherited;
  Scoring;
end;

procedure TFrmNIHSS.Button1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmNIHSS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmNIHSS.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmNIHSS := nil;
end;

procedure TFrmNIHSS.FormShow(Sender: TObject);
begin
  inherited;
  scop := 0;
  pgcNIHSS.ActivePageIndex := 0;
  cbbNIHSScode.Items.Clear;
  cbbNIHSScode.Items:= doctor;
  cbbNIHSScode.Items.Insert(0,' ');
  vsdoc := '';
  datachage := 'N';
  rdgChecktime.ItemIndex := 0;
  ScrollBox1.Perform(WM_VSCROLL,SB_TOP ,0);
end;

procedure TFrmNIHSS.Button2Click(Sender: TObject);
var
  strqry,seq_no :string;

begin
  inherited;

  if rdgChecktime.ItemIndex = 0 then
    scop := StrToInt(lbetatol.Caption);
  datachage :='N';
  DM.QryInsert.Close;
  DM.QryInsert.SQL.Clear;
  strqry := getlog_sql(23);
  SetParamter(strqry,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryInsert.SQL.Text := strqry;
  DM.QryInsert.Open;
  seq_no := IntToStr(DM.QryInsert.fieldbyname('a').AsInteger+1);
  DM.ADOLink.BeginTrans;
  DM.QryUpdate.Close;
  DM.QryUpdate.SQL.Clear;
  strqry := getlog_sql(24);
  SetParamter(strqry,'$DOC_CODE$',Qt(vsdoc));
  SetParamter(strqry,'$UPD_DATE$',Qt(ROCDate(Now,'')));
  SetParamter(strqry,'$UPD_TIME$',Qt(ROCTimes(Now,'')));
  SetParamter(strqry,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(strqry,'$CHK_POINT$',Qt(AddChar(IntToStr(rdgChecktime.ItemIndex),'0',2)));
  DM.QryUpdate.SQL.Text := strqry;
  DM.QryUpdate.ExecSQL;
  DM.QryInsert.Close;
  DM.QryInsert.SQL.Clear;
  strqry := getlog_sql(21);
  SetParamter(strqry,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(strqry,'$CHR_NO$',Qt(GetChrNo));
  SetParamter(strqry,'$SEQ_NO$',Qt(seq_no));
  SetParamter(strqry,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(strqry,'$AWARENESS$',Qt(GroupBox1.Caption));
  SetParamter(strqry,'$ANSWER$',Qt(GroupBox2.Caption));
  SetParamter(strqry,'$COMPLY$',Qt(GroupBox3.Caption));
  SetParamter(strqry,'$GAZE$',Qt(GroupBox4.Caption));
  SetParamter(strqry,'$VISION$',Qt(GroupBox5.Caption));
  SetParamter(strqry,'$FACIAL_PALSY$',Qt(GroupBox6.Caption));
  SetParamter(strqry,'$RIGHTARM$',Qt(GroupBox8.Caption));
  SetParamter(strqry,'$RIGHTARM_DESC$',Qt(Trim(Edit2.Text)));
  SetParamter(strqry,'$LEFTARM$',Qt(GroupBox7.Caption));
  SetParamter(strqry,'$LEFTARM_DESC$',Qt(Trim(Edit1.Text)));
  SetParamter(strqry,'$RIGHTLEG$',Qt(GroupBox11.Caption));
  SetParamter(strqry,'$RIGHTLEG_DESC$',Qt(Trim(Edit5.Text)));
  SetParamter(strqry,'$LEFTLEG$',Qt(GroupBox10.Caption));
  SetParamter(strqry,'$LEFTLEG_DESC$',Qt(Trim(Edit4.Text)));
  SetParamter(strqry,'$ATAXIA$',Qt(GroupBox9.Caption));
  SetParamter(strqry,'$ATAXIA_DESC$',Qt(trim(Edit3.Text)));
  SetParamter(strqry,'$TOTAL$',IntToStr(tatol));
  SetParamter(strqry,'$FEELING$',Qt(GroupBox17.Caption));
  SetParamter(strqry,'$LANGUAGE_SKILLS$',Qt(GroupBox18.Caption));
  SetParamter(strqry,'$DYSARTHRIA$',Qt(GroupBox19.Caption));
  SetParamter(strqry,'$DYSARTHRIA_DESC$',Qt(Trim(Edit9.Text)));
  SetParamter(strqry,'$ATTENTION_LOSS$',Qt(GroupBox20.Caption));
  if vsdoc = '' then
    SetParamter(strqry,'$DOC_CODE$',Qt(getUserId))
  else
    SetParamter(strqry,'$DOC_CODE$',Qt(vsdoc));
  SetParamter(strqry,'$UPD_DATE$',Qt(ROCDate(Now,'')));
  SetParamter(strqry,'$UPD_TIME$',Qt(ROCTimes(Now,'')));
  SetParamter(strqry,'$CNCL_FLAG$',Qt('N'));
  SetParamter(strqry,'$CHK_POINT$',Qt(AddChar(IntToStr(rdgChecktime.ItemIndex),'0',2)));
  DM.QryInsert.SQL.Text := strqry;
  try

    DM.QryInsert.ExecSQL;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
    ShowMessage('存檔失敗');
  end;

end;

procedure TFrmNIHSS.cbbNIHSScodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_return then
    SetCbbitem(cbbNIHSScode,cbbNIHSScode.Text);
  inherited;

end;

procedure TFrmNIHSS.cbbNIHSScodeChange(Sender: TObject);
begin
  inherited;
  vsdoc := ReturnId(cbbNIHSScode.Text);
end;

procedure TFrmNIHSS.rdgChecktimeClick(Sender: TObject);
var
  strqry : string;
  i : integer;
begin
  inherited;
  //if datachage = 'Y' then
  //  if MessageDlg('資料有異動是否存檔?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  //  begin

  //    exit;
  //  end;
  //  datachage :='N';
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    strqry := getlog_sql(22);
    SetParamter(strqry,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(strqry,'$CHK_POINT$',Qt(AddChar(IntToStr(rdgChecktime.ItemIndex),'0',2)));
    DM.QryTemp.SQL.Text := strqry;
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      for i := 0 to DM.QryTemp.FieldCount-1 do
      begin
         if DM.QryTemp.Fields[i].DisplayName = 'RIGHTARM_DESC' then
           Edit2.Text := DM.QryTemp.Fields[i].AsString
         else if DM.QryTemp.Fields[i].DisplayName = 'LEFTARM_DESC' then
           Edit1.Text := DM.QryTemp.Fields[i].AsString
         else if DM.QryTemp.Fields[i].DisplayName = 'RIGHTLEG_DESC' then
           Edit5.Text := DM.QryTemp.Fields[i].AsString
         else if DM.QryTemp.Fields[i].DisplayName = 'LEFTLEG_DESC' then
           Edit4.Text := DM.QryTemp.Fields[i].AsString
         else if DM.QryTemp.Fields[i].DisplayName = 'ATAXIA_DESC' then
           Edit3.Text := DM.QryTemp.Fields[i].AsString
         else if DM.QryTemp.Fields[i].DisplayName = 'DOC_CODE' then
           SetCbbitem(cbbNIHSScode,DM.QryTemp.Fields[i].AsString)
         else if DM.QryTemp.Fields[i].DisplayName = 'TOTAL' then
         begin
           lbetatol.Caption:= DM.QryTemp.Fields[i].AsString;
           if rdgChecktime.ItemIndex = 0 then
             scop := StrToInt(lbetatol.Caption);
         end
         else if DM.QryTemp.Fields[i].DisplayName = 'DYSARTHRIA_DESC' then
           Edit9.Text:= DM.QryTemp.Fields[i].AsString
         else
         begin
           if FrmNIHSS.FindComponent('RBT'+DM.QryTemp.Fields[i].DisplayName+Trim(DM.QryTemp.Fields[i].AsString)) <> nil then
             TRadioButton(FrmNIHSS.FindComponent('RBT'+DM.QryTemp.Fields[i].DisplayName+Trim(DM.QryTemp.Fields[i].AsString))).Checked := True;
         end;
      end;
    end
    else
    begin
      for i := 0 to FrmNIHSS.ComponentCount-1 do
      begin
        if FrmNIHSS.Components[i] is TRadioButton then
          if TRadioButton(FrmNIHSS.Components[i]).Hint = '0' then
             TRadioButton(FrmNIHSS.Components[i]).Checked := true;
        if FrmNIHSS.Components[i] is TEdit then
          TEdit(FrmNIHSS.Components[i]).Text := '';
      end;
      cbbNIHSScode.ItemIndex := -1;
      lbetatol.Caption := '0';
    end;
  Scoring;  
end;

procedure TFrmNIHSS.RBTAWARENESS0MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  datachage :='Y';
end;

procedure TFrmNIHSS.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmNIHSS.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmNIHSS.Button3Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmMajorRept) then
    FrmMajorRept := TFrmMajorRept.Create(Self);
  FrmMajorRept.ADOQuery1.Close;
  FrmMajorRept.ADOQuery1.SQL.Clear;
  FrmMajorRept.ADOQuery1.SQL.Add('select * from nihss_log where fee_no='+Qt(GetFeeNo)+' and  cncl_flag=''N'' order by chk_point');
  FrmMajorRept.ADOQuery1.Open;
  if FrmMajorRept.ADOQuery1.IsEmpty then
  begin
    ShowMessage('找不到資料');
    FreeAndNil(FrmMajorRept);
  end
  else
  begin
    FrmMajorRept.QRLabel40.Caption := GetChrNo; //病歷號
    FrmMajorRept.QRLabel41.Caption := GetPatName; //姓名
    FrmMajorRept.QRLabel42.Caption := GetBirth; //生日
    FrmMajorRept.QRLabel54.Caption := SexType(Getsex01); //性別
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select m_no,start_date,start_time from major_log where fee_no='+Qt(GetFeeNo)+' and kind=''C'' and cncl_flag=''N'' and m_no in(1,6,11)');
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      while not DM.QryTemp.Eof do
      begin
        if DM.QryTemp.FieldByName('m_no').AsString = '1' then
          FrmMajorRept.QRLabel6.Caption := dateformat(0,ROCToDate(DM.QryTemp.FieldByName('start_date').AsString))+' '+copy(DM.QryTemp.FieldByName('start_time').AsString,1,2)+':'+copy(DM.QryTemp.FieldByName('start_time').AsString,3,2); //到院時間
        if DM.QryTemp.FieldByName('m_no').AsString = '6' then
          if DM.QryTemp.FieldByName('start_date').AsString = '' then
            FrmMajorRept.QRLabel55.Caption := ''
          else
            FrmMajorRept.QRLabel55.Caption := dateformat(0,ROCToDate(DM.QryTemp.FieldByName('start_date').AsString))+' '+copy(DM.QryTemp.FieldByName('start_time').AsString,1,2)+':'+copy(DM.QryTemp.FieldByName('start_time').AsString,3,2);//t-PA施打時間時間:
        if DM.QryTemp.FieldByName('m_no').AsString = '11' then
          if DM.QryTemp.FieldByName('start_date').AsString = '' then
            FrmMajorRept.QRLabel3.Caption := ''
          else
            FrmMajorRept.QRLabel3.Caption := dateformat(0,ROCToDate(DM.QryTemp.FieldByName('start_date').AsString))+' '+copy(DM.QryTemp.FieldByName('start_time').AsString,1,2)+':'+copy(DM.QryTemp.FieldByName('start_time').AsString,3,2);;//完成影像時間:
        DM.QryTemp.Next;
      end;
    end
    else
    begin
      FrmMajorRept.QRLabel6.Caption := arrdate;
      FrmMajorRept.QRLabel55.Caption := tPadate;
      FrmMajorRept.QRLabel3.Caption := ctdate;
    end;
    FrmMajorRept.PrepareSQL('NIHSS');
  end;
end;

procedure TFrmNIHSS.FormCreate(Sender: TObject);
begin
  inherited;
//DoubleBuffered := False;
end;

end.
