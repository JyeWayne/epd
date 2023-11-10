unit RDShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, Grids, ExtCtrls, ComCtrls, Math, SHELLapi,
  DateUtils, Contnrs, Registry, Printers, QuickRpt, DB, ADODB, QRCtrls;

type
  TFrmRDShift = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    SGShift: TStringGrid;
    Panel32: TPanel;
    Btnsex: TBitBtn;
    BtnMed: TBitBtn;
    Btnbed: TBitBtn;
    Btnchrno: TBitBtn;
    Btnchrname: TBitBtn;
    BtnRty: TBitBtn;
    BtnRCir: TBitBtn;
    BtnRemain: TBitBtn;
    btnage: TBitBtn;
    BtnDiag: TBitBtn;
    Btnchk: TBitBtn;
    BtnShift: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Memtex: TMemo;
    Label6: TLabel;
    cbbChangecode: TComboBox;
    Label1: TLabel;
    CBLOUTDOC: TComboBox;
    Btnsle: TBitBtn;
    PNLMEDLIST: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    SGmedshift: TStringGrid;
    Label2: TLabel;
    BtnShiftnote: TBitBtn;
    Label3: TLabel;
    BtnSave: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    cbArea: TComboBox;
    Label5: TLabel;
    CBBdoc: TComboBox;
    Button1: TButton;
    BitBtn4: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SGShiftSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure MemtexExit(Sender: TObject);
    procedure BtnsexClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SGShiftClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SGmedshiftDblClick(Sender: TObject);
    procedure BtnsleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    shiftepd_date,dd,dt,dall: string;
    c,r,liscount : integer;
    procedure initTextOrderTile;
    procedure showdata;
    procedure shiftprint(userid,ddprt,dtprt:string);
    procedure SGridSort1(sort,col: integer;Sender: TObject);
  public
    { Public eclarations }
    listclass,okshift : string;
  end;

var
  FrmRDShift: TFrmRDShift;
const
  sele    = 0;
  sex     = 1;
  triage  = 2;
  bed     = 3;
  chrno   = 4;
  patname = 5;
  patage  = 6;
  rema    = 7;
  diag    = 8;
  med     = 9;
  chk     = 10;
  shift   = 11;
  rwps    = 12;
  feeno   = 13;
  epddate = 14;
  agsort  = 15;
  OPDDATE = 16;
  OrderName : Array[0..12] of String=('Btnsle','Btnsex','BtnRty','Btnbed','Btnchrno','Btnchrname','btnage','BtnRemain','BtnDiag','BtnMed','Btnchk','BtnShift','BtnShiftnote');
implementation

uses Global, Commfunc, ERsFunc, DBDM, MySQLc, PubPrintMain, chdocprnt;

{$R *.dfm}


procedure TFrmRDShift.initTextOrderTile;
var
  i : Integer;
begin
  for i := 0 to SGShift.ColCount -1 do
  begin
    if FrmRDShift.FindComponent(OrderName[i]) <> nil then
      SGShift.ColWidths[i] := TBitBtn(FrmRDShift.FindComponent(OrderName[i])).Width-1
    else
      SGShift.ColWidths[i] := -1;
  end;
end;

procedure TFrmRDShift.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmRDShift.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmRDShift := nil;
end;

procedure TFrmRDShift.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FrmRDShift.Close;
end;

procedure TFrmRDShift.FormShow(Sender: TObject);
begin
  inherited;
  if ((GetUserLevel= '3') or (GetUserLevel= '6')) and (NPEnter = 'N') then
  begin
    BitBtn3.Enabled := False;
    BtnSave.Enabled := False;
  end;

  okshift := 'N';
  initTextOrderTile;
  CBLOUTDOC.Items.Clear;
  CBLOUTDOC.Items := VsDoc;
  cbbChangecode.Items.Clear;
  cbbChangecode.Items := VsDoc;
  cbArea.Clear;
  cbArea.Items.AddStrings(EPDAREA);
  cbArea.Items.Insert(0,'����');

  CBBdoc.Items.Clear;
  CBBdoc.Items.AddStrings(doctor);
  CBBdoc.Items.Insert(0,'����');
  SetCbbitem(CBLOUTDOC,getUserId);
  showdata;
end;

procedure TFrmRDShift.showdata;
var
  sqstr,ag,hottime,ADSQ : string;
  k,i,h,m : integer;
begin
  hottime := '';
  h := 0;
  m := 0;
  if listclass = 'Single' then
  begin
    sqstr := docshift(0);
    SetParamter(sqstr,'$OPD_DATE$',Qt(GetEpdDate));
    SetParamter(sqstr,'$FEE_NO$',Qt(GetFeeNo));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text:= sqstr;
    DM.QryTemp.Open;
  end
  else
  begin //order by 4
    sqstr := docshift(10);
    IF (cbArea.ItemIndex<> -1) AND (cbArea.Text<>'����') THEN
      ADSQ := 'and b.fee_no in (select fee_no from epd_vcb_basic where EPD_CLINIC_CODE ='+Qt(ReturnName(Trim(cbArea.Text)))+' and cncl_flag=''N'') ';


    IF (CBBdoc.ItemIndex<> -1) AND (CBBdoc.Text<>'�п��') AND (CBBdoc.Text<>'����') THEN
      SetParamter(sqstr,'$DOCSEQ$','join OPD_BASIC1 on b.fee_no = OPD_BASIC1.fee_no and (OPD_BASIC1.DOC_CODE = '+Qt(ReturnId(CBBdoc.Text))+' OR OPD_BASIC1.INS_DOC = '+Qt(ReturnId(CBBdoc.Text))+')')
    else
      SetParamter(sqstr,'$DOCSEQ$','');
      //�����E������Z�M��P�f�H�M��H�Ƥ��@���D20141017
      //if trim(ADSQ)<> '' then
      //  ADSQ := ADSQ + ' and b.hia_doc='+Qt(ReturnId(CBBdoc.Text))
      //else
      //  ADSQ := 'and b.hia_doc='+Qt(ReturnId(CBBdoc.Text));
    SetParamter(sqstr,'$ADDSQL$',ADSQ);
    SetParamter(sqstr,'$NOWDATE$',Qt(ROCDate(Now-3,'')));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text:= sqstr;
    DM.QryTemp.Open;
  end;
  
  if not DM.QryTemp.IsEmpty then
    liscount := DM.QryTemp.RecordCount;//��Z�M�浧��

  for i := 0 to SGShift.RowCount-1 do
    SGShift.Rows[i].Clear;

  SGShift.RowCount := 0;
  k := 0;
  while not DM.QryTemp.Eof do
  begin
    SGShift.Cells[sele,k]:= Trim(DM.QryTemp.FieldByName('sele').AsString);
    SGShift.Cells[sex,k]:= SexType(Trim(DM.QryTemp.FieldByName('sex').AsString));
    SGShift.Cells[triage,k]:= Trim(DM.QryTemp.FieldByName('class_no').AsString);
    SGShift.Cells[bed,k]:= Trim(DM.QryTemp.FieldByName('epd_bed').AsString);
    SGShift.Cells[chrno,k]:= Trim(DM.QryTemp.FieldByName('chr_no').AsString);
    SGShift.Cells[patname,k]:= Trim(DM.QryTemp.FieldByName('pat_name').AsString);
    try
      ag := GetAge(Trim(DM.QryTemp.FieldByName('ac_type').AsString)+Trim(DM.QryTemp.FieldByName('age').AsString),ROCDate(Now,''),acMonth);
      SGShift.Cells[agsort,k] := ag;
      if copy(ag,1,1)<>'0' then
        SGShift.Cells[patage,k] := copy(ag,1,length(ag)-2)+'��'+copy(ag,4,2)+'�Ӥ�'
      else
        SGShift.Cells[patage,k] := copy(ag,2,2)+'��'+copy(ag,4,2)+'�Ӥ�';
    except
      SGShift.Cells[patage,k] := '';
    end;


    h := (MinutesBetween(now,ROCToDate(ReturnId(Trim(DM.QryTemp.FieldByName('epd_date').AsString)))+ROCToTime(ReturnName(Trim(DM.QryTemp.FieldByName('epd_date').AsString))))) div 60 ;
    m := (MinutesBetween(now,ROCToDate(ReturnId(Trim(DM.QryTemp.FieldByName('epd_date').AsString)))+ROCToTime(ReturnName(Trim(DM.QryTemp.FieldByName('epd_date').AsString))))) mod 60;
    hottime := AddChar(IntToStr(h),'0',2)+':'+AddChar(IntToStr(m),'0',2);
    SGShift.Cells[rema,k]  := hottime;
    shiftepd_date          := Trim(DM.QryTemp.FieldByName('epd_date').AsString);
    SGShift.Cells[diag,k]  := Trim(DM.QryTemp.FieldByName('icd9').AsString);
    SGShift.Cells[shift,k] := Trim(DM.QryTemp.FieldByName('class_shift').AsString)+Trim(DM.QryTemp.FieldByName('ps').AsString);
    SGShift.Cells[rwps,k]  := Trim(DM.QryTemp.FieldByName('ps').AsString);
    SGShift.Cells[feeno,k] := Trim(DM.QryTemp.FieldByName('fee_no').AsString);
    SGShift.Cells[epddate,k] := ReturnId(Trim(DM.QryTemp.FieldByName('epd_date').AsString))+ReturnName(Trim(DM.QryTemp.FieldByName('epd_date').AsString));
    SGShift.Cells[OPDDATE,k] := ReturnId(Trim(DM.QryTemp.FieldByName('epd_date').AsString));
    inc(k);
    if not DM.QryTemp.Eof then
      SGShift.RowCount := SGShift.RowCount + 1;
    DM.QryTemp.Next;
  end;
  if SGShift.Cells[chrno,k] = '' then
    SGShift.RowCount := SGShift.RowCount-1;
  DM.QryTemp.Close;
  DM.QrySearch.Close;
end;

procedure TFrmRDShift.BitBtn3Click(Sender: TObject);
var
  dall,sqstr :string;
  i : integer;
  SQLs : TStringList;
  SQLo : TObjectList;
begin
  inherited;

  if ((Trim(cbbChangecode.Text) = '') or (cbbChangecode.ItemIndex = -1)) AND (TBitBtn(Sender).Name='BitBtn3') then
  begin
    ShowMessage('�п�ܱ��Z�D�v��v');
    Exit;
  end
  else
  begin
    if SetSys.ReadString('SYSTEM','DOC_SHIFT','')='True'  THEN
    BEGIN
      IF ReturnId(cbbChangecode.Text) = SetSys.ReadString('SYSTEM','NOT_DOC','') THEN
      BEGIN
        ShowMessage('�ثe�諸���O�i��Z����v');
        exit;
      END;
    END;
    SQLs := TStringList.Create;
    SQLo := TObjectList.Create;
    dd := FormatDateTime('YYYY\MM\DD',Now);
    dt := ROCTimes(Now,':');
    dall := FormatDateTime('YYYY\MM\DD hh:nn:ss',Now);
    for i := 0 to SGShift.RowCount-1 do
    begin
      if trim(SGShift.Cells[sele,i]) ='V' then
      begin
        if trim(SGShift.Cells[feeno,i]) <>'' then
        begin
          sqstr := docshift(4);
          SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
          SetParamter(sqstr,'$UPD_DATA$',QT(dateformat(5,Now-180)));//�褸�~���P�榡2012\08\31
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          DM.QryTemp.SQL.Text:= sqstr;
          DM.QryTemp.Open;
          if DM.QryTemp.IsEmpty then
          begin
            //insert into DOC_ER_SHIFT
            sqstr := docshift(2);
            SetParamter(sqstr,'$BED_NO$',Qt(trim(SGShift.Cells[bed,i])));
            SetParamter(sqstr,'$CHR_NO$',Qt(trim(SGShift.Cells[chrno,i])));
            SetParamter(sqstr,'$PAT_NAME$',Qt(trim(SGShift.Cells[patname,i])));
            SetParamter(sqstr,'$EDIAG_DESC$',Qt(textstrReplace(trim(SGShift.Cells[diag,i]))));
            SetParamter(sqstr,'$CLASS_SHIFT$',Qt(textstrReplace(trim(SGShift.Cells[shift,i]))));
            SetParamter(sqstr,'$UPD_ID$',Qt(ReturnId(cbbChangecode.Text)));
            SetParamter(sqstr,'$UPD_DATA$',Qt(dd));
            SetParamter(sqstr,'$UPD_TIME$',Qt(dt));
            SetParamter(sqstr,'$PRINT_FLAG$',Qt('N'));
            SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
            SetParamter(sqstr,'$ORIGINAL_DATA$',Qt(dall));
            SetParamter(sqstr,'$PS$',Qt(textstrReplace(trim(SGShift.Cells[rwps,i]))));
            SQLs := TStringList.Create;
            SQLs.Add(sqstr);
            SQLo.Add(SQLs);
          end
          else
          begin
            //update DOC_ER_SHIFT
            sqstr := docshift(3);
            SetParamter(sqstr,'$BED_NO$',Qt(trim(SGShift.Cells[bed,i])));
            SetParamter(sqstr,'$EDIAG_DESC$',Qt(textstrReplace(trim(SGShift.Cells[diag,i]))));
            SetParamter(sqstr,'$CLASS_SHIFT$',Qt(textstrReplace(trim(SGShift.Cells[shift,i]))));
            SetParamter(sqstr,'$UPD_ID$',Qt(ReturnId(cbbChangecode.Text)));
            SetParamter(sqstr,'$UPD_DATA$',Qt(dd));
            SetParamter(sqstr,'$UPD_TIME$',Qt(dt));
            SetParamter(sqstr,'$PRINT_FLAG$',Qt('N'));
            SetParamter(sqstr,'$PS$',Qt(textstrReplace(trim(SGShift.Cells[rwps,i]))));
            SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
            SetParamter(sqstr,'$UPD_DATA_180$',QT(dateformat(5,Now-180)));
            SQLs := TStringList.Create;
            SQLs.Add(sqstr);
            SQLo.Add(SQLs);
          end;
          if TBitBtn(Sender).Name ='BitBtn3' then
          begin
            //�I���Z�~�| insert into DOC_ER_SHIFT_PRINT
            sqstr := docshift(5);
            SetParamter(sqstr,'$BED_NO$',Qt(trim(SGShift.Cells[bed,i])));
            SetParamter(sqstr,'$CHR_NO$',Qt(trim(SGShift.Cells[chrno,i])));
            SetParamter(sqstr,'$PAT_NAME$',Qt(trim(SGShift.Cells[patname,i])));
            SetParamter(sqstr,'$EDIAG_DESC$',Qt(textstrReplace(trim(SGShift.Cells[diag,i]))));
            SetParamter(sqstr,'$CLASS_SHIFT$',Qt(textstrReplace(trim(SGShift.Cells[shift,i]))));
            SetParamter(sqstr,'$UPD_ID$',Qt(ReturnId(cbbChangecode.Text))); //���Z��v
            SetParamter(sqstr,'$UPD_DATA$',Qt(dd));
            SetParamter(sqstr,'$UPD_TIME$',Qt(dt));
            SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
            SetParamter(sqstr,'$ORIGINAL_DATA$',Qt(dall));
            SetParamter(sqstr,'$PRINT_ID$',Qt(ReturnId(CBLOUTDOC.Text)));//���Z��v
            SetParamter(sqstr,'$PRINT_DATE$',Qt(''));
            SetParamter(sqstr,'$PRINT_TIME$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(sqstr);
            SQLo.Add(SQLs);
            //��D�v��v
            sqstr := '';
            sqstr := docshift(11);
            SetParamter(sqstr,'$INS_DOC$',Qt(ReturnId(cbbChangecode.Text)));
            SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
            SetParamter(sqstr,'$OPD_DATE$',Qt(trim(SGShift.Cells[OPDDATE,i])));
            SQLs := TStringList.Create;
            SQLs.Add(sqstr);
            SQLo.Add(SQLs);
            sqstr := '';
            sqstr := docshift(12);
            SetParamter(sqstr,'$INS_DOC$',Qt(ReturnId(cbbChangecode.Text)));
            SetParamter(sqstr,'$FEE_NO$',Qt(trim(SGShift.Cells[feeno,i])));
            SetParamter(sqstr,'$OPD_DATE$',Qt(trim(SGShift.Cells[OPDDATE,i])));
            SQLs := TStringList.Create;
            SQLs.Add(sqstr);
            SQLo.Add(SQLs);
          end;
        end;
      end;
    end;
    if NOT DM.ExecSQL(SQLo) then
    begin
      ShowMessage('��Z�g�J��Ʈw����');
      exit;
    end;
    SQLo.Free;
    okshift := 'Y';
    if TBitBtn(Sender).Name ='BitBtn3' then
      shiftprint(ReturnId(cbbChangecode.Text),dd,dt);
  end;

end;

procedure TFrmRDShift.SGShiftSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  Handle : THandle;
  myStr,myParamter,Sqstr : String;
  i : Integer;
  MyRec : TRect;
  Mypoint : TPoint;
  str : TStrings;
begin
  inherited;
  case ACol of
    diag,shift,rwps :
      begin
        TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
        MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
        Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));

        Memtex.Tag := ARow;
        Memtex.BringTofront;
        Memtex.Lines.Text := Trim(TStringGrid(Sender).cells[Acol,Arow]);
        if (MyRec.Bottom +Memtex.Height) <=(ceil(TStringGrid(Sender).Height/3)*2) then
          Memtex.SetBounds(min(MyRec.Left,Screen.ActiveForm.Width-BtnDiag.Width-30) ,MyRec.Bottom+TStringGrid(Sender).RowHeights[ARow] +2 , BtnDiag.Width, TStringGrid(Sender).Height-(MyRec.Bottom +Memtex.Height))
        else
          Memtex.SetBounds(min(MyRec.Left,Screen.ActiveForm.Width-Memtex.Width-30),MyRec.Bottom+TStringGrid(Sender).RowHeights[ARow] +2  ,BtnDiag.Width    ,150);
        Memtex.Visible := True;
        Memtex.SetFocus;
      end;
    med:
      begin
        Label2.Caption := SGShift.Cells[patname,ARow];
        str := TStringList.Create;
        Sqstr := getDitto(13);
        SetParamter(Sqstr,'$OPD_DATE$',Qt(ReturnId(shiftepd_date)));
        SetParamter(Sqstr,'$FEE_NO$',Qt(Trim(SGShift.Cells[feeno,ARow])));
        str.Add(Sqstr);
        if DM.OpenSQL(str,SGmedshift) then
        begin
          PNLMEDLIST.Align := alClient;
          PNLMEDLIST.Visible := true;

          sgmedshift.ColWidths[0] := 70;// ���
          sgmedshift.ColWidths[1] := 70; // �ɶ�
          sgmedshift.ColWidths[2] := 350;// �ĦW
          sgmedshift.ColWidths[3] := 70; // ���q
          sgmedshift.ColWidths[4] := 70; // �W�v
          sgmedshift.ColWidths[5] := 70; // �~�|
          sgmedshift.ColWidths[6] := 100; // ��v
          sgmedshift.ColWidths[7] := 70; // DC
          SGmedshift.Repaint;
        end;
      end;
    chk:
      begin
        myStr :=Setsys.ReadString('OTHERSYSTEMLINK','���i�d��','');
        myParamter := Setsys.ReadString('PARAMTER','���i�d��','');
        comStrRep(mystr);
        comstrRep(myParamter);
        if myStr ='' then
        begin
          showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
          Exit;
        end;
        try
          if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
            ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
        except
        end;
      end;
  end;
end;

procedure TFrmRDShift.MemtexExit(Sender: TObject);
begin
  inherited;
  SGShift.Cells[SGShift.Col,SGShift.Row] := Memtex.Lines.Text;
  Memtex.Lines.Text := '';
  Memtex.Hide;
  SGShift.Refresh;
  SGShift.SetFocus;
end;

procedure TFrmRDShift.BtnsexClick(Sender: TObject);
begin
  inherited;
  if TBitBtn(sender).Hint <> '' then
  begin
    SGridSort1(1,TBitBtn(sender).Tag,SGShift);
    TBitBtn(sender).Hint := '';
  end
  else
  begin
    SGridSort1(0,TBitBtn(sender).Tag,SGShift);
    TBitBtn(sender).Hint :='X';
  end;
  SGShift.Repaint;
end;

procedure TFrmRDShift.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PNLMEDLIST.Visible := false;
  PNLMEDLIST.Hint := '';
end;

procedure TFrmRDShift.SGShiftClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;


    if TStringGrid(sender).Col = 0 then
    begin
      if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] <> '' then
      begin
        if TStringGrid(sender).Cells[sele,TStringGrid(sender).Row] ='V' then
          TStringGrid(sender).Cells[sele,TStringGrid(sender).Row] := ''
        else
          TStringGrid(sender).Cells[sele,TStringGrid(sender).Row] := 'V';
      end
      else
      begin
        TStringGrid(sender).Cells[sele,TStringGrid(sender).Row] := 'V';
      end;
     end;

end;

procedure TFrmRDShift.shiftprint(userid,ddprt,dtprt:string);
var
  SQLs: TStringList;
  SQLo : TObjectList;
  reg : TRegistry;
  i : integer;
  sqstr,dd,dt : string;
  DefPrint : String;
begin
//��L���
  //setprinterdef('PRINTA5');
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
  begin
    defPrint := reg.ReadString('Device');
    for i := 0 to printer.Printers.Count -1 do
    begin
      if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA5','')) then
      begin
        reg.DeleteKey('Device');
        reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
      end;
    end;
  end;
  Screen.Cursor := crHourGlass;
  HasPrint := False;
  if not Assigned(Frmchdocprnt) then
    Frmchdocprnt := TFrmchdocprnt.Create(Self);
  Label3.Visible := True;
  FrmRDShift.Repaint;
  sqstr := docshift(6);
  SetParamter(sqstr,'$PRINT_ID$',Qt(userid));
  SetParamter(sqstr,'$PRINT_DATE$',Qt(ddprt));
  SetParamter(sqstr,'$PRINT_TIME$',Qt(dtprt));
  Frmchdocprnt.ADOQuery1.Close;
  Frmchdocprnt.ADOQuery1.SQL.Clear;
  Frmchdocprnt.ADOQuery1.SQL.Text :=sqstr;
  //Frmchdocprnt.ADOQuery1.SQL.SaveToFile('D:\print.txt');
  Frmchdocprnt.ADOQuery1.Open;
  Screen.Cursor := crdefault;
  Frmchdocprnt.QRLdate.Caption := ddprt+' '+dtprt;
  if PNLMEDLIST.Hint <> 'reprint' then
    Frmchdocprnt.QRLablin.Caption := cbbChangecode.Text
  else
    Frmchdocprnt.QRLablin.Caption := GETDOCNAME(sgmedshift.Cells[4,SGmedshift.row]);
  if PNLMEDLIST.Hint <> 'reprint' then
    Frmchdocprnt.QRLablout.Caption := CBLOUTDOC.Text
  else
    Frmchdocprnt.QRLablout.Caption := GETDOCNAME(Frmchdocprnt.ADOQuery1.fieldbyname('print_id').asstring);
  Label3.Visible := False;
  Frmchdocprnt.QuickRep1.Prepare;
  Frmchdocprnt.QRLabel13.Caption :=  '/'+IntToStr(Frmchdocprnt.QuickRep1.Printer.PageCount);
  Frmchdocprnt.QuickRep1.Preview;
  if HasPrint then
  begin
    dd := FormatDateTime('YYYY\MM\DD',Now);
    dt := ROCTimes(Now,':');
    SQLo := TObjectList.Create;
    sqstr := docshift(7);//update doc_er_shift_print
    SetParamter(sqstr,'$PRINT_ID$',Qt(getUserId));
    SetParamter(sqstr,'$PRINT_DATE$',Qt(dd));
    SetParamter(sqstr,'$PRINT_TIME$',Qt(dt));
    SetParamter(sqstr,'$UPD_ID$',Qt(userid));
    SetParamter(sqstr,'$UPD_DATA$',Qt(ddprt));
    SetParamter(sqstr,'$UPD_TIME$',Qt(dtprt));
    SQLs := TStringList.Create;
    SQLs.Add(sqstr);
    SQLo.Add(SQLs);

    sqstr := docshift(8);//update doc_er_shift print_flag=Y
    SetParamter(sqstr,'$UPD_ID$',Qt(userid));
    SetParamter(sqstr,'$UPD_DATA$',Qt(ddprt));
    SetParamter(sqstr,'$UPD_TIME$',Qt(dtprt));
    SQLs := TStringList.Create;
    SQLs.Add(sqstr);
    SQLo.Add(SQLs);
    if NOT DM.ExecSQL(SQLo) then
    begin
    end;
    SQLo.Free;
  end;
  reg.DeleteKey('Device');
  reg.WriteString('Device',DefPrint);
  Reg.CloseKey;
  Reg.Free;
end;

procedure TFrmRDShift.BitBtn2Click(Sender: TObject);
var
  str : TStrings;
  sqstr: string;
begin
  inherited;
  str := TStringList.Create;
  sqstr := docshift(9);
  str.Add(sqstr);
  if DM.OpenSQL(str,SGmedshift) then
  begin
    PNLMEDLIST.Align := alClient;
    PNLMEDLIST.Visible := true;
    PNLMEDLIST.Hint := 'reprint';
    sgmedshift.ColWidths[0] := 100;// ���
    sgmedshift.ColWidths[1] := 150;// ��v
    sgmedshift.ColWidths[2] := 100; // �C�L
    sgmedshift.ColWidths[3] := 100; // �ɶ�
    sgmedshift.ColWidths[4] := -1; // ��v�N�X
    SGmedshift.Repaint;
  end;
end;

procedure TFrmRDShift.SGmedshiftDblClick(Sender: TObject);
begin
  inherited;
  if PNLMEDLIST.Hint = 'reprint' then
  begin
    shiftprint(trim(SGmedshift.Cells[4,SGmedshift.row]),trim(SGmedshift.Cells[0,SGmedshift.row]),trim(SGmedshift.Cells[3,SGmedshift.row]));
  end;
end;

procedure TFrmRDShift.BtnsleClick(Sender: TObject);
var
  i : integer;
begin
  inherited;
    if TbitBtn(sender).Caption ='��' then
    begin
      TbitBtn(sender).Caption :='�_' ;
      for i := 0 to SGShift.RowCount -1 do
      begin
        SGShift.Cells[sele,i] := ' ';
      end;
    end
    else
    begin
      TbitBtn(sender).Caption :='��';
      for i := 0 to SGShift.RowCount -1 do
      begin
        SGShift.Cells[sele,i] := 'V';
      end;
    end;
end;

procedure TFrmRDShift.Button1Click(Sender: TObject);
begin
  inherited;
  showdata;
end;

procedure TFrmRDShift.SGridSort1(sort,col: integer;Sender: TObject);
var
  i ,j ,l: Integer;
  slist1: TStrings;
begin
  slist1 := TStringList.Create;
  case Sort of
    1 : //�p��j
    begin
      for i := 0 to TStringGrid(sender).RowCount -2 do
      begin
        for j := i + 0 to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] >  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,i]);
            TStringGrid(sender).Rows[i] := TStringGrid(sender).Rows[j];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,j] := slist1.Strings[l];
          end;
        end;
      end;
    end;
    else
    begin
      for i := 0 to TStringGrid(sender).RowCount -2 do
      begin
        for j := i + 0 to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] <  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,j]);
            TStringGrid(sender).Rows[j] := TStringGrid(sender).Rows[i];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,i] := slist1.Strings[l];
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmRDShift.FormCreate(Sender: TObject);
begin
  inherited;
  liscount := 0;
end;

procedure TFrmRDShift.FormPaint(Sender: TObject);
begin
  inherited;
  MySBar.Panels[0].Text := '����:' +IntToStr(liscount);
end;

procedure TFrmRDShift.BitBtn4Click(Sender: TObject);
var
  sqstr, ADSQ : string;
begin
  inherited;
  sqstr := 'select c.class_no as triage_level,'''' as order_bed,(select bed_no from BED_AREA where fee_no = a.fee_no and rownum = 1) as BED_NO,';
  sqstr := sqstr + 'b.chr_no as CHR_NO,b.pat_name as PAT_NAME,(select sex_type from chr_basic c where c.chr_no = b.chr_no and Rownum=1) as sex,';
  sqstr := sqstr + '(select birth_date from chr_basic c where c.chr_no = b.chr_no and Rownum=1) as birth_date,decode(trim(d.ediag_desc),'''',(select trim(chn_simp_desc) ';
  sqstr := sqstr + 'from icd9_basic where icd9_code = b.icd9_code1),trim(d.ediag_desc)) as EDIAG_DESC,d.class_shift,';
  sqstr := sqstr + '(select ac_type from chr_basic where chr_basic.chr_no = b.chr_no and Rownum=1) as ac_type,(SELECT ''Y'' FROM BESP_IPD where BESP_IPD.Fee_No=b.Fee_No and Rownum=1)as bespipd,';
  sqstr := sqstr + '(SELECT gen_dept_code FROM IPD_RSV  where sour_type=''E'' and IPD_RSV.chr_no=b.chr_no and Rownum=1) as bespdept ';
  sqstr := sqstr + 'from opd_basic b join reg_basic a on a.opd_date= b.opd_date and a.fee_no=b.fee_no and a.cncl_flag=''N'' ';
  sqstr := sqstr + 'join epd_his c on c.fee_no=b.fee_no and (c.epd_status= ''0'' or (nvl(trim(c.epd_status),''A'')=''A'' and c.reg_date>$NOWDATE$)) and c.end_date=''9999999'' ';
  sqstr := sqstr + '$DOCSEQ$ left join doc_er_shift d on d.fee_no=b.fee_no where  b.OPD_KIND = ''E'' $ADDSQL$ order by b.epd_bed,c.epd_date ';

  IF (cbArea.ItemIndex<> -1) AND (cbArea.Text<>'����') THEN
    ADSQ := 'and b.fee_no in (select fee_no from epd_vcb_basic where EPD_CLINIC_CODE ='+Qt(ReturnName(Trim(cbArea.Text)))+' and cncl_flag=''N'') ';

  IF (CBBdoc.ItemIndex<> -1) AND (CBBdoc.Text<>'�п��') AND (CBBdoc.Text<>'����') THEN
    SetParamter(sqstr,'$DOCSEQ$','join OPD_BASIC1 on b.fee_no = OPD_BASIC1.fee_no and (OPD_BASIC1.DOC_CODE = '+Qt(ReturnId(CBBdoc.Text))+' OR OPD_BASIC1.INS_DOC = '+Qt(ReturnId(CBBdoc.Text))+')')
  else
    SetParamter(sqstr,'$DOCSEQ$','');

  SetParamter(sqstr,'$ADDSQL$',ADSQ);
  SetParamter(sqstr,'$NOWDATE$',Qt(ROCDate(Now-3,'')));
  if not Assigned(Frmchdocprnt) then
    Frmchdocprnt := TFrmchdocprnt.Create(Self);
  Frmchdocprnt.ADOQuery1.Close;
  Frmchdocprnt.ADOQuery1.SQL.Clear;
  Frmchdocprnt.ADOQuery1.SQL.Text:= sqstr;
  Frmchdocprnt.ADOQuery1.Open;
  if not Frmchdocprnt.ADOQuery1.IsEmpty then
  begin

    Frmchdocprnt.QuickRep1.Prepare;
    Frmchdocprnt.QRLabel3.Caption  := '�C�L���';
    Frmchdocprnt.QRLabel1.Caption  := '�f�H�M��C�L';
    Frmchdocprnt.QRLabel13.Caption := '/'+IntToStr(Frmchdocprnt.QuickRep1.Printer.PageCount);
    Frmchdocprnt.QRLdate.Caption   := ROCDate(Now,'/')+' '+ROCTimes(Now,':');
    Frmchdocprnt.QuickRep1.Print;
  end
  else
    ShowMessage('�S���');
  Frmchdocprnt.ADOQuery1.Close;
  freeandnil(Frmchdocprnt);
end;

end.
