unit EDPROCESS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, StdCtrls, ExtCtrls, ComCtrls;

type
  TFrmEDPROCESS = class(TFrmMain)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLbchrno: TQRLabel;
    QRLbpatname: TQRLabel;
    QRLbage: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLBIdNo: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLbBirthday: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLbSex: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLbArrival: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLablhosptname: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    clo : Integer;
  public
    { Public declarations }
    MYMEMO: TStringList;
    procedure PrepareSQL;
  end;

var
  FrmEDPROCESS: TFrmEDPROCESS;

implementation

{$R *.dfm}


procedure TFrmEDPROCESS.PrepareSQL;
begin
  if MYMEMO.Text<> '' then
  begin
    QuickRep1.Preview;
  end;
  FrmEDPROCESS.Close;
end;
procedure TFrmEDPROCESS.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
  MoreData :=  MYMEMO.Count > clo;
  if MoreData then
    QRLabel4.Caption := MYMEMO.Strings[clo];
end;

procedure TFrmEDPROCESS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   action := Cafree;
end;

procedure TFrmEDPROCESS.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmEDPROCESS := nil;
end;

procedure TFrmEDPROCESS.FormCreate(Sender: TObject);
begin
  inherited;
  MYMEMO := TStringList.Create;
end;

procedure TFrmEDPROCESS.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  clo := 0;
end;

procedure TFrmEDPROCESS.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  inc(clo);
end;

procedure TFrmEDPROCESS.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  if pos('#P#',Value) >0 then
  begin
    Value := copy(Value,4,length(Value));
    QRLabel4.Font.Style := [fsbold];
    QRLabel4.Font.Size := 12;
  end
  else if pos('¡·',Value) >0 then
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
  else
  begin
    QRLabel4.Font.Style :=[];
    QRLabel4.Font.Size := 11;
  end
end;

end.
