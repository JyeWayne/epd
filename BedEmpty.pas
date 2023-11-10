unit BedEmpty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, ExtCtrls, Grids, ComCtrls, Buttons;

type
  TFrmBedEmpty = class(TFrmMain)
    PageControl1: TPageControl;
    TabBed: TTabSheet;
    SGBed: TStringGrid;
    PanelBed: TPanel;
    Panel8: TPanel;
    LbCost: TLabel;
    DGBed: TDrawGrid;
    Panel9: TPanel;
    PanelDGBed: TPanel;
    PanelDGRoom: TPanel;
    SGCostBed: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure SGCostBedDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGCostBedMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SGBedDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBedEmpty: TFrmBedEmpty;

implementation

uses Commfunc, DBDM, Global;

{$R *.dfm}

procedure TFrmBedEmpty.FormShow(Sender: TObject);
var
  i : Integer;
  SQLs : TStrings;
  temps ,paths: String;
  DeptKind : String;
begin
  SQLs := TStringList.Create;
  //initBedTitle;
  PanelBed.Width := PageControl1.Width - SGBed.Width -4;
  SQLs.Text := '';
  SQLs.Add(' select trim(cost_code)||''_''||cost_desc "護理站",count "空床數" ');
  SQLs.Add(' from ( ');
  SQLs.Add('   select b.cost_code,b.cost_desc,--bed_no, ');
  SQLs.Add('   sum(decode(trim(bed_no),null,0,1)) count ');
  SQLs.Add('   from (select bed_no,cost_code,int_code from bed_basic where bed_no in ( ');
  SQLs.Add('   select a.bed_no from bed_basic a where a.int_code in (''0001'',''0003'') ');
  SQLs.Add('   minus ');
  SQLs.Add('   select bed_no from ipd_basic where ipd_flag=''Y'')) a ');
  SQLs.Add('     right join cost_basic b on a.cost_code=b.cost_code ');
  SQLs.Add('   where b.cost_code in ');
  SQLs.Add('   (select cost_code from ipd_basic where ipd_flag=''Y'') ');
  SQLs.Add('   group by b.cost_code,b.cost_desc) ');
  SQLs.Add('   order by cost_desc  ');
  DM.OpenSQL(SQLs,SGBed);
  {if (RadioGroup1.ItemIndex = 0) and (LBSelect.Items.Strings[LBSelect.ItemIndex] <> '')  then
  begin
    for i := 0 to SGBed.RowCount -1 do
      if ReturnID(SGBed.Cells[0,i]) = ReturnID(LBSelect.Items.Strings[LBSelect.ItemIndex]) then
      begin
        SGBed.Row := i ;
        break;
      end;
  end;
  SGBedClick(SGBed);}

  FreeAndNil(SQLs);
end;

procedure TFrmBedEmpty.SGCostBedDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  SGCostBed.Canvas.Font.Color :=clBlack;

  if (Trim(ReturnName(SGCostBed.Cells[ACol,ARow])) = 'Y') or (Trim(ReturnName(SGCostBed.Cells[ACol,ARow])) = 'X')  then
  begin
    SGCostBed.Canvas.Brush.Color :=clMedGray;
  end
  else
  begin
    SGCostBed.Canvas.Brush.Color :=clwindow;
  end;

  SGCostBed.Canvas.FillRect(rect);

  if ARow = 0 then
    DrawText(SGCostBed.Canvas.handle,PChar(SGCostBed.Cells[ACol, ARow]),Length(SGCostBed.Cells[ACol, ARow]),RECT,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE)
  else
    DrawText(SGCostBed.Canvas.handle,PChar(SGCostBed.Cells[ACol, ARow]),Length(SGCostBed.Cells[ACol, ARow]),RECT,DT_WORDBREAK or DT_CENTER or DT_VCENTER);

end;

procedure TFrmBedEmpty.SGCostBedMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
Var
  Bedgid: TGridCoord;
  p1:TPoint;
  s,n:integer;
begin
  inherited;
  s := 0;
  n :=0;
  if PageControl1.ActivePageIndex = 4 then
  begin
    Bedgid := SGCostBed.MouseCoord(x,y);
    if (Bedgid.Y = -1) or (Bedgid.X = -1 ) then
      Exit;
    if (Bedgid.x = 1) or (Bedgid.x = 2) or (Bedgid.x = 3) or (Bedgid.x = 4) then
    begin
      if ReturnName(TStringGrid(Sender).Cells[Bedgid.x,Bedgid.y]) <> '' then
      begin
        if ReturnName(TStringGrid(Sender).Cells[Bedgid.x,Bedgid.y]) = 'Y'  then
          hint := '使用中'
        else if ReturnName(TStringGrid(Sender).Cells[Bedgid.x,Bedgid.y]) = 'X'  then
          hint := '保留'
        else
          hint := '空床';
      end
      else
        hint := '';

      p1:=SGCostBed.ClientToScreen(point(x,y));
      application.ActivateHint(p1);
    end
    else
      Application.CancelHint;
  end;

end;

procedure TFrmBedEmpty.SGBedDblClick(Sender: TObject);
var
  BedSQL : TStrings;
  i,j : integer;
begin
  inherited;
  LbCost.Caption := SGBed.Cells[SGBed.Rows[0].IndexOf('護理站'),SGBed.Row];

  BedSQL := TStringList.Create;

  BedSQL.Text := 'select Room_no "房號",Bed_1 "床位_1",Bed_2 "床位_2",Bed_3 "床位_3",Bed_4 "床位_4" from ( ';
  BedSQL.Add(' Select trim(ROOM_NO)||SEQ_NO,(case when SEQ_NO=''0'' then ''第;;''||trim(ROOM_NO)||'';;間'' else Null end) as Room_no, ');
  BedSQL.Add(' max(case when SEQ=''1'' then trim(BED_NO)||'';;''||substr(trim(BED_DESC),instr(trim(BED_DESC),''第''),length(trim(BED_DESC)))||'';;''||substr(trim(BED_KIND_DESC),1,instr(trim(BED_KIND_DESC),''('')-1)||'';;''||Decode(''0'',''女性病房'',''1'',''男性病房'',''2'',''不分床'') ');
  BedSQL.Add(' ||'';;_''||USE_FLAG else NULL end )  Bed_1,');
  BedSQL.Add(' max(case when SEQ=''2'' then trim(BED_NO)||'';;''||substr(trim(BED_DESC),instr(trim(BED_DESC),''第''),length(trim(BED_DESC)))||'';;''||substr(trim(BED_KIND_DESC),1,instr(trim(BED_KIND_DESC),''('')-1)||'';;''||Decode(''0'',''女性病房'',''1'',''男性病房'',''2'',''不分床'') ');
  BedSQL.Add(' ||'';;_''||USE_FLAG else NULL end )  Bed_2,');
  BedSQL.Add(' max(case when SEQ=''3'' then trim(BED_NO)||'';;''||substr(trim(BED_DESC),instr(trim(BED_DESC),''第''),length(trim(BED_DESC)))||'';;''||substr(trim(BED_KIND_DESC),1,instr(trim(BED_KIND_DESC),''('')-1)||'';;''||Decode(''0'',''女性病房'',''1'',''男性病房'',''2'',''不分床'') ');
  BedSQL.Add(' ||'';;_''||USE_FLAG else NULL end )  Bed_3,');
  BedSQL.Add(' max(case when SEQ=''0'' then trim(BED_NO)||'';;''||substr(trim(BED_DESC),instr(trim(BED_DESC),''第''),length(trim(BED_DESC)))||'';;''||substr(trim(BED_KIND_DESC),1,instr(trim(BED_KIND_DESC),''('')-1)||'';;''||Decode(''0'',''女性病房'',''1'',''男性病房'',''2'',''不分床'') ');
  BedSQL.Add(' ||'';;_''||USE_FLAG else NULL end )  Bed_4');

  //BedSQL.Add(' max(case when SEQ=''0'' then BED_NO||'';;''||trim(BED_DESC)||'';;''||trim(BED_KIND_DESC)||'';;''||Decode(''0'',''女性'',''1'',''男性'',''2'',''不限'') else NULL end )  床位');

  BedSQL.Add(' From');
  BedSQL.Add(' (');
  BedSQL.Add(' SELECT  Z.*, Ceil(ROW_NUMBER() OVER(PARTITION BY COST_CODE,ROOM_NO ORDER BY COST_CODE,ROOM_NO,BED_NO)/4)-1 SEQ_NO,MOD(ROW_NUMBER() OVER(PARTITION BY COST_CODE,ROOM_NO ORDER BY COST_CODE,ROOM_NO,BED_NO),4) SEQ   FROM ( ');
  BedSQL.Add(' SELECT ''N'' use_flag,a.*, ');
  BedSQL.Add('   (select code_desc from code_dtl where code_type = ''21'' and code_no = bed_kind) as bed_kind_desc FROM BED_BASIC a');
  BedSQL.Add('   where bed_no in (');
  BedSQL.Add('   select a.bed_no from bed_basic a where a.int_code in (''0001'',''0003'') ');
  BedSQL.Add('   and cost_code=' + Qt(ReTurnId(SGBed.Cells[SGBed.Rows[0].IndexOf('護理站'),SGBed.Row])));
  BedSQL.Add('   minus');
  BedSQL.Add('   select bed_no from ipd_basic where ipd_flag=''Y'' and close_flag<>''Y'')');
  BedSQL.Add('   UNION');
  BedSQL.Add(' SELECT ''Y'' use_flag,a.*, ');
  BedSQL.Add('   (select code_desc from code_dtl where code_type = ''21'' and code_no = bed_kind) as bed_kind_desc FROM BED_BASIC a');
  BedSQL.Add('   where cost_code=' + Qt(ReTurnId(SGBed.Cells[SGBed.Rows[0].IndexOf('護理站'),SGBed.Row])));
  BedSQL.Add('   and int_code in (''0001'',''0003'') ');
  BedSQL.Add('   and bed_no not in (');
  BedSQL.Add('   select a.bed_no from bed_basic a where a.int_code in (''0001'',''0003'') ');
  BedSQL.Add('   minus');
  BedSQL.Add('   select bed_no from ipd_basic where ipd_flag=''Y'' and close_flag<>''Y'')) Z');
  //BedSQL.Add('   UNION');
  //BedSQL.Add(' SELECT ''X'' use_flag,a.*,Ceil(ROW_NUMBER() OVER(PARTITION BY COST_CODE,ROOM_NO ORDER BY COST_CODE,ROOM_NO,BED_NO)/4)-1 SEQ_NO,MOD(ROW_NUMBER() OVER(PARTITION BY COST_CODE,ROOM_NO ORDER BY COST_CODE,ROOM_NO,BED_NO),4) SEQ, ');
  //BedSQL.Add('   (select code_desc from code_dtl where code_type = ''21'' and code_no = bed_kind) as bed_kind_desc FROM BED_BASIC a');
  //BedSQL.Add('   where bed_no in (');
  //BedSQL.Add('   select a.bed_no from bed_basic a where a.int_code in (''0002'') ');
  //BedSQL.Add('   and cost_code=' + Qt(ReTurnId(SGBed.Cells[SGBed.Rows[0].IndexOf('護理站'),SGBed.Row])));
  //BedSQL.Add('   minus');
  //BedSQL.Add('   select bed_no from ipd_basic where ipd_flag=''Y'' and close_flag<>''Y'')');
  BedSQL.Add('   )');
  BedSQL.Add(' group by trim(ROOM_NO)||SEQ_NO,(case when SEQ_NO=''0'' then ''第;;''||trim(ROOM_NO)||'';;間'' else Null end)');
  BedSQL.Add(' order by 1 )');

  DM.OpenSQL(BedSQL,SGCostBed);

  for i := 0 to SGCostBed.ColCount -1 do
    for j := 0 to SGCostBed.RowCount -1 do
      SGCostBed.Cells[i,j] := StringReplace(SGCostBed.Cells[i,j],';;',#13,[rfReplaceAll]);
  SGBed.Refresh;
end;

procedure TFrmBedEmpty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmBedEmpty.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmBedEmpty := nil;
end;

end.
