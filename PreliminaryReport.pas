unit PreliminaryReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Mask, Grids, ComCtrls, StdCtrls, Buttons, ExtCtrls, Menus,
  QRExport, ShellAPI;

type
  TFrmPreliminaryReport = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    MemoREPORT_DESC: TMemo;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    CHECKITEM: TMemo;
    Label3: TLabel;
    Label5: TLabel;
    STUser: TStaticText;
    SGRPTLIS: TStringGrid;
    Panel3: TPanel;
    PMRPTDC: TPopupMenu;
    DC1: TMenuItem;
    SaveDialog1: TSaveDialog;
    QRHTMLFilter1: TQRHTMLFilter;
    Label2: TLabel;
    SGlist: TStringGrid;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SGlistClick(Sender: TObject);
    procedure SGlistDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGRPTLISDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGRPTLISClick(Sender: TObject);
    procedure DC1Click(Sender: TObject);
    procedure SGRPTLISMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SGlistMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure getreportlist;
    Procedure showdata();
    procedure emrdata(seq:string);
    function  sample(category: string):string;
  public
    { Public declarations }
    prelage:string;
  end;

var
  FrmPreliminaryReport: TFrmPreliminaryReport;

implementation

uses DBDM, Global, Commfunc, MySQLc, DB, Math, prdliminaryprt_U, ERsFunc;

{$R *.dfm}

procedure TFrmPreliminaryReport.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmPreliminaryReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmPreliminaryReport.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPreliminaryReport := nil;
end;

procedure TFrmPreliminaryReport.BitBtn1Click(Sender: TObject);
var
  sqlstr,seqno,oldseqno,fee_code : string;
  i,rows: integer;
begin
  inherited;
  fee_code := '';
  for i := 1 to SGlist.RowCount-1 do
  begin
    if SGlist.Cells[0,i] = 'V' then
    begin
      fee_code := trim(SGlist.Cells[3,i]);
      Break;
    end;
  end;
  if fee_code = '' then
  begin
    ShowMessage('請選擇檢查項目');
    Exit;
  end;
  
  DM.QryInsert.Close;
  sqlstr := preliminaryrept(3);
  SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := sqlstr;
  DM.QryTemp.Open;
  if DM.QryTemp.FieldByName('seqno').AsInteger = 0 then
    seqno := '1'
  else
  begin
    oldseqno := DM.QryTemp.FieldByName('seqno').AsString;
    seqno    := IntToStr(DM.QryTemp.FieldByName('seqno').AsInteger+1);
  end;
  sqlstr := preliminaryrept(0);
  SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sqlstr,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(sqlstr,'$CODE_NO$',Qt(SGlist.Cells[4,sglist.row]));
  SetParamter(sqlstr,'$ITEM_NO$',Qt(SGlist.Cells[5,sglist.row]));
  SetParamter(sqlstr,'$SEQ_NO$',seqno);
  //20160513
  rows := 1;
  for i := 1 to SGlist.RowCount-1 do
  begin
    if (SGlist.Cells[0,i] = 'V') and (i <= 12) then
    begin
      SetParamter(sqlstr,'$FEE_CODE'+IntToStr(rows)+'$',Qt(trim(SGlist.Cells[3,i])));
      inc(rows);
    end;
  end;
  if rows < 12 then
    for i := rows to 12 do
    begin
      SetParamter(sqlstr,'$FEE_CODE'+IntToStr(rows)+'$',Qt(''));
      inc(rows);
    end;
  SetParamter(sqlstr,'$CHR_NO$',Qt(GetChrNo));
  SetParamter(sqlstr,'$DOC_CODE$',Qt(getUserId));
  SetParamter(sqlstr,'$LAB_NO$',Qt(GetFeeNo));
  SetParamter(sqlstr,'$REPORT_DESC$',Qt(MemoREPORT_DESC.Lines.Text));
  SetParamter(sqlstr,'$UPD_OPER$',Qt(getUserId));
  SetParamter(sqlstr,'$UPD_DATE$',Qt(ROCDate(Now,'')));
  SetParamter(sqlstr,'$UPD_TIME$',Qt(ROCTime(Now,'')));
  SetParamter(sqlstr,'$REPORTDATE$',Qt(RocDate(DateTimePicker2.DateTime,'')));
  SetParamter(sqlstr,'$REPORTTIME$',Qt(MaskEdit2.Text));
  SetParamter(sqlstr,'$CHECKITEM$',Qt(CHECKITEM.Lines.Text));
  SetParamter(sqlstr,'$PRINT_TIMES$','0');
  SetParamter(sqlstr,'$CNCL_FLAG$',Qt('N'));
  try
    DM.ADOLink.BeginTrans;
    DM.QryInsert.SQL.Clear;
    DM.QryInsert.SQL.Text := sqlstr;
    DM.QryInsert.ExecSQL;
    DM.ADOLink.CommitTrans;
  except 
    DM.ADOLink.RollbackTrans;
    Exit;
  end;
  //列印紙本

  if not Assigned(prdliminaryprt) then
    prdliminaryprt := Tprdliminaryprt.Create(nil);
  prdliminaryprt.QRLbchrno.Caption := GetChrNo;
  prdliminaryprt.QRLbName.Caption  := GetPatName;
  prdliminaryprt.QRLbVS.Caption    := GETDOCNAME(GetVsCode);
  prdliminaryprt.QRLbEXS.Caption   := GetSex(Getsex01);
  prdliminaryprt.QRLbOrderDOC.Caption := GETDOCNAME(getorderdoc);
  prdliminaryprt.QRLbBirthday.Caption := '民國 ' +ROCDate(ROCToDate(GetBirth),'\');
  prdliminaryprt.QRLbRPTDate.Caption := FormatDateTime('YYYY\MM\DD',DateTimePicker2.DateTime)+' '+(MaskEdit2.Text);
  prdliminaryprt.QRLbRPTDOC.Caption  := GETDOCNAME(getUserId);
  prdliminaryprt.QRLbAge.Caption     := prelage;
  prdliminaryprt.QRMemo1.Lines.Text  := CHECKITEM.Lines.Text;
  prdliminaryprt.QRMemo2.Lines.Text  := MemoREPORT_DESC.Lines.Text;
  prdliminaryprt.QRLabel16.Caption   := '判讀醫師簽章: '+ GETDOCNAME(getUserId);

  sqlstr := preliminaryrept(5);
  SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sqlstr,'$DOC_CODE$',Qt(getUserId));
  SetParamter(sqlstr,'$SEQ_NO$',seqno);
  try
    emrdata(seqno);
    if MessageDlg('是否列印?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      prdliminaryprt.QRLabel16.Caption  :='判讀醫師簽章:____________ ';
      prdliminaryprt.Prepare;
      prdliminaryprt.Print;
    end;
    FreeAndNil(prdliminaryprt);

    DM.ADOLink.BeginTrans;
    DM.QryInsert.SQL.Clear;
    DM.QryInsert.SQL.Text := sqlstr;
    DM.QryInsert.ExecSQL;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
    Exit;
  end;
  getreportlist;
end;

procedure TFrmPreliminaryReport.FormShow(Sender: TObject);
var
  tsqlstr: TStringList;
  sqlt,q_strt:string;
  i: integer;
begin
  inherited;
  tsqlstr := TStringList.Create;
  //檢驗項目
  q_strt := Setsys.ReadString('SYSTEM','PRELIMINARY','');
  sqlt := preliminaryrept(1);
  SetParamter(sqlt,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sqlt,'$FEECODE$',Qts(q_strt));
  SetParamter(sqlt,'$OPD_DATE$',Qt(GetEpdDate));
  tsqlstr.Text := sqlt;
  if not DM.OpenSQL(tsqlstr,SGlist) then
    //ShowMessage('沒有資料可選');

  SGlist.ColWidths[0] := 35;
  SGlist.ColWidths[1] := 60;
  SGlist.ColWidths[2] := 180;
  SGlist.ColWidths[3] := 80;
  SGlist.ColWidths[4] := 30;
  SGlist.ColWidths[5] := 45;
  SGlist.ColWidths[6] := 45;
  SGlist.ColWidths[0] := 45;
  SGlist.Cells[0,0] := '選';
  SGlist.Cells[1,0] := '日期';
  SGlist.Cells[2,0] := '檢驗名稱';
  SGlist.Cells[3,0] := '項目待碼';
  SGlist.Cells[4,0] := '類別';
  SGlist.Cells[5,0] := '項目序號';
  SGlist.Cells[6,0] := '序號';
  SGlist.Cells[7,0] := '醫師';
  SGlist.Row := 1;
  DateTimePicker2.DateTime := Now;
  MaskEdit2.Text := ROCTime(Now,'');
  STUser.Caption := GETDOCNAME(getUserId);
  //取已輸入過的報告
  getreportlist;
  for i := 0 to SGRPTLIS.ColCount-1 do
  begin
    case i of
      0: SGRPTLIS.ColWidths[0] := 35;
      1: SGRPTLIS.ColWidths[1] := 60;
      2: SGRPTLIS.ColWidths[2] := 215;
      3: SGRPTLIS.ColWidths[3] := 64;
      4: SGRPTLIS.ColWidths[4] := 64;
      5: SGRPTLIS.ColWidths[5] := 64;
    else
      SGRPTLIS.ColWidths[i] := -1;
    end;
  end;
  
  {20160510
  for i := 1 to SGlist.RowCount -1 do
  begin
    SGlist.Row := i;
    SGlistClick(Self);
  end;}
  //20160408不自動帶
  //SGRPTLIS.OnClick(SGRPTLIS);
end;

procedure TFrmPreliminaryReport.SGlistClick(Sender: TObject);
var
  sqlt:string;
  i: integer;
begin
  inherited;
  if sglist.row > 0 then
    IF (TStringGrid(Sender).Col=0) THEN
    BEGIN
      if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) = '' then
      begin
        TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := 'V';
        if (trim(SGlist.Cells[2, sglist.row]) <> '') and (SGlist.row>0) then
          CHECKITEM.Lines.Add(trim(FulltoHalf(SGlist.Cells[2, sglist.row])));
      end
      else
        if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) ='V' then
        begin
          TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := '';
          i := CHECKITEM.Lines.IndexOf(trim(FulltoHalf(SGlist.Cells[2, sglist.row])));
          if i <> -1 then
            CHECKITEM.Lines.Delete(i);
        end;
    END;
  TStringGrid(Sender).Repaint;
end;

procedure TFrmPreliminaryReport.SGlistDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if (ARow mod 2) = 0 then
    TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
  else
    TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  if TStringGrid(Sender).Row = ARow then
    TStringGrid(Sender).Canvas.Font.Color := clblue
  else
    TStringGrid(Sender).Canvas.Font.Color := clblack;
end;

procedure TFrmPreliminaryReport.SGRPTLISDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  str: string;
begin
  inherited;
  if (ARow mod 2) = 0 then
    TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
  else
    TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  str := TStringGrid(Sender).Cells[acol,arow];
  if (acol = 0) and (TStringGrid(Sender).Cells[11,ARow] ='Y') then
    str := 'DC';
  if TStringGrid(Sender).Row = ARow then
  begin
    TStringGrid(Sender).Canvas.Font.Color := clWindowText;
    TStringGrid(Sender).Canvas.Brush.Color := clActiveCaption;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  DrawText(TStringGrid(Sender).Canvas.Handle,pchar(' '+Str),Length(Str)+1,Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );

end;

procedure TFrmPreliminaryReport.SGRPTLISClick(Sender: TObject);
begin
  inherited;
  if (trim(SGRPTLIS.Cells[0,SGRPTLIS.Row]) <> '') and (SGRPTLIS.Row > 0) then
    showdata;
end;

procedure TFrmPreliminaryReport.showdata;
begin
   DateTimePicker2.DateTime   := ROCToDate(SGRPTLIS.Cells[7,SGRPTLIS.row]);
   MaskEdit2.Text             := SGRPTLIS.Cells[8,SGRPTLIS.Row];
   STUser.Caption             := GETDOCNAME(SGRPTLIS.Cells[4,SGRPTLIS.Row]);
   CHECKITEM.Lines.Text       := SGRPTLIS.Cells[9,SGRPTLIS.Row];
   MemoREPORT_DESC.Lines.Text := SGRPTLIS.Cells[6,SGRPTLIS.Row];
end;

procedure TFrmPreliminaryReport.DC1Click(Sender: TObject);
var
  tsqlstr: TStringList;
  sqlstr : string;
begin
  inherited;
  tsqlstr := TStringList.Create;
  try
    DM.ADOLink.BeginTrans;
    DM.QryInsert.SQL.Clear;
    //update old cncl_flag
    sqlstr := preliminaryrept(6);
    SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sqlstr,'$SEQ_NO$',SGRPTLIS.Cells[0,SGRPTLIS.Row]);
    DM.QryInsert.SQL.Text := sqlstr;
    DM.QryInsert.ExecSQL;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
  end;
  //電子病歷刪除
  if not Assigned(prdliminaryprt) then
    prdliminaryprt := Tprdliminaryprt.Create(nil);
  prdliminaryprt.QRLabel13.Caption := 'DC';
  prdliminaryprt.QRLbchrno.Caption := GetChrNo;
  prdliminaryprt.QRLbName.Caption  := GetPatName;
  prdliminaryprt.QRLbVS.Caption    := GETDOCNAME(GetVsCode);
  prdliminaryprt.QRLbEXS.Caption   := GetSex(Getsex01);
  prdliminaryprt.QRLbOrderDOC.Caption := GETDOCNAME(getorderdoc);
  prdliminaryprt.QRLbBirthday.Caption := '民國 ' +ROCDate(ROCToDate(GetBirth),'\');
  prdliminaryprt.QRLbRPTDate.Caption  := FormatDateTime('YYYY\MM\DD',DateTimePicker2.DateTime)+' '+(MaskEdit2.Text);
  prdliminaryprt.QRLbRPTDOC.Caption   := GETDOCNAME(getUserId);
  prdliminaryprt.QRLbAge.Caption      := prelage;
  prdliminaryprt.QRMemo1.Lines.Text   := CHECKITEM.Lines.Text;
  prdliminaryprt.QRMemo2.Lines.Text   := MemoREPORT_DESC.Lines.Text;

  emrdata(SGRPTLIS.Cells[0,SGRPTLIS.Row]);

  FreeAndNil(prdliminaryprt);

  //取已輸入過的報告
  getreportlist;
end;

procedure TFrmPreliminaryReport.SGRPTLISMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  if gid.y > 0 then
  begin
    TStringGrid(Sender).Row := Gid.Y;
    SGRPTLIS.Repaint;
  end;

end;

procedure TFrmPreliminaryReport.emrdata(seq:string);
var
  //qrdesc: TQRAsciiExportFilter;
  wStr,DD,DTIM,end_date,merpdf,Hospt,strdept: String;
  i: integer;
  bitMap: TBitMap;
begin
  prdliminaryprt.Prepare;
  for i := 0 to prdliminaryprt.QRPrinter.PageCount-1 do
  begin
    bitMap := TBitMap.Create;
    bitmap.Width := prdliminaryprt.Width;
    bitmap.Height :=  prdliminaryprt.Height;
    bitmap.Canvas.Draw(0, 0,prdliminaryprt.QRPrinter.GetPage(i+1));
    bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +'\'+trim(GetChrNo)+IntToStr(i)+'.bmp');
    bitMap.Free;
  end;
  //送電子病歷
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  DM.QrySearch.SQL.Text := 'select case when  instr(hosp_name,''萬芳'')> 0 then ''WFH'' '+
                           'when instr(hosp_name,''雙和'') > 0 then ''SHH'' else ''TMUH'' end as sp from hosp_basic ' ;
  DM.QrySearch.Open;
  Hospt := DM.QrySearch.fieldbyname('sp').AsString;
  if Hospt = 'WFH' then
    strdept := '3800'
  else
    strdept := '86';

  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  DM.QrySearch.SQL.Text := 'select to_char(sysdate,''YYYYMMDD'') as dd,to_char(sysdate,''HH24MISS'') as tt from dual';
  DM.QrySearch.Open;
  DD  := DM.QrySearch.fieldbyname('dd').AsString;
  DTIM:= DM.QrySearch.fieldbyname('tt').AsString;

  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  DM.QrySearch.SQL.Text := 'select decode(trim(end_date),''9999999'',to_char(sysdate,''YYYYMMDD''),'''',to_char(sysdate,''YYYYMMDD''),end_date+19110000) end_date from epd_his where fee_no='+Qt(GetFeeNo)+' and epd_date='+qt(GetEpdDate);
  DM.QrySearch.Open;
  if not DM.QrySearch.IsEmpty then
    end_date := DM.QrySearch.fieldbyname('end_date').AsString
  else
    end_date := FormatDateTime('YYYYMMDD',Now);

  wStr := '<RequestDate>'+DD+'</RequestDate>';                                   // <--!送簽日期(請取 Server 日期)-->
  wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                          // <--!送簽時間(請取 Server 時間)-->
  if UpperCase(SetSys.ReadString('SYSTEM','EMRVSDOC',''))= 'TRUE' then
  begin
    wStr := wStr + '<RequestUser>'+GetVsCode+'</RequestUser>';                   //'+GetVsCode+' <--!送簽者代號-->
    wStr := wStr + '<RequestUserName>'+GETDOCNAME(GetVsCode)+'</RequestUserName>';
    wStr := wStr + '<UserIDNO>'+GetVsCode+'</UserIDNO>';                         // <--!送簽者身份證號-->
  end
  else
  begin
    wStr := wStr + '<RequestUser>'+getUserId+'</RequestUser>';                   //'+GetVsCode+' <--!送簽者代號-->
    wStr := wStr + '<RequestUserName>'+GETDOCNAME(getUserId)+'</RequestUserName>';
    wStr := wStr + '<UserIDNO>'+getUserId+'</UserIDNO>';                         // <--!送簽者身份證號-->
  end;
  wStr := wStr + '<RequestDivision>'+strdept+'</RequestDivision>';               // <--!送簽部門代號-->
  wStr := wStr + '<FileName>'+GetChrNo+'.pdf'+'</FileName>';
  wStr := wStr + '<SignSystem>EPD</SignSystem>';                                 //<--!送簽系統代號-->
  wStr := wStr + '<RequestDocType>EPDECHO</RequestDocType>';                    // <--!病歷類別代碼-->
  wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';                      // <--!相等於HIS產生此文件的日期-->
  wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';                    // <--!相等於HIS產生此文件的時間-->
  wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';                // <--!相等於HIS的就診流水號-->
  wStr := wStr + '<RequestDocNo>'+ 'EPD' + GetSheet + seq +'</RequestDocNo>';    // <--!相等於HIS的文件或記錄絕對編號-->
  wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';            //
  wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';      //
  wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!就診日期-->
  wStr := wStr + '<Category>E</Category>';                                       //<--!就診別-->
  wStr := wStr + '<DocCharge>001</DocCharge>';                                   //<--!文件費別-->
  wStr := wStr + '<InHospital>0</InHospital>';                                   //<--!是否住院-->
  wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';                  //<--!出院日期-->
  wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);

  //SaveDialog1.FileName := GetChrNo+'.txt';
  //qrdesc := TQRAsciiExportFilter.Create(SaveDialog1.FileName);
  //prdliminaryprt.ExportToFilter(qrdesc);

  if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(GetChrNo)+'.bmp 1 1 '+Hospt+' '+wStr) ),SW_HIDE) < 31 then
    if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(GetChrNo)+'.bmp 1 1 '+Hospt+' '+wStr),nil,SW_HIDE) < 33 then
    begin
      use_opd_log(GetChrNo+'_電子病歷上傳錯誤');
    end;
end;

procedure TFrmPreliminaryReport.SGlistMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 gid: TGridCoord;

begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  if gid.y > 0 then
  begin
    TStringGrid(Sender).Row := Gid.Y;
    TStringGrid(Sender).Col := Gid.x;
  end;
end;

procedure TFrmPreliminaryReport.BitBtn3Click(Sender: TObject);
begin
  inherited;
  DateTimePicker2.DateTime := Now;
  MaskEdit2.Text := ROCTime(Now,'');
  STUser.Caption := GETDOCNAME(getUserId);
  CHECKITEM.Lines.Clear;
  MemoREPORT_DESC.Clear;

end;

procedure TFrmPreliminaryReport.getreportlist;
var
  tsqlstr: TStringList;
  sqlstr : string;
begin
  inherited;
  tsqlstr := TStringList.Create;
  //取已輸入過的報告
  sqlstr := preliminaryrept(4);
  SetParamter(sqlstr,'$CHR_NO$',Qt(GetChrNo));
  tsqlstr.Text := sqlstr;
  if not DM.OpenSQL(tsqlstr,SGRPTLIS) then
  begin
    //ShowMessage('沒有資料可選');
  end;
  SGRPTLIS.Repaint;
end;

function  TFrmPreliminaryReport.sample(category: string):string;
var
  temp:string;
begin
  if category = 'Abdominal_ultrasound' then
    temp := '[Liver]:'+#13+
            '   Parenchyma: Normal()'+#13+
            '               Heterogenous echogenicity()'+#13+
            '               Fatty liver()'+#13+
            '               Cirrhosis()'+#13+
            '   Space-occupying lesion: Nil(),'+#13+
            '               Nodule(), Size:   cm'+#13+
            '   Portal vein:Patent()'+#13+
            '               Thrombus()'+#13+
            '[Gallbladder]: Normal(),  Distended()'+#13+
            '   GB sludge()'+#13+
            '   GB stone()'+#13+
            '   Sono-Murphy''s sign()'+#13+
            '[CBD]: Normal()'+#13+
            '   Dilatation(),  Diameter:   mm'+#13+
            '[Pancreas]: Negative at body.'+#13+
            '   Head and tail were obscured by bowel gas.'+#13+
            '[Spleen]: Normal()'+#13+
            '   Enlargement()'+#13+
            '[Kidney]: Normal()'+#13+
            '   Hydronephrosis(),'+#13+
            '            Right(): Mild(), Moderate(), Severe()'+#13+
            '            Left(): Mild(), Moderate(), Severe()'+#13+
            '   Renal stone(), Right(), Left()'+#13+
            '[Others]:'+#13+
            '[Diagnosis]:';
  if category = 'FAST' then
    temp := '檢查適應症:'+#13+
            '    受傷部位：胸部() 腹部() 腰部() 背部() 其他()：'+#13+
            '    受傷機轉：車禍() 墜落() 槍擊() 其他()：'+#13+
            '    受傷類型：挫傷() 穿刺傷() 其他：'+#13+
            '[RUQ] Pleural fluid: Yes(); No()'+#13+
            '    補充說明:'+#13+
            '[Right Flank] Fluid in Morrison pouch: Yes(); No()'+#13+
            '    補充說明:'+#13+
            '[Subxiphoid] Pericardial fluid: Yes(); No()'+#13+
            '    補充說明:'+#13+
            '[LUQ] Pleural fluid: Yes(); No()'+#13+
            '    補充說明: '+#13+
            '[Left Flank] Fluid in Splenorenal space: Yes(); No()'+#13+
            '    補充說明:'+#13+
            '[Suprapubic] Ascites: Yes(); No()'+#13+
            '    補充說明:'+#13+
            '[其他]: '+#13+
            '[超音波診斷]：'+#13+
            ' 1. '+#13+
            ' 2. '+#13+
            ' 3. ';
  if category = 'RENAL' then
    temp := '[Right Kidney] Hydronephrosis:No()'+#13+
            '               Yes(); mild(); Moderate(); Severe()'+#13+
            '    Renal stone: No(); Yes()'+#13+
            '           Size: cm'+#13+
            '       補充說明:'+#13+
            '[Left Kidney] Hydronephrosis: No()'+#13+
            '              Yes(); mild(); Moderate(); Severe()'+#13+
            '    Renal stone: No(); Yes()'+#13+
            '           Size: cm'+#13+
            '       補充說明:'+#13+
            '[其他]: '+#13+
            '[超音波診斷]：'+#13+
            ' 1. '+#13+
            ' 2. '+#13+
            ' 3. ';
  if category = 'SHOCK' then
    temp := '[Heart]'+#13+
            '    Pericardial effusion with tamponade: Yes(); No()'+#13+
            '    Hyperkinetic left ventricle: Yes(); No()'+#13+
            '    Hypokinetic left ventricle (moderate or severe): Yes(); No()'+#13+
            '    Dilated and/or hypokinetic right ventricle: Yes(); No()'+#13+
            '[Inferior vena cava]'+#13+
            '    Max. diameter: cm'+#13+
            '    Respiratory collapse &lt;50%: Yes(); No()'+#13+
            '[Lungs]'+#13+
            '    A pattern (absence of multiple B lines): Yes(); No()'+#13+
            '    B pattern (multiple B lines diffuse and bilateral): Yes(); No()'+#13+
            '    Lung sliding: Yes(); No()'+#13+
            '[Abdomen]'+#13+
            '    Peritoneal free fluid: Yes(); No()'+#13+
            '    Aortic aneurysm: Yes(); No()';
  Result := temp;
end;

procedure TFrmPreliminaryReport.Button1Click(Sender: TObject);
begin
  inherited;
  {if trim(MemoREPORT_DESC.Lines.Text) <> '' then
  begin
    if MessageDlg('清除目前的資料 [Yes] '+#10#13+'加入目前資料後 [No]',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      MemoREPORT_DESC.Lines.Text := sample('Abdominal_ultrasound')
    else
      MemoREPORT_DESC.Lines.Add(sample('Abdominal_ultrasound'));
  end
  else }
    MemoREPORT_DESC.Lines.Text := sample(TButton(Sender).Hint);

end;

end.
