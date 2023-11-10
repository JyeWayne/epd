unit insertIcInfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, XPMan;

type
  TFrmInsertIcInfor = class(TFrmMain)
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInsertIcInfor: TFrmInsertIcInfor;

implementation

{$R *.dfm}

procedure TFrmInsertIcInfor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmInsertIcInfor.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmInsertIcInfor := nil;
end;

end.
