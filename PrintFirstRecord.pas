unit PrintFirstRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls, SHELLapi;

type
  TFrmPrintFirstRecord = class(TFrmMain)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    TitleBand1: TQRBand;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRLablpag: TQRLabel;
    Image0: TImage;
    PageHeaderBand1: TQRBand;
    QRLbArrival: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLbBirthday: TQRLabel;
    QRLbSex: TQRLabel;
    QRLbchrno: TQRLabel;
    QRLbpatname: TQRLabel;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel17: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel11: TQRLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLablpagPrint(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    clo,pag: Integer;
  public
    { Public declarations }
    MYMEMO: TStringList;
    print_flag : Integer;
    PICFLAG,docno : string;
    procedure PrepareSQL(kind: string);
    procedure qrtobmp;
  end;

var
  FrmPrintFirstRecord: TFrmPrintFirstRecord;

implementation

uses Math, PubPrintMain, Global, tnpdf, DBDM, Commfunc, ERsFunc;

{$R *.dfm}

procedure TFrmPrintFirstRecord.qrtobmp;
var
  BMP:   TBitMap;
  StoredUnits:   TQRUnit;
  i:   integer;
  StoreDir:   string;
  p:TPrintPDF;
  f: textfile;
  wStr,filename: String;
begin
//�{�����e
    StoreDir:= '';
    StoredUnits:=QuickRep1.Units;
    QuickRep1.Units:=Pixels;
    p:=TPrintPDF.Create(Self);
    with p do
    begin
      try
        FileName:='c:\test.pdf';//the name of the PDF file

        Title:='The PDF Demo';//set document's title

        //Now set page width/height
        //PageWidth:=600;
        //PageHeight:=700;

        BeginDoc; //Start Document

        LineWidth:=1; //Set Line
        //Set Font
        Font.Name:=poTimesRoman;
        Font.Size:=12;

        for   i:=1   to   QuickRep1.QRPrinter.PageCount   do
        begin
          //Image1.Picture.Graphic := nil;
          BMP:=TBitMap.Create;
          BMP.PixelFormat := pf24bit;
          try
            BMP.Width:=Round(QuickRep1.Page.Width);
            BMP.Height:=Round(QuickRep1.Page.Length);
            BMP.Canvas.Draw(10,   10,   QuickRep1.QRPrinter.GetPage(i));
            //Image1.Picture.Graphic := BMP;

            //Draw(10,10,Image1); //Draw image1 at x,y coord.
            DrawJPEG(0,0,BMP);
            if i < QuickRep1.QRPrinter.PageCount then
              NewPage; //start new page
          finally
            BMP.Free;
          end;
        end;
        EndDoc;//the document end

      finally
        Free; //Free the PDF object
        QuickRep1.Units:=StoredUnits;
      end;
    end;
end;



procedure TFrmPrintFirstRecord.PrepareSQL(kind: string);
var
  bitMap: TBitMap;
  i : integer;
  wStr,DD,DTIM,end_date,merpdf,Hospt,strdept: String;
begin
  QuickRep1.Prepare;
  pag := QuickRep1.Printer.PageCount;
  IF (EMRPrint_EVERY_TIME) AND (kind = 'Save') THEN
  begin
    for i := 0 to QuickRep1.QRPrinter.PageCount-1 do
    begin
      bitMap := TBitMap.Create;
      bitmap.Width := QuickRep1.Width;
      bitmap.Height :=  QuickRep1.Height;
      bitmap.Canvas.Draw(0, 0,
                           QuickRep1.QRPrinter.GetPage(i+1));
      bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +'\'+trim(QRLbchrno.Caption)+IntToStr(i)+'.bmp');
      bitMap.Free;
    end;
    //qrtobmp;

    //�W�ǹq�l�f��
    wStr := '';
    DM.QrySearch.Close;
    DM.QrySearch.SQL.Clear;
    DM.QrySearch.SQL.Text := 'select case when  instr(hosp_name,''�U��'')> 0 then ''WFH'' '+
                             'when instr(hosp_name,''���M'') > 0 then ''SHH'' else ''TMUH'' end as sp from hosp_basic ' ;
    DM.QrySearch.Open;
    Hospt := DM.QrySearch.fieldbyname('sp').AsString;
    if Hospt = 'WFH' then
      strdept := '3800'
    else
      strdept := '86';
    //hospt := 'WFH';
    DM.QrySearch.Close;
    DM.QrySearch.SQL.Clear;
    DM.QrySearch.SQL.Text := 'select to_char(sysdate,''YYYYMMDD'') as dd,to_char(sysdate,''HH24MISS'') as tt from dual';
    DM.QrySearch.Open;
    DD  := DM.QrySearch.fieldbyname('dd').AsString;
    DTIM:= DM.QrySearch.fieldbyname('tt').AsString;
    DM.QrySearch.Close;
    DM.QrySearch.SQL.Clear;
    DM.QrySearch.SQL.Text := 'select decode(trim(end_date),''9999999'',to_char(sysdate,''YYYYMMDD''),'''',to_char(sysdate,''YYYYMMDD''),end_date+19110000) end_date '+
                             'from epd_his where fee_no='+Qt(GetFeeNo)+' AND epd_date='+qt(GetEpdDate);
    DM.QrySearch.Open;
    if not DM.QrySearch.IsEmpty then
      end_date := DM.QrySearch.fieldbyname('end_date').AsString
    else
      end_date := FormatDateTime('YYYYMMDD',Now);

    wStr := '<RequestDate>'+DD+'</RequestDate>';                             // <--!�eñ���(�Ш� Server ���)-->
    wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                     // <--!�eñ�ɶ�(�Ш� Server �ɶ�)-->
    if UpperCase(SetSys.ReadString('SYSTEM','EMRVSDOC',''))= 'TRUE' then
    begin
      wStr := wStr + '<RequestUser>'+GetVsCode+'</RequestUser>';                  //'+GetVsCode+' <--!�eñ�̥N��-->
      wStr := wStr + '<RequestUserName>'+GETDOCNAME(GetVsCode)+'</RequestUserName>';
      wStr := wStr + '<UserIDNO>'+GetVsCode+'</UserIDNO>';                      // <--!�eñ�̨����Ҹ�-->
    end
    else
    begin
      wStr := wStr + '<RequestUser>'+getUserId+'</RequestUser>';                  //'+GetVsCode+' <--!�eñ�̥N��-->
      wStr := wStr + '<RequestUserName>'+GETDOCNAME(getUserId)+'</RequestUserName>';
      wStr := wStr + '<UserIDNO>'+getUserId+'</UserIDNO>';                      // <--!�eñ�̨����Ҹ�-->
    end;
    wStr := wStr + '<RequestDivision>'+strdept+'</RequestDivision>';                  // <--!�eñ�����N��-->
    wStr := wStr + '<FileName>'+QRLbchrno.Caption+'.pdf'+'</FileName>';
    wStr := wStr + '<SignSystem>EPD</SignSystem>';                       //<--!�eñ�t�ΥN��-->
    wStr := wStr + '<RequestDocType>EPDADMIN</RequestDocType>';          // <--!�f�����O�N�X-->
    wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';            // <--!�۵���HIS���ͦ���󪺤��-->
    wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';           // <--!�۵���HIS���ͦ���󪺮ɶ�-->
    wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';       // <--!�۵���HIS���N�E�y����-->
    //20160627��docno(getsheet)
    //110.05.12 shh ITe modify RequestDocNo �[�J����u��index
    wStr := wStr + '<RequestDocNo>'+ 'EPD' + docno + GetFeeNo +'</RequestDocNo>';   // <--!�۵���HIS�����ΰO������s��-->
    wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';      //
    wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';   //
    wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!�N�E���-->
    wStr := wStr + '<Category>E</Category>';                              //<--!�N�E�O-->
    wStr := wStr + '<DocCharge>001</DocCharge>';                          //<--!���O�O-->
    wStr := wStr + '<InHospital>0</InHospital>';                           //<--!�O�_��|-->
    wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';           //<--!�X�|���-->
    wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);

    if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.bmp 1 1 '+Hospt+' '+wStr) ),SW_HIDE) < 31 then
    begin
      use_opd_log(GetChrNo+'EPDADMIN�q�l�f���W�ǿ��~1');
      if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.bmp 1 1 '+Hospt+' '+wStr),nil,SW_HIDE) <= 32 then
        use_opd_log(GetChrNo+'EPDADMIN�q�l�f���W�ǿ��~2')
      else
        use_opd_log(GetChrNo+'EPDADMIN�q�l�f���W�Ǧ��\2');
    end
    else
      use_opd_log(GetChrNo+'EPDADMIN�q�l�f���W�Ǧ��\1');
  end;
  
  if kind = 'reprint' then
  begin
    QuickRep1.Print;
  end
  else
  begin
    if not DONOT_PRINT_PAPER then
      QuickRep1.Print;
  end;
  print_flag := 1;
  FrmPrintFirstRecord.Close;
end;

procedure TFrmPrintFirstRecord.FormCreate(Sender: TObject);
begin
  inherited;
  MYMEMO := TStringList.Create;
end;

procedure TFrmPrintFirstRecord.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  clo := 0;
end;

procedure TFrmPrintFirstRecord.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
  MoreData :=  MYMEMO.Count > clo;
  if not MoreData then
    QRLablpag.Caption := IntToStr(pag);
end;

procedure TFrmPrintFirstRecord.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  inc(clo);
end;

procedure TFrmPrintFirstRecord.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := MYMEMO.Strings[clo];
  If Pos('��',Value) > 0 then
  begin
    QRLabel6.Font.Name := '�з���';
    QRLabel6.Font.Size := 13;
    QRLabel6.Font.Style := [fsbold];
  end
  else if Pos('*',Value) > 0 then
  begin
    QRLabel6.Font.Name := 'Verdana';
    QRLabel6.Font.Size := 12;
    //QRLabel6.Font.Style := [fsbold];
    QRLabel6.Font.Style := [];
  end
  else if Pos('#P#',Value) > 0 then
  begin
    Value := '    '+copy(Value,4,length(Value));
    QRLabel6.Font.Name := '�ө���';
    QRLabel6.Font.Size := 12;
    QRLabel6.Font.Style := [fsbold];
  end
  else
  begin
    QRLabel6.Font.Name := 'Verdana';
    QRLabel6.Font.Size := 11;
    QRLabel6.Font.Style := [];
  end
end;

procedure TFrmPrintFirstRecord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmPrintFirstRecord.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPrintFirstRecord := nil;
end;

procedure TFrmPrintFirstRecord.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if PICFLAG = 'Y' then
    QRImage1.Picture := Image1.Picture
  else
    IF not DONOT_PRINT_PAPER THEN
      QRImage1.Picture := Image0.Picture;

end;

procedure TFrmPrintFirstRecord.QRLablpagPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := IntToStr(pag);
end;

procedure TFrmPrintFirstRecord.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmPrintFirstRecord.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmPrintFirstRecord.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  IF (DONOT_PRINT_PAPER) and (PICFLAG = 'N') THEN
    PrintBand := FALSE;
end;

procedure TFrmPrintFirstRecord.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  //20160531�q�l�f�����L�C�L��v�P����
  IF DONOT_PRINT_PAPER THEN
    PrintBand := False;
end;

end.
