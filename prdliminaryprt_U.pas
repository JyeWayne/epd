unit prdliminaryprt_U;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  Tprdliminaryprt = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLbReportStandard: TQRLabel;
    QRLbStandardNoDate: TQRLabel;
    QRLabel1: TQRLabel;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRLbchrno: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRMemo2: TQRMemo;
    ADOQuery1: TADOQuery;
    QRLbName: TQRLabel;
    QRLbVS: TQRLabel;
    QRLbEXS: TQRLabel;
    QRLbBirthday: TQRLabel;
    QRLbOrderDOC: TQRLabel;
    QRLbRPTDate: TQRLabel;
    QRLbRPTDOC: TQRLabel;
    QRLbAge: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    procedure QRLbReportStandardPrint(sender: TObject; var Value: String);
    procedure QRLbStandardNoDatePrint(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  prdliminaryprt: Tprdliminaryprt;

implementation

uses Global;

{$R *.DFM}

procedure Tprdliminaryprt.QRLbReportStandardPrint(sender: TObject;
  var Value: String);
begin
  Value := SetSys.ReadString('SYSTEM','PRELIMINARYMEDICAL','');
end;

procedure Tprdliminaryprt.QRLbStandardNoDatePrint(sender: TObject;
  var Value: String);
begin
  Value := SetSys.ReadString('SYSTEM','PRELIMINARYISONO','');
end;

procedure Tprdliminaryprt.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  if Value <> 'DC' then
    Value := '';
end;

procedure Tprdliminaryprt.QRLabel15Print(sender: TObject;
  var Value: String);
begin
   Value := ''//SetSys.ReadString('SYSTEM','FULLHOSPAILNAME','');
end;

end.
