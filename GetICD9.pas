unit GetICD9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, DBCtrls, dbcgrids, ExtCtrls, ComCtrls, DB, ADODB;

type
  TFrmGetICD9 = class(TFrmMain)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    ListBox1: TListBox;
    ScrollBox1: TScrollBox;
    DBCtrlGrid2: TDBCtrlGrid;
    DBMemo1: TDBMemo;
    DBCtrlGrid4: TDBCtrlGrid;
    DBMemo3: TDBMemo;
    DBCtrlGrid5: TDBCtrlGrid;
    DBMemo4: TDBMemo;
    DBCtrlGrid3: TDBCtrlGrid;
    DBMemo2: TDBMemo;
    DBCtrlGrid6: TDBCtrlGrid;
    DBMemo5: TDBMemo;
    DBCtrlGrid7: TDBCtrlGrid;
    DBMemo6: TDBMemo;
    DBCtrlGrid8: TDBCtrlGrid;
    DBMemo7: TDBMemo;
    DBCtrlGrid9: TDBCtrlGrid;
    DBMemo8: TDBMemo;
    DBCtrlGrid10: TDBCtrlGrid;
    DBMemo9: TDBMemo;
    DtSICD10SHE1: TDataSource;
    DtSICD10SHE2: TDataSource;
    DtSICD10SHE3: TDataSource;
    DtSICD10SHE4: TDataSource;
    DtSICD10SHE5: TDataSource;
    DtSICD10SHE6: TDataSource;
    DtSICD10SHE7: TDataSource;
    DtSICD10SHE8: TDataSource;
    DtSICD10SHE9: TDataSource;
    DtSICD10: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOQuery8: TADOQuery;
    ADOQuery9: TADOQuery;
    ADOQuery10: TADOQuery;
    procedure DBText1Click(Sender: TObject);
    procedure myLblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure DBCtrlGrid2PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBMemo1Click(Sender: TObject);
  private
    { Private declarations }
    lt,tag :integer;
    tmpqry : TADOQuery;
    StrKey : String;
    function FetchPhrase(prat,key:string; var KeyStr : String):Boolean;
    procedure datactlclear(level:integer);
  public
    { Public declarations }
    send_father : string;
    icd9_record : TStringList;
    icd10_record : TStringList;
  end;

var
  FrmGetICD9: TFrmGetICD9;

implementation

uses Commfunc, MySQLc, Global, DBDM;

{$R *.dfm}


procedure TFrmGetICD9.myLblClick(Sender: TObject);
var
  id,fath:string;
  lbl : TLabel;
  i : integer;
begin
  inherited;
  id := ReturnName(TLabel(Sender).Name);
  fath := TLabel(Sender).Hint;
  for i := FrmGetICD9.Panel3.ControlCount-1 downto  0 do
  begin
    if (FrmGetICD9.Panel3.Controls[i] is TLabel) then
      if FrmGetICD9.Panel3.Controls[i].Tag > TLabel(Sender).Tag then
      begin                                                   // +5
        lt := lt - (TLabel(FrmGetICD9.Panel3.Controls[i]).Width+2);
        lbl := TLabel(FrmGetICD9.Panel3.Controls[i]);
        FrmGetICD9.Panel3.RemoveControl(lbl);
        lbl.Free;
      end;
  end;
  FetchPhrase(fath,id,Strkey);
end;

function TFrmGetICD9.FetchPhrase(prat,key:string; var KeyStr : String):Boolean;
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
  SetParamter(tmpsql,'$phrase_kind$',qt('0'));
  SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
  SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
  tmpqry := TADOQuery.Create(Self);
  tmpqry.Connection := DM.ADOLink;
  DataSource1.DataSet := tmpqry;
  tmpqry.Close;
  tmpqry.SQL.Text := tmpSql;
  tmpqry.Open;
  if tmpqry.IsEmpty then
  begin
    tmpsql:= phrase(0);
    SetParamter(tmpsql,'$PHRASE_FATHER$',qt(prat));
    SetParamter(tmpsql,'$phrase_kind$',qt('0'));
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
      tmplab.Caption := 'ICD9';
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
    keyStr := KeyStr +Trim(tmpqry.FieldByName('PHRASE_Name').AsString) + ' >>'
  end;
end;

procedure TFrmGetICD9.DBText1Click(Sender: TObject);
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
  SetParamter(tmpsql,'$phrase_kind$',qt('0'));
  SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
  SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Text := tmpsql;
  DM.QrySearch.Open;
  if not DM.QrySearch.IsEmpty then
  begin
    if FetchPhrase(pfa,Trim(tmpqry.FieldByName('phrase_id').AsString),STRKEY) then
    begin
      tmplab :=  TLabel.Create(Self);
      tmplab.Parent := Panel3;
      tmplab.Cursor := crHandPoint;
      tmplab.Font.Size := 11;
      tmplab.Font.Color := clmaroon;
      tmplab.Font.Name := '標楷體';
      tmplab.Font.Style := [fsBold];
      tmplab.Caption := ' >>'+ pname ;
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
    if pfa <>'000000000000' then
    begin
      if send_father = 'FRMORDER' then
      begin
        ListBox1.Items.Add(pname);
        StrKey := '';
      end;
    end;
  end;
end;

procedure TFrmGetICD9.FormShow(Sender: TObject);
begin
  inherited;
  //FetchPhrase('000000000000','000000000000',STRKEY);
  DBCtrlGrid10.Visible := False;
  DBCtrlGrid9.Visible := False;
  DBCtrlGrid8.Visible := False;
  DBCtrlGrid7.Visible := False;
  DBCtrlGrid6.Visible := False;
  DBCtrlGrid5.Visible := False;
  DBCtrlGrid4.Visible := False;
  DBCtrlGrid3.Visible := False;
  DBCtrlGrid2.Visible := False;
  DBMemo9.Top  := 3;
  DBMemo9.Left := 3;
  DBMemo8.Top  := 3;
  DBMemo8.Left := 3;
  DBMemo7.Top  := 3;
  DBMemo7.Left := 3;
  DBMemo6.Top  := 3;
  DBMemo6.Left := 3;
  DBMemo5.Top  := 3;
  DBMemo5.Left := 3;
  DBMemo4.Top  := 3;
  DBMemo4.Left := 3;
  DBMemo3.Top  := 3;
  DBMemo3.Left := 3;
  DBMemo2.Top  := 3;
  DBMemo2.Left := 3;
  DBMemo1.Top  := 3;
  DBMemo1.Left := 3;
  PageControl1.ActivePageIndex := 0;
  PageControl1Change(PageControl1);
end;

procedure TFrmGetICD9.ListBox1DblClick(Sender: TObject);
begin
  inherited;
  if ListBox1.ItemIndex <> -1 then
  begin
    ListBox1.DeleteSelected;
  end;
end;

procedure TFrmGetICD9.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i : integer;
begin
  inherited;
  for i := 0 to ListBox1.Count-1 do
  begin
    if trim(ListBox1.Items.Strings[i])<> '' then
    icd9_record.Add(ReturnName(ListBox1.Items.Strings[i]));
  end;
end;

procedure TFrmGetICD9.PageControl1Change(Sender: TObject);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  inherited;
  SQLs:=TStringList.Create;
  try
    case pagecontrol1.ActivePageIndex of
      1:  //ICD9常用項
        begin
          FetchPhrase('000000000000','000000000000',STRKEY);
        end;
      0:
        begin
          tmpSql:=sqlstr(35);
          SetParamter(tmpSql,'$DOC_CODE$',getUserId);
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
          ADOQuery2.SQL.Text:=tmpSql;
          ADOQuery2.Open;
          IF ADOQuery2.IsEmpty THEN
            DBCtrlGrid2.Visible := False
          ELSE
            DBCtrlGrid2.Visible := True;
        end;
    end;
  finally

  end;
end;

procedure TFrmGetICD9.DBCtrlGrid2PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  inherited;
  DBCtrlGrid.SelectedColor := clRed;
end;

procedure TFrmGetICD9.datactlclear(level:integer);
begin
  case level of
    1:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        ADOQuery7.Close;
        ADOQuery6.Close;
        ADOQuery5.Close;
        ADOQuery4.Close;
        ADOQuery3.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
        DBCtrlGrid7.Visible := False;
        DBCtrlGrid6.Visible := False;
        DBCtrlGrid5.Visible := False;
        DBCtrlGrid4.Visible := False;
        DBCtrlGrid3.Visible := False;
      end;
    2:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        ADOQuery7.Close;
        ADOQuery6.Close;
        ADOQuery5.Close;
        ADOQuery4.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
        DBCtrlGrid7.Visible := False;
        DBCtrlGrid6.Visible := False;
        DBCtrlGrid5.Visible := False;
        DBCtrlGrid4.Visible := False;
      end;
    3:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        ADOQuery7.Close;
        ADOQuery6.Close;
        ADOQuery5.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
        DBCtrlGrid7.Visible := False;
        DBCtrlGrid6.Visible := False;
        DBCtrlGrid5.Visible := False;
      end;
    4:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        ADOQuery7.Close;
        ADOQuery6.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
        DBCtrlGrid7.Visible := False;
        DBCtrlGrid6.Visible := False;
      end;
    5:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        ADOQuery7.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
        DBCtrlGrid7.Visible := False;
      end;
    6:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        ADOQuery8.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
        DBCtrlGrid8.Visible := False;
      end;
    7:
      begin
        ADOQuery10.Close;
        ADOQuery9.Close;
        DBCtrlGrid10.Visible := False;
        DBCtrlGrid9.Visible := False;
      end;
    8:
      begin
        ADOQuery10.Close;
        DBCtrlGrid10.Visible := False;
      end;
  end;
end;

procedure TFrmGetICD9.DBMemo1Click(Sender: TObject);
VAR
  tmpsql: string;
begin
  inherited;
  IF Sender = DBMemo1 THEN
  BEGIN
    datactlclear(1);
    tmpSql:=sqlstr(36);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery2.FIELDBYNAME('icd_group').AsString));
    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Text:=tmpSql;
    ADOQuery3.Open;
    if (ADOQuery3.IsEmpty) OR (trim(ADOQuery3.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid3.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery2.fieldbyname('icd_group').AsString)+trim(ADOQuery2.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery2.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery2.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery2.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery2.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery2.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery2.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery2.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery2.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery2.fieldbyname('icd_group').AsString)));
    end
    else
      DBCtrlGrid3.Visible := True;
  END
  else if Sender = DBMemo2 THEN
  begin
    datactlclear(2);
    tmpSql:=sqlstr(37);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery3.FIELDBYNAME('icd_group').AsString));
    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Text:=tmpSql;
    ADOQuery4.Open;
    if (ADOQuery4.IsEmpty) OR (trim(ADOQuery4.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid4.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery3.fieldbyname('icd_group').AsString)+trim(ADOQuery3.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery3.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery3.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery3.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery3.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery3.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery3.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery3.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery3.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery3.fieldbyname('icd_group').AsString)));
    end
    else
      DBCtrlGrid4.Visible := True;
  end
  else if Sender = DBMemo3 THEN
  begin
    datactlclear(3);
    tmpSql:=sqlstr(38);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery4.FIELDBYNAME('icd_group').AsString));
    ADOQuery5.Close;
    ADOQuery5.SQL.Clear;
    ADOQuery5.SQL.Text:=tmpSql;
    ADOQuery5.Open;
    if (ADOQuery5.IsEmpty) OR (trim(ADOQuery5.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid5.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery4.fieldbyname('icd_group').AsString)+trim(ADOQuery4.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery4.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery4.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery4.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery4.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery4.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery4.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery4.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery4.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery4.fieldbyname('icd_group').AsString)));
    end
    else
      DBCtrlGrid5.Visible := True;
  end
  else if Sender = DBMemo4 THEN
  begin
    datactlclear(4);
    tmpSql:=sqlstr(39);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery5.FIELDBYNAME('icd_group').AsString));
    ADOQuery6.Close;
    ADOQuery6.SQL.Clear;
    ADOQuery6.SQL.Text:=tmpSql;
    ADOQuery6.Open;
    if (ADOQuery6.IsEmpty) OR (trim(ADOQuery6.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid6.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery5.fieldbyname('icd_group').AsString)+trim(ADOQuery5.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery5.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery5.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery5.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery5.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery5.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery5.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery5.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery5.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery5.fieldbyname('icd_group').AsString)));
    end
    else
      DBCtrlGrid6.Visible := True;
  end
  else if Sender = DBMemo5 THEN
  begin
    datactlclear(5);
    tmpSql:=sqlstr(40);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery6.FIELDBYNAME('icd_group').AsString));
    ADOQuery7.Close;
    ADOQuery7.SQL.Clear;
    ADOQuery7.SQL.Text:=tmpSql;
    ADOQuery7.Open;
    if (ADOQuery7.IsEmpty) OR (trim(ADOQuery7.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid7.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery6.fieldbyname('icd_group').AsString)+trim(ADOQuery6.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery6.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery6.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery6.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery6.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery6.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery6.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery6.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery6.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery6.fieldbyname('icd_group').AsString)));
    end
    else
    begin
      DBCtrlGrid7.Visible := True;
      DBCtrlGrid7.SetFocus;
    end;
  end
  else if Sender = DBMemo6 THEN
  begin
    datactlclear(6);
    tmpSql:=sqlstr(41);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery7.FIELDBYNAME('icd_group').AsString));
    ADOQuery8.Close;
    ADOQuery8.SQL.Clear;
    ADOQuery8.SQL.Text:=tmpSql;
    ADOQuery8.Open;
    if (ADOQuery8.IsEmpty) OR (trim(ADOQuery8.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid8.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery7.fieldbyname('icd_group').AsString)+trim(ADOQuery7.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery7.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery7.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery7.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery7.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery7.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery7.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery7.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery7.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery7.fieldbyname('icd_group').AsString)));
    end
    else
    begin
      DBCtrlGrid8.Visible := True;
      DBCtrlGrid8.SetFocus;
    end;
  end
  else if Sender = DBMemo7 THEN
  begin
    datactlclear(7);
    tmpSql:=sqlstr(42);
    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery8.FIELDBYNAME('icd_group').AsString));
    ADOQuery9.Close;
    ADOQuery9.SQL.Clear;
    ADOQuery9.SQL.Text:=tmpSql;
    ADOQuery9.Open;
    if (ADOQuery9.IsEmpty) OR (trim(ADOQuery9.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid9.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery8.fieldbyname('icd_group').AsString)+trim(ADOQuery8.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery8.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery8.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery8.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery8.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery8.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery8.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery8.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery8.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery8.fieldbyname('icd_group').AsString)));
    end
    else
    begin
      DBCtrlGrid9.Visible := True;
      DBCtrlGrid9.SetFocus;
    end;
  end
  else if Sender = DBMemo8 THEN
  begin
    datactlclear(8);
    tmpSql:=sqlstr(43);

    SetParamter(tmpSql,'$ICD_GROUP$',Qt(ADOQuery9.FIELDBYNAME('icd_group').AsString));
    ADOQuery10.Close;
    ADOQuery10.SQL.Clear;
    ADOQuery10.SQL.Text:=tmpSql;
    ADOQuery10.Open;
    if (ADOQuery10.IsEmpty) OR (trim(ADOQuery10.fieldbyname('icd_group').AsString) = '') then
    begin
      DBCtrlGrid10.Visible := false;
      IF MessageDlg('已查詢到 "'+trim(ADOQuery9.fieldbyname('icd_group').AsString)+trim(ADOQuery9.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery9.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery9.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery9.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery9.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery9.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery9.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery9.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery9.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery9.fieldbyname('icd_group').AsString)));
    end
    else
    begin
      DBCtrlGrid10.Visible := True;
      DBCtrlGrid10.SetFocus;
    end;
  end
  ELSE if Sender = DBMemo9 THEN
  begin
    IF ADOQuery10.RecordCount > 0 THEN
      IF MessageDlg('已查詢到 "'+trim(ADOQuery10.fieldbyname('icd_group').AsString)+trim(ADOQuery10.fieldbyname('eng_name').AsString)+'帶入資料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Length(trim(ADOQuery10.fieldbyname('icd_group').AsString))>= 4 then
          icd10_record.Add(copy(trim(ADOQuery10.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery10.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery10.fieldbyname('icd_group').AsString))-3))
          //FrmOrder.InsertIcd10(copy(trim(ADOQuery10.fieldbyname('icd_group').AsString),1,3)+'.'+copy(trim(ADOQuery10.fieldbyname('icd_group').AsString),4,Length(trim(ADOQuery10.fieldbyname('icd_group').AsString))-3))
        else
          icd10_record.Add(trim(ADOQuery10.fieldbyname('icd_group').AsString));
          //FrmOrder.InsertIcd10((trim(ADOQuery10.fieldbyname('icd_group').AsString)));
  END;
end;

end.
