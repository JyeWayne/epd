unit UsePKG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ComCtrls, StdCtrls, CheckLst, ExtCtrls, Grids, Buttons,
  ValEdit, XPMan;

type
  TFrmUsePkg = class(TFrmMain)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    PageControl1: TPageControl;
    Panel3: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    CheckListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbbdept: TComboBox;
    cbbdr: TComboBox;
    ListBox1: TListBox;
    Splitter1: TSplitter;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    TabSheet8: TTabSheet;
    StringGrid8: TStringGrid;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure cbbdeptChange(Sender: TObject);
    procedure cbbdrChange(Sender: TObject);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Procedure ClearSg(sender:TObject);
  public
    { Public declarations }
    theDept,TheDoc: String;
    Kind : String;
    UseThis : Boolean;
    UsePkgName : String;
    UseFlag : Boolean;
  end;

var
  FrmUsePkg: TFrmUsePkg;

implementation

uses DBDM, Global, Commfunc;

{$R *.dfm}

procedure TFrmUsePkg.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  Case RadioGroup1.ItemIndex of
    0 : begin
      theDept:= 'ALL';TheDoc := 'ALL';
    end;
    1 : Begin
      theDept:= GetUserDept; TheDoc := 'XXXXXX';
      SetCbbitem(cbbDept,theDept);
    end;
    2 : Begin
      theDept:= 'XXXX'; TheDoc := getUserId;
      SetCbbitem(cbbDr,TheDoc);
    end;
  end;
  cbbdept.Visible := RadioGroup1.ItemIndex = 1;
  cbbDr.Visible := RadioGroup1.ItemIndex = 2;
  With DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from ORDER_GRP_BASIC Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc)+' and group_code not in(select group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9'')) order by GROUP_NAME');
    Open;
    CheckListBox1.Items.Clear;
    ListBox1.Items.Clear;
    //ValueListEditor1.DeleteRow();
    While not Eof do
    begin
      CheckListBox1.Items.Add(Trim(FieldByName('GROUP_NAME').AsString)) ;
      ListBox1.Items.Add(Trim(FieldByName('GROUP_CODE').AsString));
      //ValueListEditor1.InsertRow(Trim(FieldByName('GROUP_NAME').AsString),Trim(FieldByName('GROUP_CODE').AsString),False);
      Next;
    end;
    Close;
  end;
end;

procedure TFrmUsePkg.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  DM.QryTemp.Close;
  UseFlag:= False;
  theDept:= 'XXXX';
  TheDoc := getUserId;
  SetCbbitem(cbbdr,getUserId);
  for i := 1 to 8 do
  begin
    With TStringGrid(FrmUsePkg.FindComponent('StringGrid'+IntToStr(i))) do
    begin
      ColWidths[0]:= 30;
      ColWidths[1]:= 120;
      ColWidths[2]:= 360;
      ColWidths[3]:= 60;
      ColWidths[4]:= 60;
      ColWidths[5]:= 60;
      ColWidths[6]:= -1;
      ColWidths[7]:= -1;
      ColWidths[8]:= -1;
    end;
  end;
  StringGrid4.ColWidths[3]:= 200;
  StringGrid1.ColWidths[1]:=-1;
  StringGrid1.ColWidths[3]:= 35;
  StringGrid1.ColWidths[4]:= -1;
  StringGrid2.ColWidths[6]:= 35;
  StringGrid2.ColWidths[7]:= 70;
  StringGrid3.ColWidths[9]:= 35;
 
  StringGrid3.ColWidths[10]:= 70;
  StringGrid4.ColWidths[9]:= 35;
  StringGrid4.ColWidths[10]:= 70;
  With DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from ORDER_GRP_BASIC Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc));
    SQL.Add(' and group_code not in(select group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9'')) order by group_name');
    Open;
    CheckListBox1.Items.Clear;
    ListBox1.Items.Clear;
    While not Eof do
    begin
      CheckListBox1.Items.Add(Trim(FieldByName('GROUP_NAME').AsString));
      ListBox1.Items.Add(Trim(FieldByName('GROUP_CODE').AsString));
      Next;
    end;
    Close;
  end;
  cbbDept.Items.Text := Dept.Text;
  CbbDr.Items.Text := Uuser.Text;
  SetCbbitem(cbbDept,GetUserDept);
  SetCbbitem(cbbDr,getUserId);
  //cbbdr.Items.Add(getUserName);
  //cbbdr.ItemIndex := 0;
end;

procedure TFrmUsePkg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmUsePkg.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmUsePkg := nil;
end;

procedure TFrmUsePkg.CheckListBox1Click(Sender: TObject);
var
  SQLs : TStrings;
begin
  inherited;
  try
    SQLs := TStringList.Create;//S0P
    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",'' '' "代碼",Order_TEXT "名稱" ,Order_type "囑型"');
    SQLs.Add('  from  ORDER_GRP_TEXT Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type IN(''S'',''O'',''P'',''H'',''R'',''A'') ORDER BY ORDER_TYPE,SEQ_NO');
    DM.OpenSQL(SQLs,StringGrid1);//MED
    PageControl1.ActivePageIndex := 0;
    if StringGrid1.RowCount-1 = 1 then
    begin
      if trim(StringGrid1.Cells[1,1]) <> '' then
        PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid1.RowCount-1)+')'
      else
        PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid1.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",CIR_CODE "頻率",MED_DAYS "天數",PATH_CODE "途徑",TEXT_KIND "囑型",ORDER_DESC "說明",self_pay_flag');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''M''');
    DM.OpenSQL(SQLs,StringGrid2); //FEE
    PageControl1.ActivePageIndex := 1;
    if StringGrid2.RowCount-1 = 1 then
    begin
      if trim(StringGrid2.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid2.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid2.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",PATH_CODE "部位",Unit_Qty "數量",SELF_PAY_FLAG "自費" ');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''F''');
    DM.OpenSQL(SQLs,StringGrid3); //處置
    PageControl1.ActivePageIndex := 2;
    if StringGrid3.RowCount-1 = 1 then
    begin
      if trim(StringGrid3.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid3.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid3.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",DR_NOTE "英文" ');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''I''');
    DM.OpenSQL(SQLs,StringGrid4);
    PageControl1.ActivePageIndex := 3;
    if StringGrid4.RowCount-1 = 1 then
    begin
      if trim(StringGrid4.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid4.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid4.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明",self_pay_flag');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''X''');
    DM.OpenSQL(SQLs,StringGrid5);
    PageControl1.ActivePageIndex := 4;
    if StringGrid5.RowCount-1 = 1 then
    begin
      if trim(StringGrid5.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid5.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid5.RowCount-1)+')';

    SQLs.Clear;                                                                                                         
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明",self_pay_flag');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''L''');
    DM.OpenSQL(SQLs,StringGrid6);
    PageControl1.ActivePageIndex := 5;
    if StringGrid6.RowCount-1 = 1 then
    begin
      if trim(StringGrid6.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid6.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid6.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明",self_pay_flag');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''C''');
    DM.OpenSQL(SQLs,StringGrid7);
    PageControl1.ActivePageIndex := 6;
    if StringGrid7.RowCount-1 = 1 then
    begin
      if trim(StringGrid7.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid7.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid7.RowCount-1)+')';

    SQLs.Clear;
    SQLs.Add('Select ''V'' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明",self_pay_flag');
    SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt((ListBox1.Items.Strings[CheckListBox1.ItemIndex]))) ;
    SQLs.Add('   And Order_type =''T''');
    DM.OpenSQL(SQLs,StringGrid8);
    PageControl1.ActivePageIndex := 7;
    if StringGrid8.RowCount-1 = 1 then
    begin
      if trim(StringGrid8.Cells[1,1]) <> '' then
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid8.RowCount-1)+')'
      else
       PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint;
    end
    else
      PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(StringGrid8.RowCount-1)+')';
  except
  end;
end;

procedure TFrmUsePkg.BitBtn1Click(Sender: TObject);
begin
  inherited;
  UseFlag := False;
  Close;
end;

procedure TFrmUsePkg.BitBtn2Click(Sender: TObject);
begin
  inherited;
  UseFlag:=True;
  Close;
end;

procedure TFrmUsePkg.StringGrid1DblClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if TStringGrid(sender).Row = 0 then
  begin
    if TStringGrid(sender).Col =0 then
    begin
      for i := 1 to TStringGrid(sender).RowCount -1 do
      begin
        TStringGrid(sender).Cells[0,i] := '';
      end;

    end;
  end
  else
  begin
    if TStringGrid(sender).Col = 0 then
    begin
      if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] ='V' then
        TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := ''
      else
        TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := 'V';
    end;
  end;
end;

procedure TFrmUsePkg.cbbdeptChange(Sender: TObject);
begin
  inherited;
  TheDept := ReTurnID(TComboBox(sender).Text);
  With DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from ORDER_GRP_BASIC Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc));
    Open;
    CheckListBox1.Items.Clear;
    ListBox1.Items.Clear;
    While not Eof do
    begin
      CheckListBox1.Items.Add(Trim(FieldByName('GROUP_NAME').AsString)) ;
      ListBox1.Items.Add(Trim(FieldByName('GROUP_CODE').AsString)) ;
      Next;
    end;
    Close;
  end;
end;

procedure TFrmUsePkg.cbbdrChange(Sender: TObject);
begin
  inherited;
  TheDoc := ReTurnID(TComboBox(sender).Text);
  With DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    //SQL.Add('Select * from ORDER_GRP_BASIC Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc));
    SQL.Add('Select * from ORDER_GRP_BASIC Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc));
    SQL.Add(' and group_code not in(select group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9'')) order by group_name');    
    Open;
    CheckListBox1.Items.Clear;
    ListBox1.Items.Clear;
    While not Eof do
    begin
      CheckListBox1.Items.Add(Trim(FieldByName('GROUP_NAME').AsString)) ;
      ListBox1.Items.Add(Trim(FieldByName('GROUP_CODE').AsString));
      Next;
    end;
    Close;
  end;
end;

procedure TFrmUsePkg.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  CanSelect := ARow >=0;
end;

procedure TFrmUsePkg.ClearSg(sender: TObject);
var
  i : Integer;
begin
  for i := 1 to TStringGrid(sender).RowCount -1 do
    TStringGrid(sender).Cells[0,i] := '';
end;

procedure TFrmUsePkg.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SourceCol, SourceRow : Integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
  if SourceRow = 0 then
    ClearSg(sender);
end;

end.
