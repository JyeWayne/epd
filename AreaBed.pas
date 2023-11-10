unit AreaBed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Grids, StdCtrls, ExtCtrls, ComCtrls, ValEdit, Buttons, Contnrs;

type
  TFrmAreaBed = class(TFrmMain)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    lblArear: TLabel;
    SGAREA: TStringGrid;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    SGBed: TStringGrid;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    procedure SGAREADrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure SGAREAClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SGBedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure SGAREADblClick(Sender: TObject);
    procedure SGBedDblClick(Sender: TObject);
  private
    { Private declarations }
    SQLo: TObjectList;
    procedure GetList;
    function getmaxseq():integer;
  public
    { Public declarations }
  end;

var
  FrmAreaBed: TFrmAreaBed;

implementation

uses DBDM, Commfunc, ERsFunc, MySQLc, Global, Math;

{$R *.dfm}
//雙和診間設定table
//select reg_date,chr_no,fee_no,virtual_bed_code,epd_clinic_code from epd_vcb_basic
//select epd_clinic_code,epd_clinic_desc from epd_clinic_basic
function TFrmAreaBed.getmaxseq():integer;
var
  str : string;
begin
  Result := 1;
  str := getareabed(6);
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := str;
  DM.QryTemp.Open;
  if DM.QryTemp.FieldByName('seq_no').AsInteger >= 1 then
    Result := DM.QryTemp.FieldByName('seq_no').AsInteger+1
  else
    Result := 1;
end;

procedure TFrmAreaBed.SGAREADrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Str : String;
begin
  inherited;
  Str := TStringGrid(Sender).Cells[ACol,Arow];
  if (ARow <> 0) and (ACol <> 0)  then
  begin
    if (ARow mod 2) = 1 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clwindow;
  end;
  TStringGrid(Sender).Canvas.Font.Color :=  ClBLACK;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  if TStringGrid(Sender).Name='SGAREA' then
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE )
  else
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(' '+Str),Length(Str)+1,Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );
end;

procedure TFrmAreaBed.FormShow(Sender: TObject);
begin
  inherited;
  GetList;
  SQLo := TObjectList.Create;
end;

procedure TFrmAreaBed.GetList;
var
  mySQLs : TStrings;
begin
  mySQLs := TStringList.Create;
  mySQLs.Text := getareabed(0);
  DM.OpenSQL(mySQLs,SGAREA);
  SGAREA.Row := 1;
  SGAREAClick(SGAREA);
END;

procedure TFrmAreaBed.SGAREAClick(Sender: TObject);
var
  mySQLs : TStrings;
  qryst : string;
begin
  inherited;
  lblArear.Caption := Trim(SGAREA.Cells[1,SGAREA.row]);
  mySQLs := TStringList.Create;
  Edit1.Text := Trim(SGAREA.Cells[1,SGAREA.row]);
  GroupBox2.Caption := '床位維護(已選擇區域:'+Trim(SGAREA.Cells[1,SGAREA.row])+')';
  qryst := getareabed(1);
  SetParamter(qryst,'$AREA_NO$',Qt(Trim(SGAREA.Cells[0,SGAREA.row])));
  mySQLs.Text := qryst;
  DM.OpenSQL(mySQLs,SGBed);
  SGBed.RowCount := SGBed.RowCount +1;
end;

procedure TFrmAreaBed.BitBtn3Click(Sender: TObject);
VAR
  SQLs : TStrings;
  TMPSTR: string;
begin
  inherited;
  TMPSTR := getareabed(3);
  SetParamter(TMPSTR,'$AREA_NAME$',qt(Trim(Edit1.Text)));
  SetParamter(TMPSTR,'$UPD_OPER$',qt(getUserId));
  SetParamter(TMPSTR,'$UPD_DATE$',qt(ROCDate(Now,'')));
  SetParamter(TMPSTR,'$UPD_TIME$',qt(ROCTimes(Now,'')));
  SetParamter(TMPSTR,'$AREA_NO$',IntToStr(getmaxseq));
  SQLs := TStringList.Create;
  SQLs.Text := TMPSTR;
  if not DM.ExecSQL(SQLs) then
    ShowMessage('寫入資料庫失敗');
  Edit1.Text := '';
  GetList;
end;

procedure TFrmAreaBed.BitBtn1Click(Sender: TObject);
VAR
  SQLs : TStrings;
  TMPSTR: string;
begin
  inherited;
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('請輸入區域名稱');
    Exit;
  end;
  //update
  TMPSTR := getareabed(2);
  SetParamter(TMPSTR,'$AREA_NAME$',qt(Trim(Edit1.Text)));
  SetParamter(TMPSTR,'$UPD_OPER$',qt(getUserId));
  SetParamter(TMPSTR,'$UPD_DATE$',qt(ROCDate(Now,'')));
  SetParamter(TMPSTR,'$UPD_TIME$',qt(ROCTimes(Now,'')));
  SetParamter(TMPSTR,'$AREA_NO$',qt(Trim(SGAREA.Cells[0,SGAREA.row])));
  SQLs := TStringList.Create;
  SQLs.Text := TMPSTR;
  if not DM.ExecSQL(SQLs) then
    ShowMessage('寫入資料庫失敗');
  Edit1.Text := '';
  GetList;
end;

procedure TFrmAreaBed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SQLo.Free;
  Action := caFree;
end;

procedure TFrmAreaBed.BitBtn2Click(Sender: TObject);
VAR
  SQLs : TStrings;
  TMPSTR,bed_no: string;
  i : integer;
begin
  inherited;
  bed_no := '';
 { for i := 1 to SGBed.RowCount-1 do
  begin
    if Trim(SGBed.Cells[0,i])<> '' then
      bed_no := bed_no + UpperCase(Trim(SGBed.Cells[0,i])) +';';
  end;
  if trim(bed_no) <> '' then
  begin
    bed_no := copy(bed_no,1,Length(bed_no)-1);
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select bed_no from BED_AREA where BED_NO in('+Qts(bed_no)+')');
    DM.QryTemp.Open;
    bed_no := '';
    while not DM.QryTemp.Eof do
    begin
      bed_no := bed_no+'床號:'+ trim(DM.QryTemp.fieldbyname('bed_no').AsString)+#13#10;
      DM.QryTemp.Next;
    end;
    if trim(bed_no) <> '' then
    begin
      bed_no := bed_no+'上列床號已重複請更改' ;
      ShowMessage(bed_no);
      exit;
    end;
  end; }
  DM.QryTemp.Close;
  SQLo.Clear;
  TMPSTR := getareabed(4);
  SetParamter(TMPSTR,'$AREA_NO$',qt(Trim(SGAREA.Cells[0,SGAREA.row])));
  SQLs := TStringList.Create;
  SQLs.Text := TMPSTR;
  SQLo.Add(SQLs);
  for i := 1 to SGBed.RowCount-1 do
  begin
    if Trim(SGBed.Cells[0,i])<> '' then
    begin
      TMPSTR := getareabed(5);
      SetParamter(TMPSTR,'$BED_NO$',qt(UpperCase(Trim(SGBed.Cells[0,i]))));
      SetParamter(TMPSTR,'$UPD_OPER$',qt(getUserId));
      SetParamter(TMPSTR,'$UPD_DATE$',qt(ROCDate(Now,'')));
      SetParamter(TMPSTR,'$UPD_TIME$',qt(ROCTimes(Now,'')));
      SetParamter(TMPSTR,'$AREA_NO$',qt(Trim(SGAREA.Cells[0,SGAREA.row])));
      SQLs := TStringList.Create;
      SQLs.Text := TMPSTR;
      SQLo.Add(SQLs);
    end;
  end;
  if not DM.ExecSQL(SQLo) then
    ShowMessage('寫入資料庫失敗');
  SGAREAClick(SGAREA);
  GetList;
end;

procedure TFrmAreaBed.SGBedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    {DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select bed_no from BED_AREA where BED_NO ='+Qt(UpperCase(Trim(SGBed.Cells[0,SGBed.Row]))));
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      ShowMessage('此床號重覆');
      SGBed.Rows[SGBed.Row].Clear;
    end
    else
    begin}
      if SGBed.Row = SGBed.RowCount-1 then
        SGBed.RowCount:= SGBed.RowCount+1;
      key := vk_down;
      sendMessage(SGBed.Handle,wm_keydown,key,0);
    //end;
  end;
end;

procedure TFrmAreaBed.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmAreaBed := nil;
end;

procedure TFrmAreaBed.SGAREADblClick(Sender: TObject);
VAR
  SQLs : TStrings;
  //TMPSTR : string;
begin
  inherited;
  if MessageDlg('你確定要刪除此區域嗎?',
    mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.ADOLink.BeginTrans;
    try
      DM.QryUpdate.Close;
      DM.QryUpdate.SQL.Clear;
      DM.QryUpdate.SQL.Text := 'delete bed_area where area_no='+qt(Trim(SGAREA.Cells[0,SGAREA.row]));
      DM.QryUpdate.ExecSQL ;
      DM.QryUpdate.Close;
      DM.QryUpdate.SQL.Clear;
      DM.QryUpdate.SQL.Text := 'delete area_basic where area_no='+qt(Trim(SGAREA.Cells[0,SGAREA.row]));
      DM.QryUpdate.ExecSQL ;
      DM.ADOLink.CommitTrans;
    except
      DM.ADOLink.RollbackTrans;
      ShowMessage('寫入資料庫失敗');
    end;
    Edit1.Text := '';
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select trim(area_name)||''_''||trim(area_no) as area_name from area_basic where area_no in(select area_no from bed_area) order by Area_no');
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      EPDAREA.Add(DM.QryTemp.FIELDBYNAME('area_name').AsString);
      DM.QryTemp.Next;
    end;
    GetList;
  end;
end;

procedure TFrmAreaBed.SGBedDblClick(Sender: TObject);
VAR
  SQLs : TStrings;
  TMPSTR : string;
begin
  inherited;
  if MessageDlg('你確定要刪除此床號嗎?',
    mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    TMPSTR := 'delete bed_area where bed_no='+qt(UpperCase(Trim(SGBed.Cells[0,SGBed.row])));
    SQLs := TStringList.Create;
    SQLs.Text := TMPSTR;
    if not DM.ExecSQL(SQLs) then
      ShowMessage('寫入資料庫失敗');

    SGAREAClick(SGAREA);
  end;
end;

end.
