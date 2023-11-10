unit SetPhrase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DB, ADODB;

type
  TFrmSetPhrase = class(TFrmMain)
    Panel1: TPanel;
    Panel4: TPanel;
    RGDKind: TRadioGroup;
    Panel3: TPanel;
    TreeView2: TTreeView;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    TreeView1: TTreeView;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure RGDKindClick(Sender: TObject);
    procedure TreeView2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    tempqry : TADOQuery;

    procedure mynextnode(var myNode,myNode2 : TTreeNode;Key : string);
    function chgdata(id_no,cla :string):Boolean;
    function myfunt():string;
  public
    { Public declarations }
    _DB : TADOConnection;
  end;

var
  FrmSetPhrase: TFrmSetPhrase;
const
  myKeyofPharse : Array[0..9] of String =('000000000000','000000000000','000000000000',
                                          '000000000000','000000000000','000000000000',
                                          '000000000000','000000000000','000000000000',
                                          '000000000000');

implementation

uses DBDM, Commfunc, Global;

{$R *.dfm}

procedure TFrmSetPhrase.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmSetPhrase.mynextnode(var myNode,myNode2: TTreeNode; Key: string);
var
  myitem,myItemName: TTreeNode;
  newQuery : TAdoQuery;
begin
  newQuery := TAdoQuery.Create(FrmSetPhrase);
  newQuery.Connection := _DB;
  newQuery.Close;
  newQuery.SQL.Clear;
  newQuery.SQL.Text := 'select * from tmu_phrase_main where phrase_Father='+Qt(Key)+' and phrase_level='+Qt(myfunt)+' and phrase_kind='+IntToStr(RGDKind.ItemIndex);
  newQuery.Open;
  while not newQuery.Eof do
  begin
    myitem := TreeView1.Items.AddChild(myNode,newQuery.FieldByName('phrase_id').AsString);
    myitem.StateIndex := TreeView1.Items.Count;
    myItemName := TreeView2.Items.AddChild(myNode2,newQuery.FieldByName('phrase_Name').AsString);
    myItemName.StateIndex := TreeView2.Items.Count;
    mynextnode(myitem,myItemName,newQuery.FieldByName('phrase_id').AsString);
    newQuery.next;
  end;
  newQuery.Close;
  newQuery.Free;
end;

procedure TFrmSetPhrase.RGDKindClick(Sender: TObject);
var
  myitem,myItemName: TTreeNode;
begin
  inherited;
  TreeView1.Items.Clear;
  TreeView2.Items.Clear;
  myitem := TreeView1.Items.Add(TreeView1.Items.GetFirstNode,myKeyofPharse[RGDKind.itemindex]);
  myitem.StateIndex := 0;
  myItemName := TreeView2.Items.Add(TreeView2.Items.GetFirstNode,RGDKind.Items.Strings[RGDKind.itemindex]);
  myItemName.StateIndex := 0;
  mynextnode(myitem,myItemName,myKeyofPharse[RGDKind.itemindex]);
end;

procedure TFrmSetPhrase.TreeView2Click(Sender: TObject);
function getParentName(TheNode:TTreeNode): String;
begin
  if TheNode <> TreeView2.Items.GetFirstNode then
  begin
    getParentName :=
    getParentName(TheNode.Parent) + ' >> ' +TheNode.Text;
  end
  else
    getParentName := TheNode.Text;
end;
begin
  inherited;
  Label2.Caption := getParentName(TreeView2.Selected);
  TreeView1.Selected := TreeView1.Items.Item[TreeView2.Selected.Index];
  Button3.Visible := not TreeView2.Selected.HasChildren;
end;

procedure TFrmSetPhrase.Button1Click(Sender: TObject);
var
  myitem,myItemName: TTreeNode;
  i,maxno : Integer;
begin
  inherited;
  tempqry.Close;
  tempqry.SQL.Clear;
  tempqry.SQL.Add('select nvl(max(phrase_id),0) as phrase_id from tmu_phrase_main where phrase_level='+Qt(myfunt)+' and phrase_kind='+IntToStr(RGDKind.ItemIndex) );
  tempqry.Open;
  maxno := tempqry.fieldbyname('phrase_id').AsInteger+1;
  for i := 0 to TreeView1.Items.Count-1 do
  begin
    if TreeView1.Items.Item[i].StateIndex = TreeView2.Selected.StateIndex then
    begin
      if chgdata(AddChar(IntToStr(maxno),'0',12),'I') then
        myitem := TreeView1.Items.AddChild(TreeView1.Items.Item[i],AddChar(IntToStr(maxno),'0',12))
      else
        exit;
      break;
    end
  end ;

  myItemName := TreeView2.Items.AddChild(TreeView2.Selected,Edit1.Text);
  myItemName.StateIndex :=TreeView2.Items.Count;
  myitem.StateIndex :=TreeView2.Items.Count;
  TreeView2.Selected :=myItemName.Parent;
end;

procedure TFrmSetPhrase.Button3Click(Sender: TObject);
var
  myItemName :TTreeNode;
  i : Integer;
begin
  inherited;
  myItemName := TreeView2.Selected.GetPrev;
  for i := 1 to TreeView1.Items.Count do
  begin
    if TreeView1.Items.Item[i-1].StateIndex = TreeView2.Selected.StateIndex then
    begin
      //刪除
      if chgdata(TreeView1.Items.Item[i-1].Text,'D') then
        TreeView1.Items.Delete(TreeView1.Items.Item[i-1])
      else
        Exit;
      break;
    end
  end ;


  //TreeView1.Items.Delete(TreeView1.Items.Item[TreeView2.Selected.Index]);
  TreeView2.Items.Delete(TreeView2.Selected);
  TreeView2.Selected := myItemName;
end;

function TFrmSetPhrase.chgdata(id_no,cla :string):Boolean;
VAR
 STR,edtstr,chkbx :STRING;

function getPrent():String;
var
  i : Integer;
begin
  getPrent:= '';
  for i := 0 to TreeView1.Items.Count -1 do
  begin
    if TreeView1.Items.Item[i].StateIndex = TreeView2.Selected.StateIndex then
    begin
      getPrent := TreeView1.Items.Item[i].Text;
      break;
    end;
  end;
end;
begin
  Result := False;
  tempqry.Close;
  tempqry.SQL.Clear;
  _DB.BeginTrans;
  try
    if cla = 'D' then
    begin
      if id_no = '000000000000' then
      begin
        ShowMessage('最上層不能刪除');
        Result := False;
        Exit;
      end;
      tempqry.SQL.Add('delete tmu_phrase_main where PHRASE_LEVEL='+Qt(myfunt)+' and PHRASE_KIND='+
                       Qt(IntToStr(RGDKind.ItemIndex))+' and  PHRASE_ID='+Qt(id_no));
    end
    else
    begin
      IF CheckBox1.Checked THEN
        STR := 'Y'
      ELSE
        STR := 'N';
      if trim(Edit2.Text) <>'文字內容' then
        edtstr := trim(Edit2.Text)
      else
        edtstr := '';
      if CheckBox2.Checked then
        chkbx := 'Y'
      else
        chkbx := 'N';
      tempqry.SQL.Add('insert into tmu_phrase_main(PHRASE_LEVEL,PHRASE_KIND,PHRASE_ID,PHRASE_CHILD,PHRASE_FATHER,PHRASE_NAME,SHOW_NAME,SHOW_EDIT,EDIT_TEXT,sort,checkbox)');
      tempqry.SQL.Add(' values('+Qt(myfunt)+','+Qt(IntToStr(RGDKind.ItemIndex))+','+Qt(Id_no)+','''','+Qt(getPrent)+','+Qt(Edit1.Text)+',''Y'','+Qt(STR)+','+Qt(edtstr)+','+Qt(AddChar(Edit3.Text,'0',12))+','+Qt(chkbx)+')');
    end;
    tempqry.ExecSQL;
    _DB.CommitTrans;
    Result := true;
  except
    _DB.RollbackTrans;
  end;
end;

procedure TFrmSetPhrase.FormShow(Sender: TObject);
begin
  inherited;
  tempqry := TADOQuery.Create(FrmSetPhrase);
  tempqry.Connection := _DB;
  RGDKind.ItemIndex := 0;
end;

procedure TFrmSetPhrase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  tempqry.Free;
end;

function TFrmSetPhrase.myfunt: string;
begin
  case RadioGroup1.ItemIndex of
     0: myfunt := 'ALL' ;
     1: myfunt := GetUserDept;
     2: myfunt := getUserId;
   end;
end;

procedure TFrmSetPhrase.Button2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
