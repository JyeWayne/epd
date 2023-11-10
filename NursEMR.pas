unit NursEMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, ComCtrls, StdCtrls,
  QRExport, Shellapi;

type
  TFrmNursEMR = class(TFrmMain)
    ADOQuery1: TADOQuery;
    QRPMedEMR: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel29: TQRLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    SaveDialog1: TSaveDialog;
    QRLabel3: TQRLabel;
    QLblBrithday: TQRLabel;
    LblAGE: TQRLabel;
    LblSEX: TQRLabel;
    LblBED: TQRLabel;
    LblCHR: TQRLabel;
    LblEDPT: TQRLabel;
    LblDOC: TQRLabel;
    LblOPDDATE: TQRLabel;
    Lbldiagnosis: TQRLabel;
    QRLabel6: TQRLabel;
    Lblpatname: TQRLabel;
    procedure QRPMedEMRNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRPMedEMRBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure LblAGEPrint(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure LbldiagnosisPrint(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure LblBEDPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    clo : Integer;
  public
    { Public declarations }
    MYMEMO: TStringList;
    procedure PrepareSQL(clas:string);
  end;

var
  FrmNursEMR: TFrmNursEMR;

implementation

uses DBDM, Global, Commfunc, ERsFunc;

{$R *.dfm}

procedure TFrmNursEMR.PrepareSQL;
var
  pagemeta : TMetafile;
  p : integer;
  qrdesc: TQRAsciiExportFilter;
  wStr,DD,DTIM,end_date,doctype,fname,Hospt,merpdf: String;
begin
  if MYMEMO.Text<> '' then
  begin
    merpdf := SetSys.ReadString('NURSE','EMRPDF','False');
    if UpperCase(merpdf)= 'TRUE' then
    BEGIN
      fname := GetFeeNo+'_'+FormatDateTime('YYYYMMDDHHNNSSZZZ',Now);
      DM.QrySearch.Close;
      DM.QrySearch.SQL.Clear;
      DM.QrySearch.SQL.Text := 'select case when  instr(hosp_name,''萬芳'')> 0 then ''WFH'' '+
                               'when instr(hosp_name,''雙和'') > 0 then ''SHH'' else ''TMUH'' end as sp from hosp_basic ' ;
      DM.QrySearch.Open;
      Hospt := DM.QrySearch.fieldbyname('sp').AsString;
      //hospt := 'TMUH';
      DM.QrySearch.Close;
      DM.QrySearch.SQL.Clear;
      DM.QrySearch.SQL.Text := 'select to_char(sysdate,''YYYYMMDD'') as dd,to_char(sysdate,''HH24MISS'') as tt from dual';
      DM.QrySearch.Open;
      DD  := DM.QrySearch.fieldbyname('dd').AsString;
      DTIM:= DM.QrySearch.fieldbyname('tt').AsString;
      DM.QrySearch.Close;
      DM.QrySearch.SQL.Clear;
      DM.QrySearch.SQL.Text := 'select decode(trim(end_date),''9999999'',to_char(sysdate,''YYYYMMDD''),'''',to_char(sysdate,''YYYYMMDD''),end_date+19110000) end_date from epd_his where fee_no='+Qt(GetFeeNo)+'and epd_date='+qt(GetEpdDate);
      DM.QrySearch.Open;
      if not DM.QrySearch.IsEmpty then
        end_date := DM.QrySearch.fieldbyname('end_date').AsString
      else
        end_date := FormatDateTime('YYYYMMDD',Now);

      if clas = 'NURMED' then
      begin
        QRLabel6.Caption := '急診給藥治療記錄單';
        doctype :='167';
      end
      else
      begin
        QRLabel6.Caption := '急診護理紀錄單';
        doctype :='114';
      end;
      Lblpatname.Caption := GetPatName;
      QLblBrithday.Caption := GetBirth;
      //LblAGE.Caption := IntToStr(StrToInt(GSAGE));
      LblSEX.Caption := SexType(Getsex01);
      LblBED.Caption := GetBedNo;
      LblCHR.Caption := GetChrNo;
      LblEDPT.Caption := GetDeptName(GetPatDept);
      LblDOC.Caption := GETDOCNAME(GetVsCode);
      LblOPDDATE.Caption := GetEpdDate;
      //Lbldiagnosis.Caption := GetICD91;

      QRPMedEMR.Prepare;
      wStr := '';
      //QRLabel13.Caption := IntToStr(QRPMedEMR.QRPrinter.PageCount);
      //QRPMedEMR.Preview;

      wStr := '<RequestDate>'+DD+'</RequestDate>';                             // <--!送簽日期(請取 Server 日期)-->
      wStr := wStr + '<RequestTime>'+DTIM+'</RequestTime>';                     // <--!送簽時間(請取 Server 時間)-->
      wStr := wStr + '<RequestUser>'+getUserId+'</RequestUser>';                  //'+GetVsCode+' <--!送簽者代號-->
      wStr := wStr + '<RequestUserName>'+GETDOCNAME(getUserId)+'</RequestUserName>';
      wStr := wStr + '<UserIDNO>'+getUserId+'</UserIDNO>';                      // <--!送簽者身份證號-->
      wStr := wStr + '<RequestDivision>'+GetPatDept+'</RequestDivision>';                  // <--!送簽部門代號-->
      wStr := wStr + '<FileName>'+fname+'.pdf'+'</FileName>';
      wStr := wStr + '<SignSystem>NIS</SignSystem>';                       //<--!送簽系統代號-->
      wStr := wStr + '<RequestDocType>'+doctype+'</RequestDocType>';          // <--!病歷類別代碼-->
      wStr := wStr + '<RequestDocDate>'+DD+'</RequestDocDate>';            // <--!相等於HIS產生此文件的日期-->
      wStr := wStr + '<RequestDocTime>'+DTIM+'</RequestDocTime>';           // <--!相等於HIS產生此文件的時間-->
      wStr := wStr + '<RequestDocRoot>'+GetFeeNo+'</RequestDocRoot>';       // <--!相等於HIS的就診流水號-->
      wStr := wStr + '<RequestDocNo>'+ fname+'</RequestDocNo>';   // <--!相等於HIS的文件或記錄絕對編號-->
      wStr := wStr + '<RequestPatientID>'+GetChrNo+'</RequestPatientID>';      //
      wStr := wStr + '<RequestPatientName>'+GetPatName+'</RequestPatientName>';   //
      wStr := wStr + '<VisitDate>'+FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'</VisitDate>'; //<--!就診日期-->
      wStr := wStr + '<Category>U</Category>';                              //<--!就診別O:門診 E:急診 I:住院 H:健檢 U:其他-->
      wStr := wStr + '<DocCharge>001</DocCharge>';                          //<--!文件費別000:自費 001:健保 002:公保 999其他-->
      wStr := wStr + '<InHospital>0</InHospital>';                           //<--!是否住院0:出院 1:在院-->
      wStr := wStr + '<DischargeDate>'+end_date+'</DischargeDate>';           //<--!出院日期-->
      wStr := StringReplace(wStr,' ','$+$',[rfReplaceAll]);//取代空白

      SaveDialog1.FileName := fname+'.txt';
      qrdesc := TQRAsciiExportFilter.Create(SaveDialog1.FileName);
      QRPMedEMR.ExportToFilter(qrdesc);

      if winexec(PChar(PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe') +' '+ PChar(ExtractFileDir(Application.ExeName)+'\'+fname+'.txt 1 1 '+Hospt+' '+wStr) ),SW_HIDE) < 31 then
      begin
        use_opd_log(GetChrNo+'_'+doctype+'電子病歷上傳錯誤1');
        if ShellExecute(Handle, 'open',PChar(ExtractFileDir(Application.ExeName)+'\Text2PDF.exe'),PChar(ExtractFileDir(Application.ExeName)+'\'+fname+'.txt 1 1 '+Hospt+' '+wStr),nil,SW_HIDE) >= 32 then
          use_opd_log(GetChrNo+'_'+doctype+'電子病歷上傳錯誤2')
        else
          use_opd_log(GetChrNo+'_'+doctype+'電子病歷上傳成功2');
      end
      else
        use_opd_log(GetChrNo+'_'+doctype+'電子病歷上傳成功1');
    END;
  end;
  Self.Close;
end;

procedure TFrmNursEMR.QRPMedEMRNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
  MoreData :=  MYMEMO.Count > clo;
  if MoreData then
    QRLabel29.Caption := MYMEMO.Strings[clo];
end;

procedure TFrmNursEMR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := Cafree;
end;

procedure TFrmNursEMR.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmNursEMR := nil;  
end;

procedure TFrmNursEMR.FormCreate(Sender: TObject);
begin
  inherited;
  MYMEMO := TStringList.Create;
end;

procedure TFrmNursEMR.QRPMedEMRBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  clo := 0;
end;

procedure TFrmNursEMR.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  inc(clo);
end;

procedure TFrmNursEMR.QRLabel12Print(sender: TObject; var Value: String);
begin
  inherited;
   Value := '';
end;

procedure TFrmNursEMR.LblAGEPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmNursEMR.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmNursEMR.LbldiagnosisPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmNursEMR.QRLabel3Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := '';
end;

procedure TFrmNursEMR.LblBEDPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := '';
end;

end.
