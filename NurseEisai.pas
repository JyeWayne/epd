unit NurseEisai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons, Math, DB, DBGrids, DBCtrls,
  dbcgrids, ADODB, Contnrs, ComCtrls, ToolWin;

type
  TFrmNurseEisai = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    SGEisaOrder: TStringGrid;
    Panel4: TPanel;
    BtnDel: TBitBtn;
    BtnName: TBitBtn;
    Btnqty: TBitBtn;
    BtnFeeName: TBitBtn;
    DSFEEBASIC: TDataSource;
    BtnIns: TBitBtn;
    CBBMtrlYN: TComboBox;
    EdTSGMTRL: TEdit;
    Tmrqry: TTimer;
    Panel7: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Btnordercode: TBitBtn;
    Btnordername: TBitBtn;
    Btnorderins: TBitBtn;
    Btnorderqty: TBitBtn;
    SGTreat: TStringGrid;
    Shape1: TShape;
    Panel9: TPanel;
    BitnClose: TBitBtn;
    BitBtn1: TBitBtn;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton10: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    Shape3: TShape;
    Label2: TLabel;
    CBEisaiList: TComboBox;
    CBEisaiList1: TComboBox;
    ChkBFee: TCheckBox;
    ChkBEisai: TCheckBox;
    EDFeeSearch: TEdit;
    Label1: TLabel;
    DBText2: TDBText;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure EDFeeSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText1Click(Sender: TObject);
    procedure BitnCloseClick(Sender: TObject);
    procedure SGEisaOrderDblClick(Sender: TObject);
    procedure SGEisaOrderDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGEisaOrderSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure EdTSGMTRLExit(Sender: TObject);
    procedure CBBMtrlYNClick(Sender: TObject);
    procedure TmrqryTimer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CBEisaiListChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SGEisaOrderEnter(Sender: TObject);
    procedure EDFeeSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChkBFeeClick(Sender: TObject);
    procedure ChkBEisaiClick(Sender: TObject);
  private
    { Private declarations }
    dbctrseleted: Boolean;
    Function InsertEisaiorder(modify,one,redorder: string; qry: TADOQuery):Boolean;
    Function InsertChild(feecode: string;seq_no: integer):Boolean;
    procedure showdata(opentype: string);
    procedure initTextOrderTile;
    procedure deljoinitem(join_no: string);
    procedure delchilitme(sender: TObject;c_Name: string);
    procedure loadorder;
    procedure AuotEisaiinsert(feecode:string);
  public
    { Public declarations }
    sechtype: string;
    function VIsetCheck(FEE_CODE:STRING): Boolean;//安全靜脈留置針16G
  end;

var
  FrmNurseEisai: TFrmNurseEisai;

  const
    modifyType = 0;
    Seq        = 1;
    Del        = 2;
    F_code     = 3;
    F_Name     = 4;
    F_Part     = 5;
    F_Qty      = 6;
    F_Cir      = 7;
    F_Ins      = 8;
    F_EDate    = 9;
    F_ETime    = 10;
    F_Bdate    = 11;
    F_BTime    = 12;
    F_chil     = 13;
    F_Join     = 14;
    Ordertype  = 15;
    F_Choose   = 16;
    F_feename  = 17;
    F_oldseq   = 18;
    F_UNIT     = 19;
    F_urg      = 20;
    OrderName : Array[0..17] of String=('Btnmodify','Btnseq','BtnDel','Btncode','BtnName','Btnpatr','Btnqty','BtnCir','BtnIns','BtnEDate','BtnETime','BtnBdate','BtnBTime','Btnchil','BtnJoin','BtnOrdertype','BtnChoose','BtnFeeName');
    feename   : Array[0..3] of String=('Btnordercode','Btnordername','Btnorderins','Btnorderqty');
implementation

uses DBDM, MySQLc, Commfunc, Global, ERsFunc;

{$R *.dfm}

{ TFrmEisai }

procedure TFrmNurseEisai.initTextOrderTile;
var
  i : Integer;
  tmppnl: string;
  bitn: TBitBtn;

begin
  for i := 0 to 17 do
    if i > 0 then
    begin //自動延展
      if FrmNurseEisai.FindComponent(OrderName[i]) <> nil then
      begin
        tmppnl := OrderName[i];
        bitn    := TBitBtn(FindComponent(tmppnl));
        bitn.Left  := Ceil(bitn.Left * (Panel4.Width /654));
        bitn.Width := Ceil(bitn.Width * (Panel4.Width /654));
      end;
    end
    else
    begin
      if FrmNurseEisai.FindComponent(OrderName[i]) <> nil then
      begin
        tmppnl := OrderName[i];
        bitn    := TBitBtn(FindComponent(tmppnl));
        bitn.Width := Ceil(bitn.Width * (Panel4.Width /654));
      end;
    end;

  for i := 0 to SGTreat.ColCount -1 do
  begin
    if i <= 3 then
    begin
      if FrmNurseEisai.FindComponent(feename[i]) <> nil then
        SGTreat.ColWidths[i] := TBitBtn(FrmNurseEisai.FindComponent(feename[i])).Width - 2
      else
        SGTreat.ColWidths[i] := -1;
    end
    else
      SGTreat.ColWidths[i] := -1;
  end;

  for i := 0 to SGEisaOrder.ColCount -1 do
  begin
    if i <= 17 then
    begin
      if FrmNurseEisai.FindComponent(OrderName[i]) <> nil then
        SGEisaOrder.ColWidths[i] := TBitBtn(FrmNurseEisai.FindComponent(OrderName[i])).Width - 2
      else
        SGEisaOrder.ColWidths[i] := -1;
      end
    else
      SGEisaOrder.ColWidths[i] := -1;
  end;

end;


procedure TFrmNurseEisai.FormShow(Sender: TObject);
begin
  DBCtrlGrid1.Align := alRight;
  dbctrseleted := False;
  if rdonly then
    BitBtn1.Enabled := False
  else
    BitBtn1.Enabled := True;

  sechtype := 'S';
  initTextOrderTile;
  loadorder;
  showdata('New');
end;


procedure TFrmNurseEisai.showdata(opentype: string);
var
  tsql,FEECODE : string;
  mySQLs : TStrings;
  i : integer;
begin
  //處置項
  if opentype='New' then
  begin
  mySQLs := TStringList.Create;
  tsql := nurse_eisai(7);
  SetParamter(tsql,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(tsql,'$SOFLAG$',' and so_flag =''F'' and a.del_flag=''N'' and a.dc_flag=''N'' and a.fee_code not like ''FSN%''');
  mySQLs.Text := tsql;
  DM.OpenSQL(mySQLs,SGTreat,True);
  if SGTreat.Cells[4,SGTreat.RowCount] = '' then
    SGTreat.RowCount :=  SGTreat.RowCount-1;
  end;
  FEECODE := '';
  FOR i := 0 to SGTreat.RowCount-1 do
  begin
    if trim(SGTreat.Cells[0,i]) <> '' then
      FEECODE := FEECODE + trim(SGTreat.Cells[0,i])+';';
  end;
  FEECODE := FEECODE ;
  //自動帶衛材
  AuotEisaiinsert(FEECODE);
end;

function TFrmNurseEisai.InsertEisaiorder(modify,one,redorder: string; qry: TADOQuery): Boolean;
var
  i: integer;
  MYSTR: STRING;
begin
  MYSTR := Setsys.ReadString('NURSE','SETIV','');

  //指定到空的row
  for i := 1 to SGEisaOrder.RowCount-1 do
  begin
    if ((trim(SGEisaOrder.Cells[3, i]) = '') or (trim(SGEisaOrder.Cells[4, i]) = '')) then
    begin
      SGEisaOrder.Row := i;
      Break;
    end;
  end;


   if one = 'Y' then //單筆
  begin
    SGEisaOrder.Cells[modifyType, SGEisaOrder.Row] := modify;
    SGEisaOrder.Cells[Seq, SGEisaOrder.Row]       := '';
    SGEisaOrder.Cells[Del, SGEisaOrder.Row]       := '';
    SGEisaOrder.Cells[F_code, SGEisaOrder.Row]    := qry.FieldByName('fee_code').asstring;
    SGEisaOrder.Cells[F_Name, SGEisaOrder.Row]    := qry.FieldByName('fee_name').asstring;
    SGEisaOrder.Cells[F_Part, SGEisaOrder.Row]    := qry.FieldByName('position_o').asstring;
    //SGEisaOrder.Cells[F_Qty, SGEisaOrder.Row]     := '1';
    SGEisaOrder.Cells[F_Qty, SGEisaOrder.Row]     := qry.FieldByName('qty_num').asstring;

    SGEisaOrder.Cells[F_Cir, SGEisaOrder.Row]     := '';
    //判斷是否有指定自費別
    IF POS(TRIM(qry.FieldByName('fee_code').asstring),MYSTR) > 0  THEN
    BEGIN
      //IF VIsetCheck(MYSTR) THEN
      //  SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'H'
      //ELSE
        //if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then //可申報
        //   SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
        //else
        if trim(qry.FieldByName('self_pay_flag').asstring) = '' then
        begin
          if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then
            SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
          else
            SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'Y';
        end
        else
          SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := qry.FieldByName('self_pay_flag').asstring;
    END
    ELSE
      //if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then //可申報
      //   SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
      //else
      if trim(qry.FieldByName('self_pay_flag').asstring) = '' then
      begin
        if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then
          SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
        else
          SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'Y';
      end
      else
        SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := qry.FieldByName('self_pay_flag').asstring;

    SGEisaOrder.Cells[F_EDate, SGEisaOrder.Row]   := 'N';
    SGEisaOrder.Cells[F_ETime, SGEisaOrder.Row]   := 'N';
    SGEisaOrder.Cells[F_Bdate, SGEisaOrder.Row]   := 'N';
    SGEisaOrder.Cells[F_BTime, SGEisaOrder.Row]   := 'N';
    SGEisaOrder.Cells[F_chil, SGEisaOrder.Row]    := 'N';
    SGEisaOrder.Cells[F_Join, SGEisaOrder.Row]    := '';
    SGEisaOrder.Cells[Ordertype, SGEisaOrder.Row] := qry.FieldByName('order_type').asstring;// S:衛材; F:處置
    SGEisaOrder.Cells[F_Choose, SGEisaOrder.Row]  := 'N';
    SGEisaOrder.Cells[F_feename, SGEisaOrder.Row] := '';
    SGEisaOrder.Cells[F_oldseq, SGEisaOrder.Row]  := '';
    SGEisaOrder.Cells[F_unit, SGEisaOrder.Row]    := qry.FieldByName('unit_o').asstring;
    SGEisaOrder.Cells[F_urg, SGEisaOrder.Row]     := qry.FieldByName('urg_flag').asstring;
    if SGEisaOrder.Row = (SGEisaOrder.RowCount - 1) then
    begin
      SGEisaOrder.RowCount := SGEisaOrder.RowCount + 1;
      SGEisaOrder.Row := SGEisaOrder.Row+1;
    end;
    
    if (trim(qry.FieldByName('order_type').asstring) = 'F') and (redorder = 'N') then
      AuotEisaiinsert(trim(qry.FieldByName('fee_code').asstring));
  end
  else
  begin
    while not qry.eof do
    begin
      //沒有計價項目
      SGEisaOrder.Cells[modifyType, SGEisaOrder.Row] := qry.FieldByName('modifyType').asstring;
      SGEisaOrder.Cells[Seq, SGEisaOrder.Row]     := qry.FieldByName('seq').asstring;
      SGEisaOrder.Cells[Del, SGEisaOrder.Row]     := qry.FieldByName('del').asstring;
      SGEisaOrder.Cells[F_code, SGEisaOrder.Row]  := qry.FieldByName('fee_code').asstring;
      SGEisaOrder.Cells[F_Name, SGEisaOrder.Row]  := qry.FieldByName('fee_name').asstring;
      SGEisaOrder.Cells[F_Part, SGEisaOrder.Row]  := qry.FieldByName('position_o').asstring;
      SGEisaOrder.Cells[F_Qty, SGEisaOrder.Row]   := qry.FieldByName('qty_num').asstring;
      SGEisaOrder.Cells[F_Cir, SGEisaOrder.Row]   := qry.FieldByName('cir').asstring;
      //判斷是否有指定自費別
      IF POS(TRIM(qry.FieldByName('fee_code').asstring),MYSTR) > 0  THEN
      BEGIN
        //IF VIsetCheck(MYSTR) THEN
        //  SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'H'
        //ELSE
          //if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then //可申報
          //   SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
          //else
          if trim(qry.FieldByName('self_pay_flag').asstring) = '' then
          begin
            if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then
              SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
            else
              SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'Y';
          end
          else
            SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := qry.FieldByName('self_pay_flag').asstring;
      END
      ELSE
        //if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then //可申報
        //   SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
        //else
        if trim(qry.FieldByName('self_pay_flag').asstring) = '' then
        begin
          if UpperCase(trim(qry.FieldByName('ins_flag').asstring)) = 'Y' then
            SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'N'
          else
            SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := 'Y';
        end
        else
          SGEisaOrder.Cells[F_Ins, SGEisaOrder.Row]     := qry.FieldByName('self_pay_flag').asstring;
      SGEisaOrder.Cells[F_EDate, SGEisaOrder.Row] := qry.FieldByName('EDate').asstring;
      SGEisaOrder.Cells[F_ETime, SGEisaOrder.Row] := qry.FieldByName('ETime').asstring;
      SGEisaOrder.Cells[F_Bdate, SGEisaOrder.Row] := qry.FieldByName('Bdate').asstring;
      SGEisaOrder.Cells[F_BTime, SGEisaOrder.Row] := qry.FieldByName('BTime').asstring;
      SGEisaOrder.Cells[F_chil, SGEisaOrder.Row]  := qry.FieldByName('chil').asstring;
      SGEisaOrder.Cells[F_Join, SGEisaOrder.Row]  := qry.FieldByName('Joinno').asstring;
      SGEisaOrder.Cells[Ordertype, SGEisaOrder.Row] := qry.FieldByName('order_type').asstring;// // S:衛材; F:處置
      SGEisaOrder.Cells[F_Choose, SGEisaOrder.Row]  := qry.FieldByName('chse').asstring;
      SGEisaOrder.Cells[F_feename, SGEisaOrder.Row] := qry.FieldByName('feename').asstring;//處置名稱
      SGEisaOrder.Cells[F_oldseq, SGEisaOrder.Row]  := qry.FieldByName('oldseq').asstring;
      SGEisaOrder.Cells[F_unit, SGEisaOrder.Row]    := qry.FieldByName('unit').asstring;
      SGEisaOrder.Cells[F_urg, SGEisaOrder.Row]     := qry.FieldByName('urg_flag').asstring;
      if SGEisaOrder.Row = (SGEisaOrder.RowCount - 1) then
      begin
        SGEisaOrder.RowCount := SGEisaOrder.RowCount + 1;
        SGEisaOrder.Row := SGEisaOrder.Row+1;
      end;

      if (trim(qry.FieldByName('order_type').asstring) = 'F') and (redorder = 'N') then
        AuotEisaiinsert(trim(qry.FieldByName('fee_code').asstring));
      qry.Next;
    end;
  end;
  Result := True;
end;

procedure TFrmNurseEisai.DBText1Click(Sender: TObject);
begin
  if not DM.QryNunsefee.IsEmpty then
  begin
    InsertEisaiorder('N','Y','N',DM.QryNunsefee);
  if not dbctrseleted then
    DBCtrlGrid1.Visible := False;
    EDFeeSearch.Text := '';
  end;
end;

procedure TFrmNurseEisai.BitnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmNurseEisai.deljoinitem(join_no: string);
  procedure SGSort(Sender: TObject;row:integer);
  var
    i ,j,l: Integer;
  begin
    l := 1;
    for i := 0 to TStringGrid(Sender).RowCount -1 do
    begin
      if Trim(TStringGrid(Sender).Cells[row,i]) ='' then
      begin
        for J := I+1 to TStringGrid(Sender).RowCount - 1 do
        begin
          if Trim(TStringGrid(Sender).Cells[row,j]) <>'' then
          begin
            TStringGrid(Sender).Rows[I] := TStringGrid(Sender).Rows[J];
            inc(l);
            TStringGrid(Sender).Rows[J].Clear;
            break;
          end;
        end;
      end
      else
        inc(l);
    end;
    TStringGrid(Sender).RowCount := l;
  end;
var
  irow,i,j : integer;
  hav : string;
  sgtmp: TStringGrid;
begin
  hav := 'N';
  sgtmp := SGEisaOrder;
  irow   := F_Join;

  for i := 0 to sgtmp.RowCount - 1 do
  begin
    if trim(sgtmp.Cells[irow,i]) = trim(join_no) then
      if trim(sgtmp.Cells[modifytype,i])='O' then
      begin
        if trim(sgtmp.Cells[del,i])='X' then
          sgtmp.Cells[del,i] := ''
        else
          sgtmp.Cells[del,i] := 'X';
      end
      else
        sgtmp.Rows[i].Clear;
  end;
  SGSort(sgtmp,F_code);

end;

procedure TFrmNurseEisai.delchilitme(sender: TObject;c_Name: string);
procedure SGSort(Sender: TObject;row:integer);
var
  i ,j,l: Integer;
begin
  l := 1;
  for i := 0 to TStringGrid(Sender).RowCount -1 do
  begin
    if Trim(TStringGrid(Sender).Cells[row,i]) ='' then
    begin
      for J := I+1 to TStringGrid(Sender).RowCount - 1 do
      begin
        if Trim(TStringGrid(Sender).Cells[row,j]) <>'' then
        begin
          TStringGrid(Sender).Rows[I] := TStringGrid(Sender).Rows[J];
          inc(l);
          TStringGrid(Sender).Rows[J].Clear;
          break;
        end;
      end;
    end
    else
      inc(l);
  end;
  TStringGrid(Sender).RowCount := l;
end;
var
  irow,i : integer;
  hav : string;
begin
  hav := 'N';
  with DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from orderitem_basic where order_type in(''M'',''F'') and child_flag_o=''Y'' and fee_code='+Qt(c_Name));
    Open;
    if not IsEmpty then
    begin
      Close;
      SQL.Clear;
      SQL.Add('select tech_code,order_type from fee_child a,orderitem_basic b ');
      SQL.Add(' where a.fee_code=' + Qt(c_Name));
      SQL.Add(' and tech_code=b.fee_code');
      Open;
      While not Eof do
      begin
        if FieldByName('order_type').AsString = 'S' then
        begin// Mrtl
          sender := SGEisaOrder;
          c_Name := FieldByName('tech_code').AsString;
          for i := 0 to TStringGrid(Sender).RowCount - 1 do
          begin
            if trim(TStringGrid(Sender).Cells[F_code,i]) = trim(c_Name) then
              TStringGrid(sender).Rows[i].Clear;
          end;
          SGSort(sender,F_code);
        end;
        if FieldByName('order_type').AsString = 'F' then
        begin //處置
          sender := SGEisaOrder;
          c_Name := FieldByName('tech_code').AsString;
          for i := 0 to TStringGrid(Sender).RowCount - 1 do
          begin
            if trim(TStringGrid(Sender).Cells[F_code,i]) = trim(c_Name) then
              TStringGrid(sender).Rows[i].Clear;
          end;
          SGSort(sender,F_code);
        end;

        Next;
      end;
      Close;
    end;
    close;
  end;
end;

Function TFrmNurseEisai.InsertChild(feecode: string;seq_no: integer):Boolean;
var
  Qry: TADOQuery;
  tmpsql: string;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  with Qry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from orderitem_basic where order_type in(''M'',''F'')  and child_flag_o=''Y'' and fee_code='+Qt(feecode));
    Open;
    if not IsEmpty then
    begin
      Close;
      SQL.Clear;
      tmpsql := '';
      tmpsql := nurse_eisai(9);
      SetParamter(tmpsql,'$FEECODE$',Qt(feecode));
      qry.SQL.Text := tmpsql;
      Open;
      if not IsEmpty then
        InsertEisaiorder('N','N','Y', Qry);
      Close;
    end;
    close;
  end;
  Qry.Free;
end;

procedure TFrmNurseEisai.SGEisaOrderDblClick(Sender: TObject);
var
  i, J, irow: Integer;
  myDel: TStringGrid;
  conf, medcode: string;
begin
  conf := 'N';
  if trim(TStringGrid(Sender).Cells[F_Name,TStringGrid(Sender).Row]) = '' then
    exit;
  Case TStringGrid(Sender).Col of
    Del,F_code,F_Name :
    begin
      //刪除連帶
      irow   := F_Join;
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row],'N')='N'  then
      begin
        if TStringGrid(Sender).RowCount = 1 then
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
        if TStringGrid(Sender).row >= 0 then
        begin
          if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
             (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
            deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
          delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//刪除連帶子項
          for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
            TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
          if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).RowCount-1] <>'' then
            TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1;
        end;
      end
      else
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options -[goEditing];
        if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row] = 'O' then
        begin
          if TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] = 'X' then
          begin
            if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
               (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
              deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
            TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := '';
            InsertChild(TStringGrid(Sender).Cells[3,TStringGrid(Sender).Row],TStringGrid(Sender).Row);//加回子項
          end
          else
          begin
            if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
               (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
              deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
            TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := 'X';
            delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//刪除連帶項
          end;
        end;
      end;
      TStringGrid(Sender).Refresh;
    end;
  end;
end;

procedure TFrmNurseEisai.SGEisaOrderDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  ins, mycode: integer;
begin
  inherited;
  mycode := F_code;
  ins := F_Ins;
  if TStringGrid(Sender).Cells[modifyType,ARow]='O' then
    TStringGrid(Sender).Canvas.Brush.Color :=$00E0E0BA
  else
  begin
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  end;
  TStringGrid(Sender).Canvas.Font.Color :=  ClBLACK;


  if TStringGrid(Sender).Cells[Del,ARow] = 'X' then
    TStringGrid(Sender).Canvas.Font.Color :=  Clred;

  TStringGrid(Sender).Canvas.FillRect(Rect);

  if ACol = del then
  begin
    if (TStringGrid(Sender).Cells[del,aRow] ='X') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, 'X')
    else if (TStringGrid(Sender).Cells[mycode,aRow] <>'') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, inttostr(Arow+1));
  end
  else if ACol <> F_Ins then
  begin
    TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
  end
  else
  begin
    if TStringGrid(Sender).Cells[mycode,ARow] ='' then
       TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'Y') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '自')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'N') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '健')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'H') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '自(含)')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'G') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '健(含)');
  end;

end;

procedure TFrmNurseEisai.SGEisaOrderSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  case ACol of
    F_Ins:
    begin
      if SGEisaOrder.Cells[F_code,Arow] ='' then
        Exit;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CBBMtrlYN.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      CBBMtrlYN.Show;
      CBBMtrlYN.BringTofront;
      CBBMtrlYN.Text := TStringGrid(Sender).cells[Acol,Arow];
      CBBMtrlYN.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    end;
    F_Qty:
    BEGIN
      if (Trim(TStringGrid(Sender).Cells[F_code,Arow]) = '' ) or (Trim(TStringGrid(Sender).Cells[F_Name,Arow])='') then
        Exit;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdTSGMTRL.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      EdTSGMTRL.Show;
      EdTSGMTRL.BringTofront;
      EdTSGMTRL.Text := TStringGrid(Sender).cells[Acol,Arow];
      EdTSGMTRL.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    END;
  end;
end;

procedure TFrmNurseEisai.EdTSGMTRLExit(Sender: TObject);
VAR
  MSG : TStringGrid;
  INJECTIONSTR: STRING;
begin
  inherited;
  MSG := TStringGrid(FrmNurseEisai.FindComponent(TEdit(Sender).Hint));
  try
    MSG.Cells[TStringGrid(FrmNurseEisai.FindComponent(TEdit(Sender).Hint)).Col,TStringGrid(FrmNurseEisai.FindComponent(TEdit(Sender).Hint)).Row] := ReturnID(TEdit(Sender).Text);
    TEdit(Sender).Hide;
    TStringGrid(FrmNurseEisai.FindComponent(TEdit(Sender).Hint)).Refresh;
    TStringGrid(FrmNurseEisai.FindComponent(TEdit(Sender).Hint)).SetFocus;
    TEdit(Sender).Text := '';
  except
  end;
end;

procedure TFrmNurseEisai.CBBMtrlYNClick(Sender: TObject);
begin
  try
    TStringGrid(FrmNurseEisai.FindComponent(TComBoBox(Sender).Hint)).Cells[TStringGrid(FrmNurseEisai.FindComponent(TComBoBox(Sender).Hint)).Col,TStringGrid(FrmNurseEisai.FindComponent(TComBoBox(Sender).Hint)).Row] := ReturnID(TComBoBox(Sender).Text);
    TComBoBox(Sender).Hide;
    TStringGrid(FrmNurseEisai.FindComponent(TComBoBox(Sender).Hint)).Refresh;
    TStringGrid(FrmNurseEisai.FindComponent(TComBoBox(Sender).Hint)).SetFocus;
    TComBoBox(Sender).Text := '';
  except
  end;
end;

procedure TFrmNurseEisai.EDFeeSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if trim(EDFeeSearch.Text) <> '' then
  begin
    if key  in [vk_up,vk_down] then
    begin

    end
    else
    begin
      Tmrqry.Enabled := True;
      dbctrseleted := False;
    end;
  end
  else
  begin
    DBCtrlGrid1.Visible := False;
    dbctrseleted := False;
  end;
end;

procedure TFrmNurseEisai.TmrqryTimer(Sender: TObject);
var
  qrystr: string;
begin
  qrystr := '';
  DM.QryNunsefee.Close;
  DM.QryNunsefee.SQL.Clear;
  qrystr := nurse_eisai(0);
  if (ChkBFee.Checked) and (ChkBEisai.Checked) then
    SetParamter(qrystr,'$ORDERTYPE$','order_type in(''S'',''F'')')
  else if (ChkBFee.Checked) then
    SetParamter(qrystr,'$ORDERTYPE$','order_type =''F''')
  else
    SetParamter(qrystr,'$ORDERTYPE$','order_type =''S''');
  SetParamter(qrystr,'$CONDITION$','and (INSTR(UPPER(FEE_NAME),'+Qt(AnsiUpperCase(EDFeeSearch.Text))+') > 0 or '+
                                   ' INSTR(UPPER(FEE_code),'+Qt(AnsiUpperCase(EDFeeSearch.Text))+') > 0) Order by fee_code');
  DM.QryNunsefee.SQL.Text := qrystr;
  DM.QryNunsefee.Open;
  if not DM.QryNunsefee.IsEmpty then
    DBCtrlGrid1.Visible := True
  else
    DBCtrlGrid1.Visible := False;
  Tmrqry.Enabled := False;
end;

procedure TFrmNurseEisai.BitBtn1Click(Sender: TObject);
var
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter : STRING;
  sql,nusseq,seqno,DD,DT: string;
  i,sq,qno: integer;
  SQLs : TStrings;
  SQLo: TObjectList;
  havdata: Boolean;
begin
  //判斷是否可計價
  sq := 0;
  qno:= 0;
  DD := ROCDate(now,'');
  DT := ROCTime(Now,'');
  havdata := False;
  //取號
  for i := 0 to SGEisaOrder.RowCount-1 do
  begin
    //寫入opd_fee、opd_his modifyType= 0; Seq= 1;Del= 2;F_code= 3;
    if ((trim(SGEisaOrder.Cells[F_code,i]) <> '') and (trim(SGEisaOrder.Cells[modifyType,i]) = 'N')) or
       ((trim(SGEisaOrder.Cells[F_code,i]) <> '') and (trim(SGEisaOrder.Cells[modifyType,i]) = 'O') and (trim(SGEisaOrder.Cells[Del,i]) = 'X')) then
    begin
      havdata := True;
    end;
  end;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  sql := nurse_eisai(11);
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;

  if not TryStrToInt(NullStrTo(Trim(DM.QryTemp.FieldByName('nur_seq').AsString),'0'),sq) then
  begin
    nusseq := '1';
  end
  else
  begin
    if havdata then
      nusseq := IntToStr(sq+1)
    else
      nusseq := IntToStr(sq);
  end;
  if TryStrToInt(NullStrTo(Trim(DM.QryTemp.FieldByName('seq_no').AsString),'0'),qno) then


  if Assigned(SQLo) then
    SQLo.Clear
  else
    SQLo := TObjectList.Create;

  for i := 0 to SGEisaOrder.RowCount-1 do
  begin
    //寫入opd_fee、opd_his modifyType= 0; Seq= 1;Del= 2;F_code= 3;
    if ((trim(SGEisaOrder.Cells[F_code,i]) <> '') and (trim(SGEisaOrder.Cells[modifyType,i]) = 'N')) or
       ((trim(SGEisaOrder.Cells[F_code,i]) <> '') and (trim(SGEisaOrder.Cells[modifyType,i]) = 'O') and (trim(SGEisaOrder.Cells[Del,i]) = 'X')) then
    begin
      //NUREISAI寫入
      inc(qno);
      seqno := IntToStr(qno);
      sql := nurse_eisai(10);
      SetParamter(sql,'$nur_seq$',nusseq);
      SetParamter(sql,'$seq_no$',seqno);
      SetParamter(sql,'$fee_no$',Qt(GetFeeNo));
      SetParamter(sql,'$fee_code$',Qt(trim(SGEisaOrder.Cells[F_code,i])));
      if trim(SGEisaOrder.Cells[Del,i]) = 'X' then
        SetParamter(sql,'$ord_type$',Qt('D'))
      else
        SetParamter(sql,'$ord_type$',Qt('N'));

      SetParamter(sql,'$old_seq$',Qt(trim(SGEisaOrder.Cells[F_oldseq,i])));
      SetParamter(sql,'$qty_num$',Qt(trim(SGEisaOrder.Cells[F_qty,i])));
      SetParamter(sql,'$URG_FLAG$',Qt(trim(SGEisaOrder.Cells[F_urg,i])));
      SetParamter(sql,'$UNIT_DESC$',Qt(trim(SGEisaOrder.Cells[F_unit,i])));
      SetParamter(sql,'$SELF_PAY_FLAG$',Qt(trim(SGEisaOrder.Cells[F_ins,i])));
      SetParamter(sql,'$trans_status$',Qt('N'));
      SetParamter(sql,'$upd_oper$',Qt(getUserId));
      SetParamter(sql,'$upd_date$',Qt(DD));
      SetParamter(sql,'$upd_time$',Qt(DT));
      SetParamter(sql,'$del_flag$',Qt('N'));
      SQLs := TStringList.Create;
      SQLs.Add(sql);
      SQLo.Add(SQLs);
    end;//fee_code <> ''
  end;//for i := 0 to SGEisaOrder.RowCount-1 do

  if havdata then
    if not DM.ExecSQL(SQLo) then
    begin
      ShowMessage('寫入資料庫失敗');
      SQLo.Free;
      exit;
    end;

  //資料轉檔
  Paramter := TStringList.Create;
  PType    := TStringList.Create;
  RType    := TStringList.Create;
  PData    := TStringList.Create;
  SpName   := getSpSql(5,Paramter,PType,RType);
  PData.Add(getFeeNo);   //AS_Fee_No,
  PData.Add(nusseq);     //Av_Nur_Seq,
  ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
  Paramter.Free;
  RType.Free;
  PType.Free;
  PData.Free;
  if ReturnID(ExeSPResult) = 'N' then //As_Rtn_Code OUT CHAR,
  BEGIN
    MessageDlg('寫入計價失敗('+SpName+')問題:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
    exit;
  END;

  //update nus_conf 已取過處置項目
  if Assigned(SQLo) then
    SQLo.Clear
  else
    SQLo := TObjectList.Create;

  IF SGTreat.Cells[0,0] <> '' THEN
  begin
    for i:= 0 to SGTreat.RowCount-1 do
    begin
      if SGTreat.Cells[6,i] <> '' then
      begin
        sql := nurse_eisai(5);
        SetParamter(sql,'$SHEET_NO$',qt(SGTreat.Cells[6,i]));
        SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
        SQLs := TStringList.Create;
        SQLs.Add(sql);
        SQLo.Add(SQLs);
      end;
    end;

    if not DM.ExecSQL(SQLo) then
    begin
      ShowMessage('寫入資料庫失敗');
      SQLo.Free;
      Exit;
    end;
  end;
  //資料重整
  selfClearSG(SGEisaOrder);
  selfClearSG(SGTreat);
  loadorder;
end;

procedure TFrmNurseEisai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrmNurseEisai.FormDestroy(Sender: TObject);
begin
  FrmNurseEisai := nil;
end;

procedure TFrmNurseEisai.loadorder;
var
  sql: string;
begin
  //讀取已計價資料
  CBEisaiList.Items.Clear;
  CBEisaiList1.Items.Clear;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  sql := nurse_eisai(4);
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    CBEisaiList.Items.Add(DM.QryTemp.fieldbyname('item').AsString);
    CBEisaiList1.Items.Add(DM.QryTemp.fieldbyname('nur_seq').AsString);
    DM.QryTemp.Next;
  end;
  if CBEisaiList.Items.Count > 0 then
  begin
    CBEisaiList.Items.Insert(0,'全部');
    CBEisaiList1.Items.Insert(0,'ALL');
  end;
end;

procedure TFrmNurseEisai.CBEisaiListChange(Sender: TObject);
var
  sql: string;
begin
  selfClearSG(SGTreat);
  selfClearSG(SGEisaOrder);
  CBEisaiList1.ItemIndex := CBEisaiList.ItemIndex;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  sql := nurse_eisai(3);
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  if trim(CBEisaiList1.Text) <> 'ALL' then
    SetParamter(sql,'$NUR_SEQ$','and b.nur_seq='+trim(CBEisaiList1.Text))
  else
    SetParamter(sql,'$NUR_SEQ$','');
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
    InsertEisaiorder('O','N','Y',DM.QryTemp);
end;

procedure TFrmNurseEisai.ToolButton1Click(Sender: TObject);
var
  qrystr: string;
begin 
  qrystr := '';
  DM.QryNunsefee.Close;
  DM.QryNunsefee.SQL.Clear;
  qrystr := nurse_eisai(1);
  SetParamter(qrystr,'$CONDITION$',' AND C.FEE_CODE= '+Qt(TToolButton(sender).Hint)+' Order by A.fee_CODE');
  DM.QryNunsefee.SQL.Text := qrystr;
  DM.QryNunsefee.Open;
  if DM.QryNunsefee.IsEmpty then
  begin
    DBCtrlGrid1.Visible := False;
    dbctrseleted := False;
  end
  else
  begin
    dbctrseleted := True;
    DBCtrlGrid1.Top  := Panel4.Top;
    DBCtrlGrid1.Left := 180;
    DBCtrlGrid1.Visible := True;
  end;
end;

procedure TFrmNurseEisai.SGEisaOrderEnter(Sender: TObject);
begin
  DBCtrlGrid1.Visible := False;
  dbctrseleted := False;
end;

procedure TFrmNurseEisai.EDFeeSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
  begin
    DBCtrlGrid1.Visible := false;
    dbctrseleted := False;
  end;

  if DBCtrlGrid1.Visible then
  begin
    if Key = vk_return then
    begin
      DBText1Click(DBText1);
      key :=0;
    end;
    if key in [vk_up,vk_down] then
    begin
      Sendmessage(DBCtrlGrid1.Handle,WM_KEYDOWN,key,0);
      key :=0;
      Tmrqry.Enabled := False;
    end;
  end;
end;

procedure TFrmNurseEisai.ChkBFeeClick(Sender: TObject);
begin
  if ChkBFee.Checked then
    ChkBEisai.Checked :=  False;
end;

procedure TFrmNurseEisai.ChkBEisaiClick(Sender: TObject);
begin
  if ChkBEisai.Checked then
    ChkBFee.Checked := False;
end;

procedure TFrmNurseEisai.AuotEisaiinsert(feecode: string);
var
  tsql : string;
begin
  //自動帶衛材
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Clear;
  tsql := nurse_eisai(8);
  SetParamter(tsql,'$DEPTCODE$',Qt('86NU'));
  SetParamter(tsql,'$FEECODE$',' a.fee_code in('+Qts(feecode)+')');
  DM.QrySubSearch.SQL.Text := tsql;
  DM.QrySubSearch.Open;
  if not DM.QrySubSearch.IsEmpty then
    InsertEisaiorder('N','N','Y',DM.QrySubSearch);
  DM.QrySubSearch.Close;
end;

function TFrmNurseEisai.VIsetCheck(FEE_CODE:STRING): Boolean;
VAR
  TSQL: STRING;
  ROWID, I : INTEGER;
begin
  ROWID := SGEisaOrder.Row;
  Result := False;
  IF ROWID > 0 THEN
    FOR I := 0 TO SGEisaOrder.RowCount-1 DO
    BEGIN
      if Trim(SGEisaOrder.Cells[F_code,I]) <> '' then
        IF POS(Trim(SGEisaOrder.Cells[F_code,I]),FEE_CODE) > 0 then
        begin
          Result := true;
          Break;
        end;
    END;
  if not Result then
  begin
    DM.QrySubSearch.Close;
    DM.QrySubSearch.SQL.Clear;
    tsql := nurse_eisai(2);
    SetParamter(tsql,'$FEE_CODE$',Qts(FEE_CODE));
    SetParamter(tsql,'$FEE_NO$',Qt(GetFeeNo));
    DM.QrySubSearch.SQL.Text := tsql;
    DM.QrySubSearch.Open;
    IF NOT DM.QrySubSearch.IsEmpty THEN
      Result := True;
  end;
end;

end.
