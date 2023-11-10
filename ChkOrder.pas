unit ChkOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, CheckLst, XPMan, ComCtrls, Grids, ExtCtrls,
  Buttons;
type TTempCheck=class(TChecklistbox);
type
  TFrmChkOrder = class(TFrmMain)
    GroupBox1: TGroupBox;
    CBRoom: TCheckListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtFeeCode: TEdit;
    EdtFeeName: TEdit;
    CheckBox1: TCheckBox;
    SGChkOrder: TStringGrid;
    Panel4: TPanel;
    SGPreOrder: TStringGrid;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    Splitter2: TSplitter;
    cbgroup: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBRoomMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdtFeeCodeChange(Sender: TObject);
    procedure EdtFeeNameChange(Sender: TObject);
    procedure SGPreOrderDblClick(Sender: TObject);
    procedure SGChkOrderDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBRoomClickCheck(Sender: TObject);
    procedure cbgroupClick(Sender: TObject);
  private
    { Private declarations }
    gRoom,emgroup: String;
    mySQL : TStringList;
  public
    { Public declarations }
  end;

var
  FrmChkOrder: TFrmChkOrder;

implementation

uses Commfunc, DBDM, Global;

{$R *.dfm}

procedure TFrmChkOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmChkOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmChkOrder := nil;
end;

procedure TFrmChkOrder.FormShow(Sender: TObject);
begin
  inherited;
  with SGPreOrder do
  begin
    Cells[0,0] := '�N�X';
    ColWidths[0] := 0;
    Cells[1,0] := '';
    ColWidths[1] := 0;
    Cells[2,0] := '';
    ColWidths[2] := 0;
    Cells[3,0] := '���ئW��';
    Cells[4,0] := '�ˬd��';
  end;
  emgroup := SetSys.ReadString('SYSTEM','��E�ϥ��ˬd��','');
  CBRoom.Items.Text := gsCheckRoom.Text;
  MySQL := TStringList.Create;
  MySQL.Text := 'Select Fee_name "�ˬd�W��",Fee_code "�|���N�X", Send_Cd_1 "�ˬd��" from ORDERITEM_BASIC Where ORDER_TYPE='+Qt('E')+' And USE_STATUS=''1''';
  if not DM.OpenSQL(mySQL,SGChkOrder) then                                                                                                //USE_STATUS_O
    ShowMessage('�S���');
  cbgroupClick(Self);
end;

procedure TFrmChkOrder.CBRoomMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  Temps : TStringList;
begin
  inherited;
  i:=TCheckListBox(Sender).ItemAtPos(point(x,y),True); //���o�I�蠟item
  if i>=0 then
    if x > TTempCheck(TCheckListBox(Sender)).GetCheckWidth then
        TCheckListBox(Sender).Checked[i] := not TCheckListBox(Sender).Checked[i];
  gRoom := '';

  for i := 0 to CBRoom.Items.Count -1 do
  begin
    if CBRoom.Checked[i] then
      gRoom := gRoom+ReTurnId(CBRoom.Items.Strings[i])+';';
  end;
  gRoom := Copy(gRoom,1,Length(gRoom)-1);

  Temps := TStringList.Create;
  Temps.Text := MySQL.Text;
  if gRoom<>'' then
  begin
    Temps.Add(' And SEND_CD_1 in ('+Qts(gRoom)+')');
  end;
  DM.OpenSQL(Temps,sgChkOrder);
end;

procedure TFrmChkOrder.EdtFeeCodeChange(Sender: TObject);
var
  temps : TStringList;
begin
  inherited;
  if Trim(TEdit(Sender).Text) ='' then
  begin
    DM.OpenSQL(mySQL,SGChkOrder)
  end
  else
  begin
    Temps := TStringList.Create;
    Temps.Text := MySQL.Text;
    if CheckBox1.Checked and (gRoom <>'') then
      Temps.Add(' And SEND_CD_1 in ('+Qts(gRoom)+')');
    Temps.Add(' AND FEE_CODE LIKE '+Qt(TEdit(sender).Text+'%')) ;
    Temps.Add('Order by Fee_name');
    DM.OpenSQL(Temps,sgChkOrder);
  end;
end;

procedure TFrmChkOrder.EdtFeeNameChange(Sender: TObject);
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
  if Trim(TEdit(Sender).Text) ='' then
  begin
    DM.OpenSQL(mySQL,SGChkOrder)
  end
  else
  begin
    Temps := TStringList.Create;
    MyKeyWord := TstringList.Create;
    Temps.Text := MySQL.Text;
    if CheckBox1.Checked and (gRoom <>'') then
      Temps.Add(' And SEND_CD_1 in ('+Qts(gRoom)+')');
    myKeyWord := StrToList(TEdit(sender).Text);
    for i := 0 to myKeyWord.Count -1 do
      Temps.Add(' AND UPPER(FEE_NAME) LIKE '+Qt('%'+ANSIUPPERCASE(myKeyWord.Strings[i])+'%')) ;
    Temps.Add('Order by Fee_name');
    DM.OpenSQL(Temps,sgChkOrder);
  end;

end;

procedure TFrmChkOrder.SGPreOrderDblClick(Sender: TObject);
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

procedure TFrmChkOrder.SGChkOrderDblClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  for i := 1 to SGPreOrder.RowCount -1 do
  begin
    if (SGChkOrder.Cells[2,SGChkOrder.Row] = SGPreOrder.Cells[4,i]) and (SGChkOrder.Cells[1,SGChkOrder.Row] = SGPreOrder.Cells[0,i]) then
    begin
      if MessageDlg('���ˬd���d�w�s�b�M�椤�I'+#10#13+'�~��: Yes'+#10#13+'����: No',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        Exit;
      //ShowMessage('���ˬd���d�w�s�b�M�椤�I');
      //Exit;
    end
  end;
  i := SGPreOrder.RowCount-1;
  SGPreOrder.Cells[0,i] := SGChkOrder.Cells[1,SGChkOrder.Row];
  SGPreOrder.Cells[3,i] := SGChkOrder.Cells[0,SGChkOrder.Row];
  SGPreOrder.Cells[4,i] := SGChkOrder.Cells[2,SGChkOrder.Row];
  SGPreOrder.RowCount := SGPreOrder.RowCount+1;
  EdtFeeCode.Text := '';
  EdtFeeName.Text := '';
end;

procedure TFrmChkOrder.BitBtn1Click(Sender: TObject);
var
  i : Integer;
  Str : String;
begin
  inherited;
  if (Trim(Memo1.Lines.Text)='') and (Trim(Memo2.Lines.Text)='') then
  begin
    Showmessage('Subject & Object ���i���ť�!');
    Exit;
  end;
  OutList.Clear;
  for i := 1 to SGPreOrder.RowCount -1 do
  begin
    if SGPreOrder.Cells[0,i] <>'' then
    begin
      str := SGPreOrder.Cells[3,i]+'_'+SGPreOrder.Cells[0,i]+'_' +SGPreOrder.Cells[4,i]+'_'+'';//Memo1.Lines.Text;
      OutList.Add(Str);
    end;
  end;
  Close;
end;

procedure TFrmChkOrder.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmChkOrder.EdtFeeCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case key of
    VK_DOWN :
    begin
      if (SGChkOrder.Row >= 1) and (SGChkOrder.Row < SGChkOrder.RowCount -1)  then
        SGChkOrder.Row := SGChkOrder.Row + 1 ;
      Key := 0;
    end;
    VK_UP :
    begin
      if (SGChkOrder.Row > 1) and (SGChkOrder.Row < SGChkOrder.RowCount)  then
        SGChkOrder.Row := SGChkOrder.Row -1 ;
      Key := 0;
    end;
    VK_RETURN :
    begin
      //mySender := TEdit(Sender).Name;
      //DBICD9.Tag := 1;
      SGChkOrderDblClick(SGChkOrder);
      Key := 0;
      //DBICD9.Visible := False;
    end;
  end;
end;

procedure TFrmChkOrder.CBRoomClickCheck(Sender: TObject);
var
  i : Integer;
  temps : TStringList;
begin
  inherited;
  gRoom := '';

  for i := 0 to CBRoom.Items.Count -1 do
  begin
    if CBRoom.Checked[i] then
      gRoom := gRoom+ReTurnId(CBRoom.Items.Strings[i])+';';
  end;
  gRoom := Copy(gRoom,1,Length(gRoom)-1);

  Temps := TStringList.Create;
  Temps.Text := MySQL.Text;
  CheckBox1.Checked := gRoom <>'';
  if gRoom<>'' then
  begin
    Temps.Add(' And SEND_CD_1 in ('+Qts(gRoom)+')');
  end;
  DM.OpenSQL(Temps,sgChkOrder);

end;

procedure TFrmChkOrder.cbgroupClick(Sender: TObject);
begin
  inherited;
  if TCheckBox(sender).Checked then
    CBRoom.Items := edCheckRoom
  else
    CBRoom.Items := gsCheckRoom;
  CBRoomClickCheck(nil);
end;

end.
