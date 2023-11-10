unit REFERRAL_Rept;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QuickRpt, QRCtrls, ExtCtrls, ComCtrls, StdCtrls;

type
  TFrmREFERRAL_Rept = class(TFrmMain)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    CheckBox1: TQRLabel;
    CheckBox2: TQRLabel;
    CheckBox4: TQRLabel;
    CheckBox5: TQRLabel;
    CheckBox6: TQRLabel;
    CheckBox7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    CheckBox8: TQRLabel;
    CheckBox9: TQRLabel;
    CheckBox10: TQRLabel;
    Edit1: TQRLabel;
    Edit2: TQRLabel;
    Edit3: TQRLabel;
    QRLabel21: TQRLabel;
    CheckBox11: TQRLabel;
    CheckBox12: TQRLabel;
    Edit12: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel25: TQRLabel;
    CheckBox13: TQRLabel;
    CheckBox14: TQRLabel;
    CheckBox15: TQRLabel;
    CheckBox16: TQRLabel;
    QRLabel30: TQRLabel;
    CheckBox17: TQRLabel;
    CheckBox18: TQRLabel;
    Edit4: TQRLabel;
    QRLabel34: TQRLabel;
    CheckBox19: TQRLabel;
    CheckBox20: TQRLabel;
    CheckBox21: TQRLabel;
    CheckBox22: TQRLabel;
    CheckBox23: TQRLabel;
    QRLabel40: TQRLabel;
    Edit5: TQRLabel;
    CheckBox25: TQRLabel;
    CheckBox26: TQRLabel;
    QRShape6: TQRShape;
    QRLabel44: TQRLabel;
    QRShape7: TQRShape;
    QRLabel45: TQRLabel;
    Edit7: TQRLabel;
    QRLabel47: TQRLabel;
    Edit8: TQRLabel;
    QRLabel49: TQRLabel;
    Edit9: TQRLabel;
    QRShape8: TQRShape;
    QRLabel51: TQRLabel;
    QRShape9: TQRShape;
    CheckBox27: TQRLabel;
    CheckBox28: TQRLabel;
    CheckBox29: TQRLabel;
    CheckBox30: TQRLabel;
    CheckBox31: TQRLabel;
    CheckBox32: TQRLabel;
    CheckBox33: TQRLabel;
    CheckBox34: TQRLabel;
    Edit10: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    CheckBox35: TQRLabel;
    CheckBox36: TQRLabel;
    CheckBox37: TQRLabel;
    CheckBox38: TQRLabel;
    CheckBox39: TQRLabel;
    Edit11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel68: TQRLabel;
    QRShape13: TQRShape;
    CheckBox40: TQRLabel;
    CheckBox41: TQRLabel;
    CheckBox24: TQRLabel;
    Edit6: TQRLabel;
    CheckBox3: TQRLabel;
    procedure CheckBox1Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  FrmREFERRAL_Rept: TFrmREFERRAL_Rept;

implementation

uses MAJORTRA;

{$R *.dfm}

procedure TFrmREFERRAL_Rept.CheckBox1Print(sender: TObject;
  var Value: String);
var
  mycontorl : TComponent;
begin
  inherited;
  mycontorl := FrmMAJORTRA.FindComponent(TQRLabel(sender).Name);
  if mycontorl is TCheckBox then
  begin
    if TCheckBox(mycontorl).Checked then
      Value := '―'+TCheckBox(mycontorl).Caption
    else
      Value := 'ー'+TCheckBox(mycontorl).Caption
      //ー―
  end;
  if mycontorl is TEdit then
    Value := TEdit(mycontorl).text;

end;

procedure TFrmREFERRAL_Rept.PrepareSQL;
begin
  QuickRep1.Preview;
  FrmREFERRAL_Rept.Close;
end;

procedure TFrmREFERRAL_Rept.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   action := Cafree;
end;

procedure TFrmREFERRAL_Rept.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmREFERRAL_Rept := nil;
end;

end.
