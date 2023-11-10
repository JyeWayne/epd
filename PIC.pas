unit PIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, DBCtrls, ExtCtrls, ComCtrls, ExtDlgs, StdCtrls, DB, ADODB, Jpeg;

type
  TFrmpic = class(TFrmMain)
    Panel1: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button8: TButton;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ScrollBox1: TScrollBox;
    DBImage1: TDBImage;
    Panel3: TPanel;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    Shape1: TShape;
    DBText1: TDBText;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
    procedure jpgtobmp(const filename: tfileName);
  public
    { Public declarations }
  end;

var
  Frmpic: TFrmpic;

implementation

uses Commfunc, DBDM, Global;

{$R *.dfm}

procedure TFrmpic.Button1Click(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if OpenPictureDialog1.Execute then
  begin
    try
      ProgressBar1.Min := 0;
      ProgressBar1.Max := OpenPictureDialog1.Files.Count;
      for i := 0 to OpenPictureDialog1.Files.Count-1 do
      begin
        if OpenPictureDialog1.Files.ValueFromIndex[i] <> '' then
        begin
          //ShowMessage(OpenPictureDialog1.Files.Strings[i]);
          //Continue;
          ProgressBar1.Position := i+1;
          if UpperCase(copy(OpenPictureDialog1.Files.Strings[i],pos('.',OpenPictureDialog1.Files.Strings[i])+1,3))= 'BMP' then
          begin
            Image1.Picture.LoadFromFile(OpenPictureDialog1.Files.Strings[i]);
          end
          else
          begin
            jpgtobmp(OpenPictureDialog1.Files.Strings[i]);
          end;
          Button2Click(Button2);
        end;
      end;

      ShowMessage('Completed');
      ProgressBar1.Position := 0;
    except
      ShowMessage('Save failure');
      ProgressBar1.Position := 0;
    end;
  end;
end;

procedure TFrmpic.jpgtobmp(const filename: tfileName);
Var
  jpeg: TJPEGImage;
  bmp: TBitmap;
Begin 
  jpeg:= TJPEGImage.Create;
  try
    jpeg.LoadFromFile( filename );
    bmp:= TBitmap.Create;
    try
      bmp.Assign( jpeg );
      bmp.SaveTofile(ChangeFileExt( filename, '.BMP' ));
      Image1.Picture.Graphic := nil;
      Image1.Picture.LoadFromFile(ChangeFileExt( filename, '.BMP' ));
    finally
      bmp.free
    end;
  finally
    jpeg.free
  end;
end;

procedure TFrmpic.Button2Click(Sender: TObject);
var
  pic : TImage;
  mxno,sortno : string;
  allno: integer;
begin
  ADOQuery1.Close;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select nvl(max(SEQ_NO),0) a,nvl(max(ALLORDER_NO),0) b,nvl(max(ORDER_SORT),0) c from TRAUMA_PIC where fee_no ='+Qt(GetFeeNo));
  ADOQuery2.Open;
  mxno := IntToStr(StrToInt(trim(ADOQuery2.fieldbyname('a').AsString))+1);
  allno  := ADOQuery2.fieldbyname('b').AsInteger+1;
  sortno  := IntToStr(StrToInt(trim(ADOQuery2.fieldbyname('c').AsString))+1);
  pic := Image1;
  DeleteFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  pic.Picture.SaveToFile(ExtractFileDir(Application.ExeName)+'\evens.bmp');
  DM.ADOLink.BeginTrans;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('insert into TRAUMA_PIC(FEE_NO,SEQ_NO,TRAUMA_PIC,ALLORDER_NO,ORDER_SORT,UPD_OPER,UPD_DATE,UPD_TIME,del_flag,chr_no)');
  ADOQuery2.SQL.Add(' values(:FEE_NO,:SEQ_NO,:TRAUMA_PIC,:ALLORDER_NO,:ORDER_SORT,:UPD_OPER,:UPD_DATE,:UPD_TIME,:DEL_FLAG,:chr_no)');
  ADOQuery2.Parameters.ParamByName('FEE_NO').Value := GetFeeNo;
  ADOQuery2.Parameters.ParamByName('SEQ_NO').Value := mxno;
  ADOQuery2.Parameters.ParamByName('TRAUMA_PIC').LoadFromFile(ExtractFileDir(Application.ExeName)+'\evens.bmp',ftBlob);
  ADOQuery2.Parameters.ParamByName('ALLORDER_NO').Value := allno;
  ADOQuery2.Parameters.ParamByName('ORDER_SORT').Value := sortno;
  ADOQuery2.Parameters.ParamByName('UPD_OPER').Value := getUserId;
  ADOQuery2.Parameters.ParamByName('UPD_DATE').Value := ROCDate(Now,'');
  ADOQuery2.Parameters.ParamByName('UPD_TIME').Value := ROCTimes(now,'');
  ADOQuery2.Parameters.ParamByName('DEL_FLAG').Value := 'N';
  ADOQuery2.Parameters.ParamByName('chr_no').Value := GetChrNo;
  ADOQuery2.ExecSQL;
  DM.ADOLink.CommitTrans;
  Image1.Picture.Graphic := nil;
  Button3Click(Self);
end;

procedure TFrmpic.Button3Click(Sender: TObject);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from  TRAUMA_PIC where (fee_no='+Qt(GetFeeNo)+' or chr_no ='+Qt(GetChrNo)+') and del_flag=''N'' order by seq_no');
  ADOQuery1.Open;
  if ADOQuery1.IsEmpty then
    ADOQuery1.Close
  else
  begin
    StaticText1.Caption := 'Count:'+IntToStr(ADOQuery1.RecordCount);
    DBImage1.Height := DBImage1.Picture.Graphic.Height;
    DBImage1.Width  := DBImage1.Picture.Graphic.Width;
  end;
end;

procedure TFrmpic.Button4Click(Sender: TObject);
begin
  inherited;
  if ADOQuery1.State <> dsInactive	 then
  begin
    if ADOQuery1.Eof then
    begin
      Button5.Enabled := True;
      Button4.Enabled := false;
    end
    else
    begin
      Button5.Enabled := True;
      Button4.Enabled := True;
    end;    
    ADOQuery1.Next;
    DBImage1.Height := DBImage1.Picture.Graphic.Height;
    DBImage1.Width  := DBImage1.Picture.Graphic.Width;
  end;
end;

procedure TFrmpic.Button5Click(Sender: TObject);
begin
  inherited;
  if ADOQuery1.State <> dsInactive	 then
  begin
    if ADOQuery1.Bof then
    begin
      Button5.Enabled := false;
      Button4.Enabled := True;
    end
    else
    begin
      Button5.Enabled := True;
      Button4.Enabled := True;
    end;
    ADOQuery1.Prior;
    DBImage1.Height := DBImage1.Picture.Graphic.Height;
    DBImage1.Width  := DBImage1.Picture.Graphic.Width;
  end;
end;

procedure TFrmpic.Button6Click(Sender: TObject);
begin
  inherited;
  Button3Click(Self);
end;

procedure TFrmpic.Button7Click(Sender: TObject);
begin
  inherited;
  DM.ADOLink.BeginTrans;
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('del_flag').AsString := 'Y';
  ADOQuery1.Post;
  DM.ADOLink.CommitTrans;
  Button3Click(Self);
end;

procedure TFrmpic.FormShow(Sender: TObject);
begin
  inherited;
  //Button3Click(Self);
end;

procedure TFrmpic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmpic.FormDestroy(Sender: TObject);
begin
  inherited;
  Frmpic := nil;
end;

procedure TFrmpic.Button8Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


end.
