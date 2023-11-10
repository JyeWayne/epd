unit DataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Grids, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls, Buttons;

type
  TFrmDataReport = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SGLab: TStringGrid;
    SGData: TStringGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    LblName: TLabel;
    StaticText1: TStaticText;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SGLabClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SGDataDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGLabDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGLabMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SGDataMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGDataMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGLabMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGLabMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
    procedure showdata;
  public
    { Public declarations }
    fee_no,INORDER_FLAG : string;
  end;

var
  FrmDataReport: TFrmDataReport;

implementation

uses Commfunc, DBDM, Global, ERsFunc, MySQLc;

{$R *.dfm}

procedure TFrmDataReport.FormShow(Sender: TObject);
var
  sql : string;
  mySQLs : TStrings;
begin
  inherited;
  SGLab.ColWidths[0] := 20;//check
  SGLab.ColWidths[1] := 70;//date
  SGLab.ColWidths[2] := 85;//lab_no
  SGLab.ColWidths[3] := -1;//sp_no
  SGLab.ColWidths[4] := -1;//fee_no
  SGData.ColWidths[0] := 20;
  SGData.ColWidths[1] := 225;
  SGData.ColWidths[2] := 295;
  SGData.ColWidths[3] := 105;
  SGData.ColWidths[4] := 105;
  SGData.ColWidths[5] := 20;
  SGData.Cells[0,0] := '選';
  SGData.Cells[1,0] := '檢驗項目';
  SGData.Cells[2,0] := '項目名稱';
  SGData.Cells[3,0] := '定性';
  SGData.Cells[4,0] := '定量';
  if SGLab.RowCount > 2 then
    SGLab.RowCount := 2;
  mySQLs := TStringList.Create;
  sql := report(0);
  SetParamter(sql,'$FEE_NO$',Qt(fee_no));
  mySQLs.Text := sql;
  DM.OpenSQL(mySQLs,SGLab);
  INORDER_FLAG := 'N';
end;

procedure TFrmDataReport.showdata;
var
  st,ckmbYN :string;
begin
  st := '';
  ckmbYN := 'N';
  //DM.QryTemp.First;
  while not DM.QryTemp.Eof do
  begin
    SGData.Cells[0,SGData.RowCount-1] := '';
    if st <> Trim(DM.QryTemp.FieldByName('codename').AsString) then
      SGData.Cells[1,SGData.RowCount-1] := Trim(DM.QryTemp.FieldByName('codename').AsString);
    SGData.Cells[2,SGData.RowCount-1] := Trim(DM.QryTemp.FieldByName('r_item_name').AsString);
    if (ckmbYN= 'N') and (pos('CK-MB',Trim(DM.QryTemp.FieldByName('r_item_name').AsString)) <> 0) or (pos('CK',Trim(DM.QryTemp.FieldByName('r_item_name').AsString)) <> 0) then
      ckmbYN := 'Y';
    SGData.Cells[3,SGData.RowCount-1] := Trim(DM.QryTemp.FieldByName('result_date_t').AsString);
    SGData.Cells[4,SGData.RowCount-1] := Trim(DM.QryTemp.FieldByName('result_data_q').AsString);
    SGData.Cells[5,SGData.RowCount-1] := Trim(DM.QryTemp.FieldByName('result_flag').AsString);
    st := Trim(DM.QryTemp.FieldByName('codename').AsString);
    DM.QryTemp.next;
    SGData.RowCount := SGData.RowCount + 1;
  end;
  IF ckmbYN = 'Y' THEN
    times_log('AMICKV','',getUserId,'');
end;

procedure TFrmDataReport.BitBtn1Click(Sender: TObject);
VAR
  i,sno : integer;
  s_qty,nodata : string;
  sql : TStrings;
begin
  inherited;
  sql := TStringList.Create;
  if SGData.RowCount > 2 then
    SGData.RowCount := 2;

  nodata := '';
  for i := 1 to SGLab.RowCount-1 do
  begin
    if SGLab.Cells[0,i] = 'V' then
    begin
      DM.QryTemp.Close;
      s_qty := report(3);
      SetParamter(s_qty,'$SP_NO$',Qt(trim(SGLab.Cells[3,i])));
      SetParamter(s_qty,'$FEE_NO$',Qt(fee_no));
      sql.Text := s_qty;
      DM.QryTemp.SQL.Text:=s_qty;
      DM.QryTemp.Open;
      if DM.QryTemp.IsEmpty then
      begin
        //set seen_reprotdata
        if trim(SGLab.Cells[3,i])<> '' then
        begin
          try
            DM.ADOLink.BeginTrans;
            DM.QryInsert.Close;
            DM.QryInsert.SQL.Clear;
            DM.QryInsert.SQL.Add('insert into seen_reportdata(FEE_NO,KIND,SINGLE_NO,QUERY_DATE,QUERY_TIME,DOC_CODE)');
            DM.QryInsert.SQL.Add(' values('+Qt(fee_no)+','+Qt('L')+','+Qt(trim(SGLab.Cells[3,i]))+','+Qt(ROCDate(Now,''))+','+Qt(ROCTimes(Now,''))+','+Qt(getUserId)+')');
            DM.QryInsert.ExecSQL;
            DM.ADOLink.CommitTrans;
          except
            DM.ADOLink.RollbackTrans;
          end;
        end;
      end;
      DM.QryTemp.Close;
      s_qty := report(1);
      SetParamter(s_qty,'$SP_NO$',Qt(trim(SGLab.Cells[3,i])));
      sql.Text := s_qty;
      DM.QryTemp.SQL.Text:=s_qty;
      DM.QryTemp.Open;
      IF NOT DM.QryTemp.IsEmpty then
        showdata
      else
        nodata := nodata+ trim(SGLab.Cells[2,i])+ #10#13;
    end;
  end;
  if trim(nodata)<> '' then
    ShowMessage('下列單號還沒有報告:'+nodata);
end;

procedure TFrmDataReport.SGLabClick(Sender: TObject);
begin
  inherited;
  IF (TStringGrid(Sender).Col>0) and (TStringGrid(Sender).Col<5) THEN
  BEGIN
    if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) = '' then
      TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := 'V'
    else
      if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) ='V' then
        TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := '';
  END;
end;

procedure TFrmDataReport.BitBtn2Click(Sender: TObject);

begin
  inherited;

  Self.Close;
end;

procedure TFrmDataReport.SGDataDrawCell(Sender: TObject; ACol,
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

    if TStringGrid(Sender).Cells[5,Arow]='H' then
    begin
      TStringGrid(Sender).Canvas.Font.Color := Clred;
      //TStringGrid(Sender).Cells[0,Arow] := 'V';
    end
    else if  TStringGrid(Sender).Cells[5,Arow]='L' then
    begin
      TStringGrid(Sender).Canvas.Font.Color := clBlue;
      //TStringGrid(Sender).Cells[0,Arow] := 'V';
    end
    else
      TStringGrid(Sender).Canvas.Font.Color := clWindowText;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  if ACol < 2 then
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE )
  else
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );
  //TStringGrid(Sender).Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

procedure TFrmDataReport.SGLabDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Str : String;
begin
  inherited;
  Str := TStringGrid(Sender).Cells[ACol,Arow];
  if (ARow <> 0) and (ACol <> 0)  then
  begin
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clwindow;
    if TStringGrid(Sender).Row = ARow then
      TStringGrid(Sender).Canvas.Font.Color := clblue
    else
      TStringGrid(Sender).Canvas.Font.Color := clblack;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE );

end;

procedure TFrmDataReport.SGLabMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SgCol, SgRow,i : integer;
  stv :string;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SgCol, SgRow);
  if (SgCol=0) and (SgRow = 0) then
  begin
    if TStringGrid(Sender).Cells[0,1] ='' then
      stv := ''
    else
      stv := 'V';
    for i := 1 to  TStringGrid(Sender).RowCount-1 do
      if stv = '' then
        TStringGrid(Sender).Cells[0,i] := 'V'
      else
        TStringGrid(Sender).Cells[0,i] := '';
  end;
end;

procedure TFrmDataReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
VAR
  I : INTEGER;
begin
  inherited;
  REPORT_DATA.Clear;
  FOR I := 1 TO SGData.RowCount-1 DO
    IF SGData.Cells[0,I]='V' THEN
    BEGIN
      INORDER_FLAG := 'Y';
      REPORT_DATA.Add(SGData.Cells[2,I]+','+SGData.Cells[3,I]+','+SGData.Cells[4,I]+'_');
    END;
end;

procedure TFrmDataReport.SGDataMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
   TStringGrid(Sender).Col := 5;
end;

procedure TFrmDataReport.SGDataMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 5;
end;

procedure TFrmDataReport.SGLabMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 0;
end;

procedure TFrmDataReport.SGLabMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 0;
end;

end.
