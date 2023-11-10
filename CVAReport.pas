unit CVAReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, QRCtrls, QuickRpt, StdCtrls;

type
  TFrmCVAReport = class(TFrmMain)
    QuickRep2: TQuickRep;
    PageHeaderBand2: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    EdtStardatetime: TQRLabel;
    CBXBASIC1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    CBXBASIC3: TQRLabel;
    QRLabel14: TQRLabel;
    EdtBP: TQRLabel;
    EdtWeight: TQRLabel;
    QRLabel17: TQRLabel;
    EdtCHRNO: TQRLabel;
    EdtNAME: TQRLabel;
    EdtAGE: TQRLabel;
    EdtNihss: TQRLabel;
    CBXBASIC4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel23: TQRLabel;
    CBXBASIC2: TQRLabel;
    QRShape3: TQRShape;
    CBXBASIC5: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    CBXCONDI1: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    CBXCONDI2: TQRLabel;
    CBXCONDI3: TQRLabel;
    CBXCONDI4: TQRLabel;
    CBXCONDI18: TQRLabel;
    CBXCONDI19: TQRLabel;
    QRLabel20: TQRLabel;
    CBXCONDI20: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel63: TQRLabel;
    CBXCONDI5: TQRLabel;
    CBXCONDI6: TQRLabel;
    CBXCONDI7: TQRLabel;
    CBXCONDI8: TQRLabel;
    CBXCONDI9: TQRLabel;
    CBXCONDI10: TQRLabel;
    CBXCONDI11: TQRLabel;
    CBXCONDI12: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    CBXCONDI21: TQRLabel;
    CBXCONDI22: TQRLabel;
    CBXCONDI23: TQRLabel;
    CBXCONDI24: TQRLabel;
    CBXCONDI25: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    CBXCONDI26: TQRLabel;
    CBXCONDI27: TQRLabel;
    CBXCONDI28: TQRLabel;
    CBXCONDI29: TQRLabel;
    CBXCONDI30: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    CBXCONDI13: TQRLabel;
    CBXCONDI14: TQRLabel;
    CBXCONDI15: TQRLabel;
    CBXCONDI16: TQRLabel;
    CBXCONDI17: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    CBXBASIC6: TQRLabel;
    CBXBASIC7: TQRLabel;
    QRLabel21: TQRLabel;
    QRLdocname: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    MemBASIC7: TQRLabel;
    procedure EdtCHRNOPrint(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  FrmCVAReport: TFrmCVAReport;

implementation

uses CVAtPA;

{$R *.dfm}

{ TFrmCVAReport }

procedure TFrmCVAReport.PrepareSQL;
begin
  QuickRep2.Preview;
  FrmCVAReport.Close;
end;

procedure TFrmCVAReport.EdtCHRNOPrint(sender: TObject; var Value: String);
var
  mycontorl : TComponent;
begin
  inherited;
  mycontorl := FrmCVAtPA.FindComponent(TQRLabel(sender).Name);

  if mycontorl is TCheckBox then
  begin
    if Copy(Trim(TQRLabel(sender).Name),1,8) = 'CBXBASIC' then
    begin
      if TCheckBox(mycontorl).Checked then
      begin
        if (Trim(TQRLabel(sender).Name) = 'CBXBASIC3') or (Trim(TQRLabel(sender).Name) = 'CBXBASIC4') or (Trim(TQRLabel(sender).Name) = 'CBXBASIC5') then
          Value := 'ー  ―'+TCheckBox(mycontorl).Caption
        else
          Value := '―'+TCheckBox(mycontorl).Caption ;
      end
      else
      begin
        if (Trim(TQRLabel(sender).Name) = 'CBXBASIC3') or (Trim(TQRLabel(sender).Name) = 'CBXBASIC4') or (Trim(TQRLabel(sender).Name) = 'CBXBASIC5') then
          Value := '―  ー'+TCheckBox(mycontorl).Caption
        else
          Value := 'ー'+TCheckBox(mycontorl).Caption;
      end;
    end
    else
    begin
      if TCheckBox(mycontorl).Checked then
        Value := 'ー  ―'
      else
        Value := '―  ー';
      //ー―
    end;
  end;
  if mycontorl is TEdit then
    Value := TEdit(mycontorl).text;
  if mycontorl is TMemo then
    Value := TMemo(mycontorl).Lines.Text;
end;

procedure TFrmCVAReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := Cafree;
end;

procedure TFrmCVAReport.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmCVAReport := nil;
end;

end.
