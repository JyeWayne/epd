unit EMRRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QRCtrls, QuickRpt, ExtCtrls, ShellAPI, ImgList;

type
  TFrmEMRRecord = class(TForm)
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRLabel4: TQRLabel;
    SummaryBand2: TQRBand;
    QRHTMLFilter1: TQRHTMLFilter;
    SaveDialog1: TSaveDialog;
    TitleBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRShape11: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape12: TQRShape;
    QRLBIdNo: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape13: TQRShape;
    QRLbBirthday: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape14: TQRShape;
    QRLbSex: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLbArrival: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLbchrno: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape18: TQRShape;
    QRLbpatname: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLbage: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLbtalheatcir: TQRLabel;
    QRLbprintdoc: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRImage1: TQRImage;
    QRMemPICDesc: TQRMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure DetailBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLbtalheatcirPrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLbprintdocPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    clo, picitem : Integer;
    SHOWPIC : BOOLEAN;
  public
    { Public declarations }
    MYMEMO: TStringList;
    procedure PrepareSQL(kind:string);
  end;

var
  FrmEMRRecord: TFrmEMRRecord;

implementation

uses Commfunc, DBDM, Global, ERsFunc;

{$R *.dfm}

{ TFrmEMRRecord }

procedure TFrmEMRRecord.PrepareSQL(kind:string);
var
  //pagemeta : TMetafile;
  p,i : integer;
  bitMap: TBitMap;
  //qrdesc: TQRAsciiExportFilter;
  wStr,DD,DTIM,end_date,merpdf,Hospt,strdept: String;
begin
  picitem := 1;
  SHOWPIC := False;
  if MYMEMO.Text<> '' then
  begin
    QuickRep2.Prepare;
    wStr := '';
    if kind = 'NUR' then
    begin
      //�@�z�d�ݸ��
      QuickRep2.Preview;
    end
    else
    begin
      //�W�ǹq�l�f��
      merpdf := SetSys.ReadString('SYSTEM','EMRPDF','False');
      if UpperCase(merpdf)= 'TRUE' then
      begin
        for i := 0 to QuickRep2.QRPrinter.PageCount-1 do
        begin
          bitMap := TBitMap.Create;
          bitmap.Width := QuickRep2.Width;
          bitmap.Height :=  QuickRep2.Height;
          bitmap.Canvas.Draw(0, 0,QuickRep2.QRPrinter.GetPage(i+1));
          bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +'\'+trim(QRLbchrno.Caption)+IntToStr(i)+'.bmp');
          bitMap.Free;
        end;

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
        if Getvsidno = '' then
        begin
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          DM.QryTemp.SQL.Add('select id_no from doc_basic where doc_code='+Qt(GetVsCode));
          DM.QryTemp.Open;
          if not DM.QryTemp.IsEmpty then
            setvsidno(DM.QryTemp.fieldbyname('id_no').AsString);
          DM.QryTemp.Close;
        end;
        wStr := '<RequestDate>'+DD+'</RequestDate>';                             // <--!�eñ���(�Ш� Server ���)-->
        wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                     // <--!�eñ�ɶ�(�Ш� Server �ɶ�)-->
        if UpperCase(SetSys.ReadString('SYSTEM','EMRVSDOC',''))= 'TRUE' then
        begin
          wStr := wStr + '<RequestUser>'+GetVsCode+'</RequestUser>';                  //'+GetVsCode+' <--!�eñ�̥N��-->
          wStr := wStr + '<RequestUserName>'+GETDOCNAME(GetVsCode)+'</RequestUserName>';
          wStr := wStr + '<UserIDNO>'+Getvsidno+'</UserIDNO>';                      // <--!�eñ�̨����Ҹ�-->
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
        wStr := wStr + '<RequestDocType>EPDORDER</RequestDocType>';          // <--!�f�����O�N�X-->
        wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';            // <--!�۵���HIS���ͦ���󪺤��-->
        wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';           // <--!�۵���HIS���ͦ���󪺮ɶ�-->
        wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';       // <--!�۵���HIS���N�E�y����-->
        wStr := wStr + '<RequestDocNo>'+ 'EPD' + GetSheet +'</RequestDocNo>';   // <--!�۵���HIS�����ΰO������s��-->
        wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';      //
        wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';   //
        wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!�N�E���-->
        wStr := wStr + '<Category>E</Category>';                              //<--!�N�E�O-->
        wStr := wStr + '<DocCharge>001</DocCharge>';                          //<--!���O�O-->
        wStr := wStr + '<InHospital>0</InHospital>';                           //<--!�O�_��|-->
        wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';           //<--!�X�|���-->
        wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);

        //SaveDialog1.FileName := QRLbchrno.Caption+'.txt';
        //qrdesc := TQRAsciiExportFilter.Create(SaveDialog1.FileName);
        //QuickRep2.ExportToFilter(qrdesc);

        //if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.txt 1 1 '+Hospt+' '+wStr+' 1') ),SW_HIDE) < 31 then
        //  if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.txt 1 1 '+Hospt+' '+wStr+' 1'),nil,SW_HIDE) < 33 then
        if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.bmp 1 0 '+Hospt+' '+wStr+'  1') ),SW_HIDE) < 31 then
        begin
           use_opd_log(GetChrNo+'_EPDORDER�q�l�f���W�ǿ��~1');
          if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(QRLbchrno.Caption)+'.bmp 1 0 '+Hospt+' '+wStr+'  1'),nil,SW_HIDE) < 33 then
            use_opd_log(GetChrNo+'_EPDORDER�q�l�f���W�ǿ��~2')
          else
            use_opd_log(GetChrNo+'_EPDORDER�q�l�f���W�Ǧ��\2');
        end
        else
          use_opd_log(GetChrNo+'_EPDORDER�q�l�f���W�Ǧ��\1');
      end;
    end;
  end;
  FrmEMRRecord.Close;
end;

procedure TFrmEMRRecord.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  clo := 0;
end;

procedure TFrmEMRRecord.QuickRep2NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  MoreData :=  MYMEMO.Count > clo;
  if MoreData then
  begin
    IF pos('NEWPEGE',MYMEMO.Strings[clo]) >0 then
      QuickRep2.NewPage
    else
      QRLabel4.Caption := MYMEMO.Strings[clo];
  end;
end;

procedure TFrmEMRRecord.DetailBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inc(clo);
end;

procedure TFrmEMRRecord.QRLbtalheatcirPrint(sender: TObject;
  var Value: String);
begin
  if Value ='' then
   Value := '';
end;

procedure TFrmEMRRecord.FormCreate(Sender: TObject);
begin
  MYMEMO := TStringList.Create;
end;

procedure TFrmEMRRecord.FormDestroy(Sender: TObject);
begin
  FrmEMRRecord := nil;
end;

procedure TFrmEMRRecord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEMRRecord.QRLabel4Print(sender: TObject; var Value: String);
begin
  if pos('#P#',Value) >0 then
  begin
    Value := copy(Value,4,length(Value));
    QRLabel4.Font.Style := [fsbold];
    QRLabel4.Font.Size := 12;
  end
  else if pos('��',Value) >0 then
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
  //ELSE IF pos('NEWPEGE',Value) >0 then
  //BEGIN
  //  Value := '';
  //  QuickRep2.NewPage;
  //END
  ELSE IF pos('SHOWPIC',Value) >0 then
  BEGIN
    Value := '';
    SHOWPIC := True;
  END
  else
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
end;

procedure TFrmEMRRecord.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF SHOWPIC THEN
  BEGIN
    QRImage1.Picture := TImage(FindComponent('Image'+IntToStr(picitem))).Picture;
    inc(picitem);
    PrintBand := TRUE;
    SHOWPIC := False;
  END
  ELSE
  BEGIN
    PrintBand := False;
  END;
end;

procedure TFrmEMRRecord.SummaryBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF DONOT_PRINT_PAPER THEN
  begin
    PrintBand := False;
  end;
end;

procedure TFrmEMRRecord.QRLbprintdocPrint(sender: TObject;
  var Value: String);
begin
  IF DONOT_PRINT_PAPER THEN
    Value := '';
end;

end.
