unit chdocprnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, ComCtrls;

type
  TFrmchdocprnt = class(TFrmMain)
    QuickRep1: TQuickRep;
    ADOQuery1: TADOQuery;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLablout: TQRLabel;
    QRLabel14: TQRLabel;
    QRLablin: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLdate: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  Frmchdocprnt: TFrmchdocprnt;

implementation

uses DBDM, Commfunc;

{$R *.dfm}

procedure TFrmchdocprnt.PrepareSQL;
begin
  QuickRep1.Preview;
  Frmchdocprnt.Close;
end;

procedure TFrmchdocprnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := Cafree;
end;

procedure TFrmchdocprnt.FormDestroy(Sender: TObject);
begin
  inherited;
  Frmchdocprnt := nil;
end;

procedure TFrmchdocprnt.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if ADOQuery1.FieldByName('bespipd').AsString ='Y' then
  begin
    if (ADOQuery1.FieldByName('bespdept').AsString) <>'' then
      QRLabel19.Caption := ADOQuery1.FieldByName('bespdept').AsString
    else
      QRLabel19.Caption := ADOQuery1.FieldByName('bespipd').AsString;
  end
  else
    QRLabel19.Caption := '';
  if ADOQuery1.FieldByName('birth_date').AsString <>'' then
  begin
    try
      QRLabel22.Caption := IntToStr(StrToInt(GetAge(trim(ADOQuery1.FieldByName('ac_type').AsString)+trim(ADOQuery1.FieldByName('birth_date').AsString),ROCDate(Now,''),acYear)));
    except
      QRLabel22.Caption := '';
    end;
  end
  else
    QRLabel22.Caption := '';
end;

end.
