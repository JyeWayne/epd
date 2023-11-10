unit Trauma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Buttons, ExtDlgs, Contnrs,
  QuickRpt, QRCtrls, ADODB;

type
  TFrmTrauma = class(TFrmMain)
    ScrollBox1: TScrollBox;
    Pnlbasic: TPanel;
    Pnlprimary: TPanel;
    PnlAdjunct: TPanel;
    PnlSecondary: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label10: TLabel;
    Panel3: TPanel;
    B_04_01_1_1: TLabel;
    Panel4: TPanel;
    B_05_01_1_1: TLabel;
    Panel5: TPanel;
    B_06_01_1_1: TLabel;
    Panel6: TPanel;
    B_07_01_1_1: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    LABEL53: TLabel;
    C_03_01_3_1: TEdit;
    C_04_01_1_1: TLabel;
    C_04_02_2_1: TCheckBox;
    C_04_03_2_1: TCheckBox;
    C_04_04_2_1: TCheckBox;
    Label55: TLabel;
    C_04_07_3_1: TEdit;
    Label56: TLabel;
    C_04_08_3_1: TEdit;
    C_04_05_2_1: TCheckBox;
    C_04_06_2_1: TCheckBox;
    Panel9: TPanel;
    Label57: TLabel;
    C_05_01_3_1: TEdit;
    C_06_01_1_1: TLabel;
    C_06_02_2_1: TCheckBox;
    C_06_06_2_1: TCheckBox;
    C_06_03_2_1: TCheckBox;
    C_06_04_2_1: TCheckBox;
    C_06_05_2_1: TCheckBox;
    C_06_07_3_1: TEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    D_03_01_2_1: TCheckBox;
    D_03_02_3_1: TEdit;
    D_03_03_2_1: TCheckBox;
    D_03_04_2_1: TCheckBox;
    D_03_05_2_1: TCheckBox;
    D_03_06_2_1: TCheckBox;
    D_03_07_2_1: TCheckBox;
    D_03_08_3_1: TEdit;
    Label61: TLabel;
    D_03_09_3_1: TEdit;
    Panel12: TPanel;
    D_04_01_1_1: TLabel;
    D_05_04_2_1: TCheckBox;
    D_05_02_2_1: TCheckBox;
    D_05_05_2_1: TCheckBox;
    D_05_06_2_0: TCheckBox;
    D_05_08_2_1: TCheckBox;
    D_05_09_2_0: TCheckBox;
    D_05_01_1_1: TLabel;
    Label64: TLabel;
    D_04_02_3_1: TEdit;
    D_04_03_3_1: TEdit;
    D_04_04_3_1: TEdit;
    D_04_05_3_1: TEdit;
    D_04_06_3_1: TEdit;
    D_04_07_3_1: TEdit;
    D_05_03_3_1: TEdit;
    D_05_07_3_1: TEdit;
    Shape1: TShape;
    B_04_02_1_1: TLabel;
    B_04_03_1_0: TLabel;
    B_04_04_2_0: TCheckBox;
    B_04_05_2_0: TCheckBox;
    B_04_06_2_0: TCheckBox;
    Label13: TLabel;
    B_04_07_2_0: TCheckBox;
    B_04_08_2_1: TCheckBox;
    Label14: TLabel;
    B_04_09_2_0: TCheckBox;
    B_04_10_2_0: TCheckBox;
    Label15: TLabel;
    B_04_11_2_0: TCheckBox;
    B_04_12_2_1: TCheckBox;
    Label16: TLabel;
    B_04_13_2_0: TCheckBox;
    B_04_14_2_1: TCheckBox;
    B_04_15_2_0: TCheckBox;
    B_04_16_2_1: TCheckBox;
    B_04_17_1_1: TLabel;
    B_04_18_2_0: TCheckBox;
    B_04_19_2_0: TCheckBox;
    Label18: TLabel;
    B_04_20_2_0: TCheckBox;
    B_04_21_2_1: TCheckBox;
    Label19: TLabel;
    B_04_22_2_0: TCheckBox;
    B_04_23_2_0: TCheckBox;
    Label20: TLabel;
    B_04_24_2_0: TCheckBox;
    B_04_25_2_1: TCheckBox;
    Label21: TLabel;
    B_04_30_3_0: TCheckBox;
    Label22: TLabel;
    B_04_26_3_0: TEdit;
    Label23: TLabel;
    B_04_27_3_1: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    B_04_28_3_1: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    B_04_29_3_1: TEdit;
    B_04_31_3_1: TEdit;
    Shape2: TShape;
    B_03_02_2_1: TCheckBox;
    B_03_03_2_1: TCheckBox;
    B_03_04_2_0: TCheckBox;
    B_03_07_2_0: TCheckBox;
    B_03_05_3_0: TEdit;
    B_03_06_3_0: TEdit;
    B_03_08_3_1: TEdit;
    Label12: TLabel;
    B_03_07_1_1: TLabel;
    Shape3: TShape;
    B_01_01_1_1: TLabel;
    Label9: TLabel;
    B_02_01_3_1: TEdit;
    Shape4: TShape;
    C_01_01_1_1: TLabel;
    Label52: TLabel;
    C_02_01_3_1: TEdit;
    Shape5: TShape;
    D_01_01_1_1: TLabel;
    Label60: TLabel;
    D_02_01_3_1: TEdit;
    Shape6: TShape;
    Label1: TLabel;
    A_01_01_3_0: TEdit;
    Label2: TLabel;
    A_01_02_3_0: TEdit;
    Label3: TLabel;
    A_01_03_3_0: TEdit;
    Label4: TLabel;
    A_01_04_3_0: TEdit;
    Label5: TLabel;
    A_01_05_3_1: TEdit;
    Label6: TLabel;
    A_02_01_3_1: TEdit;
    A_03_01_2_0: TCheckBox;
    A_03_02_2_0: TCheckBox;
    Label7: TLabel;
    A_03_03_3_0: TEdit;
    A_03_04_1_1: TLabel;
    Shape7: TShape;
    Label29: TLabel;
    B_05_02_3_0: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    B_05_03_3_1: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    B_05_04_3_1: TEdit;
    Label34: TLabel;
    B_05_05_2_1: TCheckBox;
    B_05_09_2_0: TCheckBox;
    B_05_10_2_0: TCheckBox;
    B_05_11_2_0: TCheckBox;
    Label37: TLabel;
    B_05_12_2_0: TCheckBox;
    Label38: TLabel;
    B_05_13_2_1: TCheckBox;
    B_05_14_2_0: TCheckBox;
    B_05_15_3_1: TEdit;
    B_05_16_2_1: TCheckBox;
    B_05_17_2_0: TCheckBox;
    B_05_18_3_0: TEdit;
    Label41: TLabel;
    B_05_19_3_1: TEdit;
    Label43: TLabel;
    B_05_20_2_0: TCheckBox;
    B_05_21_3_1: TEdit;
    Shape8: TShape;
    Label45: TLabel;
    B_06_02_3_0: TEdit;
    Label46: TLabel;
    B_06_03_3_1: TEdit;
    B_06_04_2_0: TCheckBox;
    B_06_05_2_1: TCheckBox;
    B_06_06_2_1: TCheckBox;
    Shape9: TShape;
    B_07_02_2_1: TCheckBox;
    B_07_03_2_1: TCheckBox;
    B_07_04_2_1: TCheckBox;
    B_07_05_2_1: TCheckBox;
    B_07_06_2_1: TCheckBox;
    B_07_07_2_1: TCheckBox;
    Label48: TLabel;
    B_07_08_3_1: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    B_07_09_3_1: TEdit;
    Label8: TLabel;
    Label17: TLabel;
    Label28: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    Label51: TLabel;
    D_05_10_3_1: TEdit;
    Panel13: TPanel;
    BitBtn1: TBitBtn;
    Bitnsav: TBitBtn;
    Image1: TImage;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    B_04_32_2_0: TCheckBox;
    Label11: TLabel;
    B_05_07_2_0: TCheckBox;
    B_05_08_2_0: TCheckBox;
    Label35: TLabel;
    Label36: TLabel;
    B_07_10_3_1: TEdit;
    Label39: TLabel;
    B_07_11_3_1: TEdit;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitnsavClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    function insertFirstTRAUMA(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
  public
    { Public declarations }
    dt_date :string;
  end;

var
  FrmTrauma: TFrmTrauma;

implementation

uses ReportTrauma, ReportTrauma1, DBDM, Global, Commfunc, MySQLc, ERsFunc,
  PIC;

{$R *.dfm}

procedure TFrmTrauma.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmTrauma.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmTrauma.FormShow(Sender: TObject);
var
  i : integer;
begin
  inherited;
  dt_date := '';
  //名稱定義:A(大項)_01(小項)_01(次項)_1(類型1.抬頭,2.checkBox,3.edit)_1(換行)
  ScrollBox1.Perform(WM_VSCROLL,SB_TOP ,0);
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from EPD_TABULATION where kind = ''FIRST_TRAUMA'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_TRAUMA'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+')');
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    for i := FrmTrauma.ComponentCount-1 downto  0 do
    begin
      if (FrmTrauma.Components[i] is TEdit) then
         if TEdit(FrmTrauma.Components[i]).Name = ReturnName((trim(DM.QryTemp.FieldByName('text').AsString))) then
            TEdit(FrmTrauma.Components[i]).Text := ReturnId(trim(DM.QryTemp.FieldByName('text').AsString));
      if (FrmTrauma.Components[i] is TCheckBox) then
        if TCheckBox(FrmTrauma.Components[i]).Name = ReturnName(trim(DM.QryTemp.FieldByName('text').AsString)) then
          if ReturnId(trim(DM.QryTemp.FieldByName('text').AsString)) ='Y' then
          begin
            TCheckBox(FrmTrauma.Components[i]).Checked := True;
          end
          else
          begin
            TCheckBox(FrmTrauma.Components[i]).Checked := False;
          end;
    end;
    DM.QryTemp.Next;
  end;
end;

procedure TFrmTrauma.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not assigned(FrmReportTrauma1) then
    FrmReportTrauma1 := TFrmReportTrauma1.Create(Self);
        FrmReportTrauma1.PrepareSQL;
      if assigned(FrmReportTrauma1) then
        FrmReportTrauma1 := nil;
end;

procedure TFrmTrauma.Button1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(Frmpic) then
    Frmpic := TFrmpic.Create(self);
  Frmpic.ShowModal;
  Image1.Picture := Frmpic.DBImage1.Picture;
end;

procedure TFrmTrauma.BitnsavClick(Sender: TObject);
var
  i,seqno :integer;
  tempstr,DD,DTIM,ALLNO :string;
  SQLo : TObjectList;
  sqls : TStringList;
  all_no,SEQ_no :integer;
  TempQ : TAdoQuery;
begin
  inherited;
  DD := ROCDate(Now,'');
  DTIM:= ROCTimes(Now,'');
  SQLo := TObjectList.Create;
  //IF NOT GetMaxNo THEN
  //BEGIN
  //  ShowMessage('取不到序號,存檔失敗');
  //  Exit;
  //END;
  TempQ := TAdoQuery.Create(self);
  TempQ.Connection := Dm.ADOLink;
  TempQ.Close;
  TempQ.SQL.Clear;
  TempQ.SQL.Add('select max(nvl(SEQ_NO,0)) as seq_no,max(nvl(allorder_no,0)) as all_no from EPD_TABULATION where fee_no='+qt(getFeeNo)+' and order_date ='+qt(GetEpdDate));
  TempQ.Open;
  all_no := TempQ.FieldByName('all_no').AsInteger;
  SEQ_no := TempQ.FieldByName('seq_no').AsInteger;
  Inc(all_no);
  for i := FrmTrauma.ComponentCount-1 downto  0 do
  begin
    tempstr := '';
    if (FrmTrauma.Components[i] is TEdit) then
    begin
      if trim(TEdit(FrmTrauma.Components[i]).Text) <> '' then
      begin
        Inc(SEQ_no);
        SQLs := TStringList.Create;
        SQLs.Add(insertFirstTRAUMA('FIRST_TRAUMA', trim(TEdit(FrmTrauma.Components[i]).Text) + '_' + TEdit(FrmTrauma.Components[i]).Name,'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
        SQLo.Add(SQLs);
      end;
    end;
    if (FrmTrauma.Components[i] is TCheckBox) then
    begin
      if TCheckBox(FrmTrauma.Components[i]).Checked then
      begin
        tempstr := 'Y';
        Inc(SEQ_no);
        SQLs := TStringList.Create;
        SQLs.Add(insertFirstTRAUMA('FIRST_TRAUMA',tempstr +'_'+ trim(TCheckBox(FrmTrauma.Components[i]).Name),'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
        SQLo.Add(SQLs);
      end;
    end;
  end;
  if not DM.ExecSQL(SQLo) then
  begin
    ShowMessage('寫入資料庫失敗');
    SQLo.Free;
    exit;
  end;
  if tBitBtn(Sender).Name = 'Bitnsav' then
    dt_date := ROCDate(Now,'')+'_'+ROCTime(Now,'');
  SQLo.Free;
  Self.Close;
end;


function TFrmTrauma.insertFirstTRAUMA(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
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

procedure TFrmTrauma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmTrauma.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmTrauma := nil;
end;

end.
