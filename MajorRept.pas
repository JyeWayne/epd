unit MajorRept;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls, DB, ADODB, StdCtrls;

type
  TFrmMajorRept = class(TFrmMain)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    AMI0: TQRLabel;
    AMI1: TQRLabel;
    AMI2: TQRLabel;
    AMI3: TQRLabel;
    AMI4: TQRLabel;
    AMI5: TQRLabel;
    AMI6: TQRLabel;
    Lbeamitime0: TQRLabel;
    Lbeamitime1: TQRLabel;
    Lbeamitime2: TQRLabel;
    Lbeamitime3: TQRLabel;
    Lbeamitime4: TQRLabel;
    Lbeamitime5: TQRLabel;
    Lbeamitime6: TQRLabel;
    QRShape9: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    AMI7: TQRLabel;
    AMI8: TQRLabel;
    Lbeamitime7: TQRLabel;
    Lbeamitime8: TQRLabel;
    QRLabel44: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape10: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel51: TQRLabel;
    QRBand3: TQRBand;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    MedtCVA0: TQRLabel;
    MedtCVA1: TQRLabel;
    MedtCVA2: TQRLabel;
    MedtCVA3: TQRLabel;
    MedtCVA4: TQRLabel;
    MedtCVA6: TQRLabel;
    MedtCVA7: TQRLabel;
    Lbecvatime0: TQRLabel;
    Lbecvatime1: TQRLabel;
    Lbecvatime2: TQRLabel;
    Lbecvatime3: TQRLabel;
    Lbecvatime4: TQRLabel;
    Lbecvatime5: TQRLabel;
    Lbecvatime6: TQRLabel;
    MedtCVA5: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand4: TQRBand;
    QRLabel76: TQRLabel;
    QRShape14: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel80: TQRLabel;
    QRBand5: TQRBand;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    MEdttrauma0: TQRLabel;
    MEdttrauma1: TQRLabel;
    MEdttrauma2: TQRLabel;
    MEdttrauma3: TQRLabel;
    MEdttrauma4: TQRLabel;
    Lbetratime0: TQRLabel;
    Lbetratime1: TQRLabel;
    Lbetratime2: TQRLabel;
    Lbetratime3: TQRLabel;
    Lbetratime4: TQRLabel;
    Lbetradoc0: TQRLabel;
    Lbetradoc1: TQRLabel;
    Lbetradoc2: TQRLabel;
    Lbetradoc3: TQRLabel;
    Lbetradoc4: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    Lbeamidoc0: TQRLabel;
    Lbeamidoc1: TQRLabel;
    Lbeamidoc2: TQRLabel;
    Lbeamidoc3: TQRLabel;
    Lbeamidoc4: TQRLabel;
    Lbeamidoc5: TQRLabel;
    Lbeamidoc6: TQRLabel;
    Lbeamidoc7: TQRLabel;
    Lbeamidoc8: TQRLabel;
    Lbeamidoc10: TQRLabel;
    Lbeamitime9: TQRLabel;
    Lbeamitime10: TQRLabel;
    AMI9: TQRLabel;
    AMI10: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    ADOQuery1: TADOQuery;
    Lbeamidoc9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    MedtCVA8: TQRLabel;
    MedtCVA9: TQRLabel;
    MedtCVA11: TQRLabel;
    Lbecvatime7: TQRLabel;
    Lbecvatime8: TQRLabel;
    Lbecvatime9: TQRLabel;
    Lbecvatime11: TQRLabel;
    Lbecvadoc0: TQRLabel;
    Lbecvadoc1: TQRLabel;
    Lbecvadoc2: TQRLabel;
    Lbecvadoc3: TQRLabel;
    Lbecvadoc4: TQRLabel;
    Lbecvadoc5: TQRLabel;
    Lbecvadoc6: TQRLabel;
    Lbecvadoc7: TQRLabel;
    Lbecvadoc8: TQRLabel;
    Lbecvadoc9: TQRLabel;
    Lbecvadoc11: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRSysData3: TQRSysData;
    QuickRep5: TQuickRep;
    PageHeaderBand2: TQRBand;
    DetailBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape69: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    SummaryBand2: TQRBand;
    QRLabel59: TQRLabel;
    QRRichText1: TQRRichText;
    QRShape1: TQRShape;
    QRLabel60: TQRLabel;
    AMI11: TQRLabel;
    Lbeamitime11: TQRLabel;
    Lbeamidoc11: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape31: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    AMI19: TQRLabel;
    AMI12: TQRLabel;
    AMI13: TQRLabel;
    AMI14: TQRLabel;
    AMI15: TQRLabel;
    AMI16: TQRLabel;
    AMI17: TQRLabel;
    AMI18: TQRLabel;
    Lbeamitime19: TQRLabel;
    Lbeamitime12: TQRLabel;
    Lbeamitime13: TQRLabel;
    Lbeamitime14: TQRLabel;
    Lbeamitime15: TQRLabel;
    Lbeamitime16: TQRLabel;
    Lbeamitime17: TQRLabel;
    Lbeamitime18: TQRLabel;
    Lbeamidoc19: TQRLabel;
    Lbeamidoc12: TQRLabel;
    Lbeamidoc13: TQRLabel;
    Lbeamidoc14: TQRLabel;
    Lbeamidoc15: TQRLabel;
    Lbeamidoc16: TQRLabel;
    Lbeamidoc17: TQRLabel;
    Lbeamidoc18: TQRLabel;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QuickRep5BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL(cla : string);
  end;

var
  FrmMajorRept: TFrmMajorRept;

implementation

uses DBDM, Global;

{$R *.dfm}

{ TFrmMajorRept }

procedure TFrmMajorRept.PrepareSQL(cla : string);
begin
  if cla ='AMI' then
    QuickRep2.Preview
  else if cla='CVA' then
    QuickRep3.Preview
  else if cla ='Trauma' then
    QuickRep4.Preview
  else
  begin
    QuickRep5.Preview;
  end;
  FrmMajorRept.Close;
end;

procedure TFrmMajorRept.QRDBText3Print(sender: TObject; var Value: String);
begin
  inherited;
  if Value ='00' then
    Value := 'rt-PA施打前'
  else if Value = '01' then
    Value := '第二次'
  else if Value = '02' then
    Value := '第三次'
  else if Value = '03' then
    Value := '第四次'
  else if Value = '04' then
    Value := '第五次'
  else if Value = '05' then
    Value := '第六次'
  else if Value = '06' then
    Value := '第七次'
  else
    Value := '';
end;

procedure TFrmMajorRept.QRDBText20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := GETDOCNAME(Value);
end;

procedure TFrmMajorRept.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmMajorRept.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmMajorRept := nil;
end;

procedure TFrmMajorRept.QuickRep5BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  if trim(ADOQuery1.FieldByName('LEFTARM_DESC').AsString) <>'' then
    QRRichText1.Lines.Add('5a：手臂之運動：'+trim(ADOQuery1.FieldByName('LEFTARM_DESC').AsString));
  if trim(ADOQuery1.FieldByName('RIGHTARM_DESC').AsString) <>'' then
    QRRichText1.Lines.Add('5b：手臂之運動：'+trim(ADOQuery1.FieldByName('RIGHTARM_DESC').AsString));
  if trim(ADOQuery1.FieldByName('LEFTLEG_DESC').AsString) <>'' then
    QRRichText1.Lines.Add('6a：腿部之運動：'+trim(ADOQuery1.FieldByName('LEFTLEG_DESC').AsString));
  if trim(ADOQuery1.FieldByName('rightleg_desc').AsString) <>'' then
    QRRichText1.Lines.Add('6b：腿部之運動：'+trim(ADOQuery1.FieldByName('rightleg_desc').AsString));
  if trim(ADOQuery1.FieldByName('ATAXIA_DESC').AsString) <>'' then
    QRRichText1.Lines.Add('7.肢體運動失調：'+trim(ADOQuery1.FieldByName('ATAXIA_DESC').AsString));
  if trim(ADOQuery1.FieldByName('DYSARTHRIA_DESC').AsString) <>'' then
    QRRichText1.Lines.Add('10.構音障礙：'+trim(ADOQuery1.FieldByName('DYSARTHRIA_DESC').AsString));
end;

end.
