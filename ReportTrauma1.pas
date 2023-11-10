unit ReportTrauma1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls,StdCtrls;

type
  TFrmReportTrauma1 = class(TFrmMain)
    QuickRep1: TQuickRep;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape12: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    C_02_01_3_1: TQRLabel;
    QRLabel49: TQRLabel;
    C_03_01_3_1: TQRLabel;
    QRShape13: TQRShape;
    QRLabel50: TQRLabel;
    C_04_02_2_1: TQRLabel;
    C_04_03_2_1: TQRLabel;
    C_04_04_2_1: TQRLabel;
    C_04_05_2_1: TQRLabel;
    C_04_06_2_1: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape14: TQRShape;
    C_04_07_3_1: TQRLabel;
    QRLabel53: TQRLabel;
    C_04_08_3_1: TQRLabel;
    QRShape16: TQRShape;
    QRLabel54: TQRLabel;
    C_05_01_3_1: TQRLabel;
    QRLabel55: TQRLabel;
    C_06_02_2_1: TQRLabel;
    C_06_03_2_1: TQRLabel;
    C_06_04_2_1: TQRLabel;
    C_06_05_2_1: TQRLabel;
    C_06_06_2_1: TQRLabel;
    C_06_07_3_1: TQRLabel;
    QRShape17: TQRShape;
    QRLabel56: TQRLabel;
    QRShape20: TQRShape;
    QRLabel64: TQRLabel;
    QRShape23: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    D_02_01_3_1: TQRLabel;
    D_03_01_2_1: TQRLabel;
    QRLabel76: TQRLabel;
    D_03_02_3_1: TQRLabel;
    QRShape25: TQRShape;
    D_03_03_2_1: TQRLabel;
    D_03_04_2_1: TQRLabel;
    D_03_05_2_1: TQRLabel;
    D_03_06_2_1: TQRLabel;
    D_03_07_2_1: TQRLabel;
    QRLabel77: TQRLabel;
    D_03_09_3_1: TQRLabel;
    D_03_08_3_1: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    D_05_02_2_1: TQRLabel;
    D_05_04_2_1: TQRLabel;
    D_05_05_2_1: TQRLabel;
    D_05_06_2_0: TQRLabel;
    D_05_08_2_1: TQRLabel;
    D_05_09_2_0: TQRLabel;
    D_05_03_3_1: TQRLabel;
    D_05_07_3_1: TQRLabel;
    D_04_02_3_1: TQRLabel;
    D_04_03_3_1: TQRLabel;
    D_04_04_3_1: TQRLabel;
    D_04_05_3_1: TQRLabel;
    D_04_06_3_1: TQRLabel;
    D_04_07_3_1: TQRLabel;
    D_05_10_3_1: TQRLabel;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    B_02_01_3_1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    B_03_02_2_1: TQRLabel;
    B_03_03_2_1: TQRLabel;
    B_03_04_2_0: TQRLabel;
    B_03_07_2_0: TQRLabel;
    QRLabel14: TQRLabel;
    B_03_05_3_0: TQRLabel;
    B_03_06_3_0: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    B_04_04_2_0: TQRLabel;
    B_04_05_2_0: TQRLabel;
    QRLabel20: TQRLabel;
    B_04_06_2_0: TQRLabel;
    B_04_07_2_0: TQRLabel;
    B_04_08_2_1: TQRLabel;
    B_04_09_2_0: TQRLabel;
    QRLabel23: TQRLabel;
    B_04_10_2_0: TQRLabel;
    B_04_11_2_0: TQRLabel;
    B_04_12_2_1: TQRLabel;
    B_04_13_2_0: TQRLabel;
    B_04_14_2_1: TQRLabel;
    B_04_15_2_0: TQRLabel;
    B_04_16_2_1: TQRLabel;
    QRLabel21: TQRLabel;
    B_04_18_2_0: TQRLabel;
    QRLabel24: TQRLabel;
    B_04_19_2_0: TQRLabel;
    B_04_20_2_0: TQRLabel;
    B_04_21_2_1: TQRLabel;
    B_04_22_2_0: TQRLabel;
    QRLabel29: TQRLabel;
    B_04_23_2_0: TQRLabel;
    B_04_24_2_0: TQRLabel;
    B_04_25_2_1: TQRLabel;
    QRLabel33: TQRLabel;
    B_04_26_3_0: TQRLabel;
    B_04_27_3_1: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    B_04_28_3_1: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    B_04_29_3_1: TQRLabel;
    B_04_30_3_0: TQRLabel;
    QRShape7: TQRShape;
    QRShape15: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    B_05_02_3_0: TQRLabel;
    QRLabel26: TQRLabel;
    B_05_03_3_1: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    B_05_04_3_1: TQRLabel;
    QRLabel30: TQRLabel;
    B_05_05_2_1: TQRLabel;
    B_05_06_2_0: TQRLabel;
    B_05_08_2_0: TQRLabel;
    B_05_07_2_0: TQRLabel;
    qrlaba: TQRLabel;
    B_05_09_2_0: TQRLabel;
    B_05_10_2_0: TQRLabel;
    B_05_11_2_0: TQRLabel;
    B_05_12_2_0: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    B_05_13_2_1: TQRLabel;
    B_05_14_2_0: TQRLabel;
    B_05_15_3_1: TQRLabel;
    B_05_16_2_1: TQRLabel;
    B_05_17_2_0: TQRLabel;
    B_05_18_3_0: TQRLabel;
    QRLabel39: TQRLabel;
    B_05_19_3_1: TQRLabel;
    QRLabel35: TQRLabel;
    B_05_20_2_0: TQRLabel;
    B_05_21_3_1: TQRLabel;
    QRShape8: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    B_06_02_3_0: TQRLabel;
    QRLabel44: TQRLabel;
    B_06_03_3_1: TQRLabel;
    B_06_04_2_0: TQRLabel;
    B_06_05_2_1: TQRLabel;
    B_06_06_2_1: TQRLabel;
    QRShape9: TQRShape;
    Image1: TQRImage;
    QRShape10: TQRShape;
    QRLabel45: TQRLabel;
    B_07_02_2_1: TQRLabel;
    B_07_03_2_1: TQRLabel;
    B_07_04_2_1: TQRLabel;
    B_07_05_2_1: TQRLabel;
    B_07_06_2_1: TQRLabel;
    B_07_07_2_1: TQRLabel;
    QRLabel52: TQRLabel;
    B_07_08_3_1: TQRLabel;
    QRLabel46: TQRLabel;
    B_07_09_3_1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    A_01_01_3_0: TQRLabel;
    QRLabel4: TQRLabel;
    A_01_02_3_0: TQRLabel;
    QRLabel6: TQRLabel;
    A_01_03_3_0: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    A_01_04_3_0: TQRLabel;
    A_01_05_3_1: TQRLabel;
    QRLabel5: TQRLabel;
    A_02_01_3_1: TQRLabel;
    A_03_01_2_0: TQRLabel;
    A_03_02_2_0: TQRLabel;
    QRLabel7: TQRLabel;
    A_03_03_3_0: TQRLabel;
    QRLabel10: TQRLabel;
    B_04_32_2_0: TQRLabel;
    B_04_31_3_1: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    B_07_10_3_1: TQRLabel;
    B_07_11_3_1: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel57: TQRLabel;
    procedure B_07_02_2_1Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel57Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  FrmReportTrauma1: TFrmReportTrauma1;

implementation

uses Trauma, Global;

{$R *.dfm}
procedure TFrmReportTrauma1.PrepareSQL;
begin
  QuickRep1.Preview;
  FrmReportTrauma1.Close;
end;

procedure TFrmReportTrauma1.B_07_02_2_1Print(sender: TObject;
  var Value: String);
var
  mycontorl : TComponent;
begin
  inherited;
  mycontorl := FrmTrauma.FindComponent(TQRLabel(sender).Name);
  if mycontorl is TCheckBox then
  begin
    if TCheckBox(mycontorl).Checked then
      Value := '―'+TCheckBox(mycontorl).Caption
    else
      Value := 'ー'+TCheckBox(mycontorl).Caption;
      //ー―
  end;
  if mycontorl is TEdit then
    Value := TEdit(mycontorl).text;
end;

procedure TFrmReportTrauma1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := Cafree;
end;

procedure TFrmReportTrauma1.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmReportTrauma1 := nil;
end;

procedure TFrmReportTrauma1.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Image1.Picture := FrmTrauma.Image1.Picture;
end;

procedure TFrmReportTrauma1.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := SetSys.ReadString('SYSTEM','TRAMMEDICAL','');
end;

procedure TFrmReportTrauma1.QRLabel57Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := SetSys.ReadString('SYSTEM','TRAMISONO','');
end;

end.
