unit CVAtPA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Contnrs, ADODB;

type
  TFrmCVAtPA = class(TFrmMain)
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtStardatetime: TEdit;
    Label7: TLabel;
    CBXBASIC1: TCheckBox;
    CBXBASIC2: TCheckBox;
    Label8: TLabel;
    EdtBP: TEdit;
    Label9: TLabel;
    EdtWeight: TEdit;
    EdtNihss: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    CBXBASIC3: TCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    CBXCONDI23: TCheckBox;
    CBXCONDI24: TCheckBox;
    CBXCONDI25: TCheckBox;
    CBXCONDI26: TCheckBox;
    CBXCONDI27: TCheckBox;
    CBXCONDI28: TCheckBox;
    CBXCONDI29: TCheckBox;
    CBXCONDI30: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox4: TGroupBox;
    CBXCONDI1: TCheckBox;
    CBXCONDI2: TCheckBox;
    CBXCONDI3: TCheckBox;
    CBXCONDI4: TCheckBox;
    GroupBox5: TGroupBox;
    CBXCONDI18: TCheckBox;
    CBXCONDI5: TCheckBox;
    CBXCONDI17: TCheckBox;
    CBXCONDI6: TCheckBox;
    CBXCONDI7: TCheckBox;
    CBXCONDI8: TCheckBox;
    CBXCONDI9: TCheckBox;
    CBXCONDI10: TCheckBox;
    CBXCONDI11: TCheckBox;
    CBXCONDI12: TCheckBox;
    CBXCONDI13: TCheckBox;
    CBXCONDI14: TCheckBox;
    CBXCONDI15: TCheckBox;
    CBXCONDI16: TCheckBox;
    EdtCHRNO: TEdit;
    EdtNAME: TEdit;
    EdtAGE: TEdit;
    CBXBASIC4: TCheckBox;
    CBXBASIC5: TCheckBox;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    CBXCONDI19: TCheckBox;
    CBXCONDI20: TCheckBox;
    CBXCONDI21: TCheckBox;
    CBXCONDI22: TCheckBox;
    GroupBox8: TGroupBox;
    CBXBASIC6: TCheckBox;
    CBXBASIC7: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label40: TLabel;
    cbbNIHSScode: TComboBox;
    MemBASIC7: TMemo;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbbNIHSScodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBXBASIC7Click(Sender: TObject);
    procedure CBXBASIC6Click(Sender: TObject);
  private
    { Private declarations }
        function insertFirstcva(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
  public
    { Public declarations }
    yn :string;
  end;

var
  FrmCVAtPA: TFrmCVAtPA;

implementation

uses ERsFunc, Commfunc, DBDM, Global, MySQLc, CVAReport;

{$R *.dfm}

procedure TFrmCVAtPA.Button3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmCVAtPA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmCVAtPA.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmCVAtPA := nil;
end;

procedure TFrmCVAtPA.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmCVAtPA.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmCVAtPA.Button1Click(Sender: TObject);
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
 // IF NOT GetMaxNo THEN
 // BEGIN
 //   ShowMessage('取不到序號,存檔失敗');
 //   Exit;
 // END;
  TempQ := TAdoQuery.Create(self);
  TempQ.Connection := Dm.ADOLink;
  TempQ.Close;
  TempQ.SQL.Clear;
  TempQ.SQL.Add('select max(nvl(SEQ_NO,0)) as seq_no,max(nvl(allorder_no,0)) as all_no from EPD_TABULATION where fee_no='+qt(getFeeNo)+' and order_date='+qt(GetEpdDate));
  TempQ.Open;
  all_no := TempQ.FieldByName('all_no').AsInteger;
  SEQ_no := TempQ.FieldByName('seq_no').AsInteger;
  if CBXBASIC6.Checked then
    yn := 'Y';
  if CBXBASIC7.Checked then
    yn := 'N';
  Inc(all_no);
  for i := FrmCVAtPA.ComponentCount-1 downto  0 do
  begin
    tempstr := '';
    if (FrmCVAtPA.Components[i] is TEdit) then
    begin
      if trim(TEdit(FrmCVAtPA.Components[i]).Text) <> '' then
      begin
        Inc(SEQ_no);
        SQLs := TStringList.Create;
        SQLs.Add(insertFirstcva('FIRST_CVA', trim(TEdit(FrmCVAtPA.Components[i]).Text) + '_' + TEdit(FrmCVAtPA.Components[i]).Name,'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
        SQLo.Add(SQLs);
      end;
    end;
    if (FrmCVAtPA.Components[i] is TCheckBox) then
    begin
      if TCheckBox(FrmCVAtPA.Components[i]).Checked then
      begin
        if TCheckBox(FrmCVAtPA.Components[i]).Name ='CBXBASIC7' then
        begin
          Inc(SEQ_no);
          SQLs := TStringList.Create;
          SQLs.Add(insertFirstcva('FIRST_CVA',Trim(MemBASIC7.Lines.Text) +'_'+ 'MemBASIC7','N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
          SQLo.Add(SQLs);
        end;
        tempstr := 'Y';
        Inc(SEQ_no);
        SQLs := TStringList.Create;
        SQLs.Add(insertFirstcva('FIRST_CVA',tempstr +'_'+ trim(TCheckBox(FrmCVAtPA.Components[i]).Name),'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
        SQLo.Add(SQLs);
      end;
    end;
  end;
  if not DM.ExecSQL(SQLo) then
  begin
    ShowMessage('寫入資料庫失敗');
    SQLo.Free;
    Exit;
  end;
  SQLo.Free;
  TempQ.Free;
  //Self.Close;
end;

function TFrmCVAtPA.insertFirstcva(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
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
  if cbbNIHSScode.ItemIndex > 0 then
    SetParamter(q_str,'$UPD_OPER$',qt(ReturnId(trim(cbbNIHSScode.Text))))
  else
    SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
  SetParamter(q_str,'$UPD_DATE$',qt(UPD_DATE));
  SetParamter(q_str,'$UPD_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$VS_CODE$',qt(GetVsCode));
  SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
  SetParamter(q_str,'$ORDER_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$DEL_FLAG$',qt('N'));
  Result := q_str;
end;

procedure TFrmCVAtPA.FormShow(Sender: TObject);
VAR
  I : INTEGER;
begin
  inherited;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from EPD_TABULATION where kind = ''FIRST_CVA'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_CVA'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')');
  DM.QryTemp.Open;
  IF NOT DM.QryTemp.IsEmpty THEN
  BEGIN
    while not DM.QryTemp.Eof do
    begin
      for i := FrmCVAtPA.ComponentCount-1 downto  0 do
      begin
        if (FrmCVAtPA.Components[i] is TEdit) then
           if TEdit(FrmCVAtPA.Components[i]).Name = ReturnName((trim(DM.QryTemp.FieldByName('text').AsString))) then
              TEdit(FrmCVAtPA.Components[i]).Text := ReturnId(trim(DM.QryTemp.FieldByName('text').AsString));
        if (FrmCVAtPA.Components[i] is TMemo) then
           if TMemo(FrmCVAtPA.Components[i]).Name = ReturnName((trim(DM.QryTemp.FieldByName('text').AsString))) then
             TMemo(FrmCVAtPA.Components[i]).Lines.Text := ReturnId(trim(DM.QryTemp.FieldByName('text').AsString));
        if (FrmCVAtPA.Components[i] is TCheckBox) then
          if TCheckBox(FrmCVAtPA.Components[i]).Name = ReturnName(trim(DM.QryTemp.FieldByName('text').AsString)) then
            if ReturnId(trim(DM.QryTemp.FieldByName('text').AsString)) ='Y' then
            begin
              TCheckBox(FrmCVAtPA.Components[i]).Checked := True;
            end
            else
            begin
              TCheckBox(FrmCVAtPA.Components[i]).Checked := False;
            end;
      end;
      DM.QryTemp.Next;
    end;
  END
  ELSE
  BEGIN
    for i := FrmCVAtPA.ComponentCount-1 downto  0 do
    begin
      if (FrmCVAtPA.Components[i] is TCheckBox) then
      BEGIN
        IF (TCheckBox(FrmCVAtPA.Components[i]).Name='CBXBASIC1') OR
           (TCheckBox(FrmCVAtPA.Components[i]).Name='CBXBASIC2') OR
           (TCheckBox(FrmCVAtPA.Components[i]).Name='CBXBASIC6') OR
           (TCheckBox(FrmCVAtPA.Components[i]).Name='CBXBASIC7') THEN
           
          TCheckBox(FrmCVAtPA.Components[i]).Checked := False
        ELSE
          TCheckBox(FrmCVAtPA.Components[i]).Checked := True;
      END;
    END;
  END;
  ScrollBox1.Perform(WM_VSCROLL,SB_TOP ,0);
  cbbNIHSScode.Items.Clear;
  cbbNIHSScode.Items:= doctor;
  cbbNIHSScode.Items.Insert(0,' ');
  if trim(DM.QryTemp.FieldByName('UPD_OPER').AsString)<> '' then
    SetCbbitem(cbbNIHSScode,trim(DM.QryTemp.FieldByName('UPD_OPER').AsString));
end;

procedure TFrmCVAtPA.Button2Click(Sender: TObject);
begin
  inherited;
  Button1Click(Button1);
  if not assigned(FrmCVAReport) then
    FrmCVAReport := TFrmCVAReport.Create(Self);
  if cbbNIHSScode.ItemIndex > 0 then
    FrmCVAReport.QRLdocname.Caption := cbbNIHSScode.Text
  else
    FrmCVAReport.QRLdocname.Caption := getUserId +'_'+ GETDOCNAME(getUserId);
  FrmCVAReport.PrepareSQL;
  
end;

procedure TFrmCVAtPA.cbbNIHSScodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SetCbbitem(cbbNIHSScode,cbbNIHSScode.Text);
  inherited;
end;

procedure TFrmCVAtPA.CBXBASIC7Click(Sender: TObject);
begin
  inherited;
  if CBXBASIC7.Checked then
    CBXBASIC6.Checked := False;
end;

procedure TFrmCVAtPA.CBXBASIC6Click(Sender: TObject);
begin
  inherited;
  if CBXBASIC6.Checked then
    CBXBASIC7.Checked := False;
end;

end.
