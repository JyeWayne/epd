unit PathPic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, FileCtrl, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TFrmPathPic = class(TFrmMain)
    Panel2: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    FileListBox1: TFileListBox;
    Panel3: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    procedure FileListBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    Procedure changePicSize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    loadfromfile : Boolean;
  public
    { Public declarations }
  end;

var
  FrmPathPic: TFrmPathPic;

implementation

uses PathDraw;

{$R *.dfm}

Procedure TFrmPathPic.changePicSize(sender : TObject);
var
  TempW ,TempH : Integer;
const
  Dint = 600;
begin
  TempW := TImage(sender).Width;
  TempH := TImage(sender).Height;
  TImage(sender).Stretch := False;
  if (TempW > Dint) and (TempH > Dint) then
  begin
    if TempW > TempH then
    begin
      TImage(sender).Width := Dint;
      TImage(sender).Height := (TempH * Dint ) div TempW;
    end
    else
    begin
      TImage(sender).Height := Dint;
      TImage(sender).Width := (TempW * Dint ) div TempH;
    end;
  end
  else if (TempW > Dint) then //圖的寬比較大
  begin
    TImage(sender).Width := Dint;
    TImage(sender).Height := (TempH * Dint ) div TempW;
  end
  else if (TempH > Dint) then //圖的高比較大
  begin
    TImage(sender).Height := Dint;
    TImage(sender).Width := (TempW * Dint ) div TempH;
  end
  else
  begin
    TImage(sender).Height := TempH;
    TImage(sender).Width := TempW;
  end;
  TImage(sender).Stretch := True;
  loadfromfile := true;
end;

procedure TFrmPathPic.FileListBox1Click(Sender: TObject);
begin
  inherited;
  if FileExists(FileListBox1.FileName) then
  begin
    Image1.Stretch := False;
    Image1.AutoSize := True;
    Image1.Picture.LoadFromFile(FileListBox1.FileName);
    Image1.AutoSize := false;
    changePicSize(Image1);
  end;
end;

procedure TFrmPathPic.BitBtn1Click(Sender: TObject);
var
  Fullscreen:Tbitmap;
  FullscreenCanvas:TCanvas;
  dc:HDC;
  myRect :TRect;
begin

  //if not loadfromfile then
  //  frmPathDraw.myBmp.Assign(Image1.Picture.Graphic)
 // else
  //begin
    Fullscreen :=TBitmap.Create;
    Fullscreen.Width:=Image1.width;
    Fullscreen.Height:=Image1.Height;
    DC:=GetDC(self.Panel2.Handle);
    FullscreenCanvas:=TCanvas.Create;
    FullscreenCanvas.Handle:=DC;
    Fullscreen.Width := Image1.width;//myRect.Right - myRect.Left;
    Fullscreen.Height := Image1.Height;//myRect.Bottom - myRect.Top;
    Fullscreen.Canvas.CopyRect(Rect(0,0,Image1.Width,Image1.Height),FullscreenCanvas,Rect(0,0,Image1.Width,Image1.Height));
    FullscreenCanvas.Free;
    ReleaseDC(0,DC);
    frmPathDraw.myBmp :=fullscreen;
    frmPathDraw.myBmp :=fullscreen;
    frmPathDraw.myBmp.Width:=fullscreen.Width;
    frmPathDraw.myBmp.Height:=fullscreen.Height;
  //end;
  Close;
end;

procedure TFrmPathPic.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmPathPic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmPathPic.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPathPic := nil
end;

end.
