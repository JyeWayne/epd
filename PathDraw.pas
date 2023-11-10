unit PathDraw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ColorGrd, Spin, ExtCtrls, ComCtrls,
  Menus, ExtDlgs, Jpeg;

type
  TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect,dtEvenLine);
  TFrmPathDraw = class(TFrmMain)
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    SpeedButton7: TSpeedButton;
    Label2: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpinEdit1: TSpinEdit;
    ColorGrid1: TColorGrid;
    Panel5: TPanel;
    RectangleButton: TSpeedButton;
    EllipseButton: TSpeedButton;
    RoundRectButton: TSpeedButton;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    SolidBrush: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel7: TPanel;
    ScrollBox1: TScrollBox;
    Image: TImage;
    ColorDialog1: TColorDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RectangleButtonClick(Sender: TObject);
    procedure EllipseButtonClick(Sender: TObject);
    procedure RoundRectButtonClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SolidBrushClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ColorGrid1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    DrawingTool :TDrawingTool;
    myRect : TRect;
    Drawing: Boolean;
    Origin, MovePt: TPoint;
    BrushStyle: TBrushStyle;
    PenStyle: TPenStyle;
    PenWide: Integer;
    procedure ZoomInOut2(mm:TImage;m,n:extended);
  public
    { Public declarations }
    myBmp : TBitmap;
    procedure SaveStyles;
    procedure RestoreStyles;
    procedure DrawShape(TopLeft, BottomRight: TPoint; AMode: TPenMode);

  end;

type
    DK1 = record
    Header : array[1..10] of char;        //ÀÉÀY
    end;
var
  FrmPathDraw: TFrmPathDraw;
const dint = 600;
implementation

uses Commfunc, Global, PathPic;

{$R *.dfm}

procedure TFrmPathDraw.DrawShape(TopLeft, BottomRight: TPoint;
  AMode: TPenMode);
begin
  with Image.Canvas do
  begin
    Pen.Mode := AMode;
    //Brush.Style   :=   bsClear; //³z©úªº
    case DrawingTool of
      dtLine:
        begin
          Image.Canvas.MoveTo(TopLeft.X, TopLeft.Y);
          Image.Canvas.LineTo(BottomRight.X, BottomRight.Y);
        end;
      dtRectangle: Image.Canvas.Rectangle(TopLeft.X, TopLeft.Y, BottomRight.X,
        BottomRight.Y);
      dtEllipse: Image.Canvas.Ellipse(Topleft.X, TopLeft.Y, BottomRight.X,
        BottomRight.Y);
      dtRoundRect: Image.Canvas.RoundRect(TopLeft.X, TopLeft.Y, BottomRight.X,
        BottomRight.Y, (TopLeft.X - BottomRight.X) div 2,
        (TopLeft.Y - BottomRight.Y) div 2);
    end;
  end;
end;

procedure TFrmPathDraw.SaveStyles;
begin
  with Image.Canvas do
  begin
    BrushStyle := Brush.Style;
    PenStyle := Pen.Style;
    PenWide := Pen.Width;
  end;
end;

procedure TFrmPathDraw.RestoreStyles;
begin
  with Image.Canvas do
  begin
    Brush.Style := BrushStyle;
    Pen.Style := PenStyle;
    Pen.Width := PenWide;
  end;
end;

procedure TFrmPathDraw.ZoomInOut2(mm:TImage; m, n: extended);
var
  jpg1:TJpegImage;
  bmp1,bmp2,jpg   :TBitmap;
  x1,y1,x2,y2,x0,y0,dx,dy,x,y,TempW,TempH:integer;
begin
  mm.Picture.Graphic.SaveToFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  try
    jpg   :=TBitmap.Create;
    jpg.LoadFromFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  except
    jpg:= nil;
    jpg1 := TJpegImage.Create;
    jpg1.LoadFromFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  end;
  bmp1   :=TBitmap.Create;
  bmp2   :=TBitmap.Create;
  if jpg <> nil then
  begin
    bmp1.Assign(jpg);
    TempW := Trunc(jpg.Width * m);
    TempH := Trunc(jpg.Height * n);
  end
  else
  begin
    bmp1.Assign(jpg1);
    TempW := Trunc(jpg1.Width * m);
    TempH := Trunc(jpg1.Height * n);
  end;
  bmp2.Height := TempH;
  bmp2.Width := TempW;

  x1:=bmp1.Width;
  y1:=bmp1.Height;   
  x2:=bmp2.Width;   
  y2:=bmp2.Height;   
  dx:=0;   
  x0:=0;   
  for x:=0 to bmp2.Width-1 do
  begin
    dy:=0;
    y0:=0;
    dx:=dx+x1;
    while (dx>=x2) do
    begin
      x0:=x0+1;
      dx:=dx-x2;
    end;
    for y:=0 to bmp2.Height-1 do
    begin
      dy:=dy+y1;
      while (dy>=y2) do
      begin
        y0:=y0+1;
        dy:=dy-y2;
      end;
      bmp2.Canvas.Pixels[x,y]:=bmp1.Canvas.Pixels[x0,y0];
    end;
  end;
  deletefile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  if jpg <> nil then
  begin
    jpg.Assign(bmp2);
    jpg.SaveToFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
    jpg.Free;
  end
  else
  begin
    jpg1.Assign(bmp2);
    jpg1.SaveToFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
    jpg1.Free;
  end;
  bmp1.Free;   
  bmp2.Free;
  mm.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  deletefile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
end;

procedure TFrmPathDraw.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  DrawingTool := dtRectangle;
  RectangleButtonClick(RectangleButton);
  SpeedButton2Click(SpeedButton2);
end;

procedure TFrmPathDraw.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  DrawingTool := dtEvenLine;
end;

procedure TFrmPathDraw.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  DrawingTool := dtLine;
end;

procedure TFrmPathDraw.RectangleButtonClick(Sender: TObject);
begin
  inherited;
  DrawingTool := dtRectangle;
end;

procedure TFrmPathDraw.EllipseButtonClick(Sender: TObject);
begin
  inherited;
  DrawingTool := dtEllipse;
end;

procedure TFrmPathDraw.RoundRectButtonClick(Sender: TObject);
begin
  inherited;
  DrawingTool := dtRoundRect;
end;

procedure TFrmPathDraw.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  with Image.Canvas.Brush do
  begin
    if Sender = SpeedButton2 then Style := bsClear;
    if Sender = SolidBrush then Style := bsSolid ;
    if Sender = SpeedButton1 then Style := bsCross ;
  end;
end;

procedure TFrmPathDraw.SolidBrushClick(Sender: TObject);
begin
  inherited;
  with Image.Canvas.Brush do
  begin
    if Sender = SpeedButton2 then Style := bsClear;
    if Sender = SolidBrush then Style := bsSolid ;
    if Sender = SpeedButton1 then Style := bsCross ;
  end;
end;

procedure TFrmPathDraw.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  with Image.Canvas.Brush do
  begin
    if Sender = SpeedButton2 then Style := bsClear;
    if Sender = SolidBrush then Style := bsSolid ;
    if Sender = SpeedButton1 then Style := bsCross ;
  end;
end;

procedure TFrmPathDraw.Button1Click(Sender: TObject);
begin
  inherited;
  image.Picture := Image1.Picture;
end;

procedure TFrmPathDraw.BitBtn1Click(Sender: TObject);
var
  Fullscreen:Tbitmap;
  FullscreenCanvas:TCanvas;
  dc:HDC;
  ARect :TRect;
begin
  SaveStyles;
  Fullscreen:=TBitmap.Create;
  Fullscreen.Width:=myrect.Right - myrect.Left;//screen.width;
  Fullscreen.Height:=myrect.Bottom - myrect.Top;//screen.Height;
  DC:=GetDC(self.ScrollBox1.Handle );
  FullscreenCanvas:=TCanvas.Create;
  FullscreenCanvas.Handle:=DC;
  Fullscreen.Canvas.CopyRect(Rect(0,0,myrect.Right - myrect.Left,myrect.Bottom - myrect.Top),fullscreenCanvas,myrect);
  FullscreenCanvas.Free;
  ReleaseDC(0,DC);
  image.picture.Bitmap:=fullscreen;
  image.Width:=myrect.Right - myrect.Left;
  image.Height:=myrect.Bottom - myrect.Top;
  fullscreen.free;
  RestoreStyles;
end;

procedure TFrmPathDraw.ComboBox1Change(Sender: TObject);
begin
  inherited;
  Case StrToInt(ReTurnId(Combobox1.text)) of
  0 : ZoomInOut2(image,2,2);
  1 : ZoomInOut2(image,1.5,1.5);
  2 : ZoomInOut2(image,1.25,1.25);
  3 : Button1Click(Button1);
  4 : ZoomInOut2(image,0.75,0.75);
  5 : ZoomInOut2(image,0.5,0.5);
  6 : ZoomInOut2(image,0.25,0.25);
  end
end;

procedure TFrmPathDraw.BitBtn2Click(Sender: TObject);
begin
  inherited;

  GMStream:= TMemoryStream.Create;
  Image.Picture.Graphic.SaveToStream(GMStream);
  GMStream.Seek(0,soFromBeginning);
  Image.Picture := nil;
  Close;
end;

procedure TFrmPathDraw.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if not Assigned(GMStream) then
    GMStream := TMemoryStream.Create;
  Image.Picture := nil;
  Close;
end;

procedure TFrmPathDraw.SpinEdit1Change(Sender: TObject);
begin
  inherited;
  Image.Canvas.Pen.Width := SpinEdit1.Value;
end;

procedure TFrmPathDraw.N2Click(Sender: TObject);
var
  aBitmap : TBitmap;
begin
  aBitmap := TBitmap.Create;
  aBitmap.Width := dint;
  aBitmap.Height := dint;
  Image.Picture.Graphic := aBitmap;
end;

procedure TFrmPathDraw.N3Click(Sender: TObject);
begin
  if not Assigned(FrmPathPic) then
    FrmPathPic := TFrmPathPic.Create(self);
  FrmPathPic.FileListBox1.Directory := 'D:\tmch\e_order';
  FrmPathPic.ShowModal;
  if not mybmp.Empty then
  begin
    Image.Picture.Assign(myBmp);
    Image1.Picture.Assign(myBmp);
    myBmp.FreeImage;
  end;
end;

procedure TFrmPathDraw.ImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Drawing := True;
  Image.Canvas.PenPos := Point(X,Y);
  Image.Canvas.MoveTo(X, Y);
  MyRect.Left := X;
  MyRect.Top := Y;
  Origin := Point(X, Y);
  MovePt := Origin;
end;

procedure TFrmPathDraw.ImageMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Drawing then
  begin
    if DrawingTool=DtEvenLine then
    begin
      Image.Canvas.LineTo(X,Y);
      Image.Canvas.PenPos := Point(X,Y);
    end
    else
    begin
      DrawShape(Origin, MovePt, pmNotXor);
      MovePt := Point(X, Y);
      DrawShape(Origin, MovePt, pmNotXor);
    end
  end;
end;


procedure TFrmPathDraw.ImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 //J1: TJPEGImage;
 MS: TMemoryStream;
begin
  if Drawing then
  begin
    DrawShape(Origin, Point(X, Y), pmCopy);
    MyRect.Right := X;
    MyRect.Bottom := Y;
    Drawing := False;
  end;
  {MS:= TMemoryStream.Create;
  image.Picture.Graphic.SaveToStream(MS);
  image1.Picture.Graphic.LoadFromStream(Ms);
  Ms.Free;}



end;

procedure TFrmPathDraw.ColorGrid1Click(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := Image.Canvas.Pen.Color;
  if ColorDialog1.Execute then
    Image.Canvas.Pen.Color := ColorDialog1.Color;
end;

procedure TFrmPathDraw.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmPathDraw.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPathDraw := nil;
end;

procedure TFrmPathDraw.FormCreate(Sender: TObject);
begin
  inherited;
  myBmp := TBitmap.Create;
end;

procedure TFrmPathDraw.FormShow(Sender: TObject);
begin
  inherited;
    Image.Picture.Assign(myBmp);
    Image1.Picture.Assign(myBmp);
    myBmp.FreeImage;
end;

end.
