unit MAJOR2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Mask, Buttons, DateUtils, Contnrs, QuickRpt, QRCtrls,
  SHELLapi, DB, ADODB;

type
  TFrmAMI = class(TFrmMain)
    GBAMI: TGroupBox;
    AMI0: TMaskEdit;
    AMI1: TMaskEdit;
    AMI2: TMaskEdit;
    AMI3: TMaskEdit;
    AMI4: TMaskEdit;
    AMI5: TMaskEdit;
    AMI6: TMaskEdit;
    Shape11: TShape;
    Label11: TLabel;
    Shape12: TShape;
    Label12: TLabel;
    Shape13: TShape;
    Label13: TLabel;
    Lbeamitime0: TLabel;
    Lbeamitime1: TLabel;
    Lbeamitime2: TLabel;
    Lbeamitime3: TLabel;
    Lbeamitime4: TLabel;
    Lbeamitime5: TLabel;
    Lbeamitime6: TLabel;
    GBCVA: TGroupBox;
    Shape14: TShape;
    Label22: TLabel;
    Shape15: TShape;
    Label23: TLabel;
    Shape16: TShape;
    Label24: TLabel;
    shpCVA0: TShape;
    Lbecvaset0: TLabel;
    shpCVA1: TShape;
    Lbecvaset1: TLabel;
    shpCVA5: TShape;
    Lbecvaset5: TLabel;
    shpCVA6: TShape;
    Lbecvaset6: TLabel;
    shpCVA8: TShape;
    shpCVA7: TShape;
    Lbecvaset8: TLabel;
    shpCVA10: TShape;
    Lbecvaset10: TLabel;
    shpCVA11: TShape;
    Lbecvatime0: TLabel;
    MedtCVA0: TMaskEdit;
    MedtCVA1: TMaskEdit;
    MedtCVA2: TMaskEdit;
    MedtCVA3: TMaskEdit;
    MedtCVA4: TMaskEdit;
    MedtCVA5: TMaskEdit;
    MedtCVA7: TMaskEdit;
    MedtCVA8: TMaskEdit;
    EdtNIHSS: TEdit;
    Button1: TButton;
    Button2: TButton;
    Lbecvaset11: TLabel;
    Lbecvatime1: TLabel;
    Lbecvatime2: TLabel;
    Lbecvatime3: TLabel;
    Lbecvatime6: TLabel;
    Lbecvatime4: TLabel;
    Lbecvatime5: TLabel;
    Lbecvatime7: TLabel;
    MEdttime0: TMaskEdit;
    MEdttime1: TMaskEdit;
    MEdttime2: TMaskEdit;
    MEdttime3: TMaskEdit;
    MEdttime4: TMaskEdit;
    MEdttime5: TMaskEdit;
    MEdttime7: TMaskEdit;
    MEdttime8: TMaskEdit;
    Button3: TButton;
    shpami0: TShape;
    Lbeamiset0: TLabel;
    shpami1: TShape;
    Lbeamiset1: TLabel;
    shpami2: TShape;
    shpami3: TShape;
    shpami5: TShape;
    Lbeamiset5: TLabel;
    shpami6: TShape;
    Lbeamiset6: TLabel;
    shpami4: TShape;
    Lbeamiset3: TLabel;
    shpami7: TShape;
    shpami8: TShape;
    Lbeamiset7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Lbecvaset7: TLabel;
    MedtCVA6: TMaskEdit;
    MEdttime6: TMaskEdit;
    Lbecvatime8: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Button4: TButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Shape25: TShape;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Shape27: TShape;
    Label45: TLabel;
    Lbecvadoc0: TLabel;
    Lbecvadoc1: TLabel;
    Lbecvadoc2: TLabel;
    Lbecvadoc3: TLabel;
    Lbecvadoc4: TLabel;
    Lbecvadoc5: TLabel;
    Lbecvadoc6: TLabel;
    Lbecvadoc7: TLabel;
    GBTrauma: TGroupBox;
    Shape28: TShape;
    Label54: TLabel;
    Shape29: TShape;
    Label55: TLabel;
    Shape30: TShape;
    Label56: TLabel;
    Shape31: TShape;
    Label57: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    SpTrauma0: TShape;
    Lbetraset0: TLabel;
    SpTrauma1: TShape;
    Lbetraset1: TLabel;
    SpTrauma2: TShape;
    Lbetraset2: TLabel;
    SpTrauma3: TShape;
    Lbetraset3: TLabel;
    SpTrauma4: TShape;
    Lbetraset4: TLabel;
    Lbetratime0: TLabel;
    Lbetratime1: TLabel;
    Lbetratime2: TLabel;
    Lbetratime3: TLabel;
    Lbetratime4: TLabel;
    Lbetradoc0: TLabel;
    Lbetradoc1: TLabel;
    Lbetradoc2: TLabel;
    Lbetradoc3: TLabel;
    Lbetradoc4: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    MEdttrauma0: TMaskEdit;
    MEdttratime0: TMaskEdit;
    MEdttrauma1: TMaskEdit;
    MEdttratime1: TMaskEdit;
    MEdttrauma2: TMaskEdit;
    MEdttratime2: TMaskEdit;
    MEdttrauma3: TMaskEdit;
    MEdttratime3: TMaskEdit;
    MEdttrauma4: TMaskEdit;
    MEdttratime4: TMaskEdit;
    Lbeamidoc0: TLabel;
    Lbeamidoc1: TLabel;
    Lbeamidoc2: TLabel;
    Lbeamidoc3: TLabel;
    Lbeamidoc4: TLabel;
    Lbeamidoc5: TLabel;
    Lbeamidoc6: TLabel;
    Label43: TLabel;
    Button8: TButton;
    Button9: TButton;
    Lbeamiset4: TLabel;
    Lbeamiset8: TLabel;
    shpami9: TShape;
    Lbeamiset9: TLabel;
    shpami10: TShape;
    Lbeamiset10: TLabel;
    AMI7: TMaskEdit;
    AMI8: TMaskEdit;
    AMI9: TMaskEdit;
    AMI10: TMaskEdit;
    Lbeamitime7: TLabel;
    Lbeamitime8: TLabel;
    Lbeamitime9: TLabel;
    Lbeamitime10: TLabel;
    Lbeamidoc7: TLabel;
    Lbeamidoc8: TLabel;
    Lbeamidoc9: TLabel;
    Lbeamidoc10: TLabel;
    Label91: TLabel;
    cbbamicode: TComboBox;
    Label1: TLabel;
    CBBCVAdoc: TComboBox;
    shpCVA3: TShape;
    Lbecvaset3: TLabel;
    shpCVA2: TShape;
    Lbecvaset2: TLabel;
    shpCVA4: TShape;
    Lbecvaset4: TLabel;
    shpCVA9: TShape;
    Lbecvaset9: TLabel;
    Lbecvadoc8: TLabel;
    MedtCVA9: TMaskEdit;
    MEdttime9: TMaskEdit;
    Lbecvatime9: TLabel;
    Lbecvadoc9: TLabel;
    MedtCVA10: TMaskEdit;
    MEdttime10: TMaskEdit;
    Lbecvatime10: TLabel;
    Lbecvadoc10: TLabel;
    MEdttime11: TMaskEdit;
    Lbecvatime11: TLabel;
    Lbecvadoc11: TLabel;
    MedtCVA11: TMaskEdit;
    Label2: TLabel;
    CBBTRADOC: TComboBox;
    Button10: TButton;
    shpami11: TShape;
    Lbeamiset11: TLabel;
    AMI11: TMaskEdit;
    Lbeamitime11: TLabel;
    Lbeamidoc11: TLabel;
    Imlbeamiset: TImage;
    Lbeamiset2: TLabel;
    Image1: TImage;
    Bevel10: TBevel;
    DICOMDB_qry1: TADOQuery;
    shpami19: TShape;
    Lbeamiset19: TLabel;
    AMI19: TMaskEdit;
    Lbeamitime19: TLabel;
    Lbeamidoc19: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    shpami12: TShape;
    Lbeamiset12: TLabel;
    Lbeamitime12: TLabel;
    Lbeamidoc12: TLabel;
    shpami13: TShape;
    Lbeamiset13: TLabel;
    AMI13: TMaskEdit;
    Lbeamitime13: TLabel;
    Lbeamidoc13: TLabel;
    shpami14: TShape;
    shpami15: TShape;
    Lbeamiset14: TLabel;
    Lbeamiset15: TLabel;
    AMI14: TMaskEdit;
    AMI15: TMaskEdit;
    Lbeamitime14: TLabel;
    Lbeamitime15: TLabel;
    Lbeamidoc14: TLabel;
    Lbeamidoc15: TLabel;
    shpami16: TShape;
    shpami17: TShape;
    shpami18: TShape;
    AMI16: TMaskEdit;
    AMI17: TMaskEdit;
    AMI18: TMaskEdit;
    Lbeamitime16: TLabel;
    Lbeamitime17: TLabel;
    Lbeamitime18: TLabel;
    Lbeamidoc16: TLabel;
    Lbeamidoc17: TLabel;
    Lbeamidoc18: TLabel;
    Lbeamiset16: TLabel;
    Lbeamiset17: TLabel;
    Lbeamiset18: TLabel;
    AMI12: TMaskEdit;
    shpCVA12: TShape;
    Lbecvaset12: TLabel;
    MedtCVA12: TMaskEdit;
    MEdttime12: TMaskEdit;
    Lbecvatime12: TLabel;
    Lbecvadoc12: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    StaticText1: TStaticText;
    Shape4: TShape;
    StaticText2: TStaticText;
    Shape5: TShape;
    StaticText3: TStaticText;
    Shape6: TShape;
    Shape7: TShape;
    StaticText4: TStaticText;
    Shape8: TShape;
    StaticText5: TStaticText;
    Shape9: TShape;
    StaticText6: TStaticText;
    Shape10: TShape;
    Shape17: TShape;
    StaticText7: TStaticText;
    Shape18: TShape;
    StaticText8: TStaticText;
    Shape19: TShape;
    StaticText9: TStaticText;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure AMI0Exit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Lbeamiset0DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CBBCVAdocChange(Sender: TObject);
    procedure cbbamicodeChange(Sender: TObject);
    procedure Lbecvadoc0DblClick(Sender: TObject);
    procedure CBBTRADOCChange(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ImlbeamisetDblClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonEMRClick(Sender: TObject);
  private
    { Private declarations }
    docid,docname : string;
    procedure caltime;
    procedure openallorder;
  public
    { Public declarations }
    incident_dt,major_type,Entry_point : string;
  end;

var
  FrmAMI: TFrmAMI;

implementation

uses Commfunc, Global, DBDM, MajorRept, MySQLc, CVAtPA, ERsFunc, NIHSS,
  Trauma;

{$R *.dfm}

procedure TFrmAMI.FormShow(Sender: TObject);
var
  astr,comname,val : string;
  mycompn : TComponent;
  tempsql : string;
  mystr, myParamter : string;
  SpName,ExeSPResult :String;
  Paramter,PType,RType,PData :TStrings;
begin
  inherited;
  Paramter:=TStringList.Create;
  PType:=TStringList.Create;
  RType:=TStringList.Create;
  PData:=TStringList.Create;

  docid := getUserId;
  docname := GETDOCNAME(getUserId);
  //109.02.12 shh ITe 11138 modify 修正patlist進來的會抓錯時間問題  再抓一次時間  
  VArrivaltime := FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+GetEpdTime;
  incident_dt := VArrivaltime;
  if major_type='AMI' then
  begin
    if Entry_point = 'LIST' then
      BitBtn3.Visible := True;
    GBAMI.Align := alClient;
    GBCVA.Visible := False;
    GBTrauma.Visible := False;
    cbbamicode.Items.Clear;
    cbbamicode.Items := Uuser;
    cbbamicode.Items.Insert(0,' ');
    SETMAJORTYPE('CK');//重症
    try
      SpName:=''; //會診時間
      SpName:=getSpSql(10,Paramter,PType,RType);
      PData.Add(getFeeNo);
      PData.Add('AMI');
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
      if ReturnID(ExeSPResult) = 'N' then
      begin
        //ShowMessage('取會診時間失敗')
      end;
    except
       //不處理
    end;
    //109.02.06 shh ITe mark 全部時間都從會診時間procedure計入
    {
    try
      SpName:=''; //Aspirin、Clopidogrel給藥時間
      Paramter.Clear;
      PType.Clear;
      RType.Clear;
      PData.Clear;
      SpName:=getSpSql(11,Paramter,PType,RType);
      PData.Add(getFeeNo);
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
      if ReturnID(ExeSPResult) = 'N' then
      begin
        //ShowMessage('取 Aspirin、Clopidogrel給藥時間失敗')
      end;
    except
       //不處理
    end;
    }
  end
  else if major_type='CVA' then
  begin
    if Entry_point = 'LIST' then
      Button1.Visible := True;
    GBCVA.Align := alClient;
    GBAMI.Visible := False;
    GBTrauma.Visible := False;
    CBBCVAdoc.Items.Clear;
    CBBCVAdoc.Items := Uuser;
    CBBCVAdoc.Items.Insert(0,' ');
    SETMAJORTYPE('CT');//重症
    //109.02.06 shh ITe mark 全部時間都從會診時間procedure計入
    {
    myStr :=Setsys.ReadString('OTHERSYSTEMLINK','重症時間','');
    myParamter := Setsys.ReadString('PARAMTER','重症時間','');
    comStrRep(mystr);
    comstrRep(myParamter);
    if myStr <>'' then
    begin
      try
        //WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
        if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
          ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
      except
      end;
    end;
    }
    try
      SpName:=''; //會診時間
      SpName:=getSpSql(10,Paramter,PType,RType);
      PData.Add(getFeeNo);
      PData.Add('CVA');
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
      if ReturnID(ExeSPResult) = 'N' then
      begin
        //ShowMessage('取會診時間失敗')
      end;
    except
      //不處理
    end;
    SETMAJORTYPE('PT');//重症
  end
  ELSE
  BEGIN
    if Entry_point = 'LIST' then
      Button7.Visible := True;
    GBTrauma.Align := alClient;
    GBCVA.Visible := False;
    GBAMI.Visible := False;
    CBBTRADOC.Items.Clear;
    CBBTRADOC.Items := Uuser;
    CBBTRADOC.Items.Insert(0,' ');
    try
      SpName:=''; //會診時間
      SpName:=getSpSql(10,Paramter,PType,RType);
      PData.Add(getFeeNo);
      PData.Add('TRA');
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
      if ReturnID(ExeSPResult) = 'N' then
      begin
        //ShowMessage('取會診時間失敗')
      end;
    except

    end;
  END;

  //109.02.06 shh ITe mark 全部時間都從會診時間procedure計入
  {
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','重症時間','');
  myParamter := Setsys.ReadString('PARAMTER','重症時間','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr <> '' then
  begin
    try
      //WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    except
    end;
  end;
  }
  Paramter.Free;
  PType.Free;
  RType.Free;
  PData.Free;

  DICOMDB_qry1.Close; //取寫入時間
  DICOMDB_qry1.SQL.Clear;
  DICOMDB_qry1.SQL.Add('select * from GETMAJORTIME where fee_no='+qt(GetFeeNo));
  DICOMDB_qry1.Open;

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from major_log where fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' and kind='+qt(copy(major_type,1,1))+' order by m_no');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    while not DM.QryTemp.Eof do
    begin
      case DM.QryTemp.FieldByName('m_no').AsInteger of
        1:
          begin
            if major_type='AMI' then //到院
            begin
              AMI0.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime0.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc0.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc0.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else if major_type='CVA' then
            begin //到院
              MedtCVA0.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime0.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime0.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc0.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc0.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else
            begin//病人到院
              MEdttrauma0.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime0.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime0.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc0.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc0.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
        2:
          begin
            if major_type='AMI' then// 心電圖(EKG)完成
            begin
              AMI1.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime1.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc1.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc1.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI1.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''MAJOREKG''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='MAJOREKG' THEN
                  BEGIN
                    AMI1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc1.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc1.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else if major_type='CVA' then//急診醫師檢視
            begin
              MedtCVA1.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime1.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime1.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc1.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc1.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else
            begin //啟動創傷小組
              MEdttrauma1.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime1.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime1.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc1.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc1.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
        3:
          begin
            if major_type='AMI' then
            begin
              AMI2.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime2.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc2.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc2.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI2.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''CK_TROLSTRAT''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CK_TROLSTRAT' THEN
                  BEGIN
                    AMI2.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc2.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc2.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else  if major_type='CVA' then
            begin
              MedtCVA2.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime2.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              //Lbecvatime2.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;//20161011無須給
              Lbecvadoc2.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc2.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else
            begin
              MEdttrauma2.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime2.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime2.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc2.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc2.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
        4:
          begin
            if major_type='AMI' then
            begin
              AMI3.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime3.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc3.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc3.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI3.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''CK_TROLOVER''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CK_TROLOVER' THEN
                  BEGIN
                    AMI3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc3.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc3.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else  if major_type='CVA' then
            begin
              MedtCVA3.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime3.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime3.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc3.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc3.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA3.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CONST_START' THEN
                  BEGIN
                    MedtCVA3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc3.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc3.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              end;
            end
            else
            begin
              MEdttrauma3.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime3.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime3.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc3.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc3.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
        5:
          begin
            if major_type='AMI' then
            begin
              AMI4.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime4.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc4.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc4.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI4.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''ASPIRIN''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ASPIRIN' THEN
                  BEGIN
                    AMI4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc4.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc4.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else  if major_type='CVA' then
            begin
              MedtCVA4.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime4.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime4.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc4.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc4.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA4.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='SMS_STRAT' THEN
                  BEGIN
                    MedtCVA4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc4.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc4.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              end;
            end
            else
            begin
              MEdttrauma4.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime4.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime4.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc4.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc4.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
        6:
          begin
            if major_type='AMI' then
            begin
              AMI5.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime5.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc5.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc5.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI5.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''CONST_START''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CONST_START' THEN
                  BEGIN
                    AMI5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc5.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc5.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else  if major_type='CVA' then
            begin
              MedtCVA5.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime5.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime5.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc5.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc5.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA5.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='BRAINCTSTART' THEN
                  BEGIN
                    MedtCVA5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc5.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc5.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              end;
            end
            else
            begin
              //110.05.12 shh ITe add 新增重症時程表項目5~8
              {
              MEdttrauma5.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime5.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime5.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc5.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc5.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              }
            end;
          end;
        7:
          begin
            if major_type='AMI' then
            begin
              AMI6.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime6.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc6.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc6.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(AMI6.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                BEGIN
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := 'TIME_TYPE=''CONST_REPLY''';
                  DICOMDB_qry1.Filtered := True;
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='AMI_CONST_REPLY' THEN
                  BEGIN
                    AMI6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbeamidoc6.Caption := GETDOCNAME(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                    Lbeamidoc6.Hint := DICOMDB_qry1.FieldByName('DOC_CODE').AsString;
                  END;
                  DICOMDB_qry1.Filtered := False;
                  DICOMDB_qry1.Filter := '';
                END;
              end;
            end
            else  if major_type='CVA' then
            begin
              MedtCVA6.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime6.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime6.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc6.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc6.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA6.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='BRAINCTOVER' THEN
                  BEGIN
                    MedtCVA6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc6.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc6.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              end;
            end
            else
            begin
            {
              MEdttrauma6.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime6.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime6.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc6.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc6.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              }
            end;
          end;
        8:
          begin
            if major_type='AMI' then
            begin
              AMI7.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime7.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc7.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc7.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else if major_type='CVA' then
            begin
              MedtCVA7.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime7.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime7.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc7.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc7.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA7.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CVA_CONST_REPLY' THEN
                  BEGIN
                    MedtCVA7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc7.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc7.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              END;
            end
            else
            begin
            {
              MEdttrauma7.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime7.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime7.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc7.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc7.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              }
            end;
          end;
        9:
          begin
            if major_type='AMI' then
            begin
              AMI8.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime8.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc8.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc8.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            else if major_type='CVA' then
            begin
              if trim(DM.QryTemp.FieldByName('note').AsString) <> '' then
                EdtNIHSS.Text  := trim(DM.QryTemp.FieldByName('note').AsString);
            end
            else
            begin
            {
              MEdttrauma8.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttratime8.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbetratime8.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbetradoc8.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbetradoc8.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              }
            end;
          end;
        10:
          begin
            if major_type='AMI' then
            begin
              AMI9.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime9.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc9.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc9.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              MedtCVA9.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime9.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime9.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc9.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc9.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if Trim(MedtCVA9.Text)= '' then
              begin
                if DICOMDB_qry1.RecordCount > 0 then
                  IF trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='APTT_OVER' THEN
                  BEGIN
                    MedtCVA9.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
                    MEdttime9.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
                    Lbecvadoc9.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
                    Lbecvadoc9.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
                  END;
              END;
            end;
          end;
        11:
          begin
            if major_type='AMI' then
            begin
              AMI10.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime10.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc10.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc10.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              MedtCVA10.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime10.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime10.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc10.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc10.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
              if trim(DM.QryTemp.FieldByName('note').AsString) <> '' then
              begin
                if ReturnId(trim(DM.QryTemp.FieldByName('note').AsString)) = 'R1' then
                  RadioButton1.Checked := True;
                if ReturnId(trim(DM.QryTemp.FieldByName('note').AsString)) = 'R2' then
                  RadioButton2.Checked := True;
              end;
            end;
          end;
        12:
          begin
            if major_type='AMI' then
            begin
              AMI11.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime11.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc11.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc11.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              MedtCVA11.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime11.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime11.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc11.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc11.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;

          13:
          begin
            if major_type='AMI' then
            begin
              AMI12.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime12.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc12.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc12.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              MedtCVA12.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString);
              MEdttime12.Text := trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbecvatime12.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbecvadoc12.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbecvadoc12.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end;
          end;
          14:
          begin
            if major_type='AMI' then
            begin
              AMI13.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime13.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc13.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc13.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
          15:
          begin
            if major_type='AMI' then
            begin
              AMI14.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime14.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc14.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc14.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end; 
          16:
          begin
            if major_type='AMI' then
            begin
              AMI15.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime15.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc15.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc15.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
          17:
          begin
            if major_type='AMI' then
            begin
              AMI16.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime16.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc16.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc16.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
          18:
          begin
            if major_type='AMI' then
            begin
              AMI17.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime17.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc17.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc17.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
          19:
          begin
            if major_type='AMI' then
            begin
              AMI18.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              Lbeamitime18.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;
              Lbeamidoc18.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc18.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
          20:
          begin
            if major_type='AMI' then
            begin
              AMI19.Text := trim(DM.QryTemp.FieldByName('START_DATE').AsString) + trim(DM.QryTemp.FieldByName('START_TIME').AsString);
              //Lbeamitime19.Caption := DM.QryTemp.FieldByName('TIME_SUM').AsString;  //不計算到院前
              Lbeamidoc19.Caption := GETDOCNAME(DM.QryTemp.FieldByName('DOC_CODE').AsString);
              Lbeamidoc19.Hint := DM.QryTemp.FieldByName('DOC_CODE').AsString;
            end
            ELSE if major_type='CVA' then
            begin
              //CVA
            end;
          end;
      end;
      DM.QryTemp.Next;
    end;
//  end
//  else
  end;
  begin
    {
    取時間點   109.02.05 shh ITe modify
AMI
         到院時間         自動抓掛號日期
         心電圖完成時間   EKG_MAJOREKG
         啟動時間         START_A
         開立TroI         CK_TROLSTRAT
         TROI報告完成時間 CK_TROLOVER
         aspirinclopidogrel開藥時間  ASPIRIN 
         clopidogrel開藥時間         CLOPIDOGREL   
         //會診啟動時間     CONST_START
         //會診到達時間     CONST_REPLY
         會診啟動時間     AMI_CONST_START
         會診到達時間     AMI_CONST_REPLY
         急診醫令完診時間 ERFINISH
CVA
         到院時間         自動抓掛號日期
         急診醫師檢視     FIRST_ORDER  
         啟動中風小組     START_S      
         發簡訊通知值班   SMS_STRAT
         --腦部斷層掃描(Brain CT)簽收    BRAINCTSTART
         --腦部斷層掃描(Brain CT)判讀   BRAINCTOVER
         腦部電腦斷層(Brain CT)上傳時間 BRAINCTSTART
         MRI for IA 上傳時間            BRAINCTOVER
         //神內醫師到達時間     CONST_REPLY
         神內醫師到達時間     CVA_CONST_REPLY
         PT/APTT/INR檢驗報告完成      APTT_OVER
         r-tPA開立時間    RTPA_TIME
         IAT開立時間      IAT_TIME
         病人離開急診     ERFINISH
TRAUMA(TRA)
         到院時間         自動抓掛號日期
         啟動創傷小組     START_T
         //創傷小組到達急診 CONST_REPLY
         創傷小組到達急診 TRA_CONST_REPLY
         評估完成決定去向 BESP_IPD
         病人離開急診     ERFINISH
    }
    if major_type='AMI' then
    begin
      //
      AMI0.Text := IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000)+copy(trim(incident_dt),9,4);
      //AMI0.Text := IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000)+copy(trim(incident_dt),9,4) + '00';
      Lbeamidoc0.Caption := GETDOCNAME(tragenus);
      Lbeamidoc0.Hint := tragenus;
      //
      DICOMDB_qry1.First;
      WHILE NOT DICOMDB_qry1.Eof DO
      BEGIN
      //109.02.05 shh ITe add 重症時序 AMI啟動  clopidogrel開藥時間
        IF ((trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='MAJOREKG') OR (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_A')) and (AMI1.Text = '') THEN
        //IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='MAJOREKG') THEN
        BEGIN
          AMI1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc1.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc1.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_A') and (AMI12.Text = '') THEN
        BEGIN
          AMI12.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc12.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc12.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CK_TROLSTRAT') and (AMI2.Text = '') THEN
        BEGIN
          AMI2.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc2.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc2.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CK_TROLOVER') and (AMI3.Text = '') THEN
        BEGIN
          AMI3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc3.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc3.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ASPIRIN') and (AMI4.Text = '') THEN
        BEGIN
          AMI4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc4.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc4.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CLOPIDOGREL') and (AMI13.Text = '') THEN
        BEGIN
          AMI13.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc13.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc13.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF ((trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='AMI_CONST_START') OR (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_A')) and (AMI5.Text = '') THEN
        BEGIN
          AMI5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc5.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc5.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='AMI_CONST_REPLY') and (AMI6.Text = '') THEN
        BEGIN
          AMI6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc6.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc6.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (AMI7.Text = '') THEN
        BEGIN
          AMI7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString) + trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbeamidoc7.Caption :=  GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbeamidoc7.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        DICOMDB_qry1.Next;
      END;
    end
    else if major_type='CVA' then
    begin
      MedtCVA0.Text := IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000);
      MEdttime0.Text := copy(trim(incident_dt),9,4);
      //MEdttime0.Text := copy(trim(incident_dt),9,4) + '00';
      Lbecvadoc0.Caption := GETDOCNAME(tragenus);
      Lbecvadoc0.Hint := tragenus;
      DICOMDB_qry1.First;
      WHILE NOT DICOMDB_qry1.Eof DO
      BEGIN
        IF ((trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CONST_START') OR (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_S')) and (MedtCVA3.Text = '') THEN
        BEGIN
          MedtCVA3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc3.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc3.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF ((trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='SMS_STRAT') OR (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_S')) and (MedtCVA4.Text = '') THEN
        BEGIN
          MedtCVA4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc4.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc4.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='BRAINCTSTART') and (MedtCVA5.Text = '') THEN
        BEGIN
          MedtCVA5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc5.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc5.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='BRAINCTOVER') and (MedtCVA6.Text = '') THEN
        BEGIN
          MedtCVA6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc6.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc6.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='CVA_CONST_REPLY') and (MedtCVA7.Text = '') THEN
        BEGIN
          MedtCVA7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc7.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc7.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='APTT_OVER') and (MedtCVA9.Text = '') THEN
        BEGIN
          MedtCVA9.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime9.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc9.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc9.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        //109.02.05 shh ITe add CVA重症時序
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='RTPA_TIME') and (MedtCVA10.Text = '') THEN
        BEGIN
          MedtCVA10.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime10.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc10.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc10.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='IAT_TIME') and (MedtCVA12.Text = '') THEN
        BEGIN
          MedtCVA12.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime12.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc12.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc12.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MedtCVA11.Text = '') THEN
        BEGIN
          MedtCVA11.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime11.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc11.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc11.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='FIRST_ORDER') and (MedtCVA1.Text = '') THEN
        BEGIN
          MedtCVA1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttime1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbecvadoc1.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbecvadoc1.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        DICOMDB_qry1.Next;
      END;
    end
    else
    begin
      MEdttrauma0.Text := IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000);
      //110.04.28 shh ITe 11138 modify 時間4碼改6碼
      MEdttratime0.Text := copy(trim(incident_dt),9,4);
      //MEdttratime0.Text := copy(trim(incident_dt),9,4) + '00';
      Lbetradoc0.Caption := GETDOCNAME(tragenus);
      Lbetradoc0.Hint := tragenus;
      DICOMDB_qry1.First;
      WHILE NOT DICOMDB_qry1.Eof DO
      BEGIN
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='START_T') and (MEdttrauma1.Text = '') THEN
        BEGIN
          MEdttrauma1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime1.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc1.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc1.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='TRA_CONST_REPLY') and (MEdttrauma2.Text = '')  THEN
        BEGIN
          MEdttrauma2.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime2.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc2.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc2.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='BESP_IPD' ) and (MEdttrauma3.Text = '') THEN
        BEGIN
          MEdttrauma3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime3.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc3.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc3.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MEdttrauma4.Text = '')  THEN
        BEGIN
          MEdttrauma4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime4.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc4.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc4.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        //110.05.12 shh ITe add 新重症時程表項目5~8
        {
        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MEdttrauma5.Text = '')  THEN
        BEGIN
          MEdttrauma5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime5.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc5.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc5.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MEdttrauma6.Text = '')  THEN
        BEGIN
          MEdttrauma6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime6.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc6.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc6.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MEdttrauma7.Text = '')  THEN
        BEGIN
          MEdttrauma7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime7.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc7.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc7.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;

        IF (trim(DICOMDB_qry1.FieldByName('TIME_TYPE').AsString)='ERFINISH') and (MEdttrauma8.Text = '')  THEN
        BEGIN
          MEdttrauma8.Text := trim(DICOMDB_qry1.FieldByName('RECORD_DATE').AsString);
          MEdttratime8.Text := trim(DICOMDB_qry1.FieldByName('RECORD_time').AsString);
          Lbetradoc8.Caption := GETDOCNAME(trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString));
          Lbetradoc8.Hint := trim(DICOMDB_qry1.FieldByName('DOC_CODE').AsString);
        END;
        }



        DICOMDB_qry1.Next;
      end;
    end;
  end;
  openallorder;
  caltime;
end;

procedure TFrmAMI.BitBtn2Click(Sender: TObject);
var
  i,sno,mno,j : integer;
  sql,tempstr : string;
  mySQLo : TObjectList;
  mysqls : TStringList;
  clos : Boolean;
begin
  inherited;
  clos:= True;
  if (TButton(Sender).Name='Button5') or (TBitBtn(Sender).Name='Button3') or (TBitBtn(Sender).Name='Button4') then
    clos := False;
  //update
   mySQLo := TObjectList.Create;
   mysqls := TStringList.Create;
   mysqls.Add('update MAJOR_log set cncl_flag=''Y'' where fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' and  kind='+qt(copy(major_type,1,1)));
   mySQLo.Add(mysqls);
  //save
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select nvl(max(seq_no),0) as no from major_log where fee_no='+qt(GetFeeNo)+' and  kind='+qt(copy(major_type,1,1)));
  DM.QryTemp.Open;
  if DM.QryTemp.FieldByName('no').AsInteger < 1 then
    sno := 0
  else
    sno :=  DM.QryTemp.FieldByName('no').AsInteger;

  inc(sno);
  mno := 0;
  if major_type='AMI' then
  begin
    Lbeamitime19.Caption := '';
    FOR I := 0 to 19 do
    begin
      sql := getMAJOR_sql(9);
      inc(mno);
      SetParamter(sql,'$SEQ_NO$',IntToStr(sno));
      SetParamter(sql,'$KIND$',QT(copy(major_type,1,1)));
      SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
      SetParamter(sql,'$M_NO$',IntToStr(mno));
      SetParamter(sql,'$MAJOR_NAME$',QT(TLabel(FindComponent('Lbeamiset'+IntToStr(i))).Caption));
      if TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text <> '' then
      begin
        SetParamter(sql,'$START_DATE$',QT(copy(TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text,1,7)));
        //SetParamter(sql,'$START_TIME$',QT(copy(TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text,8,4)));
        SetParamter(sql,'$START_TIME$',QT(copy(TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text,8,6)));
      end
      else
      begin
        SetParamter(sql,'$START_DATE$',QT(''));
        SetParamter(sql,'$START_TIME$',QT(''));
      end;
      SetParamter(sql,'$TIME_SUM$',QT(TLabel(FindComponent('Lbeamitime'+IntToStr(i))).Caption));
      SetParamter(sql,'$DOC_CODE$',QT(TLabel(FindComponent('Lbeamidoc'+IntToStr(i))).Hint));
      SetParamter(sql,'$CNCL_FLAG$',QT('N'));
      SetParamter(sql,'$NOTE$',QT(''));
      mysqls := TStringList.Create;
      mysqls.Add(sql);
      mySQLo.Add(mysqls);
    end;
  end
  else
  if major_type='CVA' then
  begin
    Lbecvatime2.Caption := '';
    FOR I := 0 to 12 do
    begin
      sql := getMAJOR_sql(9);
      inc(mno);
      SetParamter(sql,'$SEQ_NO$',IntToStr(sno));
      SetParamter(sql,'$KIND$',QT(copy(major_type,1,1)));
      SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
      SetParamter(sql,'$M_NO$',IntToStr(mno));
      SetParamter(sql,'$MAJOR_NAME$',QT(TLabel(FindComponent('Lbecvaset'+IntToStr(i))).Caption));

      if (TMaskEdit(FindComponent('MedtCVA'+IntToStr(i))).Text <> '') and (TMaskEdit(FindComponent('MEdttime'+IntToStr(i))).Text <> '') then
      begin
        SetParamter(sql,'$START_DATE$',QT(TMaskEdit(FindComponent('MedtCVA'+IntToStr(i))).Text));
        SetParamter(sql,'$START_TIME$',QT(TMaskEdit(FindComponent('MEdttime'+IntToStr(i))).Text));
      end
      else
      begin
        SetParamter(sql,'$START_DATE$',QT(''));
        SetParamter(sql,'$START_TIME$',QT(''));
      end;
      SetParamter(sql,'$TIME_SUM$',QT(TLabel(FindComponent('Lbecvatime'+IntToStr(i))).Caption));
      SetParamter(sql,'$DOC_CODE$',QT(TLabel(FindComponent('Lbecvadoc'+IntToStr(i))).Hint));
      SetParamter(sql,'$CNCL_FLAG$',QT('N'));
      if i = 8 then
        SetParamter(sql,'$NOTE$',QT(EdtNIHSS.Text))
      else if i = 10 then
      begin
        if RadioButton1.Checked then
          SetParamter(sql,'$NOTE$',QT('R1'))
        else if RadioButton2.Checked then
          SetParamter(sql,'$NOTE$',QT('R2'))
        else
          SetParamter(sql,'$NOTE$',QT(''));
      end
      else
        SetParamter(sql,'$NOTE$',QT(''));

      mysqls := TStringList.Create;
      mysqls.Add(sql);
      mySQLo.Add(mysqls);
    end;
  end
  else //truma blue
  begin
    FOR I := 0 to 4 do
    begin
      sql := getMAJOR_sql(9);
      inc(mno);
      SetParamter(sql,'$SEQ_NO$',IntToStr(sno));
      SetParamter(sql,'$KIND$',QT(copy(major_type,1,1)));
      SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
      SetParamter(sql,'$M_NO$',IntToStr(mno));
      SetParamter(sql,'$MAJOR_NAME$',QT(TLabel(FindComponent('Lbetraset'+IntToStr(i))).Caption));

      if (TMaskEdit(FindComponent('MEdttrauma'+IntToStr(i))).Text <> '') and (TMaskEdit(FindComponent('MEdttratime'+IntToStr(i))).Text <> '') then
      begin
        SetParamter(sql,'$START_DATE$',QT(TMaskEdit(FindComponent('MEdttrauma'+IntToStr(i))).Text));
        SetParamter(sql,'$START_TIME$',QT(TMaskEdit(FindComponent('MEdttratime'+IntToStr(i))).Text));
      end
      else
      begin
        SetParamter(sql,'$START_DATE$',QT(''));
        SetParamter(sql,'$START_TIME$',QT(''));
      end;
      SetParamter(sql,'$TIME_SUM$',QT(TLabel(FindComponent('Lbetratime'+IntToStr(i))).Caption));
      SetParamter(sql,'$DOC_CODE$',QT(TLabel(FindComponent('Lbetradoc'+IntToStr(i))).Hint));
      SetParamter(sql,'$CNCL_FLAG$',QT('N'));
      SetParamter(sql,'$NOTE$',QT(''));
      mysqls := TStringList.Create;
      mysqls.Add(sql);
      mySQLo.Add(mysqls);
    end;
  end;
  if not DM.ExecSQL(mySQLo) then
  begin
    ShowMessage('寫入資料庫失敗');
    exit;
    mySQLo.Free;
  end;
  mySQLo.Free;
  if clos then
    Self.Close;
end;

procedure TFrmAMI.caltime;
var
  i,j : integer;
  lab,lab1 : TLabel;
  sha : TShape;
begin
  j := 0;
  if major_type='AMI' then
  begin
    for i := 0 to ComponentCount-1 do
    begin
      if Components[i] is TMaskEdit then
      begin
        if copy(TMaskEdit(Components[i]).Name,1,3) ='AMI' then
        begin
          j := StrToInt(copy(TMaskEdit(Components[i]).Name,4,length(TMaskEdit(Components[i]).Name)-3));
          lab := TLabel(FindComponent('Lbeamitime'+IntToStr(j)));
          lab1 := TLabel(FindComponent('Lbeamidoc'+IntToStr(j)));
          sha := TShape(FindComponent('shpami'+IntToStr(j)));
          if TMaskEdit(Components[i]).Text <> '' then
          begin
            sha.Brush.Color := $00A2F0DD ;
            lab.Caption := IntToStr((MinutesBetween(ROCToDate(copy(trim(AMI0.Text),1,7))+ROCToTime(copy(trim(AMI0.Text),8,4)),
                                        ROCToDate(copy(TMaskEdit(Components[i]).Text,1,7))+ROCToTime(copy(trim(TMaskEdit(Components[i]).Text),8,4)) )) div 60)
                          +':'+ AddChar(IntToStr((MinutesBetween(ROCToDate(copy(trim(AMI0.Text),1,7))+ROCToTime(copy(trim(AMI0.Text),8,4)),
                                        ROCToDate(copy(TMaskEdit(Components[i]).Text,1,7))+ROCToTime(copy(trim(TMaskEdit(Components[i]).Text),8,4)) )) mod 60),'0',2);

          end
          else
          begin
            lab.Caption := '';
            lab1.Caption := '       ';
            if sha.Hint='$00D3E4AF' then
              sha.Brush.Color := $00D3E4AF
            else
              sha.Brush.Color := $0080FFFF;
          end;
        end;
      end;
    end;
  end
  else if major_type='CVA' then
  begin
    for i := 0 to ComponentCount-1 do
    begin
      if Components[i] is TMaskEdit then
      begin
        if copy(TMaskEdit(Components[i]).Name,1,7) ='MedtCVA' then
        begin
          j := StrToInt(copy(TMaskEdit(Components[i]).Name,8,length(TMaskEdit(Components[i]).Name)-7));
          lab := TLabel(FindComponent('Lbecvatime'+IntToStr(j)));
          lab1 := TLabel(FindComponent('Lbecvadoc'+IntToStr(j)));
          sha := TShape(FindComponent('shpCVA'+IntToStr(j)));
          if (TMaskEdit(FindComponent('MEdttime'+IntToStr(j))).Text <> '') and (TMaskEdit(Components[i]).Text <> '') then
          begin
            sha.Brush.Color := $00A2F0DD ;
                              //(MinutesBetween(ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)),
            lab.Caption := IntToStr((MinutesBetween(ROCToDate(MedtCVA0.Text)+ROCToTime(MEdttime0.Text),
                                      ROCToDate(TMaskEdit(Components[i]).Text)+ROCToTime(TMaskEdit(FindComponent('MEdttime'+IntToStr(j))).Text) )) div 60)
                        //ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)),
                        +':'+ AddChar(IntToStr((MinutesBetween(ROCToDate(MedtCVA0.Text)+ROCToTime(MEdttime0.Text),
                                      ROCToDate(TMaskEdit(Components[i]).Text)+ROCToTime(TMaskEdit(FindComponent('MEdttime'+IntToStr(j))).Text) )) mod 60),'0',2);
          end
          else
          begin
            lab.Caption := '';
            lab1.Caption := '       ';
            if sha.Hint='$00D3E4AF' then
              sha.Brush.Color := $00D3E4AF
            else
              sha.Brush.Color := $0080FFFF;
            //sha.Brush.Color := $00D3E4AF;
          end;
        end;
      end;
    end;
  end
  else
  begin
    for i := 0 to ComponentCount-1 do
    begin
      if Components[i] is TMaskEdit then
      begin
        if copy(TMaskEdit(Components[i]).Name,1,10) ='MEdttrauma' then
        begin
          j := StrToInt(copy(TMaskEdit(Components[i]).Name,11,length(TMaskEdit(Components[i]).Name)-10));
          lab := TLabel(FindComponent('Lbetratime'+IntToStr(j)));
          lab1 := TLabel(FindComponent('Lbetradoc'+IntToStr(j)));
          sha := TShape(FindComponent('SpTrauma'+IntToStr(j)));
          if (TMaskEdit(FindComponent('MEdttratime'+IntToStr(j))).Text <> '') and (TMaskEdit(Components[i]).Text <> '') then
          begin
            sha.Brush.Color := $00A2F0DD ;
                                    //IntToStr((MinutesBetween(ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)),
            lab.Caption := IntToStr((MinutesBetween(ROCToDate(MEdttrauma0.Text)+ROCToTime(MEdttratime0.Text),
                                      ROCToDate(TMaskEdit(Components[i]).Text)+ROCToTime(TMaskEdit(FindComponent('MEdttratime'+IntToStr(j))).Text) )) div 60)
                        //+':'+ AddChar(IntToStr((MinutesBetween(ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)),
                        +':'+ AddChar(IntToStr((MinutesBetween(ROCToDate(MEdttrauma0.Text)+ROCToTime(MEdttratime0.Text),
                                      ROCToDate(TMaskEdit(Components[i]).Text)+ROCToTime(TMaskEdit(FindComponent('MEdttratime'+IntToStr(j))).Text) )) mod 60),'0',2);
          end
          else
          begin
            lab.Caption := '';
            lab1.Caption := '       ';
            //sha.Brush.Color := $00D3E4AF;
            if sha.Hint='$00D3E4AF' then
              sha.Brush.Color := $00D3E4AF
            else
              sha.Brush.Color := $0080FFFF;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmAMI.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmAMI.openallorder;
var
  aa :string;
begin
  if major_type='AMI' then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select distinct a.nus_date,a.nus_time,a.nus_oper,b.name ');
    DM.QryTemp.SQL.Add('from epd_all_order a,major_injuries b where a.fee_no='+Qt(GetFeeNo)+' and a.order_date='+qt(GetEpdDate)+' and a.fee_code= b.group_code ');
    DM.QryTemp.SQL.Add('and a.del_flag=''N'' and a.dc_flag=''N'' and a.nus_date is not null');
    DM.QryTemp.SQL.Text;
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      if DM.QryTemp.FieldByName('name').AsString ='EKG' then
      begin
       // AMI1.Text :=  trim(DM.QryTemp.FieldByName('nus_date').AsString) + copy(trim(DM.QryTemp.FieldByName('nus_time').AsString),1,4);
       // Lbeamidoc1.Caption := GETDOCNAME(trim(DM.QryTemp.FieldByName('nus_oper').AsString));
       // Lbeamidoc1.Hint := trim(DM.QryTemp.FieldByName('nus_oper').AsString);
      end;
      if (DM.QryTemp.FieldByName('name').AsString ='ASPIRIN') or (DM.QryTemp.FieldByName('name').AsString ='CLOPIDOGREL') then
      begin
        AMI4.Text :=  trim(DM.QryTemp.FieldByName('nus_date').AsString) + copy(trim(DM.QryTemp.FieldByName('nus_time').AsString),1,4);
        Lbeamidoc4.Caption := GETDOCNAME(trim(DM.QryTemp.FieldByName('nus_oper').AsString));
        Lbeamidoc4.Hint := trim(DM.QryTemp.FieldByName('nus_oper').AsString);
      end;
      DM.QryTemp.Next;
    end;
  end
  else if major_type='CVA' then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select distinct a.nus_date,a.nus_time,b.name ');
    DM.QryTemp.SQL.Add('from epd_all_order a,major_injuries b where a.fee_no='+Qt(GetFeeNo)+' and a.order_date='+qt(GetEpdDate)+' and a.fee_code= b.group_code ');
    DM.QryTemp.SQL.Add('and a.del_flag=''N'' and a.dc_flag=''N'' and a.nus_date is not null');
    DM.QryTemp.SQL.Text;
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      {if DM.QryTemp.FieldByName('name').AsString ='CT' then
      begin
        MedtCVA2.Text :=  trim(DM.QryTemp.FieldByName('nus_date').AsString);
        MEdttime2.Text := copy(trim(DM.QryTemp.FieldByName('nus_time').AsString),1,4);
      end;
      if DM.QryTemp.FieldByName('name').AsString ='RTPA' then
      begin
        MedtCVA7.Text :=  trim(DM.QryTemp.FieldByName('nus_date').AsString);
        MEdttime7.Text := copy(trim(DM.QryTemp.FieldByName('nus_time').AsString),1,4);
      end;}
      DM.QryTemp.Next;
    end;
    //取NIHSS分數
    {
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    aa := getlog_sql(22);
    SetParamter(aa,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(aa,'$CHK_POINT$',Qt('00'));
    DM.QryTemp.SQL.Text := aa;
    DM.QryTemp.Open;
    IF NOT DM.QryTemp.IsEmpty THEN
      EdtNIHSS.Text := trim(DM.QryTemp.FieldByName('TOTAL').AsString);
    }
    //109.02.06 shh ITe mark  NIHSS從table 取值
    begin
      try
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add('SELECT t.Tpa_Score FROM Nihss_Tpa_Score t WHERE t.Fee_No = '+qt(GetFeeNo)+' AND t.Tpa_Seq = 1 AND Rownum = 1');

        sql_Waiting_log('CVA NIHSS Tpa_Score',DM.QryTemp.SQL.Text);
        DM.QryTemp.Open;
        sql_Waiting_log('close CVA NIHSS Tpa_Score','');
        while not DM.QryTemp.Eof do
        begin
          EdtNIHSS.Text := trim(DM.QryTemp.FieldByName('Tpa_Score').AsString);
          DM.QryTemp.Next;
        end;
      except
        //Do nothing
      end;
    end;
  end
  else
  begin //truama
    if ChkTraumaPapeOk(aa,GetFeeNo) then //評估表完成必填資料
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select * from epd_record where fee_no='+Qt(GetFeeNo)+' AND ORDER_DATE='+QT(GetEpdDate)+' and kind=''FIRST_TRAUMA'' and allorder_no=');
      DM.QryTemp.SQL.Add('(select max(allorder_no) from epd_record where fee_no='+Qt(GetFeeNo)+' AND ORDER_DATE='+QT(GetEpdDate)+' and kind=''FIRST_TRAUMA'') ');
      DM.QryTemp.SQL.Text;
      DM.QryTemp.Open;
      if not DM.QryTemp.IsEmpty then
      begin
        MEdttrauma3.Text := DM.QryTemp.FieldByName('upd_date').AsString;
        MEdttratime3.Text := copy(DM.QryTemp.FieldByName('upd_time').AsString,1,4);
        if docid <> '' then
        begin
          Lbetradoc3.Caption := docname;
          Lbetradoc3.Hint := docid;
        end
        else
        begin
          Lbetradoc3.Caption := GETDOCNAME(DM.QryTemp.FieldByName('upd_oper').AsString);
          Lbetradoc3.Hint := DM.QryTemp.FieldByName('upd_oper').AsString;
        end;
      end;
    end;
  end;
end;

procedure TFrmAMI.AMI0Exit(Sender: TObject);
begin
  inherited;
  caltime;
end;

procedure TFrmAMI.Button3Click(Sender: TObject);
var
  i,j : integer;
  tempstr : string;
  mycontorl : TComponent;
begin
  inherited;
  //save
  BitBtn2Click(Button6);
  //print
  if not Assigned(FrmMajorRept) then
    FrmMajorRept := TFrmMajorRept.Create(Self);

  if major_type='AMI' then
  begin
    for i := 0 to 19 do
    BEGIN
      if (TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text <> '') then
      begin
        TMaskEdit(FindComponent('AMI'+IntToStr(i))).EditMask :='!999/99/99 99:99;1;_';
      end;
      TQRLabel(FrmMajorRept.FindComponent('AMI'+IntToStr(i))).Caption := TMaskEdit(FindComponent('AMI'+IntToStr(i))).Text;
      TQRLabel(FrmMajorRept.FindComponent('Lbeamitime'+IntToStr(i))).Caption := TLabel(FindComponent('Lbeamitime'+IntToStr(i))).Caption;
      TQRLabel(FrmMajorRept.FindComponent('Lbeamidoc'+IntToStr(i))).Caption := TLabel(FindComponent('Lbeamidoc'+IntToStr(i))).Caption;
    END;
    FrmMajorRept.QRLabel9.Caption := GetChrNo;
    FrmMajorRept.QRLabel102.Caption := GetPatName;
    FrmMajorRept.PrepareSQL('AMI');
  end;
  if major_type = 'CVA' then
  begin
    for i := 0 to 12 do
    BEGIN
      if (i = 10) or (i = 12) then continue;

      if (TMaskEdit(FindComponent('MedtCVA'+IntToStr(i))).Text <> '') and (TMaskEdit(FindComponent('MEdttime'+IntToStr(i))).Text <> '') then
      begin
        TMaskEdit(FindComponent('MedtCVA'+IntToStr(i))).EditMask :='!999/99/99;1;_';
        TMaskEdit(FindComponent('MEdttime'+IntToStr(i))).EditMask :='99:99;1;_';
      end;
      TQRLabel(FrmMajorRept.FindComponent('MedtCVA'+IntToStr(i))).Caption := TMaskEdit(FindComponent('MedtCVA'+IntToStr(i))).Text + ' ' + TMaskEdit(FindComponent('MEdttime'+IntToStr(i))).Text;
      TQRLabel(FrmMajorRept.FindComponent('Lbecvatime'+IntToStr(i))).Caption := TLabel(FindComponent('Lbecvatime'+IntToStr(i))).Caption;
      TQRLabel(FrmMajorRept.FindComponent('Lbecvadoc'+IntToStr(i))).Caption := TLabel(FindComponent('Lbecvadoc'+IntToStr(i))).Caption;
    END;
    FrmMajorRept.QRLabel23.Caption := EdtNIHSS.Text;
    FrmMajorRept.QRLabel46.Caption := GetChrNo;
    FrmMajorRept.QRLabel112.Caption := GetPatName;
    FrmMajorRept.PrepareSQL('CVA');
  end;
  if major_type='Trauma' then
  begin
    for i := 0 to 4 do
    begin
      if (TMaskEdit(FindComponent('MEdttrauma'+IntToStr(i))).Text <> '') and (TMaskEdit(FindComponent('MEdttratime'+IntToStr(i))).Text <> '') then
      begin
        TMaskEdit(FindComponent('MEdttrauma'+IntToStr(i))).EditMask :='!999/99/99;1;_';
        TMaskEdit(FindComponent('MEdttratime'+IntToStr(i))).EditMask :='99:99;1;_';
      end;
      TQRLabel(FrmMajorRept.FindComponent('MEdttrauma'+IntToStr(i))).Caption := TMaskEdit(FindComponent('MEdttrauma'+IntToStr(i))).Text + ' ' + TMaskEdit(FindComponent('MEdttratime'+IntToStr(i))).Text;
      TQRLabel(FrmMajorRept.FindComponent('Lbetratime'+IntToStr(i))).Caption := TLabel(FindComponent('Lbetratime'+IntToStr(i))).Caption;
      TQRLabel(FrmMajorRept.FindComponent('Lbetradoc'+IntToStr(i))).Caption := TLabel(FindComponent('Lbetradoc'+IntToStr(i))).Caption;
   end;
    FrmMajorRept.QRLabel29.Caption := GetChrNo;
    FrmMajorRept.QRLabel31.Caption := GetPatName;
    FrmMajorRept.PrepareSQL('Trauma');
  end;

  FreeAndNil(FrmMajorRept);
  Self.Close;
end;

procedure TFrmAMI.RadioButton1Click(Sender: TObject);
var
  Paramter,PType,RType,PData: TStrings;
  SpName,ExeSPResult,myStr,myParamter: string;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','重症小組簡訊','');
  myParamter := Setsys.ReadString('PARAMTER','重症小組簡訊','');
  comStrRep(mystr);
  comstrRep(myParamter);
  SetCONMAJOR('P');
  if myStr ='' then
  begin
    if MessageDlg('是否發送簡訊',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin//sp_Emergencyphs
      try
        Paramter:=TStringList.Create;
        PType:=TStringList.Create;
        RType:=TStringList.Create;
        PData:=TStringList.Create;
        SpName:=getSpSql(6,Paramter,PType,RType);
        PData.Add('TPA');
        PData.Add(GetChrNo);
        PData.Add(getUserId);
        ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
      finally
        Paramter.Free;
        PType.Free;
        RType.Free;
        PData.Free;
      end;
    end;
  end
  ELSE
  BEGIN
    if MessageDlg('是否發送簡訊',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL)
  END;

  {MedtCVA10.Text := ROCDate(Now,'');
  MEdttime10.Text := ROCTime(Now,'');
  IF CBBCVAdoc.ItemIndex >= 1 THEN
  BEGIN
    Lbecvadoc10.Caption := docname;
    Lbecvadoc10.Hint := docid;
  END
  ELSE
  BEGIN
    Lbecvadoc10.Caption := docname;
    Lbecvadoc10.Hint := docid;
  END; }
end;

procedure TFrmAMI.RadioButton2Click(Sender: TObject);
begin
  inherited;
  {MedtCVA10.Text := ROCDate(Now,'');
  MEdttime10.Text := ROCTime(Now,'');
  Lbecvadoc10.Caption := docname;
  Lbecvadoc10.Hint := docid; }
end;

procedure TFrmAMI.Lbeamiset0DblClick(Sender: TObject);
begin
  inherited;

  case StrToInt(copy(TLabel(Sender).Name,10,length(TLabel(Sender).Name)-9)) of
    0:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI0.Text) = '' then
          begin
            //110.04.28 shh ITe 11138 重症時間表時間碼數4碼改6碼
            AMI0.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI0.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc0.Caption := docname;
            Lbeamidoc0.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA0.Text) = '' then
          begin
            MedtCVA0.Text := ROCDate(Now,'');
            MEdttime0.Text := ROCTime(Now,'');
            //MEdttime0.Text := ROCTimes(Now,'');
            Lbecvadoc0.Caption := docname;
            Lbecvadoc0.Hint := docid;
          end;
        end
        else
        begin
          if trim(MEdttrauma0.Text) = '' then
          begin
            MEdttrauma0.Text := ROCDate(Now,'');
            MEdttratime0.Text := ROCTime(Now,'');
            //MEdttratime0.Text := ROCTimes(Now,'');
            Lbetradoc0.Caption := docname;
            Lbetradoc0.Hint := docid;
          end
          else
          begin
            Lbetradoc0.Caption := docname;
            Lbetradoc0.Hint := docid;
          end;
        end;
      end;
    1:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI1.Text) = '' then
          begin
            AMI1.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI1.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc1.Caption := docname;
            Lbeamidoc1.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA1.Text) = '' then
          begin
            MedtCVA1.Text := ROCDate(Now,'');
            MEdttime1.Text := ROCTime(Now,'');
            //MEdttime1.Text := ROCTimes(Now,'');
            Lbecvadoc1.Caption := docname;
            Lbecvadoc1.Hint := docid;
          end;
        end
        else
        begin
          if trim(MEdttrauma1.Text) = '' then
          begin
            MEdttrauma1.Text := ROCDate(Now,'');
            MEdttratime1.Text := ROCTime(Now,'');
            //MEdttratime1.Text := ROCTimes(Now,'');
            Lbetradoc1.Caption := docname;
            Lbetradoc1.Hint := docid;
          end
          else
          begin
            Lbetradoc1.Caption := docname;
            Lbetradoc1.Hint := docid;
          end;
        end;
      end;
    2:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI2.Text) = '' then
          begin
            AMI2.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI2.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc2.Caption := docname;
            Lbeamidoc2.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA2.Text) = '' then
          begin
            MedtCVA2.Text := ROCDate(Now,'');
            MEdttime2.Text := ROCTime(Now,'');
            //MEdttime2.Text := ROCTimes(Now,'');
            Lbecvadoc2.Caption := docname;
            Lbecvadoc2.Hint := docid;
          end;
        end
        else
        begin
          if trim(MEdttrauma2.Text) = '' then
          begin
            MEdttrauma2.Text := ROCDate(Now,'');
            MEdttratime2.Text := ROCTime(Now,'');
            //MEdttratime2.Text := ROCTimes(Now,'');
            Lbetradoc2.Caption := docname;
            Lbetradoc2.Hint := docid;
          end
          else
          begin
            Lbetradoc2.Caption := docname;
            Lbetradoc2.Hint := docid;
          end;
        end;
      end;
    3:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI3.Text) = '' then
          begin
            AMI3.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI3.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc3.Caption := docname;
            Lbeamidoc3.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA3.Text) = '' then
          begin
            MedtCVA3.Text := ROCDate(Now,'');
            MEdttime3.Text := ROCTime(Now,'');
            //MEdttime3.Text := ROCTimes(Now,'');
            Lbecvadoc3.Caption := docname;
            Lbecvadoc3.Hint := docid;
          end;
        end
        else
        begin
          if trim(MEdttrauma3.Text) = '' then
          begin
            MEdttrauma3.Text := ROCDate(Now,'');
            MEdttratime3.Text := ROCTime(Now,'');
            //MEdttratime3.Text := ROCTimes(Now,'');
            Lbetradoc3.Caption := docname;
            Lbetradoc3.Hint := docid;
          end
          else
          begin
            Lbetradoc3.Caption := docname;
            Lbetradoc3.Hint := docid;
          end;
        end;
      end;
    4:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI4.Text) = '' then
          begin
            AMI4.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI4.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc4.Caption := docname;
            Lbeamidoc4.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA4.Text) = '' then
          begin
            MedtCVA4.Text := ROCDate(Now,'');
            MEdttime4.Text := ROCTime(Now,'');
            //MEdttime4.Text := ROCTimes(Now,'');
            Lbecvadoc4.Caption := docname;
            Lbecvadoc4.Hint := docid;
          end
        end
        else
        begin
          if trim(MEdttrauma4.Text) = '' then
          begin
            MEdttrauma4.Text := ROCDate(Now,'');
            MEdttratime4.Text := ROCTime(Now,'');
            //MEdttratime4.Text := ROCTimes(Now,'');
            Lbetradoc4.Caption := docname;
            Lbetradoc4.Hint := docid;
          end
          else
          begin
            Lbetradoc4.Caption := docname;
            Lbetradoc4.Hint := docid;
          end;
        end;
      end;
    5:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI5.Text) = '' then
          begin
            AMI5.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI5.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc5.Caption := docname;
            Lbeamidoc5.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA5.Text) = '' then
          begin
            MedtCVA5.Text := ROCDate(Now,'');
            MEdttime5.Text := ROCTime(Now,'');
            //MEdttime5.Text := ROCTimes(Now,'');
            Lbecvadoc5.Caption := docname;
            Lbecvadoc5.Hint := docid;
          end;
        end
        else
        begin
          //trauma
          //110.05.12 shh ITe add 新重症時程表項目5~8
          {
          if trim(MEdttrauma5.Text) = '' then
          begin
            MEdttrauma5.Text := ROCDate(Now,'');
            MEdttratime5.Text := ROCTime(Now,'');
            //MEdttratime5.Text := ROCTimes(Now,'');
            Lbetradoc5.Caption := docname;
            Lbetradoc5.Hint := docid;
          end
          else
          begin
            Lbetradoc5.Caption := docname;
            Lbetradoc5.Hint := docid;
          end;
          }
        end;
      end;
    6:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI6.Text) = '' then
          begin
            AMI6.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI6.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc6.Caption := docname;
            Lbeamidoc6.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA6.Text) = '' then
          begin
            MedtCVA6.Text := ROCDate(Now,'');
            MEdttime6.Text := ROCTime(Now,'');
            //MEdttime6.Text := ROCTimes(Now,'');
            Lbecvadoc6.Caption := docname;
            Lbecvadoc6.Hint := docid;
          end;
        end
        else
        begin
          //trauma
          //110.05.12 shh ITe add 新重症時程表項目5~8
          {
          if trim(MEdttrauma6.Text) = '' then
          begin
            MEdttrauma6.Text := ROCDate(Now,'');
            MEdttratime6.Text := ROCTime(Now,'');
            //MEdttratime6.Text := ROCTimes(Now,'');
            Lbetradoc6.Caption := docname;
            Lbetradoc6.Hint := docid;
          end
          else
          begin
            Lbetradoc6.Caption := docname;
            Lbetradoc6.Hint := docid;
          end;
          }
        end;
      end;
    7:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI7.Text) = '' then
          begin
            AMI7.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI7.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc7.Caption := docname;
            Lbeamidoc7.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA7.Text) = '' then
          begin
            MedtCVA7.Text := ROCDate(Now,'');
            MEdttime7.Text := ROCTime(Now,'');
            //MEdttime7.Text := ROCTimes(Now,'');
            Lbecvadoc7.Caption := docname;
            Lbecvadoc7.Hint := docid;
          end;
        end
        else
        begin
          //trauma
          //110.05.12 shh ITe add 新重症時程表項目5~8
          {
          if trim(MEdttrauma7.Text) = '' then
          begin
            MEdttrauma7.Text := ROCDate(Now,'');
            MEdttratime7.Text := ROCTime(Now,'');
            //MEdttratime7.Text := ROCTimes(Now,'');
            Lbetradoc7.Caption := docname;
            Lbetradoc7.Hint := docid;
          end
          else
          begin
            Lbetradoc7.Caption := docname;
            Lbetradoc7.Hint := docid;
          end;
          }
        end;
      end;
    8:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI8.Text) = '' then
          begin
            AMI8.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI8.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc8.Caption := docname;
            Lbeamidoc8.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA8.Text) = '' then
          begin
            MedtCVA8.Text := ROCDate(Now,'');
            MEdttime8.Text := ROCTime(Now,'');
            //MEdttime8.Text := ROCTimes(Now,'');
            Lbecvadoc8.Caption := docname;
            Lbecvadoc8.Hint := docid;
          end;
        end
        else
        begin
          //trauma
          //110.05.12 shh ITe add 新重症時程表項目5~8
          {
          if trim(MEdttrauma8.Text) = '' then
          begin
            MEdttrauma8.Text := ROCDate(Now,'');
            MEdttratime8.Text := ROCTime(Now,'');
            //MEdttratime8.Text := ROCTimes(Now,'');
            Lbetradoc8.Caption := docname;
            Lbetradoc8.Hint := docid;
          end
          else
          begin
            Lbetradoc8.Caption := docname;
            Lbetradoc8.Hint := docid;
          end;
          }
        end;
      end;
    9:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI9.Text) = '' then
          begin
            AMI9.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI9.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc9.Caption := docname;
            Lbeamidoc9.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA9.Text) = '' then
          begin
            MedtCVA9.Text := ROCDate(Now,'');
            MEdttime9.Text := ROCTime(Now,'');
            //MEdttime9.Text := ROCTimes(Now,'');
            Lbecvadoc9.Caption := docname;
            Lbecvadoc9.Hint := docid;
          end;
        end
        else
        begin
          //trauma
        end;
      end;
    10:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI10.Text) = '' then
          begin
            AMI10.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI10.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc10.Caption := docname;
            Lbeamidoc10.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA10.Text) = '' then
          begin
            MedtCVA10.Text := ROCDate(Now,'');
            MEdttime10.Text := ROCTime(Now,'');
            //MEdttime10.Text := ROCTimes(Now,'');
            Lbecvadoc10.Caption := docname;
            Lbecvadoc10.Hint := docid;
          end;
        end
        else
        begin
          //trauma
        end;
      end;
    11:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI11.Text) = '' then
          begin
            AMI11.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI11.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc11.Caption := docname;
            Lbeamidoc11.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA11.Text) = '' then
          begin
            MedtCVA11.Text := ROCDate(Now,'');
            MEdttime11.Text := ROCTime(Now,'');
            //MEdttime11.Text := ROCTimes(Now,'');
            Lbecvadoc11.Caption := docname;
            Lbecvadoc11.Hint := docid;
          end;
        end
        else
        begin
          //trauma
        end;
      end;
    12:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI12.Text) = '' then
          begin
            AMI12.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI12.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc12.Caption := docname;
            Lbeamidoc12.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          if trim(MedtCVA12.Text) = '' then
          begin
            MedtCVA12.Text := ROCDate(Now,'');
            MEdttime12.Text := ROCTime(Now,'');
            //MEdttime12.Text := ROCTimes(Now,'');
            Lbecvadoc12.Caption := docname;
            Lbecvadoc12.Hint := docid;
          end;
        end
        else
        begin
          //trauma
        end;
      end;
    13:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI13.Text) = '' then
          begin
            AMI13.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI13.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc13.Caption := docname;
            Lbeamidoc13.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
      14:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI14.Text) = '' then
          begin
            AMI14.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI14.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc14.Caption := docname;
            Lbeamidoc14.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
    15:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI15.Text) = '' then
          begin
            AMI15.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI15.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc15.Caption := docname;
            Lbeamidoc15.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
    16:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI16.Text) = '' then
          begin
            AMI16.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI16.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc16.Caption := docname;
            Lbeamidoc16.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
    17:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI17.Text) = '' then
          begin
            AMI17.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI17.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc17.Caption := docname;
            Lbeamidoc17.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
    18:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI18.Text) = '' then
          begin
            AMI18.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI18.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc18.Caption := docname;
            Lbeamidoc18.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
    19:
      begin
        if major_type='AMI' then
        begin
          if trim(AMI19.Text) = '' then
          begin
            AMI19.Text := ROCDate(Now,'')+ROCTime(Now,'');
            //AMI19.Text := ROCDate(Now,'')+ROCTimes(Now,'');
            Lbeamidoc19.Caption := docname;
            Lbeamidoc19.Hint := docid;
          end;
        end
        else  if major_type='CVA' then
        begin
          //CVA
        end
        else
        begin
          //trauma
        end;
      end;
  end;
  caltime;
end;

procedure TFrmAMI.FormCreate(Sender: TObject);
begin
  inherited;
  GBCVA.ParentColor := false;
  GBCVA.Color := clBtnFace;
  Entry_point := '';
end;
procedure TFrmAMI.Button8Click(Sender: TObject);
var
  age : string;
begin
  inherited;
  //109.02.06 shh ITe mark  NIHSS從table 取值
  begin
    try
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('SELECT t.Tpa_Score FROM Nihss_Tpa_Score t WHERE t.Fee_No = '+qt(GetFeeNo)+' AND t.Tpa_Seq = 1 AND Rownum = 1');

      sql_Waiting_log('CVA NIHSS Tpa_Score',DM.QryTemp.SQL.Text);
      DM.QryTemp.Open;
      sql_Waiting_log('close CVA NIHSS Tpa_Score','');
      while not DM.QryTemp.Eof do
      begin
        EdtNIHSS.Text := trim(DM.QryTemp.FieldByName('Tpa_Score').AsString);
        DM.QryTemp.Next;
      end;
    except
      //Do nothing
    end;
  end;

  {
  if not assigned(FrmCVAtPA) then
    FrmCVAtPA := TFrmCVAtPA.Create(self);
  FrmCVAtPA.EdtCHRNO.Text := GetChrNo;
  FrmCVAtPA.EdtNAME.Text := GetPatName;
  try
    age := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(age,1,1)<>'0' then
      FrmCVAtPA.EdtAGE.Text := copy(age,1,length(age)-2)+'歲'+copy(age,4,2)+'個月'
    else
      FrmCVAtPA.EdtAGE.Text := copy(age,2,2)+'歲'+copy(age,4,2)+'個月';
  except
    age := '';
  end;


  FrmCVAtPA.EdtWeight.Text := Getpatweight;
  FrmCVAtPA.EdtNihss.Text := EdtNIHSS.Text;
  FrmCVAtPA.EdtBP.Text := cvaBP ;//量血壓     IntToStr(StrToInt(copy(trim(incident_dt),1,8)-19110000))                copy(trim(incident_dt),9,4)
  FrmCVAtPA.EdtStardatetime.Text := dateformat(2,ROCToDate(trim(MedtCVA2.Text))+ROCToTime(trim(MEdttime2.Text)));//量血壓
  FrmCVAtPA.ShowModal;
  if FrmCVAtPA.yn = 'Y' then
    RadioButton1.Checked := True
  else
    RadioButton2.Checked := True;
  }
end;

procedure TFrmAMI.Button9Click(Sender: TObject);
var
    myStr, myParamter : string;
begin
  inherited;
  {
  if not assigned(FrmNIHSS) then
    FrmNIHSS := TFrmNIHSS.Create(self);
  FrmNIHSS.arrdate := MedtCVA0.Text+' '+MEdttime0.Text;
  FrmNIHSS.tPadate := MedtCVA10.Text+' '+MEdttime10.Text;
  FrmNIHSS.ctdate  := MedtCVA5.Text+' '+MEdttime5.Text;
  FrmNIHSS.ShowModal;
  EdtNIHSS.Text := IntToStr(FrmNIHSS.scop);
  }
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','CVA_NIHSS','');
  myParamter := Setsys.ReadString('PARAMTER','CVA_NIHSS','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    //showMessage(NullStrTo(gsSysMsg,'此功能不開放使用，如有疑問請洽資訊室詢問。'));
    Exit;
  end;
  try
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
  end;
end;

procedure TFrmAMI.CBBCVAdocChange(Sender: TObject);
begin
  inherited;
  docid := ReturnId(CBBCVAdoc.Text);
  docname := ReturnName(CBBCVAdoc.Text);
  IF TRIM(docid) = '' THEN
  BEGIN
    docid := getUserId;
    docname := GETDOCNAME(getUserId);
  END;
end;

procedure TFrmAMI.cbbamicodeChange(Sender: TObject);
begin
  inherited;
  docid := ReturnId(cbbamicode.Text);
  docname := ReturnName(cbbamicode.Text);
  IF TRIM(docid) = '' THEN
  BEGIN
    docid := getUserId;
    docname := GETDOCNAME(getUserId);
  END;
end;

procedure TFrmAMI.Lbecvadoc0DblClick(Sender: TObject);
begin
  inherited;
  TLabel(Sender).Caption := docname;
  TLabel(Sender).Hint := docid;
end;

procedure TFrmAMI.CBBTRADOCChange(Sender: TObject);
begin
  inherited;
  docid := ReturnId(CBBTRADOC.Text);
  docname := ReturnName(CBBTRADOC.Text);
  IF TRIM(docid) = '' THEN
  BEGIN
    docid := getUserId;
    docname := GETDOCNAME(getUserId);
  END;
end;

procedure TFrmAMI.Button10Click(Sender: TObject);
var
  i :integer;
  s_qty,age : string;
begin
  inherited;
  if not Assigned(FrmTrauma) then
    FrmTrauma := TFrmTrauma.Create(Self);
  for i := FrmTrauma.ComponentCount-1 downto  0 do
  begin
    if (FrmTrauma.Components[i] is TEdit) then
      TEdit(FrmTrauma.Components[i]).Text := '';
  end;

  s_qty := getMAJOR_sql(0);
  SetParamter(s_qty,'$FEE_NO$',Qt(Trim(GetFeeNo)));
  SetParamter(s_qty,'$STATRDATE$',Qt(Minus_six_months_date));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add(s_qty);
  DM.QryTemp.Open;
  IF not DM.QryTemp.IsEmpty THEN
    if DM.QryTemp.FieldByName('START_FLAG').AsString ='Y' then
    begin
       FrmTrauma.A_02_01_3_1.Text := Trim(DM.QryTemp.FieldByName('NOTE').AsString);
       FrmTrauma.A_03_03_3_0.Text := Trim(DM.QryTemp.FieldByName('time_sum').AsString);
    end;
  FrmTrauma.A_01_01_3_0.Text := GetPatName;
  FrmTrauma.A_01_02_3_0.Text := GetChrNo;
  try
    age := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(age,1,1)<>'0' then
      FrmTrauma.A_01_03_3_0.Text := copy(age,1,length(age)-2)+'歲'+copy(age,4,2)+'個月'
    else
      FrmTrauma.A_01_03_3_0.Text := copy(age,2,2)+'歲'+copy(age,4,2)+'個月';
  except
    FrmTrauma.A_01_03_3_0.Text := '';
  end;


  FrmTrauma.A_01_04_3_0.Text := SexType(Getsex01);
  FrmTrauma.A_01_05_3_1.Text := ROCDate(Now,'');
  FrmTrauma.B_06_02_3_0.Text := GCS; //意識狀態
  FrmTrauma.B_05_04_3_1.Text := SpO2;//含氧量
  FrmTrauma.B_05_03_3_1.Text := cvaBP;//血壓
  FrmTrauma.B_05_02_3_0.Text := pulse;//脈搏
  FrmTrauma.D_04_02_3_1.Text := '';//ICD9_1
  FrmTrauma.D_04_03_3_1.Text := '';//ICD9_2
  FrmTrauma.D_04_04_3_1.Text := '';//ICD9_3
  FrmTrauma.D_04_05_3_1.Text := '';//ICD9_4
  FrmTrauma.D_04_06_3_1.Text := '';//ICD9_5
  FrmTrauma.ShowModal;
  if FrmTrauma.dt_date <> '' then
  begin
    MEdttrauma3.Text := ReturnId(FrmTrauma.dt_date);
    MEdttratime3.Text := ReturnName(FrmTrauma.dt_date);
  end;
  openallorder;
end;

procedure TFrmAMI.ImlbeamisetDblClick(Sender: TObject);
begin
  inherited;
  Lbeamiset2.OnDblClick(Lbeamiset2);
end;

procedure TFrmAMI.Image1DblClick(Sender: TObject);
begin
  inherited;
  Lbeamiset3.OnDblClick(Lbeamiset3);
end;

procedure TFrmAMI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DICOMDB_qry1.Close;
end;

procedure TFrmAMI.ButtonEMRClick(Sender: TObject);
var
  i,sno,mno,j : integer;
  sql,tempstr : string;
  mySQLo : TObjectList;
  mysqls : TStringList;
  clos : Boolean;
  ls_doc_code : string;
begin
  inherited;
  //109.04.09 shh ITe 11138 add 重症送簽
  //delete
  mySQLo := TObjectList.Create;
  mysqls := TStringList.Create;
  mysqls.Add('delete MAJOR_emr where fee_no='+Qt(GetFeeNo)+' and  kind='+qt(copy(major_type,1,1)));
  mySQLo.Add(mysqls);

  //insert
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT Doc_Code FROM Getmajortime WHERE Time_Type LIKE upper(''%'' || ' +qt(copy(major_type,1,3)) + ' || ''_CONST_REPLY%'') AND Fee_No = '+Qt(GetFeeNo)+' AND Rownum = 1');
  DM.QryTemp.Open;

  ls_doc_code := DM.QryTemp.FieldByName('doc_code').AsString;
  if ls_doc_code = '' then
  begin
//    ls_doc_code := '''';
    ShowMessage('無可送簽醫師，請確定醫師已會診登入，謝謝！');
    exit;
  end;   

  sql := getMAJOR_sql(14);
  SetParamter(sql,'$KIND$',QT(copy(major_type,1,1)));
  SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
  SetParamter(sql,'$DOC_CODE$',qt(ls_doc_code));
  mysqls := TStringList.Create;
  mysqls.Add(sql);
  mySQLo.Add(mysqls);

  if not DM.ExecSQL(mySQLo) then
  begin
    ShowMessage('寫入資料庫失敗');
    exit;
    mySQLo.Free;
  end
  else
    ShowMessage(qt(major_type) + '重症時程表已送簽');
  mySQLo.Free;

end;

end.
