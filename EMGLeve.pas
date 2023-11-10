unit EMGLeve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, ExtCtrls, ComCtrls;

type
  TFrmEMGLeve = class(TFrmMain)
    Button1: TButton;
    RGEMGLEVE: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    leveconut: integer;
  end;

var
  FrmEMGLeve: TFrmEMGLeve;

implementation

{$R *.dfm}

procedure TFrmEMGLeve.Button1Click(Sender: TObject);
begin
  inherited;
  if RGEMGLEVE.ItemIndex = -1 then
  begin
    ShowMessage('½Ð½T»{ÀË¶Ë¯Å¼Æ');
  end
  else
  begin
    leveconut :=  RGEMGLEVE.ItemIndex;
    Self.Close;
  end;
end;

procedure TFrmEMGLeve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmEMGLeve.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmEMGLeve := nil;
end;

end.
