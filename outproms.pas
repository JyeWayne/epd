unit outproms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ComCtrls, ExtCtrls, Contnrs, ADODB, Registry, Printers;

type
  TFrmoutproms = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Lablchr: TLabel;
    Lablname: TLabel;
    Label2: TLabel;
    REdtprom: TRichEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    havdata : string;
    function insertFirstcva(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
    procedure showdata;
  public
    { Public declarations }
  end;

var
  Frmoutproms: TFrmoutproms;

implementation

uses DBDM, Commfunc, ERsFunc, Global, MySQLc, EDPROCESS;

{$R *.dfm}

function TFrmoutproms.insertFirstcva(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
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

procedure TFrmoutproms.BitBtn3Click(Sender: TObject);
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
  TempQ := TAdoQuery.Create(self);
  TempQ.Connection := Dm.ADOLink;
  TempQ.Close;
  TempQ.SQL.Clear;
  TempQ.SQL.Add('select max(nvl(SEQ_NO,0)) as seq_no,max(nvl(allorder_no,0)) as all_no from EPD_TABULATION where fee_no='+qt(getFeeNo)+' and order_date='+qt(GetEpdDate));
  TempQ.Open;
  all_no := TempQ.FieldByName('all_no').AsInteger;
  SEQ_no := TempQ.FieldByName('seq_no').AsInteger;
  Inc(all_no);
  for i := 0 to REdtprom.Lines.Count-1 do
  begin
    tempstr := '';
    if REdtprom.Lines.Text <> '' then
    begin
      Inc(SEQ_no);
      SQLs := TStringList.Create;
      SQLs.Add(insertFirstcva('PROCESS_NOTE', trim(REdtprom.Lines.Strings[i]),'N',DD,DTIM,IntToStr(all_no),IntToStr(SEQ_no)));
      SQLo.Add(SQLs);
    end;
  END;
  if not DM.ExecSQL(SQLo) then
  begin
    ShowMessage('寫入資料庫失敗');
    SQLo.Free;
    Exit;
  end;  
end;

procedure TFrmoutproms.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmoutproms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmoutproms.FormDestroy(Sender: TObject);
begin
  inherited;
  Frmoutproms := NIL;
end;

procedure TFrmoutproms.FormShow(Sender: TObject);
begin
  inherited;
  havdata := '';
  Lablchr.Caption := GetChrNo;
  Lablname.Caption := GetPatName;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from EPD_TABULATION where kind = ''PROCESS_NOTE'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''PROCESS_NOTE'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')');
  DM.QryTemp.Open;
  if DM.QryTemp.IsEmpty then
    havdata := 'N'
  else
    if MessageDlg('已有此次病摘檔；要帶出已存檔的資料嗎?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      havdata := 'N'
    else
      havdata := 'Y';
  showdata;
end;

procedure TFrmoutproms.BitBtn1Click(Sender: TObject);
var
  ag,defPrint : string;
  i : Integer;
  reg : TRegistry;
begin
  inherited;
  //抓印表機
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
  begin
    defPrint := reg.ReadString('Device');
    for i := 0 to printer.Printers.Count -1 do
    begin
      if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA4','')) then
      begin
        reg.DeleteKey('Device');
        reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
      end;
    end;
  end;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from EPD_TABULATION where kind = ''PROCESS_NOTE'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''PROCESS_NOTE'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')');
  DM.QryTemp.Open;
  if DM.QryTemp.IsEmpty then
  begin
    BitBtn3Click(BitBtn3);
  END;
  if not assigned(FrmEDPROCESS) then
    FrmEDPROCESS := TFrmEDPROCESS.Create(Self);
  FrmEDPROCESS.QRLbchrno.Caption := GetChrNo;
  FrmEDPROCESS.QRLbpatname.Caption := GetPatName;
  try
    ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(ag,1,1)<>'0' then
      FrmEDPROCESS.QRLbage.Caption := copy(ag,1,length(ag)-2)+'歲'+copy(ag,4,2)+'個月'
    else
      FrmEDPROCESS.QRLbage.Caption := copy(ag,2,2)+'歲'+copy(ag,4,2)+'個月';
  except
    FrmEDPROCESS.QRLbage.Caption := '';
  end;


  FrmEDPROCESS.QRLablhosptname.Caption := Setsys.ReadString('SYSTEM','FULLHOSPAILNAME','');
  FrmEDPROCESS.QRLBIdNo.Caption := GetIdNo;
  FrmEDPROCESS.QRLbBirthday.Caption := '民國 '+IntToStr(strToInt(getyear(GetBirth)))+ '年 '+getmonth(GetBirth)+'月 '+getdays(GetBirth) +'日';;
  FrmEDPROCESS.QRLbArrival.Caption := RocDate(RoctoDate(IntTostr(StrToInt(GetEpdDate)+19110000)),'/')+' '+RocTimes(RocToTime(GetEpdTime),':');
  FrmEDPROCESS.QRLbSex.Caption := SexType(Getsex01);
  while not DM.QryTemp.Eof do
  begin
    FrmEDPROCESS.MYMEMO.Add(DM.QryTemp.fieldbyname('text').AsString);
    DM.QryTemp.Next;
  end;
  DM.QryTemp.Close;
  FrmEDPROCESS.PrepareSQL;
  if assigned(FrmEDPROCESS) then
    FrmEDPROCESS := nil;
  reg.DeleteKey('Device');
  reg.WriteString('Device',DefPrint);
  Reg.CloseKey;
  Reg.Free;
end;

procedure TFrmoutproms.showdata;
VAR
  I,J,memoqty,memonew : INTEGER;
  STR : TStringList;
  SKIND,spc,redata : STRING;
  myFlag,name_val,MEMO_lev: TStringList;
begin
  spc := '      ';
  memoqty := 0;
  memonew := 0;
  STR := TStringList.Create;
  name_val := TStringList.Create;
  MEMO_lev := TStringList.Create;
  myFlag := TstringList.Create;
  REdtprom.Lines.Clear;
  if havdata= 'N' then
  BEGIN
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select DECODE(TRIM(KIND),''T_TRIAGE'',''A'',''A_ASSESSMENT'',''B'',''O_SUBJECT'',''C'',''O_OJECT'',''D'',''O_HISTORY'',''E'',''O_PLAN'',''F'') AS KIND,');
    DM.QryTemp.SQL.Add('TEXT,seq_no,allorder_no from epd_record where fee_no='+Qt(GetFeeNo)+' AND ORDER_DATE='+QT(GetEpdDate)+' and DEL_FLAG=''N''  ORDER BY 1,3');
    DM.QryTemp.Open;
    SKIND := '';
    REdtprom.Lines.Add('');
    WHILE NOT DM.QryTemp.Eof DO
    BEGIN
      if (Trim(dm.QryTemp.FieldByName('KIND').AsString)<> SKIND) then
      BEGIN
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='A' THEN
          REdtprom.Lines.Add('◎ 檢傷:');
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='B' THEN
          REdtprom.Lines.Add('◎ 診斷:');
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='C' THEN
          REdtprom.Lines.Add('◎ SUBJECT:');
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='D' THEN
          REdtprom.Lines.Add('◎ OJECT:');
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='E' THEN
          REdtprom.Lines.Add('◎ Assessment:');
        IF Trim(dm.QryTemp.FieldByName('KIND').AsString)='F' THEN
          REdtprom.Lines.Add('◎ PLAN:');
      END;
      REdtprom.Lines.Add(spc +'【' + soapstrReplace(dm.QryTemp.FieldByName('TEXT').AsString));
      SKIND := Trim(dm.QryTemp.FieldByName('KIND').AsString);
      DM.QryTemp.Next;
    END;
    myFlag.Clear;
    myFlag.Add('M');
    myFlag.Add('L');
    myFlag.Add('C');
    myFlag.Add('X');
    myFlag.Add('F');
    myFlag.Add('O');
    myFlag.Add('T');
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('SELECT SO_FLAG,ORDER_TEXT,FEE_CODE,FEE_NAME,ORDER_DOC,ORDER_DAYS,UNIT_DESC,CIR_CODE,PATH_CODE,EXPER_TYPE,EXPER_CLASS,QTY_NUM,SELF_PAY_FLAG,');
    DM.QryTemp.SQL.Add('URG_FLAG,DC_FLAG,VS_DOC,order_DATE as upd_date,order_TIME as upd_time,NUS_OPER,TTL_QTY,NUS_DATE,NUS_TIME,Record_print,del_flag,MEMO_DESC ');
    DM.QryTemp.SQL.Add(' from EPD_ALL_ORDER where fee_no='+Qt(GetFeeNo)+' and order_date='+Qt(GetEpdDate)+' and DEL_FLAG=''N'' ORDER BY SO_FLAG');
    DM.QryTemp.Open;
    SKIND := '';
    WHILE NOT DM.QryTemp.Eof DO
    BEGIN
      case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
      0:
      BEGIN
        if Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND then
        BEGIN
          REdtprom.Lines.Add('◎'+CharAdd('藥品名稱',' ',45)+CharAdd('劑量',' ',5)+CharAdd('單位',' ',6)+CharAdd('天',' ',3)+CharAdd('途徑',' ',5)+CharAdd('總數',' ',5)+CharAdd('頻率',' ',6));
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
          MEMO_lev.clear;
        end;
        name_val := SliptStr(45,FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString));
        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
          begin
            REdtprom.Lines.Add(spc+CharAdd(name_val.Strings[i],' ',45)+
                                           CharAdd(dm.QryTemp.FieldByName('QTY_NUM').AsString,' ',5)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('UNIT_DESC').AsString),' ',6)+
                                           CharAdd(dm.QryTemp.FieldByName('ORDER_DAYS').AsString,' ',3)+
                                           CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',5)+
                                           CharAdd(dm.QryTemp.FieldByName('TTL_QTY').AsString,' ',5)+
                                           CharAdd(dm.QryTemp.FieldByName('CIR_CODE').AsString,' ',6));
            if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
            begin
              MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              if MEMO_lev.Count > 1 then
              begin
                for j := 0 to MEMO_lev.Count-1 do
                  if j = 0 then
                    REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                  else
                    REdtprom.Lines.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
              end
              else
               REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70));
            end;
          end
          else
          begin
            if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
            begin
              MEMO_lev := SliptStr(30,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              memoqty := 0;
              if memoqty = 0 then
                REdtprom.Lines.Add(spc+CharAdd(name_val.Strings[i],' ',45)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',30))
              else
                REdtprom.Lines.Add(spc+CharAdd(name_val.Strings[i],' ',45)+charadd(MEMO_lev.Strings[memoqty],' ',30));
              inc(memoqty);
            end
            else
            begin
              REdtprom.Lines.Add(spc+CharAdd(name_val.Strings[i],' ',45));
            end;
          end;
        end;
        if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) then //多行的說明
        begin
          memonew := memoqty;
          for i := memonew to MEMO_lev.Count-memoqty do
          begin
            REdtprom.Lines.Add(spc+CharAdd(' ',' ',45)+charadd(MEMO_lev.Strings[memoqty],' ',30));
            inc(memoqty);
          end;
        end;
      END;
      1:
      BEGIN
        if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND) then
        begin
          REdtprom.Lines.Add('◎'+CharAdd('檢驗代碼',' ',12)+CharAdd('檢驗名稱',' ',52)+CharAdd('檢體',' ',7));
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
        end;
        MEMO_lev.clear;
        name_val := SliptStr(52,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));

        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
          begin
            REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                           CharAdd(name_val.Strings[i],' ',52)+
                                           CharAdd(trim(FulltoHalf(getLabSamplename(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)))),' ',7));
            if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
            begin
              MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              if MEMO_lev.Count > 1 then
              begin
                for j := 0 to MEMO_lev.Count-1 do
                  if j = 0 then
                    REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                  else
                    REdtprom.Lines.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
              end
              else
               REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70));
            end;
          end
          else
          begin
            if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
            begin
              MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              memoqty := 0;
              if memoqty = 0 then
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
              else
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52)+charadd(MEMO_lev.Strings[memoqty],' ',20));
              inc(memoqty);
            end
            else
            begin
              REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52));
            end;
          end;
        end;
        if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) then //多行的說明
        begin
          memonew := memoqty;
          for i := memonew to MEMO_lev.Count-memoqty do
          begin
            REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',52)+charadd(MEMO_lev.Strings[memoqty],' ',18));
            inc(memoqty);
          end;
        end;
      END;
      2:
      BEGIN
        if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND) then //中文:mbSingleByte 英文:空白
        begin
          REdtprom.Lines.Add('◎'+CharAdd('檢查代碼',' ',12)+CharAdd('檢查名稱',' ',52)+CharAdd('檢查室',' ',7));
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
          MEMO_lev.clear;
        end;
        name_val := SliptStr(52,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
          begin
            REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                           CharAdd(name_val.Strings[i],' ',52)+
                                           CharAdd(getchkRoomName(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)),' ',7));
            if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
            begin
              MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              if MEMO_lev.Count > 1 then
              begin
                for j := 0 to MEMO_lev.Count-1 do
                  if j = 0 then
                    REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                  else
                    REdtprom.Lines.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
              end
              else
               REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70));
            end;
          end
          else
          begin
            if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
            begin
              MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              memoqty := 0;
              if memoqty = 0 then
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
              else
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52)+charadd(MEMO_lev.Strings[memoqty],' ',20));
              inc(memoqty);
            end
            else
            begin
              REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',52));
            end;
          end;
        end;
        if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) then //多行的說明
        begin
          memonew := memoqty;
          for i := memonew to MEMO_lev.Count-memoqty do
          begin
            REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',52)+charadd(MEMO_lev.Strings[memoqty],' ',20));
            inc(memoqty);
          end;
        end;
      END;
      3:
      BEGIN
        if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND) then //中文:mbSingleByte 英文:空白
        begin
          REdtprom.Lines.Add('◎'+CharAdd('放射代碼',' ',12)+CharAdd('放射名稱',' ',47)+CharAdd('數量',' ',6));
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
          MEMO_lev.clear;
        end;
        name_val := SliptStr(47,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
          begin
            REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                           CharAdd(name_val.Strings[i],' ',47)+
                                           //CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',7)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6));
            if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
            begin
              MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              if MEMO_lev.Count > 1 then
              begin
                for j := 0 to MEMO_lev.Count-1 do
                  if j = 0 then
                    REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                  else
                    REdtprom.Lines.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
              end
              else
               REdtprom.Lines.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70));
            end;
          end
          else
          begin
            if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
            begin
              MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
              memoqty := 0;
              if memoqty = 0 then
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',47)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
              else
                REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',47)+charadd(MEMO_lev.Strings[memoqty],' ',20));
              inc(memoqty);
            end
            else
            begin
              REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',47));
            end;
          end;
        end;
        if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) then //多行的說明
        begin
          memonew := memoqty;
          for i := memonew to MEMO_lev.Count-memoqty do
          begin
            REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',47)+charadd(MEMO_lev.Strings[memoqty],' ',20));
            inc(memoqty);
          end;
        end;
      END;
      4:
      BEGIN
        if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND) then //中文:mbSingleByte 英文:空白
        begin
          REdtprom.Lines.Add('◎'+CharAdd('處置代碼',' ',12)+CharAdd('處置名稱',' ',40)+CharAdd('數量',' ',7));
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
        end;
        name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
            REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                           CharAdd(name_val.Strings[i],' ',40)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6))
          else
            REdtprom.Lines.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
        end;
      END;
      5:
      BEGIN

      END;
      6:
      BEGIN
        if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> SKIND) then //中文:mbSingleByte 英文:空白
        begin
          REdtprom.Lines.Add('◎'+'文字醫囑');
          REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
          name_val.Clear;
        end;
        name_val := SliptStr(70,trim(FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString)));
        for i := 0 to name_val.Count-1 do
          REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('ORDER_TEXT').AsString),' ',70));
      end;
      END;
      SKIND := Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString);
      DM.QryTemp.Next;
    END;
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select (Select Trim(Code_oneName) from COMPARE_CODE_BASIC b where b.code_one=a.exper_class and ipd_related=''L1'') as TME,');
    DM.QryTemp.SQL.Add('Trim(a.r_item_name) as ITEM,Trim(a.result_date_t) as DATAT,Trim(a.result_data_q) as DATAQ,a.result_flag ');
    DM.QryTemp.SQL.Add('from lab_data a where a.LAB_no IN(select  sp_no  from Lab_list where fee_no='+Qt(GetFeeNo)+') ORDER BY 1');
    DM.QryTemp.Open;
    IF NOT DM.QryTemp.IsEmpty THEN
    BEGIN
      REdtprom.Lines.Add('◎'+'檢驗報告');
      REdtprom.Lines.Add(spc+CharAdd('組別',' ',12)+CharAdd('項目',' ',35)+CharAdd('定性',' ',17)+CharAdd('定量',' ',17)+'結果');
      REdtprom.Lines.Add(spc+'-----------------------------------------------------------------------------');
      WHILE NOT DM.QryTemp.Eof DO
      BEGIN
        REdtprom.Lines.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('TME').AsString),' ',12)+
                               CharAdd(trim(dm.QryTemp.FieldByName('ITEM').AsString),' ',35)+
                               CharAdd(trim(dm.QryTemp.FieldByName('DATAT').AsString),' ',17)+
                               CharAdd(trim(dm.QryTemp.FieldByName('DATAQ').AsString),' ',17)+
                               trim(dm.QryTemp.FieldByName('result_flag').AsString));
        DM.QryTemp.Next;
      END;
    END;
  END
  ELSE
  BEGIN
    I := 0;
    while not DM.QryTemp.Eof do
    begin
      REdtprom.Lines.Add('');
      REdtprom.Lines.Insert(I,DM.QryTemp.FIELDBYNAME('TEXT').AsString);
      Inc(I);
      DM.QryTemp.Next;
    END;
  END;
end;

end.
