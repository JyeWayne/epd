unit FirstRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ComCtrls, StdCtrls, ExtCtrls, CheckLst, DB, ADODB, Contnrs,
  DBCtrls, dbcgrids, Buttons, Grids;
type TTempCheck=class(TChecklistbox);
type
  TFrmFirsrRecord = class(TFrmMain)
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    CheckListBox3: TCheckListBox;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Memo3: TRichEdit;
    Panel5: TPanel;
    Panel3: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    Memo1: TRichEdit;
    Memo2: TRichEdit;
    TabSheet6: TTabSheet;
    Memo5: TRichEdit;
    CheckListBox4: TCheckListBox;
    Panel2: TPanel;
    Memo6: TRichEdit;
    Memo7: TRichEdit;
    Memo4: TRichEdit;
    TabSheet7: TTabSheet;
    CheckListBox5: TCheckListBox;
    Panel6: TPanel;
    Memo9: TRichEdit;
    Memo8: TRichEdit;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    SGIcd: TStringGrid;
    Memo10: TRichEdit;
    Panel7: TPanel;
    Memo11: TRichEdit;
    CheckListBox6: TCheckListBox;
    procedure FormShow(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure myLblClick(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure CheckListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SGIcdDblClick(Sender: TObject);
  private
    { Private declarations }
    lt,tag :integer;
    tmpqry : TADOQuery;
    StrKey : String;
    function FetchPhrase(prat,key:string;var Keystr : string):Boolean;
    procedure TestFunc(degree : Integer;var itop: Integer;key:String);
    function GetMyStr(id : String): String;
    function insertepdrecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
    Function InsertIcd(fee_code: string):Boolean;
    function RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
    procedure StringGridSort(Sender: TObject);
  public
    { Public declarations }
    //phrasestl:TStringList;
  end;

var
  FrmFirsrRecord: TFrmFirsrRecord;

implementation

uses DBDM, MySQLc, Commfunc, Global, PrintFirstRecord, ERsFunc;

{$R *.dfm}

function TFrmFirsrRecord.FetchPhrase(prat,key:string; var KeyStr : String):Boolean;
var
  i, j: Integer;
  tmpTab: TTabSheet;
  tmplab : TLabel;
  tmpchk : TCheckBox;
  tmpedt : TEdit;
  tmpsql,prefat: string;
  tmpqry1,tmpqry2 : TADOQuery;
  wth,top,pl,pt,wtotl : integer;
begin
  Result := False;
    tmpsql:= phrase(0);
    SetParamter(tmpsql,'$PHRASE_FATHER$',qt(key));
    SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(PageControl2.ActivePage.Tag+5)));
    SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
    SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
    tmpqry := TADOQuery.Create(Self);
    tmpqry.Connection := DM.ADOLink;
    DataSource1.DataSet := tmpqry;
    tmpqry.Close;
    tmpqry.SQL.Text := tmpSql;
    //tmpqry.SQL.SaveToFile('d:\test.txt');
    tmpqry.Open;
    if tmpqry.IsEmpty then
    begin
      tmpsql:= phrase(0);
      SetParamter(tmpsql,'$PHRASE_FATHER$',qt(prat));
      SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(PageControl2.ActivePage.Tag+5)));
      SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
      SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
      tmpqry.Close;
      tmpqry.SQL.Text := tmpSql;
      tmpqry.Open;
    end
    else
    begin
      Result := true;
      if (Trim(tmpqry.FieldByName('PHRASE_FATHER').AsString)='000000000000') and (tag= 0) then
      begin
        tmplab :=  TLabel.Create(Self);
        tmplab.Parent := Panel3;
        tmplab.Font.Size := 11;
        tmplab.Font.Color := clmaroon;
        tmplab.Font.Name := '標楷體';
        tmplab.Font.Style := [fsBold];
        tmplab.Cursor := crHandPoint;
        tmplab.Caption := Pagecontrol2.ActivePage.Caption;
        tmplab.Name := '_000000000000';
        tmplab.Hint := '000000000000';
        tmplab.Left := 4;
        tmplab.Top := 4;
        tmplab.OnClick := myLblClick;
        tmplab.AutoSize := True;
        tmplab.Tag := 0;
        lt := 4;
        tag := 1;
        lt := tmplab.Width+2;
      end;
      keyStr := KeyStr +Trim(tmpqry.FieldByName('PHRASE_Name').AsString) + '>>'
    end;
end;

procedure TFrmFirsrRecord.FormShow(Sender: TObject);
var
  i,j : Integer;
  newQuery : TAdoQuery;
begin
  inherited;
  SGIcd.Cells[0,0] := 'ICD9';
  SGIcd.Cells[1,0] := '英文';
  SGIcd.Cells[2,0] := '中文';
  SGIcd.ColWidths[3] := -1;
  SGIcd.ColWidths[4] := -1;
  i := 9;
  tag := 0;
  FetchPhrase('000000000000','000000000000',STRKEY);
  CheckListBox1.Clear;
  CheckListBox2.Clear;
  newQuery := TAdoQuery.Create(Self);
  newQuery.Connection := DM.ADOLink;
  newQuery.Close;
  newQuery.SQL.Clear;
  newQuery.SQL.Text := 'select * from tmu_phrase_main where phrase_level in(''ALL'','+Qt(GetUserDept)+','+QT(getUserId)+') AND phrase_kind in(''1'',''2'',''3'',''4'',''7'',''8'') and nvl(phrase_FATHER,''0'')<>''0'' order by phrase_kind,phrase_id,sort';
  newQuery.Open;
  while not newQuery.Eof do
  begin
    if trim(newQuery.fieldbyname('phrase_kind').AsString) = '1' then
    begin
      CheckListBox1.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end
    else if trim(newQuery.fieldbyname('phrase_kind').AsString) = '2' then
    begin
      CheckListBox2.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end
    else if trim(newQuery.fieldbyname('phrase_kind').AsString) = '3' then
    begin
      CheckListBox3.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end
    else if trim(newQuery.fieldbyname('phrase_kind').AsString) = '4' then
    begin
      CheckListBox4.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end
    else if trim(newQuery.fieldbyname('phrase_kind').AsString) = '7' then
    begin
      CheckListBox5.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end
    else if trim(newQuery.fieldbyname('phrase_kind').AsString) = '8' then
    begin
      CheckListBox6.Items.Add(trim(newQuery.fieldbyname('phrase_name').AsString));
    end;
    newQuery.Next;
  end;
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  Memo4.Clear;
  Memo5.Clear;
  Memo6.Clear;

  newQuery.Close;
  newQuery.SQL.Clear;          //fee_no,kind,seq_no,text,status,allorder_no,upd_date,upd_time,print_flag,vs_code,order_date
  newQuery.SQL.Text := 'select *'+
                       ' from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and allorder_no='+
                       '(select max(allorder_no) from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+')';
  newQuery.Open;
  while not newQuery.Eof do
  begin
    if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '1' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Chief Complaint:' then
        Memo1.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '2' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Present Illness:' then
        Memo2.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '8' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Plan(s):' then
        Memo11.Lines.Add(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '9' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Impression:' then
        InsertIcd(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '10' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Impression:' then
        Memo10.Lines.Add(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '11' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Physical Examination:' then
        Memo3.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '12' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Trauma Sheet:' then
        Memo5.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '3' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Past History:' then
        Memo4.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if Trim(newQuery.FieldByName('ORDER_SORT').AsString) = '4' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Allergy History:' then
        Memo7.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '5' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Allergy History:' then
        Memo6.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '6' then
    begin
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Medication History:' then
        Memo8.Lines.Add(newQuery.fieldbyname('text').AsString);
    end
    else if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '7' then
      if Trim(newQuery.fieldbyname('text').AsString) <> '◎Medication History:' then
        Memo9.Lines.Add(newQuery.fieldbyname('text').AsString);
    newQuery.Next;
  end;
 { newQuery.Close;
  newQuery.SQL.Text := 'Select * from OPD_WARNING2 where CHR_NO='+Qt(GetChrno)+' and nvl(MED_CODE ,''nill'')<>''nil''' ;
  newQuery.Open;
  while not newQuery.Eof do
  begin
    Memo7.Lines.Add(Trim(newQuery.fieldbyname('med_code').AsString)+' _ '+
                    Trim(newQuery.fieldbyname('alise_desc').AsString)+' _ '+
                    Trim(newQuery.fieldbyname('upd_date').AsString)+' _ '+
                    Trim(newQuery.fieldbyname('oper_name').AsString));
    newQuery.Next;
  end;}
 { for i := 1 to 2 do
  begin
    j:=TMemo(FrmFirsrRecord.FindComponent('Memo'+IntTostr(i))).Lines.IndexOf(TGroupBox(TMemo(FrmFirsrRecord.FindComponent('Memo'+IntTostr(i))).Parent).Caption);
    if j <> -1 then
      TMemo(FrmFirsrRecord.FindComponent('Memo'+IntTostr(i))).Lines.Delete(j);
  end;}
  newQuery.Close;
  newQuery.Free;
  Memo1.Tag := length(Memo1.Text);
  Memo2.Tag := length(Memo2.Text);
  Memo3.Tag := length(Memo3.Text);
  Memo4.Tag := length(Memo4.Text);
  Memo5.Tag := length(Memo5.Text);
  Memo6.Tag := length(Memo6.Text);
  Memo7.Tag := length(Memo7.Text);
  Memo8.Tag := length(Memo8.Text);
  Memo9.Tag := length(Memo9.Text);

  //TestFunc(0,i,'000000000001');
end;

{procedure TFrmFirsrRecord.mynextnode( Key: string);
var
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
end;}

procedure TFrmFirsrRecord.TestFunc(degree : Integer;var itop: Integer; key: String);
var
  tmpqry1 : TADOQuery;
  i,j,k : Integer;
  myCheck : TCheckBox;
begin
{  tmpqry := TADOQuery.Create(FrmFirsrRecord);
  tmpqry.Connection := DM.ADOLink;
  with tmpqry do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select Count(*) as a from tmu_phrase_main where PHRASE_Father in (select PHRaSE_ID from tmu_phrase_main where PHRASE_Father ='+QT(Key)+')';
    open;

    i := FieldBYNAME('a').AsInteger;
    Close;
    SQL.Text := 'select * from tmu_phrase_main where PHRASE_Father ='+QT(Key);
    open;
    if i = 0 then
    begin
      j := 0;
      if not Eof then
        itop := itop + 32;
      While not eof do
      begin
        myCheck := TCheckBox.Create(Self);
        myCheck.Parent := ScrollBox1;
        myCheck.Name := 'CHK'+fieldbYname('PHRASE_ID').AsString;
        myCheck.Caption :=fieldbYname('PHRASE_Name').AsString;
        myCheck.Width := Length(Trim(fieldbYname('PHRASE_Name').AsString))*10+15;
        myCheck.Top := itop;
        myCheck.Left := degree * 32 + j;
        j := j + myCheck.Width + 16;
        Next;
      end;
    end
    else
    begin
      j := 0;
      While not eof do
      begin
        myCheck := TCheckBox.Create(Self);
        myCheck.Parent := ScrollBox1;
        myCheck.Name := 'CHK'+fieldbYname('PHRaSE_ID').AsString;
        myCheck.Caption :=fieldbYname('PHRASE_Name').AsString;
        myCheck.Top := 32 + itop;
        myCheck.Left := degree * 32 ;
        myCheck.Width := Length(Trim(fieldbYname('PHRASE_Name').AsString))*10+15;
        j := j + myCheck.Width + 16;
        k := degree + 1;
        itop := itop + 32;
        TestFunc(k,itop,fieldbYname('PHRaSE_ID').AsString);

        Next;
      end;
    end;
  end; }
end;

procedure TFrmFirsrRecord.DBText1Click(Sender: TObject);
var
  tmplab : TLabel;
  pname,pid,pfa,tmpsql :string;
  i : Integer;
begin
  inherited;

  pname := Trim(tmpqry.FieldByName('PHRASE_name').AsString);
  pid := '_'+Trim(tmpqry.FieldByName('phrase_id').AsString);
  pfa := Trim(tmpqry.FieldByName('PHRASE_Father').AsString);

  tmpsql:= phrase(0);
  SetParamter(tmpsql,'$PHRASE_FATHER$',qt(Trim(tmpqry.FieldByName('phrase_id').AsString)));
  SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(PageControl2.ActivePage.Tag+5)));
  SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
  SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Text := tmpsql;

  DM.QrySearch.Open;
  if not DM.QrySearch.IsEmpty then
  begin
    if FetchPhrase(pfa,Trim(tmpqry.FieldByName('phrase_id').AsString),STRKEY) then
    begin
      if pfa ='000000000000' then
      begin
        if PageControl2.ActivePageIndex= 0 then
        begin
          if memo3.Lines.Strings[memo3.Lines.Count- 1] <> '  ※'+pname then
            Memo3.Lines.Add('  ※'+Pname);
        end
        else if PageControl2.ActivePageIndex= 1 then
        begin
          if memo5.Lines.Strings[memo3.Lines.Count- 1] <> '  ※'+pname then
            Memo5.Lines.Add('  ※'+Pname);
        end;
        StrKey := '';
      end;
      tmplab :=  TLabel.Create(Self);
      tmplab.Parent := Panel3;
      tmplab.Cursor := crHandPoint;
      tmplab.Font.Size := 11;
      tmplab.Font.Color := clmaroon;
      tmplab.Font.Name := '標楷體';
      tmplab.Font.Style := [fsBold];
      tmplab.Caption :='>>'+ pname ;
      tmplab.Name := pid;
      tmplab.Hint := pfa;
      tmplab.Tag := tag;
      tmplab.Left := lt;
      tmplab.Top := 4;
      tmplab.OnClick := myLblClick;
      tmplab.AutoSize := True;
      lt := lt+tmplab.Width+2;
      inc(tag);
    end;
  end
  else
  begin
    if pfa ='000000000000' then
    begin
      if PageControl2.ActivePageIndex= 0 then
      begin
        if memo3.Lines.Strings[memo3.Lines.Count- 1] <> '  ※'+pname then
          Memo3.Lines.Add('  ※'+Pname);
      end
      else if PageControl2.ActivePageIndex= 1 then
      begin
        if memo5.Lines.Strings[memo3.Lines.Count- 1] <> '  ※'+pname then
          Memo5.Lines.Add('  ※'+Pname);
      end;
      StrKey := '';
    end
    else
    begin
      if PageControl2.ActivePageIndex= 0 then
      begin
        Memo3.Lines.Add('        '+GetMyStr(pfa)+'  ' +Pname);
        StrKey := '';
      end
      else if PageControl2.ActivePageIndex= 1 then
      begin
        Memo5.Lines.Add('        '+GetMyStr(pfa)+'  ' +Pname);
        StrKey := '';
      end
      else
      begin
        InsertIcd(ReturnName(pname));
      end;
    end;
    Tmemo(FrmFirsrRecord.FindComponent(Pagecontrol2.Hint)).Perform(WM_VSCROLL,SB_LINEDOWN ,0);
  end;
end;

procedure TFrmFirsrRecord.myLblClick(Sender: TObject);
var
  id,fath:string;
  lbl : TLabel;
  i : integer;
begin
  inherited;
  id := ReturnName(TLabel(Sender).Name);
  fath := TLabel(Sender).Hint;
  for i := FrmFirsrRecord.Panel3.ControlCount-1 downto  0 do
  begin
    if (FrmFirsrRecord.Panel3.Controls[i] is TLabel) then
      if FrmFirsrRecord.Panel3.Controls[i].Tag > TLabel(Sender).Tag then
      begin
        lt := lt - (TLabel(FrmFirsrRecord.Panel3.Controls[i]).Width+5);
        lbl := TLabel(FrmFirsrRecord.Panel3.Controls[i]);
        FrmFirsrRecord.Panel3.RemoveControl(lbl);
        lbl.Free;
      end;
  end;
  FetchPhrase(fath,id,Strkey);
end;

procedure TFrmFirsrRecord.CheckListBox1Click(Sender: TObject);
var
  i:integer;
  str :string;
begin
  inherited;
  if TCheckListBox(Sender).Checked[TCheckListBox(Sender).ItemIndex] then
  begin
    TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.Text := TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.Text+TCheckListBox(Sender).Items[TCheckListBox(Sender).ItemIndex]+', ';
  end
  else
  begin
    i:=TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).ItemIndex]+', ');
    if i <> -1 then
      TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.Delete(i);
  end;
end;

procedure TFrmFirsrRecord.CheckListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
  Temps : TStringList;
begin
  inherited;
  try
    i:=TCheckListBox(Sender).ItemAtPos(point(x,y),True); //取得點選之item
    if i>=0 then
      if x > TTempCheck(TCheckListBox(Sender)).GetCheckWidth  then
          TCheckListBox(Sender).Checked[i] := not TCheckListBox(Sender).Checked[i];

    if not TCheckListBox(Sender).Checked[i] then
      i:=TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).ItemIndex])
    else
      i := -1;
    if i <>-1 then
      TMemo(FrmFirsrRecord.FindComponent(TCheckListBox(Sender).Hint)).Lines.Delete(i);
  except
  end;
end;

function TFrmFirsrRecord.GetMyStr(id: String): String;
var
  TempQ : TAdoQuery;
begin
  TempQ := TAdoQuery.Create(self);
  TempQ.Connection := Dm.ADOLink;
  with TempQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from tmu_phrase_main where Phrase_id = '+Qt(id)+' and Phrase_father <> ''000000000000''');
    open;
    if not Eof then
      GetMyStr:=GetMyStr(FieldByName('Phrase_father').AsString) +' '+FieldByName('Phrase_name').AsString;
  end;
end;

procedure TFrmFirsrRecord.BitBtn1Click(Sender: TObject);
var
  TempQ : TAdoQuery;
  ALLNO,Q_STR,stemp,date,time,tmpSql : string;
  seqno,i : integer;
  SQLo: TObjectList;
  SQLs: TStrings;
  chek,havedata: Boolean;
begin
  inherited;
  havedata := False;
  chek := False;
  try
    //存檔
    strReplace(Memo1);
    strReplace(Memo2);
    strReplace(Memo3);
    strReplace(Memo4);
    strReplace(Memo5);
    strReplace(Memo6);
    strReplace(Memo7);

    SQLo:=TObjectList.Create;
    date := ROCDate(Now,'');
    time :=  ROCTimes(Now,'');
    TempQ := TAdoQuery.Create(self);
    TempQ.Connection := Dm.ADOLink;
    with TempQ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select nvl(max(seq_no),''0'') as seq_no,nvl(max(allorder_no),''0'') as allorder_no from epd_record where kind = ''FIRST_RECORD'' AND order_date= '+Qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo));
      //sql.SaveToFile('D:\aa.txt');
      open;
      if fieldbyname('seq_no').AsInteger <= 0 then
        seqno := 30000
      else
        seqno := fieldbyname('seq_no').AsInteger;
      if fieldbyname('allorder_no').AsInteger <= 0 then
        ALLNO := '1'
      else
        ALLNO := IntToStr(fieldbyname('allorder_no').AsInteger+1);
    end;

    chek :=  (Memo1.Tag <> length(Memo1.Text)) or (Memo2.Tag <> length(Memo2.Text)) or
             (Memo3.Tag <> length(Memo3.Text)) or (Memo4.Tag <> length(Memo4.Text)) or
             (Memo5.Tag <> length(Memo5.Text)) or (Memo6.Tag <> length(Memo6.Text)) or
             (Memo7.Tag <> length(Memo7.Text)) or (Memo8.Tag <> length(Memo8.Text)) or
             (Memo9.Tag <> length(Memo9.Text)) or (Memo10.Tag <> length(Memo10.Text)) or (Memo11.Tag <> length(Memo11.Text));
     //主訴
    if (Memo1.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Chief Complaint:','1',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo1.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo1.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo1.Lines.Strings[i]),'1',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','1',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
     //現病史
    if (Memo2.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Present Illness:','2',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo2.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo2.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo2.Lines.Strings[i]),'2',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','2',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //過去病史
    if (Memo4.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Past History:','3',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo4.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo4.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo4.Lines.Strings[i]),'3',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','3',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //過敏資料
    if (Memo7.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Allergy History:','4',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo7.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo7.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo7.Lines.Strings[i]),'4',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
    end;
    if (Memo6.Text <> '') and (chek) then
    begin
      if not havedata then
      begin
        inc(seqno);
        tmpSql := insertepdrecord('FIRST_RECORD','◎Allergy History:','5',date,time,ALLNO,IntToStr(seqno));
        SQLs := TStringList.Create;
        SQLs.Text:=tmpSql;
        SQLo.Add(SQLs);
      end;
      for i := 0 to Memo6.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo6.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo6.Lines.Strings[i]),'5',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','5',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //過去用藥史
    havedata := False;
    if (Memo8.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Medication History:','6',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo8.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo8.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo8.Lines.Strings[i]),'6',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
    end;
    if (Memo9.Text <> '') and (chek) then
    begin
      if not havedata then
      begin
        inc(seqno);
        tmpSql := insertepdrecord('FIRST_RECORD','◎Medication History:','7',date,time,ALLNO,IntToStr(seqno));
        SQLs := TStringList.Create;
        SQLs.Text:=tmpSql;
        SQLo.Add(SQLs);
      end;
      for i := 0 to Memo9.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo9.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo9.Lines.Strings[i]),'7',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','7',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //理學檢查
    if (Memo3.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Physical Examination:','11',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo3.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo3.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD',Memo3.Lines.Strings[i],'11',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','11',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //Trauma
    if (Memo5.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Trauma Sheet:','12',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo5.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo5.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD',Memo5.Lines.Strings[i],'12',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
    end;
    //Plan 治療計畫
    if (Memo11.Text <> '') and (chek) then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Plan(s):','8',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 0 to Memo11.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo11.Lines.Strings[i])<> '' then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD',Memo11.Lines.Strings[i],'8',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','8',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //impression診斷
    havedata := False;
    if SGIcd.Cells[1,1]<>'' then
    begin
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','◎Impression :','9',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
      for i := 1 to 10 do
      begin
        tmpSql := '';
        if Trim(SGIcd.Cells[0,i])<> '' then
        begin
          havedata := True;
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD',Trim(SGIcd.Cells[0,i])+'_'+Trim(SGIcd.Cells[1,i]),'9',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
      end;
      if (Memo10.Text <> '') and (chek) then
      begin
        if not havedata then
        begin
          inc(seqno);
          tmpSql := insertepdrecord('FIRST_RECORD','◎Impression :','10',date,time,ALLNO,IntToStr(seqno));
          SQLs := TStringList.Create;
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);
        end;
        for i := 0 to Memo10.Lines.Count-1 do
        begin
          tmpSql := '';
          if Trim(Memo10.Lines.Strings[i])<> '' then
          begin
            inc(seqno);
            tmpSql := insertepdrecord('FIRST_RECORD','  '+Trim(Memo10.Lines.Strings[i]),'10',date,time,ALLNO,IntToStr(seqno));
            SQLs := TStringList.Create;
            SQLs.Text:=tmpSql;
            SQLo.Add(SQLs);
          end;
        end;
      end;
      inc(seqno);
      tmpSql := insertepdrecord('FIRST_RECORD','  ','10',date,time,ALLNO,IntToStr(seqno));
      SQLs := TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    if SQLo.Count > 0 then
      if not DM.ExecSQL(SQLo) then
      begin
       ShowMessage('寫入資料庫失敗');
       exit;
      end;
    SQLo.Free;
     //列印
    if MessageDlg('是否列印病歷首頁',mtConfirmation, [mbYes, mbNo], 0) = 6 then
    begin
      //基本資料
      Q_STR := sql_str(3);
      SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
      SetParamter(q_str,'$OPD_DATE$',qt(GetEpdDate));
      DM.QrySubSearch.Close;
      DM.QrySubSearch.SQL.Text := Q_STR;
      DM.QrySubSearch.Open;
      if not dm.QrySubSearch.IsEmpty then
      begin
        if not assigned(FrmPrintFirstRecord) then
          FrmPrintFirstRecord := TFrmPrintFirstRecord.Create(Self);

        FrmPrintFirstRecord.QRLbchrno.Caption := TRIM(DM.QrySubSearch.FieldByName('chr_no').AsString);
        FrmPrintFirstRecord.QRLbpatname.Caption := trim(DM.QrySubSearch.FieldByName('pat_name').AsString);
        //FrmPrintFirstRecord.QRLbage.Caption := Trim(edtAge.Text) ;
        //FrmPrintFirstRecord.QRLbbedno.Caption := TRIM(DM.QrySubSearch.FieldByName('epd_bed').AsString);
        //FrmPrintFirstRecord.QRLBIdNo.Caption := GetIdNo;
        stemp := TRIM(DM.QrySubSearch.FieldByName('arrival_date').AsString);
        FrmPrintFirstRecord.QRLbArrival.Caption := format('到院時間:'+RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'%s')+'%s '+RocTimes(RocToTime(ReTurnName(stemp)),':'),['年','月','日']);

        FrmPrintFirstRecord.QRLbBirthday.Caption := '民國 '+IntToStr(strToInt(getyear(GetBirth)))+ '年 '+getmonth(GetBirth)+'月 '+getdays(GetBirth) +'日';
        FrmPrintFirstRecord.QRLbSex.Caption := SexType(Getsex01);
        FrmPrintFirstRecord.MYMEMO.Clear;
        //首頁檢傷
        //for i := 0 to phrasestl.Count-1 do
        //begin
        //  FrmPrintFirstRecord.MYMEMO.Add(phrasestl[i]);
        //end;
        DM.QryTemp.Close; //首頁
        DM.QryTemp.SQL.Text := 'select * from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from epd_record where kind = ''FIRST_RECORD'' AND order_date= '+Qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo)+')';
        //DM.QryTemp.SQL.SaveToFile('D:\firstrecord.txt');
        DM.QryTemp.Open;
        while not DM.QryTemp.Eof do
        begin
          FrmPrintFirstRecord.MYMEMO.Add(DM.QryTemp.fieldbyname('text').AsString);
          dm.QryTemp.Next;
        end;
        FrmPrintFirstRecord.PrepareSQL('n');
        FreeAndNil(FrmPrintFirstRecord);
      end;
      // ShowMessage('列印完成');
    end;
    Self.Close;
  except
    TempQ.Free;
  end;
  TempQ.Free;
end;

function TFrmFirsrRecord.insertepdrecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
var
  q_str : string;
begin
  q_str := GETEPDRECORD(0);
  SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
  SetParamter(q_str,'$KIND$',qt(kind));
  SetParamter(q_str,'$SEQ_NO$',QT(first));
  SetParamter(q_str,'$TEXT$',qt(TEXT));
  SetParamter(q_str,'$ORDER_SORT$',qt(STATUS));
  SetParamter(q_str,'$ALLORDER_NO$',QT(ALLNO));
  SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
  SetParamter(q_str,'$UPD_DATE$',qt(UPD_DATE));
  SetParamter(q_str,'$UPD_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$VS_CODE$',qt(GetVsCode));
  SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
  SetParamter(q_str,'$ORDER_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$DEL_FLAG$',qt('N'));
  Result := q_str;
end;

procedure TFrmFirsrRecord.PageControl2Change(Sender: TObject);
var
  lbl : TLabel;
  i : integer;
begin
  inherited;
  for i := FrmFirsrRecord.Panel3.ControlCount-1 downto  0 do
  begin
    if (FrmFirsrRecord.Panel3.Controls[i] is TLabel) then
    begin
      lbl := TLabel(FrmFirsrRecord.Panel3.Controls[i]);
      FrmFirsrRecord.Panel3.RemoveControl(lbl);
      lbl.Free;
    end;
  end;
  lt := 0;
  tag := 0;
  FetchPhrase('000000000000','000000000000',STRKEY);
end;

procedure TFrmFirsrRecord.FormCreate(Sender: TObject);
begin
  inherited;
 // phrasestl := TStringList.Create;
end;

procedure TFrmFirsrRecord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //phrasestl.Free;
end;

function TFrmFirsrRecord.InsertIcd(fee_code: string): Boolean;
var
  q_str : string;
begin
  if fee_code <> '' then
  begin
    with DM.QrySearch do
    begin
      q_str := getPreOrderSql(11);
      q_str := q_str + ' AND ICD9_CODE = '+Qt(fee_code);
      SQL.Text := q_str;
      Open;
      Last;
      First;
      if RecordCount > 0 then
      begin
        if RepeatInGrid(FieldByName('ICD9_CODE').AsString,'0', 0, SGIcd) then
        begin
          ShowMessage(FieldByName('ICD9_CODE').AsString+ #13#10 +FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
          SGIcd.Rows[SGIcd.Row].Clear;
        end
        else if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
        begin
          SGIcd.Cells[0, SGIcd.Row] := FieldByName('ICD9_CODE').AsString;
          SGIcd.Cells[1, SGIcd.Row] := FieldByName('ENG_full_DESC').AsString;
          SGIcd.Cells[2, SGIcd.Row] := FieldByName('CHN_full_DESC').AsString;
          SGIcd.Cells[3, SGIcd.Row] := FieldByName('slow_flag').AsString;
          SGIcd.Cells[4, SGIcd.Row] := FieldByName('urg_flag').AsString;
          if SGIcd.Row < (SGIcd.RowCount - 1) then
          begin
            SGIcd.Row := SGIcd.Row + 1;
          end;
        end
        else
          SGIcd.Rows[SGIcd.Row].Clear;
      end;
    end;
  end;
end;

function TFrmFirsrRecord.RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
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

procedure TFrmFirsrRecord.StringGridSort(Sender: TObject);
var
  i ,j,l: Integer;
  haveData : Boolean;
begin
  for i := 0 to TStringGrid(Sender).RowCount -1 do
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
procedure TFrmFirsrRecord.SGIcdDblClick(Sender: TObject);
begin
  inherited;
  if TStringGrid(Sender).Row > 0 then
  begin
    TStringGrid(Sender).Rows[TStringGrid(Sender).Row].Clear;
    StringGridSort(SGIcd);
  end;
end;

end.
