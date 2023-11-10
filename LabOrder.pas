unit LabOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, CheckLst, ExtCtrls, XPMan, ComCtrls, Grids,
  Buttons, DB, ADODB;
type TTempCheck=class(TChecklistbox);
type
  TFrmLabOrder = class(TFrmMain)
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    CBLabGroup: TCheckListBox;
    Panel4: TPanel;
    SGLabOrder: TStringGrid;
    SGPreOrder: TStringGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    CBLabSample: TCheckListBox;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    EdtFeeCode: TEdit;
    EdtFeeName: TEdit;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    mymemo: TMemo;
    CheckBox3: TCheckBox;
    cbgroup: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CBLabGroupMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdtFeeCodeChange(Sender: TObject);
    procedure CBLabGroupClick(Sender: TObject);
    procedure CBLabSampleClick(Sender: TObject);
    procedure EdtFeeNameChange(Sender: TObject);
    procedure SGPreOrderDblClick(Sender: TObject);
    procedure SGLabOrderDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGLabOrderDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure CheckBox3Click(Sender: TObject);
    procedure cbgroupClick(Sender: TObject);
  private
    { Private declarations }
    gGroup : String;
    gSample : String;
    MySQL : TStringList;
    SelectSQL : TStringList;
    SortSQL : TStringList;
    EMGSTR,emgroup : String;
  public
    { Public declarations }
  end;

var
  FrmLabOrder: TFrmLabOrder;

implementation

uses Commfunc, DBDM, Global;

{$R *.dfm}

procedure TFrmLabOrder.FormShow(Sender: TObject);
var
  Temp : String;
begin
  inherited;
  EMGSTR := '';
  emgroup := SetSys.ReadString('SYSTEM','急診使用組別','');
  CBLabGroup.Items.Text := GsLabGroup.Text;
  CBLabSample.Items.Text := gsLabSample.Text;
  MySQL := TStringList.Create;
  SelectSQL := TStringList.Create;
  SortSQL := TStringList.Create;
  SortSQL.Text := ' Order By Send_cd_3,Fee_name,Send_cd_1,Send_cd_2,Fee_code';
  SelectSQL.Text := 'Select Send_cd_1 "組別",Send_cd_2 "檢體",Fee_code "院內代碼",Fee_name "項目名稱",Send_cd_3 "項目代碼",URG_FLAG "急件",join_code from ORDERITEM_BASIC Where ORDER_TYPE='+Qt('L')+'  And USE_STATUS=''1'' ';
  if cbgroup.Checked then                                                                                                                                                                                   //USE_STATUS_O
    Temp := ' And SEND_CD_1 in ('+Qts(emgroup)+')'
  else
    Temp := '';

  mySQL.Text := SelectSQL.Text+Temp + EMGSTR + SortSQL.Text;
  if not DM.OpenSQL(mySQL,SGLabOrder) then
    ShowMessage('沒資料');
  with SGPreOrder do
  begin
    Cells[0,0] := '組別';
    Cells[1,0] := '檢體';
    Cells[2,0] := '院內代碼';
    Cells[3,0] := '項目名稱';
    ColWidths[0] := 0;
    ColWidths[1] := 0;
    ColWidths[2] := 0;
    ColWidths[5] := 0;//join_code
  end;
  SGLabOrder.ColWidths[4]:= 0;
  SGLabOrder.ColWidths[6]:= 0;//join_code
  DM.OpenSQL(mySQL,SGLabOrder);
  DateTimePicker1.DateTime := now;
  DateTimePicker2.DateTime := now;
  cbgroupClick(Self);
end;

procedure TFrmLabOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmLabOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmLabOrder := nil;
end;

procedure TFrmLabOrder.CBLabGroupMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  Temps : TStringList;
begin
  inherited;
  try
  i:=TCheckListBox(Sender).ItemAtPos(point(x,y),True); //取得點選之item
  if i>=0 then
    if x > TTempCheck(TCheckListBox(Sender)).GetCheckWidth then
      TCheckListBox(Sender).Checked[i] := not TCheckListBox(Sender).Checked[i];
  except
  end;

end;

procedure TFrmLabOrder.EdtFeeCodeChange(Sender: TObject);
var
  temps : TStringList;

begin
  inherited;

  mySQL.Text := SelectSQL.Text + SortSQL.Text;
  if Trim(TEdit(Sender).Text) ='' then
  begin
    DM.OpenSQL(mySQL,SGLabOrder)
  end
  else
  begin
    Temps := TStringList.Create;
    Temps.Text := SelectSQL.Text;
    if CheckBox1.Checked and (gGroup <>'') then
      Temps.Add(' And SEND_CD_1 in ('+Qts(gGroup)+')');
    if CheckBox2.Checked and (gSample <>'') then
      Temps.Add(' And SEND_CD_2 in ('+Qts(gSample)+')');
    Temps.Add(' AND FEE_CODE LIKE '+Qt(TEdit(sender).Text+'%')) ;
    Temps.Add(EMGStr);
    if cbgroup.Checked then
      temps.Add(' And SEND_CD_1 in ('+Qts(emgroup)+')');
    Temps.AddStrings(SortSQL);
    DM.OpenSQL(Temps,sgLabOrder);
  end;
end;

procedure TFrmLabOrder.CBLabGroupClick(Sender: TObject);
var
  i : Integer;
  temps : TStringList;
begin
  inherited;
  gGroup := '';
  for i := 0 to CBLabGroup.Items.Count -1 do
  begin
    if CBLabGroup.Checked[i] then
      gGroup := gGroup+ReTurnId(CBLabGroup.Items.Strings[i])+';';
  end;
  gGroup := Copy(gGroup,1,Length(gGroup)-1);
  Temps := TStringList.Create;
  Temps.Text := SelectSQL.Text;
  if gGroup<>'' then
  begin
    Temps.Add(' And SEND_CD_1 in ('+Qts(gGroup)+')');
  end;
  CheckBox1.Checked := gGroup <>'';
  if gSample<>'' then
  begin
    Temps.Add(' And SEND_CD_2 in ('+Qts(gSample)+')');
  end;

  CheckBox2.Checked := gSample <>'';
  Temps.Add(EMGSTR);
  if cbgroup.Checked then
    temps.Add(' And SEND_CD_1 in ('+Qts(emgroup)+')');
  Temps.AddStrings(SortSQL);
  DM.OpenSQL(Temps,sgLabOrder);

end;

procedure TFrmLabOrder.CBLabSampleClick(Sender: TObject);
var
  i : Integer;
  temps : TStringList;
begin
  inherited;
  gSample := '';
  for i := 0 to CBLabSample.Items.Count -1 do
  begin
    if CBLabSample.Checked[i] then
      gSample := gSample+ReTurnId(CBLabSample.Items.Strings[i])+';';
  end;
  gSample := Copy(gSample,1,Length(gSample)-1);
  Temps := TStringList.Create;
  Temps.Text := SelectSQL.Text;
  if gGroup<>'' then
  begin
    Temps.Add(' And SEND_CD_1 in ('+Qts(gGroup)+')');
  end;
  if gSample<>'' then
  begin
    Temps.Add(' And SEND_CD_2 in ('+Qts(gSample)+')');
  end;
  CheckBox1.Checked := gGroup <>'';
  CheckBox2.Checked := gSample <>'';
  Temps.Add(EMGSTR);
  if cbgroup.Checked then
    temps.Add(' And SEND_CD_1 in ('+Qts(emgroup)+')');
  Temps.AddStrings(SortSQL);

  DM.OpenSQL(Temps,sgLabOrder);

end;

procedure TFrmLabOrder.EdtFeeNameChange(Sender: TObject);
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
  i : Integer;
  temps : TStringList;
  myKeyWord : TStringList;
begin
  inherited;
  mySQL.Text :=SelectSQL.Text + SortSQL.Text;
  if Trim(TEdit(Sender).Text) ='' then
  begin
    DM.OpenSQL(mySQL,SGLabOrder)
  end
  else
  begin
    Temps := TStringList.Create;
    MyKeyWord := TstringList.Create;
    Temps.Text := SelectSQL.Text;
    if CheckBox1.Checked and (gGroup <>'') then
      Temps.Add(' And SEND_CD_1 in ('+Qts(gGroup)+')');
    if CheckBox2.Checked and (gSample <>'') then
      Temps.Add(' And SEND_CD_2 in ('+Qts(gSample)+')');
    myKeyWord := StrToList(TEdit(sender).Text);
    for i := 0 to myKeyWord.Count -1 do
      Temps.Add(' AND UPPER(FEE_NAME) LIKE '+Qt('%'+ANSIUPPERCASE(myKeyWord.Strings[i])+'%'));
    Temps.Add(EMGStr);
    if cbgroup.Checked then
      temps.Add(' And SEND_CD_1 in ('+Qts(emgroup)+')');
    Temps.AddStrings(SortSQL);
    DM.OpenSQL(Temps,SGLabOrder);
  end
end;

procedure TFrmLabOrder.SGPreOrderDblClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if TStringGrid(Sender).Row = 0 then
    Exit
  else if TStringGrid(Sender).Row = TStringGrid(Sender).RowCount-1  then
    TStringGrid(Sender).Rows[TStringGrid(Sender).Row].Clear
  else
  begin
    for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
      TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
    TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
  end;
end;

procedure TFrmLabOrder.SGLabOrderDblClick(Sender: TObject);
var
  i : Integer;
  JoinNo,join_code : string;
begin
  inherited;
  i := SGPreOrder.RowCount-1;
  if trim(SGLabOrder.Cells[6,SGLabOrder.Row]) = '' then
  begin
    SGPreOrder.Cells[0,i] := SGLabOrder.Cells[0,SGLabOrder.Row];
    SGPreOrder.Cells[1,i] := SGLabOrder.Cells[1,SGLabOrder.Row];
    SGPreOrder.Cells[2,i] := SGLabOrder.Cells[2,SGLabOrder.Row];
    SGPreOrder.Cells[3,i] := SGLabOrder.Cells[3,SGLabOrder.Row];
    SGPreOrder.Cells[4,i] := SGLabOrder.Cells[4,SGLabOrder.Row]; //Send CD 3
    SGPreOrder.RowCount := SGPreOrder.RowCount+1;
  end
  else
  begin
    join_code := trim(SGLabOrder.Cells[6,SGLabOrder.Row]);
    with DM.SPjoinno do
    begin
      Close;
      Parameters.Clear;
      ProcedureName := 'pk_get_seq_no.p_get_seq_no';
      Parameters.CreateParameter('as_seq_type',ftString,pdInput,4000,Null); // 傳入值
      Parameters.CreateParameter('as_date',ftString,pdInput,4000,Null);
      Parameters.CreateParameter('as_get_no',ftString,pdReturnValue,4000,Null); // 回傳值

      Parameters.parambyname('as_seq_type').Value := 'Z2';
      Parameters.parambyname('as_date').Value := Rocdate(now,'');
      try
        ExecProc;
      except
        ShowMessage('"連帶項目取號程序"發生錯誤!!');
      end;
      JoinNo := NullStrTo(Parameters.parambyname('as_get_no').Value,'');
    end;
    if JoinNo <> '' then
    begin
      With DM.QryTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select a.*,b.FEE_NAME,b.UNIT from join_item a,orderitem_basic b ');
        SQL.Add(' Where a.join_code=' + Qt(Join_code));
        SQL.Add('   And a.order_type=''L''');
        SQL.Add('   And b.order_type=''L''');
        SQL.Add('   And a.fee_code=b.fee_code');
        SQL.Add('   And trim(a.send_cd_1)=trim(b.send_cd_1)');
        SQL.Add('   And trim(a.send_cd_2)=trim(b.send_cd_2)');
        SQL.Add('   And trim(a.send_cd_3)=trim(b.send_cd_3)');
        open;
        while not Eof do
        begin
          SGPreOrder.Cells[0,i] := Trim(FieldByName('send_cd_1').AsString);
          SGPreOrder.Cells[1,i] := Trim(FieldByName('Send_cd_2').AsString);
          SGPreOrder.Cells[2,i] := Trim(fieldByName('Fee_CODE').AsString);
          SGPreOrder.Cells[3,i] := Trim(fieldByName('Fee_NAME').AsString);
          SGPreOrder.Cells[4,i] := Trim(FieldByName('send_cd_3').AsString); //Send CD 3
          SGPreOrder.Cells[5,i] := JoinNo;
          SGPreOrder.RowCount := SGPreOrder.RowCount+1;
          Inc(i);
          Next;
        end;
      end;
    end;
  end;

  EdtFeeCode.Text := '';
  EdtFeeName.Text := '';
end;

procedure TFrmLabOrder.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmLabOrder.BitBtn2Click(Sender: TObject);
var
  i,j : Integer;
  Str : String;
begin
  inherited;
  MyDate := DateTimePicker1.DateTime;
  MyTime := DateTimePicker2.DateTime;
  OutList.Clear;
  for i := 1 to SGPreOrder.RowCount -1 do
  begin
    if SGPreOrder.Cells[0,i] <>'' then
    begin
      str := '';
      for j := 0 to SGPreOrder.ColCount -1 do
        Str := Str+ SGPreOrder.Cells[j,i]+'_';
      Str := Str +mymemo.Lines.Text;
      OutList.Add(Str);
    end;
  end;
  Close;
end;

procedure TFrmLabOrder.EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case key of
    VK_DOWN :
    begin
      if (SGLabOrder.Row >= 1) and (SGLabOrder.Row < SGLabOrder.RowCount -1)  then
        SGLabOrder.Row := SGLabOrder.Row + 1 ;
      Key := 0;
    end;
    VK_UP :
    begin
      if (SGLabOrder.Row > 1) and (SGLabOrder.Row < SGLabOrder.RowCount)  then
        SGLabOrder.Row := SGLabOrder.Row -1 ;
      Key := 0;
    end;
    VK_RETURN :
    begin
      //mySender := TEdit(Sender).Name;
      //DBICD9.Tag := 1;
      SGLabOrderDblClick(SGLabOrder);
      Key := 0;
      //DBICD9.Visible := False;
    end;
  end;
end;

procedure TFrmLabOrder.SGLabOrderDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  i : Integer;
begin
  inherited;
  if (ARow > 0) then
  begin
    SGLabOrder.Canvas.FillRect(Rect);
    try
      if SGLabOrder.Cells[Acol,Arow] <>'' then
      Case ACol of
      0 :
        SGLabOrder.Canvas.TextOut(Rect.Left +1, Rect.Top + 1, ReTurnName(GsLabGroup.Strings[SetCbbItem_(GsLabGroup,Trim(SGLabOrder.Cells[Acol,Arow]))]));
      1 :
        SGLabOrder.Canvas.TextOut(Rect.Left +1, Rect.Top + 1, ReTurnName(gsLabSample.Strings[SetCbbItem_(gsLabSample,Trim(SGLabOrder.Cells[Acol,Arow]))]));
      else
        SGLabOrder.Canvas.TextOut(Rect.Left +1 , Rect.Top + 1,SGLabOrder.Cells[ACol,ARow] )
      end;
    except
      SGLabOrder.Canvas.TextOut(Rect.Left +1 , Rect.Top + 1,SGLabOrder.Cells[ACol,ARow] );
    end;
  end;
end;

procedure TFrmLabOrder.CheckBox3Click(Sender: TObject);
begin
  inherited;
  if CheckBox3.Checked then
    EMGSTR := ' And URG_FLAG =''Y'' '
  else
    EMGSTR := '';
  CBLabGroupClick(nil);
end;

procedure TFrmLabOrder.cbgroupClick(Sender: TObject);
begin
  inherited;
  if TCheckBox(sender).Checked then
    CBLabGroup.Items := EdLabGroup
  else
    CBLabGroup.Items := gsLabGroup;
  CBLabGroupClick(nil);
end;

end.
