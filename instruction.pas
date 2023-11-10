unit instruction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_instruction = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRL_Title: TQRLabel;
    SummaryBand1: TQRBand;
    QRM_Content: TQRMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareSQL;
  end;

var
  frm_instruction: Tfrm_instruction;

implementation

{$R *.dfm}

procedure Tfrm_instruction.PrepareSQL;
begin
  QuickRep1.Print;
  frm_instruction.Close;
end;

procedure Tfrm_instruction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure Tfrm_instruction.FormDestroy(Sender: TObject);
begin
  frm_instruction := nil;
end;

end.
