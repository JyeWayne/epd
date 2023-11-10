//FEE_NO OK 20160718

unit leave_diagnosis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, DB, DBCtrls, dbcgrids, ExtCtrls, ADODB,
  ComCtrls;

type
  TFrmleave_diagnosis = class(TForm)
    DSIcd: TDataSource;
    pnlIcd: TPanel;
    DBCIcd: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    pnlIcdT: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    qryicd9: TADOQuery;
    Timer1: TTimer;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    SGTMP: TStringGrid;
    Panel3: TPanel;
    MemLeavestr: TMemo;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    PnlICD10: TPanel;
    DBCICD10: TDBCtrlGrid;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    Panel37: TPanel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SGIcd_leave: TStringGrid;
    SGICD10: TStringGrid;
    DSICD10: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SGIcd_leaveSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SGIcd_leaveMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SGIcd_leaveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure SGIcd_leaveKeyPress(Sender: TObject; var Key: Char);
    procedure SGIcd_leaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText1Click(Sender: TObject);
    procedure SGIcd_leaveExit(Sender: TObject);
    procedure SGIcd_leaveEnter(Sender: TObject);
    procedure SGIcd_leaveDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGIcd_leaveDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SGIcd_leaveDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SGIcd_leaveDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSIcdDataChange(Sender: TObject; Field: TField);
    procedure DBText41Click(Sender: TObject);
  private
    { Private declarations }
    oldicda, oldicdr, SourceCol, SourceRow: Integer;
    oldicd9 : string;
    qryicd: TADOQuery;
    procedure SetPanel(Bview: Boolean; Sender: TObject);
    function RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
    function InsertIcd(fee_code: string; sgit: TStringGrid): Boolean;
    procedure StringGridSort(Sender : TObject);
    FUNCTION INSTLVDG(FEENO,KIND,STR, DD, DT: STRING; LNO,SNO: INTEGER): Boolean;
    function InsertIcd10LEAVE(Icd_Code: string): Boolean;
    function InsertIcd10(fee_code: string; sgit: TStringGrid): Boolean;
  public
    { Public declarations }
    leaveok: Boolean;
    leaveicd,leavsoap: TStringList;
  end;

var
  Frmleave_diagnosis: TFrmleave_diagnosis;

implementation

uses DBDM, MySQLc, Commfunc, ERsFunc, Math, Global;

{$R *.dfm}

procedure TFrmleave_diagnosis.BitBtn1Click(Sender: TObject);
var
  icdrow,LTNO,SQNO,I : integer;
  qrystr,DD,DT : string;
begin
  //check icd code
  for i := 1 to SGICD10 .RowCount-1 do
  begin
    if SGICD10.Cells[0, i] <> '' then
       if not checkicd10(trim(SGICD10.Cells[0, i])) then
       begin
         ShowMessage('非有效的ICD10碼 :'+trim(SGICD10.Cells[0, i]));
         exit;
       end;
  end;
  qryicd.Close;
  try
    try
      DD := ROCDate(Now,'');
      DT := ROCTime(Now,'');
      LTNO := 0;
      SQNO := 0;
      DM.ADOLink.BeginTrans;
      qryicd.SQL.Clear;
      qrystr := Lv_dg(0);
      SetParamter(qrystr,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(qrystr,'$ORDERDATE$',Qt(GetEpdDate));
      qryicd.SQL.Text := qrystr;
      qryicd.Open;
      if Not qryicd.IsEmpty then //取消之前的資料
      begin
        qrystr := Lv_dg(1);
        SetParamter(qrystr,'$UPD_DATE$',Qt(DD));
        SetParamter(qrystr,'$UPD_TIME$',Qt(DT));
        SetParamter(qrystr,'$UPD_OPER$',Qt(getUserId));
        SetParamter(qrystr,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(qrystr,'$LOT_NO$',qryicd.FIELDBYNAME('LOT_NO').AsString);
        SetParamter(qrystr,'$EPDDATE$',Qt(GetEpdDate));
        qryicd.Close;
        qryicd.SQL.Text := qrystr;
        qryicd.ExecSQL;
      end;
      //取序號
      qryicd.SQL.Clear;
      qrystr := Lv_dg(3);
      SetParamter(qrystr,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(qrystr,'$EPDDATE$',Qt(GetEpdDate));
      qryicd.SQL.Text := qrystr;
      qryicd.Open;
      IF NOT qryicd.IsEmpty THEN
      BEGIN
        LTNO := qryicd.FIELDBYNAME('LOTNO').AsInteger;
        SQNO := qryicd.FIELDBYNAME('SEQNO').AsInteger;
      END;
      Inc(LTNO);
      for icdrow := 1 to SGIcd_leave.RowCount-1 do
      begin
        if (Trim(SGIcd_leave.Cells[0,icdrow])= '') or (Trim(SGIcd_leave.Cells[1,icdrow])= '') then
        begin
          SGIcd_leave.Rows[icdrow].Clear;
          StringGridSort(SGIcd_leave);
        end;
        if Trim(SGIcd_leave.Cells[0,icdrow])<> '' then
        begin
          If checkicd9(Trim(SGIcd_leave.Cells[0,icdrow])) then
          begin
            //insert LEAVE_DIAG 離院診斷碼
            if (icdchangea <> 'Y') then //ICD9停用註記
            begin
              Inc(SQNO);
              INSTLVDG(GetFeeNo, '0', Trim(SGIcd_leave.Cells[0,icdrow])+ '_'+ Trim(SGIcd_leave.Cells[1,icdrow]), DD, DT, LTNO, SQNO);
            end;
          end
          else
          begin
            SGIcd_leave.Rows[icdrow].Clear;
            StringGridSort(SGIcd_leave);
          end;
        end;
      end;

      //20130418學承 三院資訊整合3/29會議通過新增診斷free text
      if Trim(MemLeavestr.Lines.Text) <> '' then
        for icdrow := 0 to MemLeavestr.Lines.Count-1 do
        begin
          if Trim(MemLeavestr.Lines.Strings[icdrow])<> '' then
          begin
            Inc(SQNO);
            INSTLVDG(GetFeeNo, '2', Trim(MemLeavestr.Lines.Strings[icdrow]), DD, DT, LTNO, SQNO);
          end;
        end;

      //刪除ICD10
      qrystr := sqlstr(31);
      SetParamter(qrystr, '$FEE_NO$', qt(getFeeNo));
      SetParamter(qrystr, '$OPD_DATE$', 'opd_date= '+qt(GetEpdDate)+' AND order_type='+Qt('CPD'));
      qryicd.Close;
      qryicd.SQL.Text := qrystr;
      qryicd.ExecSQL;
      //寫入ICD10
      for i := 1 to SGICD10.RowCount -1 do
      begin
        if SGICD10.Cells[0,i]<> '' then
        begin
          qrystr := sqlstr(2);
          SetParamter(qrystr, '$ORDER_KIND$', qt('EPD'));
          SetParamter(qrystr, '$ORDER_TYPE$', qt('CPD'));
          SetParamter(qrystr, '$FEE_NO$', qt(GetFeeNo));
          SetParamter(qrystr, '$SEQ_NO$', IntToStr(i));
          SetParamter(qrystr, '$ICD_CODE$', qt(trim(SGICD10.Cells[0,i])) );
          SetParamter(qrystr, '$ICD_SYSTEM$', qt('CM'));
          SetParamter(qrystr, '$UPD_OPER$', qt(getUserId));
          SetParamter(qrystr, '$UPD_DATE$', qt(DD));
          SetParamter(qrystr, '$UPD_TIME$', qt(DT));
          SetParamter(qrystr, '$ICD_TRANS_CODE$', qt(trim(SGICD10.Cells[7,i])) );
          SetParamter(qrystr, '$OPD_DATE$', qt(GetEpdDate));
          qryicd.Close;
          qryicd.SQL.Text := qrystr;
          qryicd.ExecSQL;
        end;
      end;
      if icdchangea <> 'N' then
      begin
        if (Trim(SGICD10.Cells[0,1]) ='') and
           (Trim(SGICD10.Cells[1,1]) ='') and
           (Length(Trim(MemLeavestr.Lines.Text)) < 3)then
        begin
          ShowMessage('請輸入主要出院診斷碼');
          DM.ADOLink.RollbackTrans;
          exit;
        end;
      end
      else
      begin
        if (Trim(SGIcd_leave.Cells[0,1]) ='') and
           (Trim(SGIcd_leave.Cells[1,1]) ='') and
           (Length(Trim(MemLeavestr.Lines.Text)) < 3)then
        begin
          ShowMessage('請輸入主要出院診斷碼');
          DM.ADOLink.RollbackTrans;
          exit;
        end;
      end;
      DM.ADOLink.CommitTrans;
    except on E: Exception do
      begin
        DM.ADOLink.RollbackTrans;
        sql_time_log('ExecSQL:',E.Message);
        ShowMessage('出院診斷碼存檔失敗');
      end;
    end;
  finally
    //FreeAndNil(qryicd);
  end;
  Close;
end;

procedure TFrmleave_diagnosis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(leaveicd);
  FreeAndNil(leavsoap);
  FreeAndNil(qryicd);
  Action := caFree;
end;

procedure TFrmleave_diagnosis.FormDestroy(Sender: TObject);
begin
  Frmleave_diagnosis := nil;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ((oldicda <> ACol) or (oldicdr <> ARow)) and (oldicd9 <> 'N') and (oldicd9 <> '') then
  begin
  SGIcd_leave.Cells[oldicda,oldicdr]:=oldicd9;
    oldicd9:= '';
  end;
  if (trim(SGIcd_leave.Cells[0,ARow])<> '') and (trim(SGIcd_leave.Cells[1,ARow])<> '') then
    oldicd9 := SGIcd_leave.Cells[ACol,ARow]
  else
    SetPanel(False,pnlIcd);
  oldicda := ACol;
  oldicdr := ARow;
  Case ACol of
    0,1:
    BEGIN
      if (Trim(TStringGrid(Sender).Cells[0,Arow])<>'') and (Trim(TStringGrid(Sender).Cells[1,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end
      else
      begin
        TStringGrid(Sender).Cells[0,Arow] := '';
        TStringGrid(Sender).Cells[1,Arow] := '';
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    END;
  end;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
    { Allow dragging only if an acceptable cell was clicked
    (cell beyond the fixed column and row) }
  if pnlIcd.Visible then
    if DSIcd.DataSet.IsEmpty then
    begin
      if SGIcd_leave.Cells[1,SourceRow] = '' then
        TStringGrid(Sender).Rows[SourceRow].Clear;
      SetPanel(False,pnlIcd);
    end;
  if (SourceCol = 0) and (SourceRow > 0) then
    if (TStringGrid(Sender).Cells[0,SourceRow]<> '') and (TStringGrid(Sender).Cells[1,SourceRow]<> '')  then
      TStringGrid(Sender).BeginDrag(False, 4);
end;

procedure TFrmleave_diagnosis.SetPanel(Bview: Boolean; Sender: TObject);
begin
  try
    TPanel(sender).Visible := Bview;
  except
  end;
  if Sender is TPanel then
  begin
    if  TPanel(Sender).Name = 'PnlICD10' then
    begin
      PnlICD10.Visible := Bview;
      DBCICD10.Enabled := True;
    end
    ELSE if TPanel(Sender).Name = 'pnlIcd' then
    begin
      if Bview = False then
      BEGIN
        if qryicd9.State in[dsBrowse] then
          qryicd9.Close;
      END
      else
      begin
        //pnlIcd.Left := 8;
        //pnlIcd.Top := 420;
        //pnlIcd.Width := 720;
        pnlIcd.Height := 200;
        pnlIcd.Align := alBottom;
        DBCIcd.Align := alClient;
      end;
    end;
  end;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
function StrToList(str: String): TStringList;
var
  TStr,TSwap : String;
begin
  TStr := StringReplace(Str,' ',';',[rfReplaceAll]);
  Result := TStringList.Create;
  TStr := TStr+';';
  While not (Length(TStr) = 0) do
  begin
    Result.Add(copy(TStr,1,Pos(';',TStr)-1));
    TStr := Copy(TStr,Pos(';',TStr)+1,Length(TStr)-Pos(';',TStr));
  end;
end;
var
  i : integer;
  q_str,STR : string;
  myKeyWord: TStringList;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and ((pnlIcd.Visible) or (PnlICD10.Visible)) then
    exit;
  if key = VK_DELETE then
  begin
    if TStringGrid(Sender).RowCount = 1 then
      TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
    if TStringGrid(Sender).row >= 0 then
    begin
      for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
        TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
      TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
      TStringGrid(Sender).RowCount := 10;
    end;
  end
  else
  begin
    if TStringGrid(Sender).Col = 0 then
    begin
      if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
      begin
        if Sender = SGIcd_leave then
        begin
          q_str := sql_str(2);
          if length(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])) <= 3 then
          begin
            q_str := q_str + ' AND INSTR(icd9_code, '+qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1 order by icd9_code';
          end
          else
          begin
            if pos('.',TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) = 0  then
            begin
              q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(copy(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row],1,3)+'.'+
                                                                  copy(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row],4, +
                                                                  length(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])))))+') = 1 order by icd9_code';

            end
            else
            begin
              q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1 order by icd9_code';
            end;
          end;
          qryicd9.Close;
          qryicd9.SQL.Text := q_str;
          qryicd9.Open;
          if not qryicd9.IsEmpty then
          begin
            SetPanel(True,pnlIcd);
          end;
        end
        ELSE
        BEGIN
          q_str := sqlstr(0);
          q_str := q_str + ' upper(icd_code) like ' +qt(UPPERCASE(TStringGrid(Sender).Cells[TStringGrid(Sender).Col, TStringGrid(Sender).Row]) + '%');
          q_str := q_str + ' and eff_flag=''Y'' and icd_system = ''C'' and rownum <= 50';
          PnlICD10.Height := Panel2.Height;
          PnlICD10.Width  := Panel2.Width;
          PnlICD10.Top    := Panel2.TOP;
          //PnlICD10.Align := alBottom;
          DBCICD10.RowCount := 5;
          DM.qryICD10.SQL.Text := q_str;
          DM.qryICD10.Open;
          IF NOT DM.qryICD10.IsEmpty THEN
          begin
            DSICD10.DataSet := DM.qryICD10;
            SetPanel(True, PnlICD10);
          end
          else
            SetPanel(False, PnlICD10);
            SetPanel(False,pnlIcd);
        END;
      end
      else
      begin
        SetPanel(False, PnlICD10);
      end;
    end
    else if (TStringGrid(Sender).Col = 1) or (TStringGrid(Sender).Col = 2) then // AND (key = VK_LEFT)
    begin
      Timer1.Enabled := True;
      Timer1.OnTimer(Sender);
    end;
  end;
end;

procedure TFrmleave_diagnosis.Timer1Timer(Sender: TObject);
function StrToList(str: String): TStringList;
var
  TStr,TSwap : String;
begin
  TStr := StringReplace(Str,' ',';',[rfReplaceAll]);
  Result := TStringList.Create;
  TStr := TStr+';';
  While not (Length(TStr) = 0) do
  begin
    Result.Add(copy(TStr,1,Pos(';',TStr)-1));
    TStr := Copy(TStr,Pos(';',TStr)+1,Length(TStr)-Pos(';',TStr));
  end;
end;
var
  q_str,STR : string;
  i : integer;
  myKeyWord : TStringList;
begin
  inherited;
    if Sender = SGIcd_leave then
    begin
      if Trim(SGIcd_leave.Cells[SGIcd_leave.Col,SGIcd_leave.Row]) <>'' then
      begin
        STR := AnsiUpperCase(Trim(SGIcd_leave.Cells[SGIcd_leave.Col,SGIcd_leave.Row]));

        q_str := sql_str(2);

        myKeyWord:=StrToList(STR);
        for i := 0 to myKeyWord.Count -1 do
          q_str := q_str +' And INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 ';
        q_str := q_str +'  and rownum <= 50 order by ENG_FULL_DESC';
        qryicd9.SQL.Text := q_str;
        sql_Waiting_log('open',q_str);
        qryicd9.Open;
        sql_Waiting_log('close','');
        if not qryicd9.IsEmpty then
        begin
          SetPanel(True,pnlIcd);
        end;
      end
      else
      begin
        SetPanel(False,pnlIcd);
      end;
    END
    ELSE if Sender = SGIcd10 then
    BEGIN
      if Trim(SGIcd10.Cells[SGIcd10.Col,SGIcd10.Row]) <>'' then
      begin
        STR := AnsiUpperCase(Trim(SGIcd10.Cells[SGIcd10.Col,SGIcd10.Row]));

        q_str := sqlstr(0);

        myKeyWord:=StrToList(STR);
        for i := 0 to myKeyWord.Count -1 do
          if i =0 then
            q_str := q_str +' (INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 '
          else
            q_str := q_str +' And INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 ';
        q_str := q_str + ' or icd_code in(select icd_code from icd10_diag_desc where INSTR(UPPER(icd_DESC), '+Qt(STR)+') > 0))';
        q_str := q_str + ' and eff_flag=''Y'' and icd_system = ''C'' and rownum <= 50';
        PnlICD10.Height := Panel2.Height;
        PnlICD10.Width  := Panel2.Width;
        PnlICD10.Top    := Panel2.TOP;
        DM.qryICD10.SQL.Text := q_str;
        sql_Waiting_log('open',q_str);
        DM.qryICD10.Open;
        sql_Waiting_log('close','');
        IF NOT DM.qryICD10.IsEmpty THEN
        begin
          DSICD10.DataSet := DM.qryICD10;
          SetPanel(True, PnlICD10);
        end
        else
          SetPanel(False, PnlICD10);
      end;
    END;
  Timer1.Enabled := False;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#10,#08]) then
    key := key;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
  begin
    pnlIcd.Visible := false;
    PnlICD10.Visible := False;
  end;
  Timer1.Enabled := False;
  if (pnlIcd.Visible) or (PnlICD10.Visible) then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        if pnlIcd.Visible then
          DBText1Click(self);
        if (PnlICD10.Visible) and (Sender = SGIcd10) then
          DBText41Click(self);
        key :=0;
      end;
      if pnlIcd.Visible then
        Sendmessage(DBCIcd.Handle,WM_KEYDOWN,key,0);
      if (PnlICD10.Visible) and (Sender = SGIcd10) then
        Sendmessage(DBCICD10.Handle, WM_KEYDOWN, key, 0);
      key :=0;
    end;
  end;
end;

procedure TFrmleave_diagnosis.DBText1Click(Sender: TObject);
VAR
  icd10code: string;
begin
  icd10code := '';
  if RepeatInGrid(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,'0', 0, SGIcd_leave) then
  begin
    ShowMessage(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString+ #13#10 +DBCIcd.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
    SGIcd_leave.Rows[SGIcd_leave.Row].Clear;
  end
  else if Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString) <> '' then
  begin
    IF PnlICD10.Visible THEN
      icd10code :=Trim(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString);
    InsertIcd(Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString),SGIcd_leave);

    //ICD10寫入
    IF trim(icd10code)<> '' THEN
      InsertIcd10LEAVE(icd10code);
      SetPanel(False,PnlICD10);
  end
  else
    SGIcd_leave.Rows[SGIcd_leave.Row].Clear;

  SetPanel(False,pnlIcd);
  StringGridSort(SGIcd_leave);
end;


function TFrmleave_diagnosis.RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
var
  i: Integer;
  sf : string;
begin
  Result := false;
  sf := '0';
  if Trim(aCode) <> '' then
  begin
    for i := aGrd.FixedCols to aGrd.RowCount - 1 do
    begin
      if (Trim(aGrd.Cells[aIndex, i]) = Trim(aCode)) and (i <> aGrd.Row) then
      begin
        Result := true;
        Break;
      end;
    end;
  end;
end;

function TFrmleave_diagnosis.InsertIcd10(fee_code: string; sgit: TStringGrid): Boolean;
var
  q_str,fcode : string;
  icdqry : TADOQuery;
begin
  Result := False;
  if fee_code <> '' then
  begin
    icdqry := TADOQuery.Create(Self);
    icdqry.Connection := DM.ADOLink;
    fcode := '';
    try
      with icdqry do
      begin
        q_str := getPreOrderSql(16);
        q_str := q_str + ' WHERE ICD_CODE = '+Qt(fee_code);
        SQL.Text := q_str;
        Open;
        Last;
        First;
        if icdqry.RecordCount > 0 then
        begin
          if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
          begin
            sgit.Cells[0, sgit.Row] := FieldByName('ICD9_CODE').AsString;
            sgit.Cells[1, sgit.Row] := FieldByName('ENG_full_DESC').AsString;
            sgit.Cells[2, sgit.Row] := FieldByName('CHN_full_DESC').AsString;
            sgit.Cells[3, sgit.Row] := FieldByName('slow_flag').AsString;
            sgit.Cells[4, sgit.Row] := FieldByName('urg_flag').AsString;
            if sgit.Row < (sgit.RowCount - 1) then
            begin
              sgit.Row := sgit.Row + 1;
            end;
            if pnlIcd.Visible then
              SetPanel(False,pnlIcd);
            Result := True;
          end
          else
            sgit.Rows[sgit.Row].Clear;
        end;
      end;
    finally
      icdqry.Free;
    end;
  end;
end;

function TFrmleave_diagnosis.InsertIcd(fee_code: string; sgit: TStringGrid): Boolean;
var
  q_str,fcode : string;
  icdqry : TADOQuery;
begin
  Result := False;
  if fee_code <> '' then
  begin
    icdqry := TADOQuery.Create(Self);
    icdqry.Connection := DM.ADOLink;
    fcode := '';
    try
      with icdqry do
      begin
        q_str := getPreOrderSql(11);
        q_str := q_str + ' AND ICD9_CODE = '+Qt(fee_code);
        SQL.Text := q_str;
        Open;
        Last;
        First;
        if icdqry.RecordCount > 0 then
        begin
          if RepeatInGrid(FieldByName('ICD9_CODE').AsString,'0', 0, sgit) then
          begin
            //ShowMessage(FieldByName('ICD9_CODE').AsString+ #13#10 +FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
            sgit.Rows[sgit.Row].Clear;
          end
          else if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
          begin
            sgit.Cells[0, sgit.Row] := FieldByName('ICD9_CODE').AsString;
            sgit.Cells[1, sgit.Row] := FieldByName('ENG_full_DESC').AsString;
            sgit.Cells[2, sgit.Row] := FieldByName('CHN_full_DESC').AsString;
            sgit.Cells[3, sgit.Row] := FieldByName('slow_flag').AsString;
            sgit.Cells[4, sgit.Row] := FieldByName('urg_flag').AsString;
            if sgit.Row < (sgit.RowCount - 1) then
            begin
              sgit.Row := sgit.Row + 1;
            end;
            if pnlIcd.Visible then
              SetPanel(False,pnlIcd);
            Result := True;
          end
          else
            sgit.Rows[sgit.Row].Clear;
        end;
      end;
    finally
      icdqry.Free;
    end;
  end;
end;

procedure TFrmleave_diagnosis.StringGridSort(Sender: TObject);
var
  i ,j,l: Integer;
  haveData : Boolean;
begin
  for i := 1 to TStringGrid(Sender).RowCount -1 do
  begin
    if Trim(TStringGrid(Sender).Cells[0,i]) ='' then
    begin
      for J := I+1 to TStringGrid(Sender).RowCount - 1 do
      begin
        if Trim(TStringGrid(Sender).Cells[0,j]) <>'' then
        begin
          TStringGrid(Sender).Rows[I] := TStringGrid(Sender).Rows[J];
          TStringGrid(Sender).Rows[J].Clear;
          break;
        end;
      end;
    end;
  end;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveExit(Sender: TObject);
begin
  if TControl(ActiveControl) is TDBCtrlGrid then
  else
  BEGIN
    if pnlIcd.Visible then
    begin
      if (Trim(SGIcd_leave.Cells[0,SGIcd_leave.Row])= '') or (Trim(SGIcd_leave.Cells[1,SGIcd_leave.Row]) = '' ) then
      begin
        SGIcd_leave.Rows[SGIcd_leave.Row].Clear;
        StringGridSort(SGIcd_leave);
      end;
      SetPanel(False,pnlIcd);
    end;
    if pnlIcd10.Visible then
    begin
      if (Trim(SGICD10.Cells[0,SGICD10.Row])= '') or (Trim(SGICD10.Cells[1,SGICD10.Row]) = '' ) then
      begin
        SGICD10.Rows[SGICD10.Row].Clear;
        StringGridSort(SGICD10);
      end;
      SetPanel(False,PnlICD10);
    end;
  END;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveEnter(Sender: TObject);
begin
  if pnlIcd.Visible then
    SetPanel(False,pnlIcd);
  IF PnlICD10.Visible THEN
    SetPanel(False,pnlIcd10);
end;

procedure TFrmleave_diagnosis.SGIcd_leaveDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow <> 0 then
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  if TStringGrid(Sender).Cells[3, arow] = 'Y' then
    TStringGrid(Sender).Canvas.Font.Color := clBlue;
  if TStringGrid(Sender).Cells[4, arow] = 'Y' then
    TStringGrid(Sender).Canvas.Font.Color := clGreen;
  if (TStringGrid(Sender).Cells[3, arow] = 'Y') and  (TStringGrid(Sender).Cells[4, arow] = 'Y') then
    TStringGrid(Sender).Canvas.Font.Color := clRed;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

procedure TFrmleave_diagnosis.SGIcd_leaveDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);

var
  oCol, oRow:integer;
begin
  TStringGrid(Sender).MouseToCell(X, Y, oCol, oRow);
  Accept := (TStringGrid(Sender).Name = TStringGrid(Source).Name) and (oCol >= 0) and (oRow >= 1);
end;

procedure TFrmleave_diagnosis.SGIcd_leaveDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  vCol,vRow : integer;
  a,b,c,d,e : string;
begin
  if (Trim(TStringGrid(Sender).Cells[0,SourceRow])<> '') and (Trim(TStringGrid(Sender).Cells[1,SourceRow])<> '') then
  begin
    TStringGrid(Sender).MouseToCell(X, Y, vCol, vRow);
    if vRow > 0 then
    begin
      //c := a
      a :=  TStringGrid(Sender).Cells[0,SourceRow];
      b :=  TStringGrid(Sender).Cells[1,SourceRow];
      c :=  TStringGrid(Sender).Cells[2,SourceRow];
      d :=  TStringGrid(Sender).Cells[3,SourceRow];
      e :=  TStringGrid(Sender).Cells[4,SourceRow];
      //a := b
      TStringGrid(Sender).Cells[0,SourceRow] := TStringGrid(Sender).cells[0,vRow];
      TStringGrid(Sender).Cells[1,SourceRow] := TStringGrid(Sender).cells[1,vRow];
      TStringGrid(Sender).Cells[2,SourceRow] := TStringGrid(Sender).cells[2,vRow];
      TStringGrid(Sender).Cells[3,SourceRow] := TStringGrid(Sender).cells[3,vRow];
      TStringGrid(Sender).Cells[4,SourceRow] := TStringGrid(Sender).cells[4,vRow];
      //b := c
      TStringGrid(Sender).Cells[0,vRow] := a;
      TStringGrid(Sender).Cells[1,vRow] := b;
      TStringGrid(Sender).Cells[2,vRow] := c;
      TStringGrid(Sender).Cells[3,vRow] := d;
      TStringGrid(Sender).Cells[4,vRow] := e;
      oldicd9 := '';
    end;
  end;
end;

procedure TFrmleave_diagnosis.SGIcd_leaveDblClick(Sender: TObject);
VAR
  delicd9: string;
  delrow: INTEGER;
begin
  if TStringGrid(Sender).Row > 0 then
  begin
    delicd9 := TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row];
    TStringGrid(Sender).Rows[TStringGrid(Sender).Row].Clear;
    oldicd9 := '';
    StringGridSort(TStringGrid(Sender));

    //連動刪IDC10
    if Sender = SGIcd_leave then
    begin
      try
        SGIcd10.Row := 1;
        delrow := SGIcd10.Cols[7].IndexOf(delicd9);
        if delrow = -1 then
          exit
        else
          SGIcd10.Row := delrow;
      except on e:  Exception do
        if e is EInvalidGridOperation then
         exit;
      end;
      SGIcd10.Rows[SGIcd10.Row].Clear;
      StringGridSort(SGIcd10);
    end;
  end;
end;

procedure TFrmleave_diagnosis.FormShow(Sender: TObject);
var
  geticd,qrystr: string;
  i : integer;
  SQLs: TStrings;
begin
  leaveok := True;
  SQLs := TstringList.Create;
  IF UpperCase(SetSys.ReadString('SYSTEM','ICD10','FALSE'))= 'TRUE' THEN
    PageControl1.ActivePageIndex :=1
  ELSE
    PageControl1.ActivePageIndex :=0;
  SGIcd_leave.Cells[0,0] := '代碼';
  SGIcd_leave.Cells[1,0] := '英文';
  SGIcd_leave.Cells[2,0] := '中文';
  SGIcd_leave.ColWidths[3] := -1;
  SGIcd_leave.ColWidths[4] := -1;
  SGICD10.Cells[0,0] := '代碼';
  SGICD10.Cells[1,0] := '中文';
  SGICD10.Cells[2,0] := '英文';
  SGICD10.ColWidths[3] := -1;
  SGICD10.ColWidths[4] := -1;
  SGICD10.ColWidths[5] := -1;
  SGICD10.ColWidths[6] := -1;
  SGICD10.ColWidths[7] := -1;
  SGICD10.ColWidths[8] := -1;



  SGTMP.Cells[0,0] := '';
  SGTMP.Cells[1,0] := '本次紀錄的ICD9';
  SGTMP.Cells[2,0] := '';
  SGTMP.ColWidths[3] := -1;
  SGTMP.ColWidths[4] := -1;

  
  geticd:= SetSys.ReadString('SYSTEM','LEAVE_D','');
  //帶出已輸入ICD9的離院診斷
  qryicd := TADOQuery.Create(Self);
  qryicd.Connection := DM.ADOLink;
  qryicd.SQL.Clear;
  qrystr := Lv_dg(0);
  SetParamter(qrystr,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(qrystr,'$ORDERDATE$',Qt(GetEpdDate));
  qryicd.SQL.Text := qrystr;
  qryicd.Open;
  if Not qryicd.IsEmpty then //取之前的資料
  begin
    while not qryicd.Eof do
    begin
      if (trim(qryicd.fieldbyname('kind_no').AsString)= '0') and
         (trim(qryicd.fieldbyname('text_desc').AsString) <> '') then
        InsertIcd(ReturnId(trim(qryicd.fieldbyname('text_desc').AsString)),SGIcd_leave)
      else if trim(qryicd.fieldbyname('kind_no').AsString)= '2' then
        MemLeavestr.Lines.Add(trim(qryicd.fieldbyname('text_desc').AsString));
      qryicd.Next;
    end;
  end
  else
  begin
    if geticd = 'True' then//帶入離院診斷
    begin
      //icd9
      for i := 0 to leaveicd.Count-1 do
        InsertIcd(leaveicd[i],SGIcd_leave);
    end;
  end;

  //帶出已輸入icd10的離院診斷
  SQLs.Clear;
  qrystr := sqlstr(3);
  SetParamter(qrystr, '$FEE_NO$', qt(GetFeeNo));
  SetParamter(qrystr, '$OPD_DATE$', qt(GetEpdDate));
  SetParamter(qrystr, '$ORDER_TYPE$', ' and ORDER_TYPE = '+qt('CPD'));
  SQLs.Text := qrystr;
  qryicd.Close;
  qryicd.SQL.Text := qrystr;
  qryicd.Open;
  IF NOT qryicd.IsEmpty THEN
  BEGIN
    while not qryicd.Eof do
    begin
      InsertIcd10LEAVE(qryicd.fieldbyname('ICD9_CODE').AsString);
      qryicd.Next;
    end;
  END
  ELSE
  BEGIN
    if geticd = 'True' then//帶入離院診斷
      if icdchangea <> 'N' then
      begin
        //icd10
        for i := 0 to leaveicd.Count-1 do
          InsertIcd10LEAVE(leaveicd[i]);
      end
  END;
  SGIcd10.RowCount := 10;

  for i := 0 to leaveicd.Count-1 do
    if icdchangea <> 'N' then
      InsertIcd10(leaveicd[i],SGTMP)
    ELSE
      InsertIcd(leaveicd[i],SGTMP);

    
  SGTMP.Row := 1;
end;

procedure TFrmleave_diagnosis.FormCreate(Sender: TObject);
begin
  leaveicd := TStringList.Create;
  leavsoap := TStringList.Create;
end;

procedure TFrmleave_diagnosis.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetPanel(False,pnlIcd);
end;

procedure TFrmleave_diagnosis.DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if pnlIcd.Visible  then
  begin
    DBText1.Font.Color := clBlack;
    DBText2.Font.Color := clBlack;
    DBText3.Font.Color := clBlack;

    if Trim(qryicd9.FieldByName('urg_flag').AsString) = 'Y' then
    begin
      DBText1.Font.Color := clGreen;
      DBText2.Font.Color := clGreen;
      DBText3.Font.Color := clGreen;
    end;

    if Trim(qryicd9.fieldbyname('slow_flag').AsString) = 'Y' then
    begin
      DBText1.Font.Color := clBlue;
      DBText2.Font.Color := clBlue;
      DBText3.Font.Color := clBlue;
    end;

    if (Trim(qryicd9.FieldByName('urg_flag').AsString) = 'Y') and  (Trim(qryicd9.fieldbyname('slow_flag').AsString) = 'Y') then
    begin
      DBText1.Font.Color := clRed;
      DBText2.Font.Color := clRed;
      DBText3.Font.Color := clRed;
    end;
  end;
end;

function TFrmleave_diagnosis.INSTLVDG(FEENO, KIND, STR, DD, DT: STRING; LNO,
  SNO: INTEGER): Boolean;
var
  qrystr: string;
  I : INTEGER;
begin
  qryicd.Close;
  qrystr := Lv_dg(2);
  SetParamter(qrystr,'$FEE_NO$',Qt(FEENO));
  SetParamter(qrystr,'$LOT_NO$',IntToStr(LNO));
  SetParamter(qrystr,'$SEQ_NO$',IntToStr(SNO));
  SetParamter(qrystr,'$KIND_NO$',Qt(KIND));
  SetParamter(qrystr,'$TEXT_DESC$',Qt(STR));
  SetParamter(qrystr,'$CNCL_FLAG$',Qt('N'));
  SetParamter(qrystr,'$ORDER_DATE$',Qt(DD));
  SetParamter(qrystr,'$ORDER_TIME$',Qt(DT));
  SetParamter(qrystr,'$DOC_CODE$',Qt(GetVsCode));
  SetParamter(qrystr,'$UPD_DATE$',Qt(DD));
  SetParamter(qrystr,'$UPD_TIME$',Qt(DT));
  SetParamter(qrystr,'$UPD_OPER$',Qt(getUserId));
  qryicd.Close;
  qryicd.SQL.Text := qrystr;
  qryicd.ExecSQL;

end;

procedure TFrmleave_diagnosis.BitBtn2Click(Sender: TObject);
begin
  leaveok := False;
  Self.Close;
end;

procedure TFrmleave_diagnosis.DSIcdDataChange(Sender: TObject;
  Field: TField);
VAR
  TMPSQL,STQRY: STRING;
begin
  inherited;
  STQRY := sqlstr(11);
  TMPSQL := sqlstr(1);
  SetParamter(STQRY, '$IDC9_CODE$', qt(trim(DSIcd.DataSet.FIELDBYNAME('ICD9_CODE').AsString)));
  SetParamter(STQRY, '$DEPT_CODE$', qt(trim(GetUserDept)));
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Clear;
  DM.QrySubSearch.SQL.Text := STQRY;
  DM.QrySubSearch.Open;
  if DM.QrySubSearch.FieldByName('ROWCT').AsInteger > 0 then
    SetParamter(TMPSQL, '$DEPT_CODE$', 'and dept_code='+qt(trim(GetUserDept)))
  else
    SetParamter(TMPSQL, '$DEPT_CODE$', '');

  SetParamter(TMPSQL, '$IDC9_CODE$', qt(trim(DSIcd.DataSet.FIELDBYNAME('ICD9_CODE').AsString)));
  DM.qryICD10.Close;
  DM.qryICD10.SQL.Clear;
  DM.qryICD10.SQL.Text := TMPSQL;
  DM.qryICD10.Open;
  if NOT DM.qryICD10.IsEmpty then
  begin
    DSICD10.DataSet := DM.qryICD10;
    PnlICD10.Height := Panel2.Height;
    PnlICD10.Width  := Panel2.Width;
    PnlICD10.Top    := Panel2.TOP;
    SetPanel(True,PnlICD10);
    DBCICD10.Enabled := False;
  end;
end;

function TFrmleave_diagnosis.InsertIcd10LEAVE(Icd_Code: string): Boolean;
var
  i,j: integer;
  q_str: string;
  Qrys: TADOQuery;
  SQLs: TStrings;
begin
  if icd_code <> '' then
  begin
    Result := True;
    for i := 1 to 11 do
    begin
      if (SGIcd10.Cells[0, i] <> Icd_Code) then
      begin
        //if (SGIcd10.Cells[0, i] = '') then
        //begin
          SQLs := TStringList.Create;
          Qrys := TADOQuery.Create(Self);
          try
            Qrys.Connection := DM.ADOLink;
            Qrys.SQL.Clear;
            q_str := sqlstr(34);
            SetParamter(q_str, '$IDC_CODE$', qt(trim(UPPERCASE(Icd_Code))) );
            Qrys.SQL.Text := q_str;
            Qrys.Open;
            if not Qrys.IsEmpty then
            begin
              //指定到空的row
              for j := 1 to 11 do
              begin
                if ((trim(SGIcd10.Cells[0, j]) = '') or (trim(SGIcd10.Cells[1, j]) = '')) then
                begin
                  SGIcd10.Row := j;
                  Break;
                end;
              end;
              SGIcd10.Cells[0, SGIcd10.Row] := Qrys.FieldByName('ICD9_CODE').AsString;
              SGIcd10.Cells[1, SGIcd10.Row] := Qrys.FieldByName('ENG_SIMP_DESC').AsString;
              SGIcd10.Cells[2, SGIcd10.Row] := Qrys.FieldByName('CHN_SIMP_DESC').AsString;
              SGIcd10.Cells[3, SGIcd10.Row] := Qrys.FieldByName('slow_flag').AsString;
              SGIcd10.Cells[4, SGIcd10.Row] := Qrys.FieldByName('first_flag').AsString;
              SGIcd10.Cells[5, SGIcd10.Row] := Qrys.FieldByName('CHN_FULL_DESC').AsString;
              SGIcd10.Cells[6, SGIcd10.Row] := Qrys.FieldByName('ENG_FULL_DESC').AsString;
              SGIcd10.Cells[7, SGIcd10.Row] := Qrys.FieldByName('icd9toicd10').AsString;
              SGIcd10.Cells[8, SGIcd10.Row] := Qrys.FieldByName('choose_flag').AsString;
              if SGIcd10.Row < (SGIcd10.RowCount - 1) then
              begin
                SGIcd10.Row := SGIcd10.Row + 1;
              end;
            end;

          finally
            FreeAndNil(Qrys);
          end;
          break;
        //end;
      end
      else
      begin
        MessageDlg('此' + Icd_Code + '診斷碼已重複開立！', mtWarning, [mbOk], 0);
        result := false;
        break;
      end;
    end;
  end;
end;

procedure TFrmleave_diagnosis.DBText41Click(Sender: TObject);
var
  i,j: integer;
begin
  inherited;
  if Trim(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString) <> '' then
  begin
    j := 0;
    for i := 1 to SGIcd10.RowCount - 1 do
    begin
      if SGIcd10.Cells[0, i] <> '' then
        if DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString = SGIcd10.Cells[0, i] then
        begin
          inc(j);
          if j > 1 then
          begin
            ShowMessage('此' + DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString + '診斷碼已重複開立！');
            SetPanel(False, PnlICD10);
            SGIcd10.Cells[0, SGIcd10.Row] := '';
            SGIcd10.SetFocus;
            Exit;
          end;
        end;
    end;
    SGIcd10.Cells[0, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString;
    SGIcd10.Cells[1, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_SIMP_DESC').AsString;
    SGIcd10.Cells[2, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString;
    SGIcd10.Cells[3, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('slow_flag').AsString;
    SGIcd10.Cells[4, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('first_flag').AsString;
    SGIcd10.Cells[5, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_FULL_DESC').AsString;
    SGIcd10.Cells[6, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_FULL_DESC').AsString;
    SGIcd10.Cells[7, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('icd9toicd10').AsString;
    SGIcd10.Cells[8, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('choose_flag').AsString;
    if SGIcd10.Row < (SGIcd10.RowCount - 1) then
    begin
      SGIcd10.Row := SGIcd10.Row + 1;
    end;
  end
  else
    SGIcd10.Rows[SGIcd10.Row].Clear;
  SetPanel(False, PnlICD10);
end;

end.
