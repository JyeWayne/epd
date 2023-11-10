unit XRayOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Grids, ExtCtrls, XPMan, ComCtrls, CheckLst,
  Buttons;
type TTempCheck=class(TChecklistbox);
type
  TFrmXRayOrder = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    SgPreOrder: TStringGrid;
    Panel4: TPanel;
    Label1: TLabel;
    EdtFeeCode: TEdit;
    Label2: TLabel;
    EdtFeeName: TEdit;
    CheckBox1: TCheckBox;
    SGOrder: TStringGrid;
    GroupBox3: TGroupBox;
    CBXPath: TCheckListBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    mymemo: TMemo;
    Splitter1: TSplitter;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure EdtFeeCodeChange(Sender: TObject);
    procedure EdtFeeNameChange(Sender: TObject);
    procedure SGOrderDblClick(Sender: TObject);
    procedure SgPreOrderDblClick(Sender: TObject);
    procedure CBXPathMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtFeeNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBXPathClickCheck(Sender: TObject);
    procedure CBXPathClick(Sender: TObject);
  private
    { Private declarations }
    MySQL : TStringList;
    SelectSQL : TStringList;
    SortSQL : TStringList;
  public
    { Public declarations }
  end;

var
  FrmXRayOrder: TFrmXRayOrder;

implementation

uses Commfunc, DBDM, Global;

{$R *.dfm}

procedure TFrmXRayOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
end;

procedure TFrmXRayOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmXRayOrder := nil;
end;

procedure TFrmXRayOrder.FormShow(Sender: TObject);
begin
  inherited;
  RadioGroup1.Items.Clear;
  with DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R1''');
    open;
    while not Eof do
    begin
      RadioGroup1.Items.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('code_onename').AsString));
      Next;
    end;
    Close;
  end;
  MySQL := TStringList.Create;
  SelectSQL := TStringList.Create;
  SortSQL := TStringList.Create;
  SortSQL.Text := ' Order By ORDER_TYPE,FEE_CODE,SEND_CD_1,Fee_name';
  SelectSQL.Text := 'Select ORDER_TYPE,(select code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R1'' And RTrim(Code_one)=RTrim(Order_type)) "類型",'
  +'FEE_CODE "院內代碼",FEE_NAME "項目名稱",SEND_CD_1,(select code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' And Code_Two=Order_type and Code_one=Send_cd_1) "部位", SEND_CD_2 "流水號",position_o '
  +'from ORDERITEM_BASIC Where ORDER_TYPE IN (SELECT RTrim(CODE_ONE) FROM COMPARE_CODE_BASIC WHERE IPD_RELATED=''R1'')'+' And USE_STATUS=''1''';
  with SGPreOrder do                        // --> position 20120811                                                         //USE_STATUS_O
  begin
    Cells[0,0] := 'Order_type';
    Cells[1,0] := '類型';
    Cells[2,0] := '院內代碼';
    Cells[3,0] := '項目名稱';
    Cells[4,0] := '部位';
    Cells[5,0] := 'Sender';
    Cells[6,0] := '流水號';
    Cells[7,0] := 'position';
    ColWidths[0] := 0;
    ColWidths[1] := 0;
    ColWidths[2] := 0;
    //ColWidths[3] := 0;
    ColWidths[4] := 0;
    ColWidths[5] := 0;
    ColWidths[6] := 0;
    ColWidths[7] := 0;
    RowCount := 2;
  end;
  With SGOrder do
  begin
    ColWidths[0] := 0;
    //ColWidths[1] := 0;
    //ColWidths[2] := 0;
    ColWidths[4] := 0;
    //ColWidths[5] := 0;
    ColWidths[6] := 0;
    ColWidths[7] := 0;
  end;
  DateTimePicker1.DateTime := now;
  DateTimePicker2.DateTime := now;
  if RadioGroup1.Items.Count > 0 then
    RadioGroup1.ItemIndex := 0;
end;

procedure TFrmXRayOrder.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  with DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' and Code_Two='+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex])));
    Open;
    CBXPath.Items.Clear;
    While not Eof do
    begin
      CBXPath.Items.Add(Trim(FieldByName('CODE_ONE').AsString)+'_'+Trim(FieldByName('CODE_ONENAME').AsString));
      Next;
    end;
  end;
  mySQL.Text := SelectSQL.Text;
  mySQL.Add(' and Order_type='+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))) ;
  mySQL.AddStrings(SortSQL);
  mysql.text;
  dm.OpenSQL(MYSQL,SGOrder);
end;

procedure TFrmXRayOrder.EdtFeeCodeChange(Sender: TObject);
var
  Temps : TStringList;
begin
  inherited;
  Temps := TStringList.Create;
  if Trim(TEdit(Sender).Text) <>'' then
  begin
    Temps := TStringList.Create;
    Temps.Text := SelectSQL.Text;
    if CheckBox1.Checked  then
      Temps.Add(' And Order_type ='+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex])));
    Temps.Add(' AND FEE_CODE LIKE '+Qt(TEdit(sender).Text+'%')) ;
    Temps.AddStrings(SortSQL);
    DM.OpenSQL(Temps,sgOrder);
  end;
end;

procedure TFrmXRayOrder.EdtFeeNameChange(Sender: TObject);
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
  if Trim(TEdit(Sender).Text) <> '' then
  begin
    Temps := TStringList.Create;
    MyKeyWord := TstringList.Create;
    Temps.Text := SelectSQL.Text;
    if CheckBox1.Checked then
      Temps.Add(' And ORDER_TYPE = '+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex])));
    if CheckBox2.Checked  and (CBXPath.ItemIndex >= 0) then
      Temps.Add(' And Send_CD_1 = '+Qt(ReturnId(CBXPath.Items.Strings[CBXPath.ItemIndex])));
    myKeyWord := StrToList(TEdit(sender).Text);
    for i := 0 to myKeyWord.Count -1 do
      Temps.Add(' AND UPPER(FEE_NAME) LIKE '+Qt('%'+ANSIUPPERCASE(myKeyWord.Strings[i])+'%'));
    Temps.AddStrings(SortSQL);
    DM.OpenSQL(Temps,SGOrder);
  end;
end;

procedure TFrmXRayOrder.SGOrderDblClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;//Order_type,類型,院內代碼,項目名稱,部位,Sender,流水號';
  i := SGPreOrder.RowCount-1;
  SGPreOrder.Cells[0,i] := SGOrder.Cells[0,SGOrder.Row];//ORDER_TYPE
  SGPreOrder.Cells[1,i] := SGOrder.Cells[1,SGOrder.Row];//code_onename
  SGPreOrder.Cells[2,i] := SGOrder.Cells[2,SGOrder.Row];//院內代碼
  SGPreOrder.Cells[3,i] := SGOrder.Cells[3,SGOrder.Row];//項目名稱
  SGPreOrder.Cells[4,i] := SGOrder.Cells[4,SGOrder.Row];//部位
  SGPreOrder.Cells[5,i] := SGOrder.Cells[5,SGOrder.Row];//Sender
  SGPreOrder.Cells[6,i] := SGOrder.Cells[6,SGOrder.Row];//流水號
  SGPreOrder.Cells[7,i] := SGOrder.Cells[7,SGOrder.Row];//position
  SGPreOrder.RowCount := SGPreOrder.RowCount+1;
  EdtFeeCode.Text := '';
  EdtFeeName.Text := '';
end;

procedure TFrmXRayOrder.SgPreOrderDblClick(Sender: TObject);
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

procedure TFrmXRayOrder.CBXPathMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i ,j : Integer;
begin
  inherited;
  try
    i:=TCheckListBox(Sender).ItemAtPos(point(x,y),True); //取得點選之item
    //for j := 0 to TCheckListBox(Sender).Items.Count -1 do
    //  if i <> j then
    //   TCheckListBox(Sender).Checked[j] := False;

    if i>=0 then
      if x > TTempCheck(TCheckListBox(Sender)).GetCheckWidth then
        TCheckListBox(Sender).Checked[i] := not TCheckListBox(Sender).Checked[i];


  except
  end;
end;

procedure TFrmXRayOrder.BitBtn2Click(Sender: TObject);
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

procedure TFrmXRayOrder.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmXRayOrder.EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case key of
    VK_DOWN :
    begin
      if (SGOrder.Row >= 1) and (SGOrder.Row < SGOrder.RowCount -1)  then
        SGOrder.Row := SGOrder.Row + 1 ;
      Key := 0;
    end;
    VK_UP :
    begin
      if (SGOrder.Row > 1) and (SGOrder.Row < SGOrder.RowCount)  then
        SGOrder.Row := SGOrder.Row -1 ;
      Key := 0;
    end;
    VK_RETURN :
    begin
      //mySender := TEdit(Sender).Name;
      //DBICD9.Tag := 1;
      SGOrderDblClick(SGOrder);
      Key := 0;
      //DBICD9.Visible := False;
    end;
  end;
end;

procedure TFrmXRayOrder.EdtFeeNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case key of
    VK_DOWN :
    begin
      if (SGOrder.Row >= 1) and (SGOrder.Row < SGOrder.RowCount -1)  then
        SGOrder.Row := SGOrder.Row + 1 ;
      Key := 0;
    end;
    VK_UP :
    begin
      if (SGOrder.Row > 1) and (SGOrder.Row < SGOrder.RowCount)  then
        SGOrder.Row := SGOrder.Row -1 ;
      Key := 0;
    end;
    VK_RETURN :
    begin
      //mySender := TEdit(Sender).Name;
      //DBICD9.Tag := 1;
      SGOrderDblClick(SGOrder);
      Key := 0;
      //DBICD9.Visible := False;
    end;
  end;
end;

procedure TFrmXRayOrder.CBXPathClickCheck(Sender: TObject);
var
  i : Integer;
  temps : TStringList;
  gSample : String;
begin
  inherited;
{  gSample := '';
  for i := 0 to CBXpath.Items.Count -1 do
  begin
    if CBXpath.Checked[i] then
      gSample := gSample+ReTurnId(CBXpath.Items.Strings[i])+';';
  end;
  gSample := Copy(gSample,1,Length(gSample)-1);
  mySQL.Text := SelectSQL.Text;
  mySQL.Add(' and Order_type='+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))) ;
  if gSample <>''  then
    mySQL.Add('And Send_cd_1 IN('+Qts(gSample)+')');

    mySQL.AddStrings(SortSQL);
    dm.OpenSQL(MYSQL,SGOrder);}
end;

procedure TFrmXRayOrder.CBXPathClick(Sender: TObject);
var
  i : Integer;
  temps : TStringList;
  gSample : String;
begin
  inherited;
  gSample := '';
  for i := 0 to CBXpath.Items.Count -1 do
  begin
    if CBXpath.Checked[i] then
      gSample := gSample+ReTurnId(CBXpath.Items.Strings[i])+';';
  end;
  gSample := Copy(gSample,1,Length(gSample)-1);
  mySQL.Text := SelectSQL.Text;
  mySQL.Add(' and Order_type='+Qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))) ;
  if gSample <>''  then
    mySQL.Add('And Send_cd_1 IN('+Qts(gSample)+')');

    mySQL.AddStrings(SortSQL);
    dm.OpenSQL(MYSQL,SGOrder);

end;

end.


