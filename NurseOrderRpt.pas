unit NurseOrderRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls, DB, ADODB;

type
  TFrmNurseOrderRpt = class(TFrmMain)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    ADOQuery1: TADOQuery;
    QRSysData1: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNurseOrderRpt: TFrmNurseOrderRpt;

implementation

uses DBDM;

{$R *.dfm}

end.
