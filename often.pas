unit often;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Grids, ComCtrls, StdCtrls, Buttons, ExtCtrls, Menus,
  CheckLst, DBCtrls, dbcgrids, DB, ADODB;
type TTempCheck=class(TChecklistbox);
type
  TFrmoften = class(TFrmMain)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StringGrid1: TStringGrid;
    TabSheet2: TTabSheet;
    StringGrid2: TStringGrid;
    TabSheet3: TTabSheet;
    StringGrid3: TStringGrid;
    TabSheet4: TTabSheet;
    StringGrid4: TStringGrid;
    TabSheet5: TTabSheet;
    StringGrid5: TStringGrid;
    TabSheet6: TTabSheet;
    StringGrid6: TStringGrid;
    TabSheet7: TTabSheet;
    StringGrid7: TStringGrid;
    TabSheet8: TTabSheet;
    StringGrid8: TStringGrid;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    clbxICD9: TCheckListBox;
    clbxmed: TCheckListBox;
    clbxINS: TCheckListBox;
    clbxXRAY: TCheckListBox;
    clbxFEE: TCheckListBox;
    clbxLAB: TCheckListBox;
    clbxSOAP: TCheckListBox;
    clbxMTRL: TCheckListBox;
    TabSheet9: TTabSheet;
    Shape3: TShape;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Shape4: TShape;
    DBText4: TDBText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    DtSICD10: TDataSource;
    ADOQuery1: TADOQuery;
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid2MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure clbxICD9Click(Sender: TObject);
    procedure clbxICD9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure ClearSg(sender:TObject);
    procedure getSgdata(pgctr: integer);
    procedure chklbxrefh(sgmd: TStringGrid;chlbx: TCheckListBox);
  public
    { Public declarations }
    theDept,TheDoc: String;
    Kind : String;
    UseThis : Boolean;
    UsePkgName : String;
    UseFlag : Boolean;    
  end;

var
  Frmoften: TFrmoften;

implementation

uses Commfunc, ERsFunc, Global, MySQLc, DBDM, Order;

{$R *.dfm}

procedure TFrmoften.StringGrid1DblClick(Sender: TObject);
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
    if TStringGrid(sender).Col = 1 then
    begin
      if TStringGrid(sender).Cells[1,TStringGrid(sender).Row] <> '' then
      begin
        if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] ='V' then
          TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := ''
        else
          TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := 'V';
      end;
    end;
  end;
end;

procedure TFrmoften.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SourceCol, SourceRow : Integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
  if SourceRow = 0 then
    ClearSg(sender);
end;

procedure TFrmoften.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  DM.QryTemp.Close;
  UseFlag:= False;
  theDept:= 'XXXX';
  TheDoc := getUserId;
  RadioGroup1.ItemIndex := 1;
  for i := 1 to 8 do
  begin
    With TStringGrid(Frmoften.FindComponent('StringGrid'+IntToStr(i))) do
    begin
      ColWidths[0]:= 30;
      ColWidths[1]:= 120;
      ColWidths[2]:= 400;
      ColWidths[3]:= 60;
      ColWidths[4]:= 60;
      ColWidths[5]:= 60;
      if i >= 5 then
      begin
        ColWidths[6]:= -1;
        ColWidths[7]:= -1;
        ColWidths[8]:= -1;
        ColWidths[9]:= -1;
        ColWidths[10]:= -1;
        ColWidths[11]:= 60;
        ColWidths[12]:= 60;
        ColWidths[13]:= -1;
        ColWidths[14]:= -1;
        ColWidths[15]:= -1;
        ColWidths[16]:= -1;
      end;
    end;
  end;
  StringGrid1.ColWidths[1]:=-1;
  StringGrid1.ColWidths[2]:= 400;
  StringGrid1.ColWidths[3]:= -1;
  StringGrid1.ColWidths[4]:= -1;
  StringGrid1.ColWidths[5]:= -1;
  StringGrid1.ColWidths[6]:= -1;
  StringGrid1.ColWidths[7]:= -1;
  
  StringGrid2.ColWidths[6]:= 35;
  StringGrid2.ColWidths[7]:= 70;
  StringGrid2.ColWidths[8]:= 70;
  StringGrid2.ColWidths[9]:= -1;
  StringGrid2.ColWidths[10]:= -1;
  StringGrid2.ColWidths[11]:= -1;
  StringGrid2.ColWidths[12]:= -1;
  StringGrid2.ColWidths[13]:= -1;

  StringGrid3.ColWidths[6]:= -1;
  StringGrid3.ColWidths[7]:= -1;
  StringGrid3.ColWidths[8]:= -1;
  StringGrid3.ColWidths[9]:= -1;
  
  StringGrid4.ColWidths[4]:= -1;
  StringGrid4.ColWidths[5]:= -1;
  StringGrid4.ColWidths[6]:= -1;
  StringGrid4.ColWidths[7]:= -1;
  getSgdata(99);
  PageControl1.ActivePageIndex := 0;
  TListView(clbxLAB).GridLines := True;
end;

procedure TFrmoften.ClearSg(sender: TObject);
var
  i : Integer;
begin
  for i := 1 to TStringGrid(sender).RowCount -1 do
    TStringGrid(sender).Cells[0,i] := '';
end;

procedure TFrmoften.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmoften.getSgdata(pgctr: integer);
var
  SQLs : TStrings;
  tmpsql: string;
begin
  inherited;
  try
    SQLs := TStringList.Create;
    case pgctr of
      0:
        begin
          //IDC9
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",DR_NOTE "英文",dept_code,user_id,group_code,seq_no,trim(Fee_code) as qrycol');//trim(Fee_code)||''_''||trim(Fee_Name) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''I'' order by fee_code');
          DM.OpenSQL(SQLs,StringGrid4);
          chklbxrefh(StringGrid4,clbxICD9);
        end;
      1:
        begin
          //MED
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",CIR_CODE "頻率",MED_DAYS "天數",PATH_CODE "途徑",TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''M'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid2);
          chklbxrefh(StringGrid2,clbxmed);
        end;
      2:
        begin
          //檢驗
          SQLs.Clear;                                                                                                          //7         8          9         10
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''L'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid6);
          chklbxrefh(StringGrid6,clbxINS);
        end;
      3:
        begin
          //放射
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''X'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid5);
          chklbxrefh(StringGrid5,clbxXRAY);
        end;
      4:
        begin
          //FEE
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",PATH_CODE "部位",Unit_Qty "數量",SELF_PAY_FLAG "自費",dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''F'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid3);
          chklbxrefh(StringGrid3,clbxFEE);
        end;
      5:
        begin
          //檢查
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name)||''_''||trim(seq_no) as qrycol');
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''C'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid7);
          chklbxrefh(StringGrid7,clbxLAB);
        end;
      6:
        begin
          //S0P
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Order_type "代碼",Order_TEXT "名稱" ,Order_type "囑型",dept_code,user_id,group_code,seq_no,trim(Order_TEXT) as qrycol');//trim(Order_TEXT)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_TEXT Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type IN(''S'',''O'',''P'',''H'',''R'') ORDER BY ORDER_TYPE,SEQ_NO');
          DM.OpenSQL(SQLs,StringGrid1);
          chklbxrefh(StringGrid1,clbxSOAP);
        end;
      7:
        begin
          //衛材
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name)||''_''||trim(seq_no) as qrycol');
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''T'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid8);
          chklbxrefh(StringGrid8,clbxMTRL);
        end;
      8:
        begin
          if RadioGroup1.ItemIndex = 0 then
          begin
            tmpSql:=sqlstr(33);
            SetParamter(tmpSql,'$DEPT_CODE$',Qt(GetUserDept));
            ADOQuery1.Close;
            ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Text:=tmpSql;
            ADOQuery1.Open;
          end
          else if RadioGroup1.ItemIndex = 1 then
          begin
            tmpSql:=sqlstr(32);
            SetParamter(tmpSql,'$DOC_CODE$',qt(getUserId));
            ADOQuery1.Close;
            ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Text:=tmpSql;
            ADOQuery1.Open;
          end;
        end;
      99:
        begin
          //S0P
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Order_type "代碼",Order_TEXT "名稱" ,Order_type "囑型",dept_code,user_id,group_code,seq_no,trim(Order_TEXT) as qrycol');//trim(Order_TEXT)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_TEXT Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type IN(''S'',''O'',''P'',''H'',''R'') ORDER BY ORDER_TYPE,SEQ_NO');
          DM.OpenSQL(SQLs,StringGrid1);
          chklbxrefh(StringGrid1,clbxSOAP);
          //MED
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "劑量",CIR_CODE "頻率",MED_DAYS "天數",PATH_CODE "途徑",TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''M'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid2);
          chklbxrefh(StringGrid2,clbxmed);
          //FEE
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",PATH_CODE "部位",Unit_Qty "數量",SELF_PAY_FLAG "自費",dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''F'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid3);
          chklbxrefh(StringGrid3,clbxFEE);
          //IDC9
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",DR_NOTE "英文",dept_code,user_id,group_code,seq_no,trim(Fee_code) as qrycol');//trim(Fee_code)||''_''||trim(Fee_Name) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''I'' order by fee_code');
          DM.OpenSQL(SQLs,StringGrid4);
          chklbxrefh(StringGrid4,clbxICD9);
          //放射
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''X'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid5);
          chklbxrefh(StringGrid5,clbxXRAY);
          //檢驗
          SQLs.Clear;                                                                                                          //7         8          9         10
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name) as qrycol');//trim(Fee_Name)||''_''||trim(seq_no) as qrycol
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''L'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid6);
          chklbxrefh(StringGrid6,clbxINS);
          //檢查
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name)||''_''||trim(seq_no) as qrycol');
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''C'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid7);
          chklbxrefh(StringGrid7,clbxLAB);
          //衛材
          SQLs.Clear;
          SQLs.Add('Select '' '' "選",Fee_code "代碼",Fee_Name "名稱",Unit_Qty "數量",item_no "類型",PATH_CODE "途徑",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "囑型",ORDER_DESC "說明" ');
          SQLs.Add(',self_pay_flag,dept_code,user_id,group_code,seq_no,trim(Fee_Name)||''_''||trim(seq_no) as qrycol');
          SQLs.Add('  from  ORDER_GRP_DTL Where DEPT_CODE = '+Qt(theDept)+' and User_id='+Qt(TheDoc) +' and Group_code ='+Qt('often')) ;
          SQLs.Add('   And Order_type =''T'' order by fee_name');
          DM.OpenSQL(SQLs,StringGrid8);
          chklbxrefh(StringGrid8,clbxMTRL);
        end;
    end;
  except
  end;
end;

procedure TFrmoften.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  Case RadioGroup1.ItemIndex of
    0 :
      begin
        theDept:= '86'; TheDoc := 'XXXXXX';
      end;
    1 :
      Begin
        theDept:= 'XXXX'; TheDoc := getUserId;
      end;
  end;
  getSgdata(PageControl1.ActivePageIndex);
  //PageControl1Change(RadioGroup1);
end;

procedure TFrmoften.N1Click(Sender: TObject);
var
  userid,seqno,a:string;
  TMPSG : TStringGrid;
  mychlBox : TCheckListBox;
  colsno,rosno : integer;
begin
  inherited;
  if TheDoc = 'XXXXXX' then
  begin
    ShowMessage('科常用不能刪除');
  end
  else
  begin
    TMPSG := TStringGrid(Frmoften.FindComponent(ReturnId(PageControl1.ActivePage.Hint)));
    mychlBox := TCheckListBox(Frmoften.FindComponent(ReturnName(PageControl1.ActivePage.Hint)));
    colsno := TMPSG.Rows[0].indexof('qrycol');
    rosno := TMPSG.Cols[colsno].IndexOf(mychlBox.Items.Strings[mychlBox.Itemindex]);
    IF MessageDlg('確定要刪除 "'+TMPSG.Cells[colsno,rosno]+'" 此筆資料嗎?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      userid := TMPSG.Cells[TMPSG.Rows[0].IndexOf('user_id'),rosno];
      seqno  := TMPSG.Cells[TMPSG.Rows[0].IndexOf('seq_no'),rosno];
      try
        DM.ADOLink.BeginTrans;
        DM.QryUpdate.Close;
        DM.QryUpdate.SQL.Clear;
        DM.QryUpdate.SQL.Add('delete order_grp_dtl where group_code=''often'' and user_id='+qt(TRIM(userid))+' and seq_no='+qt(TRIM(seqno)));
        DM.QryUpdate.ExecSQL;
        DM.ADOLink.CommitTrans;
      except
        DM.ADOLink.RollbackTrans;
        ShowMessage('刪除失敗');
        Exit;
      end;
      getSgdata(99);
    end;
  end;
end;

procedure TFrmoften.BitBtn1Click(Sender: TObject);
begin
  inherited;
  UseFlag:=True;
  Close;
end;

procedure TFrmoften.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  TMPSG : TStringGrid;
  i : integer;
  mychlBox : TCheckListBox;
begin
  inherited;
  TMPSG := TStringGrid(Frmoften.FindComponent(ReturnId(PageControl1.ActivePage.Hint)));
  mychlBox := TCheckListBox(Frmoften.FindComponent(ReturnName(PageControl1.ActivePage.Hint)));
  for i:= 1 to TMPSG.RowCount -1 do
  begin
    if Trim(TMPSG.Cells[TMPSG.Rows[0].IndexOf('名稱'),i]) <> '' then
    begin
      if Trim(Edit1.Text)= '' then
      begin
        TMPSG.RowHeights[i] := 21;
      end
      else
      begin
        if pos(AnsiUpperCase(Trim(Edit1.Text)),AnsiUpperCase(Trim(TMPSG.Cells[TMPSG.Rows[0].IndexOf('名稱'),i]))) = 0 then
          TMPSG.RowHeights[i] := -1
        else
          TMPSG.RowHeights[i] := 21;
      end;
    end;
  end;
  chklbxrefh(TMPSG,mychlBox);
end;

procedure TFrmoften.StringGrid2MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 2;
end;

procedure TFrmoften.StringGrid2MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 2;
end;

procedure TFrmoften.clbxICD9Click(Sender: TObject);
var
  TMPSG : TStringGrid;
  colsno : integer;
begin
  inherited;
  TMPSG := TStringGrid(Frmoften.FindComponent(ReturnId(PageControl1.ActivePage.Hint)));
  colsno := TMPSG.Rows[0].indexof('qrycol');
  if TCheckListBox(Sender).Checked[TCheckListBox(Sender).ItemIndex] then
  begin
    //TMPSG.Cells[0,TMPSG.Cols[colsno].IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).Itemindex])] := 'V';
    TMPSG.Cells[0,(TCheckListBox(Sender).Itemindex + 1)] := 'V'
  end
  else
  begin
     //TMPSG.Cells[0,TMPSG.Cols[colsno].IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).Itemindex])] := '';
    TMPSG.Cells[0,(TCheckListBox(Sender).Itemindex + 1)] := '';
  end;
end;

procedure TFrmoften.chklbxrefh(sgmd: TStringGrid;chlbx: TCheckListBox);
var
  i : integer;
begin
  chlbx.Items.Clear;
  FOR I:= 1 to sgmd.RowCount-1 do
  begin
    if (Trim(sgmd.Cells[1,i])<> '') and (sgmd.RowHeights[i]> 20) then
    begin
      chlbx.Items.Add(sgmd.Cells[sgmd.Rows[0].indexof('qrycol'),i]);
      if Trim(sgmd.Cells[0,i])= 'V' then
        chlbx.Checked[chlbx.Count-1] := True;
    end;
  end;
end;

procedure TFrmoften.clbxICD9MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i:integer;
 begin
    i:=Tchecklistbox(Sender).ItemAtPos(point(x,y),True); //取得點選之item
    if i>=0 then
      if x > TTempCheck(Tchecklistbox(Sender)).GetCheckWidth then
        Tchecklistbox(Sender).Checked[i] := not Tchecklistbox(Sender).Checked[i];//若點在checkbox右邊才執行
end;

procedure TFrmoften.PageControl1Change(Sender: TObject);
VAR
  TMPSG : TStringGrid;
  i :integer;
  checkflag :Boolean;
begin
  inherited;
  checkflag := false;
  if PageControl1.ActivePageIndex= 8 then
  begin
    if ADOQuery1.IsEmpty then
      getSgdata(PageControl1.ActivePageIndex);
  end
  else
  begin
    TMPSG := TStringGrid(Frmoften.FindComponent(ReturnId(PageControl1.ActivePage.Hint)));
    if (TMPSG.RowCount <= 2) and (TMPSG.Cells[1,1] = '') then
    BEGIN
      getSgdata(PageControl1.ActivePageIndex);
    END
    else
    begin
      for i:= 0 to TMPSG.RowCount -1 do
      begin
         if TMPSG.Cells[0,i] = 'V' then
           checkflag := True;
      end;
      if checkflag then
        IF MessageDlg('已有勾選項目是否取消此選項，重新載入選項清單?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          getSgdata(PageControl1.ActivePageIndex);
    end;
  end;
end;

procedure TFrmoften.DBText1Click(Sender: TObject);
begin
  inherited;
  if ADOQuery1.RecordCount > 0 then
    if FrmOrder.InsertIcd10(trim(ADOQuery1.fieldbyname('ICD_CODE').AsString)) then
      ShowMessage('('+trim(ADOQuery1.fieldbyname('ICD_CODE').AsString)+')已加入ICD10');
end;

end.
