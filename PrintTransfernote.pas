unit PrintTransfernote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls,QRExport, ShellAPI;

type
  TFrmPrintTransfernote = class(TFrmMain)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRRichText1: TQRRichText;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLblBitthDay: TQRLabel;
    QRLblName: TQRLabel;
    QRLblChar: TQRLabel;
    QRLabel9: TQRLabel;
    QRLblSex: TQRLabel;
    QRLabel10: TQRLabel;
    QRLblAge: TQRLabel;
    QRLblBed_detp: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel6: TQRLabel;
    QRLblBed_detp1: TQRLabel;
  private
    { Private declarations }
    procedure emrdata(seq:string);
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  FrmPrintTransfernote: TFrmPrintTransfernote;

implementation

uses DBDM, Global, Commfunc, ERsFunc;

{$R *.dfm}

{ TFrmPrintTransfernote }

procedure TFrmPrintTransfernote.PrepareSQL;
begin
  if QRMemo1.Lines.Text <> '' then
  begin
    //QuickRep1.Prepare;
    //QRLabel13.Caption := IntToStr(QuickRep1.Printer.PageCount);
    QuickRep1.Print;
  end;
  Self.Close;
end;

procedure TFrmPrintTransfernote.emrdata(seq:string);
var
  wStr,DD,DTIM,end_date,merpdf,Hospt,strdept: String;
  i: integer;
  bitMap: TBitMap;
begin
  QuickRep1.Prepare;
  for i := 0 to QuickRep1.QRPrinter.PageCount-1 do
  begin
    bitMap := TBitMap.Create;
    bitmap.Width := QuickRep1.Width;
    bitmap.Height :=  QuickRep1.Height;
    bitmap.Canvas.Draw(0, 0,QuickRep1.QRPrinter.GetPage(i+1));
    bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +'\'+trim(GetChrNo)+IntToStr(i)+'.bmp');
    bitMap.Free;
  end;
  //�e�q�l�f��
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

  wStr := '<RequestDate>'+DD+'</RequestDate>';                                   // <--!�eñ���(�Ш� Server ���)-->
  wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                          // <--!�eñ�ɶ�(�Ш� Server �ɶ�)-->
  if UpperCase(SetSys.ReadString('SYSTEM','EMRVSDOC',''))= 'TRUE' then
  begin
    wStr := wStr + '<RequestUser>'+GetVsCode+'</RequestUser>';                   //'+GetVsCode+' <--!�eñ�̥N��-->
    wStr := wStr + '<RequestUserName>'+GETDOCNAME(GetVsCode)+'</RequestUserName>';
    wStr := wStr + '<UserIDNO>'+GetVsCode+'</UserIDNO>';                         // <--!�eñ�̨����Ҹ�-->
  end
  else
  begin
    wStr := wStr + '<RequestUser>'+getUserId+'</RequestUser>';                   //'+GetVsCode+' <--!�eñ�̥N��-->
    wStr := wStr + '<RequestUserName>'+GETDOCNAME(getUserId)+'</RequestUserName>';
    wStr := wStr + '<UserIDNO>'+getUserId+'</UserIDNO>';                         // <--!�eñ�̨����Ҹ�-->
  end;
  wStr := wStr + '<RequestDivision>'+strdept+'</RequestDivision>';               // <--!�eñ�����N��-->
  wStr := wStr + '<FileName>'+GetChrNo+'.pdf'+'</FileName>';
  wStr := wStr + '<SignSystem>EPD</SignSystem>';                                 //<--!�eñ�t�ΥN��-->
  wStr := wStr + '<RequestDocType>EPDECHO</RequestDocType>';                    // <--!�f�����O�N�X-->
  wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';                      // <--!�۵���HIS���ͦ���󪺤��-->
  wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';                    // <--!�۵���HIS���ͦ���󪺮ɶ�-->
  wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';                // <--!�۵���HIS���N�E�y����-->
  wStr := wStr + '<RequestDocNo>'+ 'EPD' + GetSheet + seq +'</RequestDocNo>';    // <--!�۵���HIS�����ΰO������s��-->
  wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';            //
  wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';      //
  wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!�N�E���-->
  wStr := wStr + '<Category>E</Category>';                                       //<--!�N�E�O-->
  wStr := wStr + '<DocCharge>001</DocCharge>';                                   //<--!���O�O-->
  wStr := wStr + '<InHospital>0</InHospital>';                                   //<--!�O�_��|-->
  wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';                  //<--!�X�|���-->
  wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);


  if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+trim(GetChrNo)+'.bmp 1 1 '+Hospt+' '+wStr) ),SW_HIDE) < 31 then
    if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+trim(GetChrNo)+'.bmp 1 1 '+Hospt+' '+wStr),nil,SW_HIDE) < 33 then
    begin
      use_opd_log(GetChrNo+'_�q�l�f���W�ǿ��~');
    end;
end;

end.
