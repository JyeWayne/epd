unit PrintPatData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls, DB, ADODB, StdCtrls,
  QRExport, SHELLapi;

type
  TFrmPrintPatData = class(TFrmMain)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel4: TQRLabel;
    qryprint: TADOQuery;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLBIdNo: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLbBirthday: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLbSex: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLbArrival: TQRLabel;
    QRShape5: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLbchrno: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape8: TQRShape;
    QRLbpatname: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLbage: TQRLabel;
    QRShape9: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape10: TQRShape;
    QRLbtalheatcir: TQRLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    Image1: TImage;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLbtalheatcirPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    clo : Integer;
    procedure qrtobmp;
  public
    { Public declarations }
    MYMEMO: TStringList;
    procedure PrepareSQL;

  end;

var
  FrmPrintPatData: TFrmPrintPatData;

implementation

uses DBDM, Global, Commfunc;



{$R *.dfm}

procedure TFrmPrintPatData.qrtobmp;
{var
  BMP:   TBitMap;
  StoredUnits:   TQRUnit;
  i:   integer;
  StoreDir:   string;
  p:TPrintPDF;
  f: textfile;
  wStr,filename: String; }
begin
//程式內容
   { StoreDir:= '';
    StoredUnits:=QuickRep1.Units;
    QuickRep1.Units:=Pixels;
    p:=TPrintPDF.Create(Self);
    with p do
    begin
      try
        FileName:='c:\test.pdf';//the name of the PDF file

        Title:='The PDF Demo';//set document's title

        //Now set page width/height
        PageWidth:=600;
        PageHeight:=700;

        BeginDoc; //Start Document

        LineWidth:=1; //Set Line
        //Set Font
        Font.Name:=poTimesRoman;
        Font.Size:=12;

        for   i:=1   to   QuickRep1.QRPrinter.PageCount   do
        begin
          Image1.Picture.Graphic := nil;
          BMP:=TBitMap.Create;
          try
            BMP.Width:=Round(QuickRep1.Page.Width);
            BMP.Height:=Round(QuickRep1.Page.Length);
            //QuickRep1.QRPrinter.PageNumber:=i;
            BMP.Canvas.Draw(0,   0,   QuickRep1.QRPrinter.GetPage(i));
            Image1.Picture.Graphic := BMP;
            NewPage; //start new page
            Draw(10,10,Image1); //Draw image1 at x,y coord.
            //BMP.SaveToFile(StoreDir+ 'Page '+IntToStr(i)+ '.bmp ');
          finally
            BMP.Free;
          end;
        end;
        EndDoc;//the document end

      finally
        Free; //Free the PDF object
        QuickRep1.Units:=StoredUnits;
      end;
    end; }
end;



procedure TFrmPrintPatData.PrepareSQL;
   var
   {Pdf: TPdfDocument;
    aMeta: TMetaFile;
    i: integer;
    aFileName:string;  }
    //vpdf : TPdfDocumentGDI;
    pagemeta : TMetafile;
    p : integer;
    //qrdesc: TQRHTMLDocumentFilter;
    qrdesc: TQRAsciiExportFilter;
    wStr,DD,DTIM,end_date,merpdf,Hospt: String;
    //p:TPrintPDF;
    //f: textfile;
    //wStr,filename: String;
begin
  if MYMEMO.Text<> '' then
  begin
    QuickRep1.Prepare;
    wStr := '';
    QRLabel13.Caption := IntToStr(QuickRep1.QRPrinter.PageCount);
    QuickRep1.Preview;

   // vpdf := TPdfDocumentGDI.Create(true, 1252,false);
   // vpdf.CompressionMethod := cmNone;
   // for p := 1 to QuickRep1.QRPrinter.PageCount do
   // begin
   //   vpdf.AddPage;
   //   pagemeta := QuickRep1.QRPrinter.GetPage(p);
   //   vpdf.VCLCanvas.Draw(0,0,pagemeta);
   // end;
   // vpdf.SaveToFile('metafilepdf.pdf');
   // vpdf.free;

     {
    //to pdf
    aFileName := 'TestFFF.PDF';
    Pdf := TPdfDocument.Create;
    try
      Pdf.DefaultPaperSize := psLetter;
     // pdf.FontFallBackName :=  '標楷體';

      QuickRep1.Prepare;
      for i := 1 to QuickRep1.QRPrinter.PageCount do
      begin
        aMeta := QuickRep1.QRPrinter.GetPage(i);
        try
          //Pdf.DefaultPageWidth := MulDiv(aMeta.Width,72,Pdf.ScreenLogPixels);
          //Pdf.DefaultPageHeight := MulDiv(aMeta.Height,72,Pdf.ScreenLogPixels);
          Pdf.AddPage;
          // draw the page content
          Pdf.Canvas.RenderMetaFile(aMeta,1,0,0);
        finally
          aMeta.Free;
        end;
      end;
      Pdf.SaveToFile(aFileName);
    finally
      Pdf.free;
    end;
    //to pdf end
      }



    //qrtobmp;//to -> *.bmp -> pdf

   { p:=TPrintPDF.Create(Self);
    with p do
    begin

      FileName:='c:\'+QRLbchrno.Caption+'.pdf';//the name of the PDF file

      Title:='The PDF Demo';//set document's title

      //Now set page width/height
      PageWidth:=600;
      PageHeight:=700;

      BeginDoc; //Start Document

      LineWidth:=1; //Set Line
      //Set Font
      Font.Name:=poTimesRoman;
      Font.Size:=12;

      //MemoOut(10,10,Memo1); //Write the memo contents

      //NewPage; //start new page
      //Draw(10,10,Image1); //Draw image1 at x,y coord.
      SaveDialog1.FileName := 'string.txt';
      qrdesc := TQRAsciiExportFilter.Create(SaveDialog1.FileName);
      QuickRep1.ExportToFilter(qrdesc);
      //filename := 'string.txt' ;
      if fileexists('string.txt')=true then
      begin
        Assignfile(f, 'string.txt');
        Reset(f);

        while not eof(f) do
        begin
          Readln(f, wStr);
          Memo1.Lines.Add(wStr);
        end;
      
      closefile(f);
      end;


       MemoOut(10,10,Memo1);
      //NewPage;
      //TextOut(10,10,'This is the end...');//Output a string
      EndDoc;//the document end
      Free; //Free the PDF object

   end;
       }
    //SaveDialog1.FileName := 'string.html';
    //qrdesc := TQRHTMLDocumentFilter.Create(SaveDialog1.FileName);
    //qrdesc.

    //QuickRep1.ExportToFilter(qrdesc);

    //to txt
    //確認使用再開20150609
    {merpdf := SetSys.ReadString('SYSTEM','EMRPDF','False');

      if UpperCase(merpdf)= 'TRUE' then
      begin
        DM.QrySearch.Close;
        DM.QrySearch.SQL.Clear;
        DM.QrySearch.SQL.Text := 'select case when  instr(hosp_name,''萬芳'')> 0 then ''WFH'' '+
                                 'when instr(hosp_name,''雙和'') > 0 then ''SHH'' else ''TMUH'' end as sp from hosp_basic ' ;
        DM.QrySearch.Open;
        Hospt := DM.QrySearch.fieldbyname('sp').AsString;

        DM.QrySearch.Close;
        DM.QrySearch.SQL.Clear;
        DM.QrySearch.SQL.Text := 'select to_char(sysdate,''YYYYMMDD'') as dd,to_char(sysdate,''HH24MISS'') as tt from dual';
        DM.QrySearch.Open;
        DD  := DM.QrySearch.fieldbyname('dd').AsString;
        DTIM:= DM.QrySearch.fieldbyname('tt').AsString;
        DM.QrySearch.Close;
        DM.QrySearch.SQL.Clear;
        DM.QrySearch.SQL.Text := 'select decode(trim(end_date),''9999999'',to_char(sysdate,''YYYYMMDD''),'''',to_char(sysdate,''YYYYMMDD''),end_date+19110000) end_date from epd_his where fee_no='+Qt(GetFeeNo);
        DM.QrySearch.Open;
        if not DM.QrySearch.IsEmpty then
          end_date := DM.QrySearch.fieldbyname('end_date').AsString
        else
          end_date := FormatDateTime('YYYYMMDD',Now);

        wStr := '<RequestDate>'+DD+'</RequestDate>';                             // <--!送簽日期(請取 Server 日期)-->
        wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                     // <--!送簽時間(請取 Server 時間)-->
        wStr := wStr + '<RequestUser>'+GetVsCode+'</RequestUser>';                  //'+GetVsCode+' <--!送簽者代號-->
        wStr := wStr + '<RequestUserName>'+GETDOCNAME(GetVsCode)+'</RequestUserName>';
        wStr := wStr + '<UserIDNO>'+GetVsCode+'</UserIDNO>';                      // <--!送簽者身份證號-->
        wStr := wStr + '<RequestDivision>86</RequestDivision>';                  // <--!送簽部門代號-->
        wStr := wStr + '<FileName>'+QRLbchrno.Caption+'.pdf'+'</FileName>';
        wStr := wStr + '<SignSystem>EPD</SignSystem>';                       //<--!送簽系統代號-->
        wStr := wStr + '<RequestDocType>EPDORDER</RequestDocType>';          // <--!病歷類別代碼-->
        wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';            // <--!相等於HIS產生此文件的日期-->
        wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';           // <--!相等於HIS產生此文件的時間-->
        wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';       // <--!相等於HIS的就診流水號-->
        wStr := wStr + '<RequestDocNo>'+ 'EPD' +GetFeeNo +'</RequestDocNo>';   // <--!相等於HIS的文件或記錄絕對編號-->
        wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';      //
        wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';   //
        wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!就診日期-->
        wStr := wStr + '<Category>E</Category>';                              //<--!就診別-->
        wStr := wStr + '<DocCharge>001</DocCharge>';                          //<--!文件費別-->
        wStr := wStr + '<InHospital>0</InHospital>';                           //<--!是否住院-->
        wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';           //<--!出院日期-->
        wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);

        SaveDialog1.FileName := QRLbchrno.Caption+'.txt';
        qrdesc := TQRAsciiExportFilter.Create(SaveDialog1.FileName);
        QuickRep1.ExportToFilter(qrdesc);

        if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.txt 1 1 '+Hospt+' '+wStr) ),SW_HIDE) < 31 then
          ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.txt 1 1 '+Hospt+' '+wStr),nil,SW_HIDE)
      end;
}
  end;
  FrmPrintPatData.Close;
end;

procedure TFrmPrintPatData.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
  MoreData :=  MYMEMO.Count > clo;
  if MoreData then
    QRLabel4.Caption := MYMEMO.Strings[clo];
end;

procedure TFrmPrintPatData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := Cafree;
end;

procedure TFrmPrintPatData.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPrintPatData := nil;
end;

procedure TFrmPrintPatData.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if pos('#P#',Value) >0 then
  begin
    Value := copy(Value,4,length(Value));
    QRLabel4.Font.Style := [fsbold];
    QRLabel4.Font.Size := 12;
  end
  else if pos('◎',Value) >0 then
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
  else
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
end;

procedure TFrmPrintPatData.FormCreate(Sender: TObject);
begin
  inherited;
  MYMEMO := TStringList.Create;
end;

procedure TFrmPrintPatData.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  clo := 0;
end;

procedure TFrmPrintPatData.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  inc(clo);
end;

procedure TFrmPrintPatData.QRLbtalheatcirPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if Value ='' then
   Value := '';
end;



end.
