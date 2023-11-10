unit Ditto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Grids, ExtCtrls, XPMan, ComCtrls, StdCtrls, Buttons, Menus,
  Contnrs, SHELLapi;

type
  TFrmDitto = class(TFrmMain)
    Panel1: TPanel;
    Panel3: TPanel;
    Sgfete: TStringGrid;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    TabSheet4: TTabSheet;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid2: TStringGrid;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SButs: TBitBtn;
    SButo: TBitBtn;
    SButsp: TBitBtn;
    SButA: TBitBtn;
    btnRePrint: TBitBtn;
    BtnDCord: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SgfeteDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SButsClick(Sender: TObject);
    procedure StringGrid6DblClick(Sender: TObject);
    procedure btnRePrintClick(Sender: TObject);
    procedure BtnDCordClick(Sender: TObject);
  private
    { Private declarations }
    //row,col,
    feecount : integer;
    DTIM,chkgetno,allseqno : string;
    procedure ClearSg(sender: TObject);
    procedure showdata;
    Function delitem(messg: string):Boolean;
    procedure SP_ordertranf;
  public
    { Public declarations }
    UseFlag,CBqrykind : Boolean;
    ditto_feeno: string;
  end;

var
  FrmDitto: TFrmDitto;

implementation
                 // , MyUser
uses DBDM, Global, Order, Commfunc, MySQLc, ERsFunc;

{$R *.dfm}

procedure TFrmDitto.FormShow(Sender: TObject);
begin
  inherited;
  chkgetno := 'N';
  if not CBqrykind then
  begin
    SButs.Visible := False;
    SButo.Visible := False;
    SButsp.Visible := False;
    SButA.Visible := False;
    btnRePrint.Visible := false;
    BtnDCord.Visible := false;
  end
  else
  begin
    DTIM := ROCTimes(Now,'');
    btnRePrint.Visible := True;
    BtnDCord.Visible := True;
  end;
  feecount := 0;
  showdata;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmDitto.BitBtn1Click(Sender: TObject);
VAR
  Count, i : INTEGER;
begin
  inherited;
  for Count := 0 to FrmDitto.ComponentCount - 1 do
  begin
    if (FrmDitto.Components[Count].ClassName = 'TCheckBox') then
      TCheckBox(FrmDitto.Components[Count]).checked := true;
    if (FrmDitto.Components[Count].ClassName = 'TStringGrid') then
      if (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid2') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid5') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid3') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid4') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid7') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid8') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid1') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid6') then
        for i := 1 to TStringGrid(FrmDitto.Components[Count]).RowCount -1 do
        begin
          if trim(TStringGrid(FrmDitto.Components[Count]).Cells[1,i]) <> '' then
            TStringGrid(FrmDitto.Components[Count]).Cells[0,i] := 'V';
        end;
  end;
end;

procedure TFrmDitto.BitBtn4Click(Sender: TObject);
var
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter : STRING;
  messg,myStr:string;
begin
  inherited;
  if chkgetno = 'Y' then
  begin
    chkgetno := 'N';
    {//�������
    Paramter:=TStringList.Create;
    PType:=TStringList.Create;
    RType:=TStringList.Create;
    PData:=TStringList.Create;
    SpName:=getSpSql(4,Paramter,PType,RType);
    PData.Add(getFeeNo);
    PData.Add(IntToStr(all_seq));
    PData.Add('E');
    ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
    if ReturnID(ExeSPResult) = 'N' then
    BEGIN
      sql_time_log('����:',ReturnName(ExeSPResult));
      ShowMessage('����'+ReturnName(ExeSPResult));
    END;
    //�C�L
    SetSheet(GetFeeNo+AddChar(Trim(allseqno),'0',4));
    myStr :=Setsys.ReadString('OTHERSYSTEMLINK','�R��','');  //�C�L
    myParamter := Setsys.ReadString('PARAMTER','�R��','');
    comStrRep(mystr);
    comstrRep(myParamter);
    //sql_time_log('�R��',myParamter);
    if myStr ='' then
    begin
      //showMessage(NullStrTo(gsSysMsg,'���C�L�\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
      sql_time_log('�R��:','���C�L�\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC');
      Exit;
    end;
    //setprinterdef('PRINTA5');
    try
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    except
      ShowMessage('�I�s�C�L�{�����ѡA�ШϥθɦL�覡�C�L');
    end;
    //setprinterdef('PRINTA4');

    //update e_ud_order nus_conf
    Paramter.Clear;
    PType.Clear;
    RType.Clear;
    PData.Clear;
    SpName   := getSpSql(2,Paramter,PType,RType);
    PData.Add(getFeeNo);
    PData.Add(IntToStr(all_seq));
    ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
    Paramter.Free;
    RType.Free;
    PType.Free;
    PData.Free;
    if ReturnID(ExeSPResult) = 'N' then
    BEGIN
      MessageDlg('�g�J����('+SpName+')���D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
      exit;
    END; }
    SP_ordertranf;
  end;
  Close;
end;

procedure TFrmDitto.StringGrid1DblClick(Sender: TObject);
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
        if TStringGrid(sender).Cells[0,i] <> '�R' then
          if TRIM(TStringGrid(sender).Cells[1,i]) <> '' THEN
            TStringGrid(sender).Cells[0,i] := '';
      end;

    end;
  end
  else
  begin
    if TStringGrid(sender).Col = 0 then
    begin
      if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] <> '�R' then
        if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] ='V' then
          TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := ''
        else
          if TStringGrid(sender).Cells[1,TStringGrid(sender).Row] <>'' then
            TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := 'V';
    end;
  end;
end;

procedure TFrmDitto.ClearSg(sender: TObject);
var
  i : Integer;
  vst : string;
begin
  if (trim(TStringGrid(sender).Cells[0,1])='') then
    vst := 'V'
  else
    vst := '';
  for i := 1 to TStringGrid(sender).RowCount -1 do
    if ((TStringGrid(sender).Cells[2,i]<>'') OR (TStringGrid(sender).Cells[1,i]<>'')) AND (trim(TStringGrid(sender).Cells[0,1])<>'�R') then
      TStringGrid(sender).Cells[0,i] := vst;
end;


procedure TFrmDitto.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SourceCol, SourceRow : Integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
  if SourceRow = 0 then
    ClearSg(sender);
end;

procedure TFrmDitto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  UseFlag := True;
  ditto_feeno := Trim(Sgfete.Cells[feecount,sgfete.row]);
  Close;
end;

procedure TFrmDitto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CBqrykind then
    if chkgetno = 'Y' then
    begin
      SP_ordertranf;
      chkgetno := 'N';
    end;
  inherited;
  action := Cafree;
end;

procedure TFrmDitto.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmDitto := nil;
end;

procedure TFrmDitto.SgfeteDblClick(Sender: TObject);
VAR
  tmpSql,titles : string;
  I,j,rh1,rh2,rh3,rh4,rh5 : INTEGER;
  str : TStrings;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter : STRING;
  messg,myStr,st,ot,at,pt:string;
begin
  inherited;
  if CBqrykind then
  begin
    if chkgetno = 'Y' then
    begin
      if allseqno <> Sgfete.Cells[2,Sgfete.Row] then
      begin
        chkgetno := 'N';
        SP_ordertranf;
        {//�������
        Paramter:=TStringList.Create;
        PType:=TStringList.Create;
        RType:=TStringList.Create;
        PData:=TStringList.Create;
        SpName:=getSpSql(4,Paramter,PType,RType);
        PData.Add(getFeeNo);
        PData.Add(IntToStr(all_seq));
        PData.Add('E');
        ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
        if ReturnID(ExeSPResult) = 'N' then
        BEGIN
          sql_time_log('����:',ReturnName(ExeSPResult));
          ShowMessage('����'+ReturnName(ExeSPResult));
        END;
        //�C�L
        SetSheet(GetFeeNo+AddChar(Trim(allseqno),'0',4));
        myStr :=Setsys.ReadString('OTHERSYSTEMLINK','�R��','');  //�C�L
        myParamter := Setsys.ReadString('PARAMTER','�R��','');
        comStrRep(mystr);
        comstrRep(myParamter);
        //sql_time_log('�R��',myParamter);
        if myStr ='' then
        begin
          //showMessage(NullStrTo(gsSysMsg,'���C�L�\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
          sql_time_log('�R��:','���C�L�\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC');
          Exit;
        end;
        //setprinterdef('PRINTA5');
        try
          if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
            ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
        except
          ShowMessage('�I�s�C�L�{�����ѡA�ШϥθɦL�覡�C�L');
        end;
        //setprinterdef('PRINTA4');}
      end;
    end
    else
      allseqno := Sgfete.Cells[2,Sgfete.Row];
  end;


  //OPD_BASIC
  StringGrid1.ColWidths[3] := -1;
  StringGrid1.ColWidths[4] := -1;
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.Rows[i].Clear;
  end;
  StringGrid1.Cells[0,0] := '��';
  StringGrid1.Cells[1,0] := '�N�X';
  StringGrid1.Cells[2,0] := '�W��';
  st  := '';
  ot  := '';
  at  := '';
  pt  := '';
  RichEdit1.Hint :='';
  RichEdit2.Hint :='';
  RichEdit3.Hint :='';
  RichEdit4.Hint :='';
  RichEdit1.Lines.Clear;
  RichEdit2.Lines.Clear;
  RichEdit3.Lines.Clear;
  RichEdit4.Lines.Clear;
  DM.QrySearch.Close;
  if CBqrykind then//�����ݶE����
  begin
    rh1 := 0;
    rh2 := 0;
    rh3 := 0;
    rh4 := 0;
    rh5 := 0;
    SButs.Enabled := true;
    SButo.Enabled := true;
    SButsp.Enabled := true;
    SButA.Enabled := true;                                  //and substr(kind,1,1)=''O''
    tmpSql:='select * from epd_record where fee_no=$FEE_NO$ AND ORDER_DATE=$ORDER_DATE$ and allorder_no=$allorder_no$ order by seq_no';
    SetParamter(tmpSql,'$allorder_no$',qt(Trim(Sgfete.Cells[2,Sgfete.row])));
    SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,sgfete.row])));
    SetParamter(tmpSql,'$ORDER_DATE$',qt(Trim(Sgfete.Cells[1,Sgfete.row])));
    DM.QrySearch.SQL.Text:=tmpSql;
    DM.QrySearch.Open;
    while not DM.QrySearch.Eof do
    begin
      if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
        titles := '�R '
      else
        titles  := '';
      if trim(DM.QrySearch.FieldByName('kind').AsString)='O_SUBJECT' then
      begin
        if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
          SButs.Enabled := False;
        RichEdit1.Hint := trim(DM.QrySearch.FieldByName('ALLORDER_NO').AsString)+'_'+trim(DM.QrySearch.FieldByName('KIND').AsString);
        st := st + titles+soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;
      end;
      if trim(DM.QrySearch.FieldByName('kind').AsString)='O_OJECT' then
      begin
        if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
          SButo.Enabled := False;
        RichEdit2.Hint := trim(DM.QrySearch.FieldByName('ALLORDER_NO').AsString)+'_'+trim(DM.QrySearch.FieldByName('KIND').AsString);
        ot := ot + titles+soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;
      end;
      if trim(DM.QrySearch.FieldByName('kind').AsString)='O_PLAN' then
      begin
        if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
          SButsp.Enabled := False;
        RichEdit3.Hint := trim(DM.QrySearch.FieldByName('ALLORDER_NO').AsString)+'_'+trim(DM.QrySearch.FieldByName('KIND').AsString);
        pt := pt + titles+soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;
      end;
      if trim(DM.QrySearch.FieldByName('kind').AsString)='O_HISTORY' then
      begin
        if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
          SButA.Enabled := False;
        RichEdit4.Hint := trim(DM.QrySearch.FieldByName('ALLORDER_NO').AsString)+'_'+trim(DM.QrySearch.FieldByName('KIND').AsString);
        at := at + titles+soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;
      end;
      if trim(DM.QrySearch.FieldByName('kind').AsString)='A_ASSESSMENT' then
      begin
        Inc(rh5);
        if DM.QrySearch.FieldByName('del_flag').AsString = 'Y' then
        begin
          StringGrid1.Cells[0,rh5] := '�R';
          StringGrid1.Cells[1,rh5] := trim(copy(DM.QrySearch.FieldByName('text').AsString,1,12));
          StringGrid1.Cells[2,rh5] := trim(copy(DM.QrySearch.FieldByName('text').AsString,13,length(trim(DM.QrySearch.FieldByName('text').AsString))));
        end
        else
        begin
          StringGrid1.Cells[1,rh5] := trim(copy(DM.QrySearch.FieldByName('text').AsString,1,12));
          StringGrid1.Cells[2,rh5] := trim(copy(DM.QrySearch.FieldByName('text').AsString,13,length(trim(DM.QrySearch.FieldByName('text').AsString))));
        end;
      end;
      DM.QrySearch.Next;
    end;
    if st <> '' then
    begin
      RichEdit1.Lines.Add('');
      RichEdit1.Lines.Strings[0] := st;
    end
    else
    begin
      SButs.Enabled := False;
    end;
    if ot <> '' then
    begin
      RichEdit2.Lines.Add('');
      RichEdit2.Lines.Strings[0] := ot;
    end
    else
    begin
      SButo.Enabled := False;
    end;
    if at <> '' then
    begin
      RichEdit4.Lines.Add('');
      RichEdit4.Lines.Strings[0] := at;
    end
    else
    begin
      SButA.Enabled := False;
    end;
    if pt <> '' then
    begin
      RichEdit3.Lines.Add('');
      RichEdit3.Lines.Strings[0] := pt;
    end
    else
    begin
      SButsp.Enabled := False;
    end;

    DM.QrySearch.Close;
    DM.QrySubSearch.Close;
    TRY
      //OPD_MED
      str := TStringList.Create;
      tmpSql := getDitto(14);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid2);
      //�ç�
      str.Clear;
      tmpSql := getDitto(19);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid3);
      //��r����
      str.Clear;
      tmpSql := getDitto(20);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid4);
      //opd_fee�B�m
      str.Clear;
      tmpSql := getDitto(17);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and c.seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid5);
      //����
      str.Clear;
      tmpSql := getDitto(16);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and a.seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid6);
      //�ˬd
      str.Clear;
      tmpSql := getDitto(15);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and a.seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid7);
      //��g
      str.Clear;
      tmpSql := getDitto(18);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      if Trim(Sgfete.Cells[2,Sgfete.row]) ='' then
        SetParamter(tmpSql,'$listnow$','and seq ='+qt('1'))
      else
        SetParamter(tmpSql,'$listnow$','and seq ='+Trim(Sgfete.Cells[2,Sgfete.row]));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid8);
    finally
      FreeAndNil(str);
    end;
  end
  else
  begin
    if copy(Trim(Sgfete.Cells[feecount,sgfete.row]),1,1)='E' then //��E���Ҧ���soap
    begin
      tmpSql:='select * from epd_record where fee_no=$FEE_NO$ AND ORDER_DATE=$ORDER_DATE$ and del_flag=''N'' order by allorder_no,seq_no';
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,sgfete.row])));
      SetParamter(tmpSql,'$ORDER_DATE$',Qt(Trim(Sgfete.Cells[1,sgfete.row])));
      DM.QrySearch.SQL.Text:=tmpSql;
      DM.QrySearch.Open;
      while not DM.QrySearch.Eof do
      begin
        if trim(DM.QrySearch.FieldByName('kind').AsString)='O_SUBJECT' then
          st := st + soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;

        if trim(DM.QrySearch.FieldByName('kind').AsString)='O_OJECT' then
          ot := ot + soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;

        if trim(DM.QrySearch.FieldByName('kind').AsString)='O_PLAN' then
          pt := pt + soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;

        if trim(DM.QrySearch.FieldByName('kind').AsString)='O_HISTORY' then
          at := at + soapstrReplace(TrimLeft(DM.QrySearch.FieldByName('text').AsString)) + #13;
        dm.QrySearch.Next;
      end;
      DM.QrySearch.Close;
    end;
    IF (icdchangea <> 'N') THEN
      tmpSql:=getDitto(25)
    else
      tmpSql:=getDitto(2);
    //SetParamter(tmpSql,'$dept_code$',Qt(getDeptCode));
    SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,sgfete.row])));
    SetParamter(tmpSql,'$opd_date$',Qt(Trim(Sgfete.Cells[1,sgfete.row])));
    DM.QrySearch.SQL.Text:=tmpSql;
    sql_Waiting_log('open',tmpSql);
    DM.QrySearch.Open;
    sql_Waiting_log('close','');
    if not DM.QrySearch.IsEmpty then
    begin
      if copy(Trim(Sgfete.Cells[feecount,sgfete.row]),1,1)='E' then
      begin
        RichEdit1.Lines.Add('');
        RichEdit1.Lines.Strings[0] := st;

        RichEdit2.Lines.Add('');
        RichEdit2.Lines.Strings[0] := ot;

        RichEdit4.Lines.Add('');
        RichEdit4.Lines.Strings[0] := at;

        RichEdit3.Lines.Add('');
        RichEdit3.Lines.Strings[0] := pt;
      end
      else
      begin
        RichEdit1.Lines.Add('');
        RichEdit1.Lines.Strings[0] := DM.QrySearch.FieldByName('SUB_DESC2').AsString;
        RichEdit2.Lines.Add('');
        RichEdit2.Lines.Strings[0] := DM.QrySearch.FieldByName('OBJ_DESC').AsString;
        RichEdit3.Lines.Add('');
        RichEdit3.Lines.Strings[0] := DM.QrySearch.FieldByName('PLAN_DESC').AsString;
        RichEdit4.Lines.Add('');
        RichEdit4.Lines.Strings[0] := DM.QrySearch.FieldByName('SUB_DESC').AsString;
      end;
      StringGrid1.Cells[0,0] := '��';
      StringGrid1.Cells[1,0] := '�N�X';
      StringGrid1.Cells[2,0] := '�W��';
      StringGrid1.Cells[1,1] := DM.QrySearch.FieldByName('ICD9_CODE1').AsString;
      StringGrid1.Cells[1,2] := DM.QrySearch.FieldByName('ICD9_CODE2').AsString;
      StringGrid1.Cells[1,3] := DM.QrySearch.FieldByName('ICD9_CODE3').AsString;
      StringGrid1.Cells[1,4] := DM.QrySearch.FieldByName('ICD9_CODE4').AsString;
      StringGrid1.Cells[1,5] := DM.QrySearch.FieldByName('ICD9_CODE5').AsString;
      StringGrid1.Cells[2,1] := DM.QrySearch.FieldByName('SPEC_CODE1').AsString;
      StringGrid1.Cells[2,2] := DM.QrySearch.FieldByName('SPEC_CODE2').AsString;
      StringGrid1.Cells[2,3] := DM.QrySearch.FieldByName('SPEC_CODE3').AsString;
      StringGrid1.Cells[2,4] := DM.QrySearch.FieldByName('SPEC_CODE4').AsString;
      StringGrid1.Cells[2,5] := DM.QrySearch.FieldByName('SPEC_CODE5').AsString;
      IF Trim(DM.QrySearch.FieldByName('ICD9_CODE1').AsString)<> '' THEN
        StringGrid1.Cells[0,1] := 'V';
      IF Trim(DM.QrySearch.FieldByName('ICD9_CODE2').AsString)<> '' THEN
        StringGrid1.Cells[0,2] := 'V';
      IF Trim(DM.QrySearch.FieldByName('ICD9_CODE3').AsString)<> '' THEN
        StringGrid1.Cells[0,3] := 'V';

      DM.QrySubSearch.Close;
      IF (icdchangea <> 'N') THEN
      begin
        tmpSql:=getDitto(26);
      end
      else
      begin
        tmpSql:=getDitto(3);
        SetParamter(tmpSql,'$CHR_NO$',Qt(Trim(DM.QrySearch.FieldByName('CHR_NO').AsString)));
        SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(DM.QrySearch.FieldByName('OPD_DATE').AsString)));
      end;

      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(DM.QrySearch.FieldByName('FEE_NO').AsString)));
      DM.QrySubSearch.SQL.Text :=tmpSql;
      DM.QrySubSearch.Open;
      I := 5;
      WHILE NOT DM.QrySubSearch.Eof DO
      BEGIN
        INC(I);
        IF Trim(DM.QrySubSearch.FieldByName('SDIAG_CODE').AsString)<> '' THEN
        BEGIN
          StringGrid1.Cells[0,I] := 'V';
          StringGrid1.Cells[1,I] := Trim(DM.QrySubSearch.FieldByName('SDIAG_CODE').AsString);
          StringGrid1.Cells[2,I] := Trim(DM.QrySubSearch.FieldByName('CHN_SIMP_DESC').AsString);
        END;
        DM.QrySubSearch.Next;
      END;
    end;
    DM.QrySearch.Close;
    DM.QrySubSearch.Close;
    TRY
      //OPD_MED
      str := TStringList.Create;
      tmpSql := getDitto(4);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid2);
      //�ç�
      str.Clear;
      tmpSql := getDitto(9);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      sql_Waiting_log('open',tmpSql);
      DM.OpenSQL(str,StringGrid3);
      //��r����
      str.Clear;
      tmpSql := getDitto(10);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid4);
      //opd_fee�B�m
      str.Clear;
      tmpSql := getDitto(7);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid5);
      //����
      str.Clear;
      tmpSql := getDitto(6);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid6);
      //�ˬd
      str.Clear;
      tmpSql := getDitto(5);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid7);

      //��g
      str.Clear;
      tmpSql := getDitto(8);
      SetParamter(tmpSql,'$OPD_DATE$',Qt(Trim(Sgfete.Cells[1,Sgfete.row])));
      SetParamter(tmpSql,'$FEE_NO$',Qt(Trim(Sgfete.Cells[feecount,Sgfete.row])));
      str.Add(tmpSql);
      DM.OpenSQL(str,StringGrid8);
    finally
      FreeAndNil(str);
    end;
  end;
  for i := 1 to 8 do
  begin
    if i >= 2 then
    begin
      Pagecontrol1.ActivePageIndex := i-2;
      With TStringGrid(FrmDitto.FindComponent('StringGrid'+IntToStr(i))) do
      begin
        if Cells[1,1] ='' then
          PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(RowCount-2)+')'
        else
          PageControl1.ActivePage.Caption := PageControl1.ActivePage.Hint+'('+IntToStr(RowCount-1)+')';
        ColWidths[0] := 30;
        ColWidths[1] := 100;
        ColWidths[2] := 350;
        ColWidths[3] := 35;
        ColWidths[4] := 45;
        case i of
          2:
            begin
              ColWidths[5] := 35;
              ColWidths[6] := 35;
              ColWidths[7] := 35;
              ColWidths[8] := 35;
              ColWidths[9] := 35;
              ColWidths[10] := 35;
              ColWidths[11] := 35;
              ColWidths[12] := -1;
              ColWidths[14] := -1;
            end;
          3:
            begin
              ColWidths[5] := -1;
              ColWidths[6] := -1;
              ColWidths[7] := -1;
            end;
          4:
            begin
              ColWidths[3] := -1;
              ColWidths[4] := -1;
            end;
          5:
            begin
              ColWidths[5] := 35;
              ColWidths[6] := -1;
              ColWidths[7] := -1;
              ColWidths[8] := -1;
            end;
          6:
            begin
              ColWidths[5] := 35;
              ColWidths[6] := -1;
              ColWidths[7] := -1;
              ColWidths[8] := -1;
              ColWidths[9] := -1;
              ColWidths[10] := -1;
              ColWidths[11] := -1;
              ColWidths[12] := -1;
            end;
          7,8:
            begin
              ColWidths[5] := 35;
              ColWidths[6] := -1;
              ColWidths[7] := -1;
              ColWidths[8] := -1;
              ColWidths[9] := -1;
              ColWidths[10] := -1;
              ColWidths[11] := -1;
              ColWidths[12] := -1;
              ColWidths[13] := -1;
            end;
        end;
      end;
    end;
  end;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmDitto.BitBtn3Click(Sender: TObject);
VAR
  Count, i : INTEGER;
begin
  inherited;
  for Count := 0 to FrmDitto.ComponentCount - 1 do
  begin
    if (FrmDitto.Components[Count].ClassName = 'TCheckBox') then
    BEGIN
      TCheckBox(FrmDitto.Components[Count]).checked := False;
    END;
    if (FrmDitto.Components[Count].ClassName = 'TStringGrid') then
      if (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid2') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid5') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid3') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid4') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid7') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid8') or
         (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid1') or (TStringGrid(FrmDitto.Components[Count]).Name ='StringGrid6') then
        for i := 1 to TStringGrid(FrmDitto.Components[Count]).RowCount -1 do
        begin
          if trim(TStringGrid(FrmDitto.Components[Count]).Cells[1,i]) <> '' then
            TStringGrid(FrmDitto.Components[Count]).Cells[0,i] := '';
        end;
  end;
end;

procedure TFrmDitto.showdata;
var
  strqry: string;
  str : TStrings;
begin
  try
    str := TStringList.Create;
    if CBqrykind then
    begin
      feecount := 3;
      //Sgfete.ColCount := 4;
      Sgfete.ColCount := 9;
      Sgfete.ColWidths[0] := 40;
      //Sgfete.ColWidths[1] := 70;
      Sgfete.ColWidths[1] := -1;
      Sgfete.ColWidths[2] := 40;
      Sgfete.ColWidths[3] := -1;
      Sgfete.ColWidths[4] := 50;
      Sgfete.ColWidths[5] := 50;
      Sgfete.ColWidths[6] := 70;
      Sgfete.ColWidths[7] := 70;
      Sgfete.ColWidths[8] := -1;
      strqry := getDitto(11);
      SetParamter(strqry,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(strqry,'$EPD_DATE$',Qt(GetEpdDate));
    end
    else
    begin
      feecount := 6;
      Sgfete.ColCount := 9;
      Sgfete.ColWidths[0] := 40;
      Sgfete.ColWidths[1] := 60;
      Sgfete.ColWidths[2] := 50;
      Sgfete.ColWidths[3] := 75;
      Sgfete.ColWidths[4] := 60;
      Sgfete.ColWidths[5] := 40;
      Sgfete.ColWidths[6] := -1;
      Sgfete.ColWidths[7] := -1;
      Sgfete.ColWidths[8] := -1;
      strqry := getDitto(1);
      SetParamter(strqry,'$chr_no$',Qt(getChrNo));
    end;
    str.Add(strqry);
    sql_Waiting_log('open',strqry);
    DM.OpenSQL(str,Sgfete);
    sql_Waiting_log('close','');
    SgfeteDblClick(Sgfete);
    if CBqrykind then
      allseqno := Sgfete.Cells[2,Sgfete.Row];
  finally
    FreeAndNil(str);
  end;
end;

procedure TFrmDitto.SButsClick(Sender: TObject);
var
  sqlstr : string;
  rihtxt : TRichEdit;
  i : integer;
begin
  inherited;
  if TSpeedButton(Sender).Name = 'SButs' then
    rihtxt := RichEdit1
  else if TSpeedButton(Sender).Name = 'SButo' then
    rihtxt := RichEdit2
  else if TSpeedButton(Sender).Name = 'SButsp' then
    rihtxt := RichEdit3
  else
    rihtxt := RichEdit4;
  if trim(rihtxt.Lines.Text) <> '' then
  begin
  DM.QryUpdate.Close;
  sqlstr := GETEPDRECORD(4);
  SetParamter(sqlstr,'$DEL_DATE$',Qt(ROCDate(Now,'')));
  SetParamter(sqlstr,'$DEL_TIME$',Qt(ROCTimes(Now,'')));
  SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sqlstr,'$KIND$',Qt(ReturnName(rihtxt.Hint)));
  SetParamter(sqlstr,'$ALLORDER_NO$',Qt(ReturnId(rihtxt.Hint)));
  SetParamter(sqlstr,'$ORDER_DATE$',Qt(GetEpdDate));

  //SQLs.Add('UPDATE epd_record SET DEL_FLAG=''Y'',DEL_DATE='+Qt(DD)+',DEL_TIME='+Qt(DTIM4)+' WHERE FEE_NO='+Qt(GetFeeNo)+' AND KIND=''A_ASSESSMENT'' AND SUBSTR(TEXT,1,12)='+QT(CharAdd(TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString),' ',12)));

  DM.QryUpdate.SQL.Text := sqlstr;
  try
    DM.ADOLink.BeginTrans;
    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;
  except on E: Exception do
    begin
      sql_time_log('ExecSQL:',E.Message+';sql:'+sqlstr);
      DM.ADOLink.RollbackTrans;
      ShowMessage('�R������');
      exit;
    end;
  end;
  for i := 0 to rihtxt.Lines.Count-1 do
    if trim(rihtxt.Lines.Strings[i]) <> '' then
      rihtxt.Lines.Strings[i] := '�R'+ rihtxt.Lines.Strings[i];
  end;
end;

procedure TFrmDitto.StringGrid6DblClick(Sender: TObject);
var
  OrderType,q_str,oldseq,oldsheetno,STROLDSEQNO,oldlabno: string;
  Seq : INTEGER;
  tmpsg : TStringGrid;
  SQLs: TStrings;
  SQLo: TObjectList;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult,order_status,join_no : STRING;
begin
  inherited;
  order_status := '';
  join_no := '';
  if CBqrykind then
  begin
    if (trim(TStringGrid(Sender).Cells[1,TStringGrid(Sender).Row])='') and (trim(TStringGrid(Sender).Cells[2,TStringGrid(Sender).Row])='') then
      exit;

    if TStringGrid(Sender).Name='StringGrid2' then  //�ī~
    begin
      OrderType:='M';
      tmpsg := StringGrid2;
      Seq := 14;
      join_no := trim(tmpsg.Cells[15,tmpsg.row]);
    end;
    if TStringGrid(Sender).Name='StringGrid3' then  //�ç�
    begin
      OrderType:='O';
      tmpsg := StringGrid3;
      Seq := 6;
      join_no := trim(tmpsg.Cells[8,tmpsg.row]);
    end;
    if TStringGrid(Sender).Name='StringGrid4' then  //��r����
    begin
      OrderType:='T';
      tmpsg := StringGrid4;
      Seq := 5;
    end;
    if TStringGrid(Sender).Name='StringGrid5' then  //�B�m
    begin
      OrderType:='F';
      tmpsg := StringGrid5;
      Seq := 7;
      join_no := trim(tmpsg.Cells[9,tmpsg.row]);
      order_status := trim(tmpsg.Cells[8,tmpsg.row]);
    end;
    if TStringGrid(Sender).Name='StringGrid6' then  //����
    begin
      OrderType:='L';
      tmpsg := StringGrid6;
      Seq := 11;
      join_no := trim(tmpsg.Cells[13,tmpsg.row]);
      order_status := trim(tmpsg.Cells[12,tmpsg.row]);
    end;
    if TStringGrid(Sender).Name='StringGrid7' then  //�ˬd
    begin
      OrderType:='C';
      tmpsg := StringGrid7;
      Seq := 12;
      join_no := trim(tmpsg.Cells[14,tmpsg.row]);
      order_status := trim(tmpsg.Cells[13,tmpsg.row]);
    end;
    if TStringGrid(Sender).Name='StringGrid8' then  //��g
    begin
      OrderType:='X';
      tmpsg := StringGrid8;
      Seq := 12;
      join_no := trim(tmpsg.Cells[14,tmpsg.row]);
      order_status := trim(tmpsg.Cells[13,tmpsg.row]);
    end;

    IF (order_status ='Y') AND
       ((TStringGrid(Sender) = StringGrid6) OR (TStringGrid(Sender) = StringGrid7) OR (TStringGrid(Sender) = StringGrid8)) THEN
    BEGIN
      ShowMessage('�wñ�����椣��R��!!');
      Exit;
    END;

    if Trim(join_no)<> '' then
      ShowMessage(trim(TStringGrid(Sender).Cells[2,TStringGrid(Sender).Row])+' ������Ʀ��s�a���إ����@�_�R���A�wñ�����s�a���صL�k�R��');

    if MessageDlg(trim(tmpsg.Cells[2,tmpsg.Row])+' �T�w�n�R��������ƶ�?',mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      tmpsg.Cells[0,tmpsg.row] := 'V';
      BtnDCordClick(BtnDCord);
    end;

    {   �Ī��ƦC:   ��,�N�X,�W��,���q,�W�v,���,�Ѽ�,�~�|,�`�q,���,�۶O,�]�˶q,���,�Ƶ�,seq,join_no
        StringGrid2 0  1    2     3   4     5    6    7    8   9     10    11    12   13   14    15
        �ˬd���ƦC: ��,�N�X,�W��,�ƶq,����,�۶O,a.opd_date,item_no,exper_type,exper_class,order_type,memo_desc,seq,order_seq,join_no
        StringGrid7 0  1    2    3    4    5       6         7        8          9          10          11     12      13      14
        ���窺�ƦC: ��,�N�X,�W��,�ƶq,����,�۶O,���,EXPER_KIND,CODE_NO,ITEM_NO,ORDER_TYPE,seq,order_seq,join_no
        StringGrid6 0  1    2    3    4    5    6       7        8        9       10       11     12        13
        �B�m���ƦC: ��,�N�X,�W��,����,�ƶq,�۶O,a.opd_date,seq,order_seq,join_no
        StringGrid5 0  1    2    3    4    5        6      7      8         9
        ��g���ƦC: ��,�N�X,�W��,�ƶq,����,�۶O,a.opd_date,item_no,exper_type,'',order_type,'',seq,order_seq,join_no
        StringGrid8  0  1    2    3    4    5       6         7        8       9    10       11  12    13      14
        �ç����ƦC: ��,�N�X,�W��,�ƶq,�۶O,a.opd_date,seq,order_seq,join_no
        StringGrid3 0  1    2    3    4        5      6       7        8
        ��r���ƦC: ��,�N�X,�W��,a.order_date,a.sheet_no,order_seq,join_no
        StringGrid4 0  1    2        3           4          5         6}
  

  end;
end;

procedure TFrmDitto.btnRePrintClick(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
begin
  inherited;
  SetSheet(GetFeeNo+AddChar(Trim(Sgfete.Cells[2,Sgfete.row]),'0',4));
  mystr := '';
  myParamter := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TBitBtn(Sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TBitBtn(Sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  //sql_time_log('�ɦL',myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
  end;
end;

procedure TFrmDitto.BtnDCordClick(Sender: TObject);
var
  OrderType,q_str,oldseq,oldsheetno,STROLDSEQNO,oldlabno: string;
  Seq,i, j,statuno,j_no,sgcount : INTEGER;
  tmpsg : TStringGrid;
  SQLs: TStrings;
  SQLo: TObjectList;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult,order_status,mssge,joinno : STRING;
begin
  inherited;

  if CBqrykind then
  begin
    for sgcount:= 0 to 6 do
    begin
      case sgcount of
        0:
          begin //�ī~
            OrderType := 'M';
            tmpsg     := StringGrid2;
            Seq       := 14;
            statuno   := 0;
            j_no      := 15;
          end;
        1:
          begin //�ç�
            OrderType := 'O';
            tmpsg     := StringGrid3;
            Seq       := 6;
            statuno   := 0;
            j_no      := 8;
          end;
        2:
          begin //��r����
            OrderType := 'T';
            tmpsg     := StringGrid4;
            Seq       := 5;
            statuno   := 0;
            j_no      := 0;
          end;
        3:
          begin//�B�m
            OrderType := 'F';
            tmpsg     := StringGrid5;
            Seq       := 7;
            statuno   := 8;
            j_no      := 9;
          end;
        4:
          begin//����
            OrderType := 'L';
            tmpsg     := StringGrid6;
            Seq       := 11;
            statuno   := 12;
            j_no      := 13;
          end;
        5:
          begin  //�ˬd
            OrderType := 'C';
            tmpsg     := StringGrid7;
            Seq       := 12;
            statuno   := 13;
            j_no      := 14;
          end;
        6:
          begin //��g
            OrderType := 'X';
            tmpsg     := StringGrid8;
            Seq       := 12;
            statuno   := 13;
            j_no      := 14;
          end;
      end;//case

      //�P�_�O�_�i�H�R���B�s�a�@�֧R��(�i�R�����Ŀ�_��)
      joinno := '';
      for i := 1 to tmpsg.RowCount -1 do
      begin
        order_status := 'N';
        if (trim(tmpsg.Cells[0,i]) = 'V') and (trim(tmpsg.Cells[2,i])<>'') and (trim(tmpsg.Cells[1,i])<>'') then
        begin
          order_status := trim(tmpsg.Cells[statuno,i]);

          //�P�@��StringGrid���@�ӥH�W��join_no
          if (trim(joinno)<> '') and (trim(joinno)<> 'V') and (trim(joinno)<>trim(tmpsg.Cells[j_no,i])) then //join_no���@�˥N�X���@�֧R���A�wñ�������~
            for j := 1 to tmpsg.RowCount -1 do
              if (trim(tmpsg.Cells[statuno,j])<> 'Y') and (trim(tmpsg.Cells[j_no,j])= joinno) then
                tmpsg.Cells[0,j] := 'V';

          joinno := trim(tmpsg.Cells[j_no,i]);

          if order_status='Y' then
          begin
            mssge := mssge+ trim(tmpsg.Cells[1,i])+'_'+trim(tmpsg.Cells[2,i])+':�wñ�����椣��R��!!'+#10#13;
            tmpsg.Cells[0,i] := '';
            order_status     := 'N';
            Continue;
          end;

          //�P�_�@�z�O�_���w���涵��
          if trim(tmpsg.Cells[16,i])> '0' then //�w����ƶq
          begin
            //107.06.15 add
            if OrderType = 'M' then  //�ī~�}��R��������
            begin
              if (trim(tmpsg.Cells[16,i])> '0') and (trim(tmpsg.Cells[16,i]) < trim(tmpsg.Cells[17,i])) then
              begin
                mssge := mssge+ trim(tmpsg.Cells[1,i])+'_'+trim(tmpsg.Cells[2,i])+':�w���@�z����O���A�Ъ`�N�b�جO�_���T!!'+#10#13;
              end
              else if (trim(tmpsg.Cells[16,i])> '0') and (trim(tmpsg.Cells[16,i]) = trim(tmpsg.Cells[17,i])) then
              begin
                mssge := mssge+ trim(tmpsg.Cells[1,i])+'_'+trim(tmpsg.Cells[2,i])+':�@�z�O���w�������槹���A���i�R���ī~!!'+#10#13;
                tmpsg.Cells[0,i] := '';
                Continue;
              end;
            end
            else
            begin
              mssge := mssge+ trim(tmpsg.Cells[1,i])+'_'+trim(tmpsg.Cells[2,i])+':�w���檺���ؤ���R��!!'+#10#13;
              tmpsg.Cells[0,i] := '';
              Continue;
            end;  //END �ī~�}��R��
          end;
        end;
      end;//for rowcount

      if (trim(joinno)<> '') and (trim(joinno)<> 'V') then //join_no���@�˥N�X���@�֧R���A�wñ�������~
        for i := 1 to tmpsg.RowCount -1 do
          if (trim(tmpsg.Cells[statuno,i])<> 'Y') and (trim(tmpsg.Cells[j_no,i])= joinno) then
            tmpsg.Cells[0,i] := 'V';

    end;//for sg0~6

    //��ڧR��
    if delitem('ALL') then
    begin
      SgfeteDblClick(Self);
      if mssge <> '' then
        ShowMessage(mssge);
    end
    else
      ShowMessage('�g�J��Ʈw����');
  end;
end;

Function TFrmDitto.delitem(messg: string):Boolean;
var
  i,sgcount,seq,j_no,statuno : INTEGER;
  tmpsg : TStringGrid;
  SQLs: TStrings;
  SQLo: TObjectList;
  joinno: string;
  OrderType,q_str,oldseq,oldsheetno,STROLDSEQNO,oldlabno,order_status,mssge: string;
begin
  DTIM := ROCTimes(Now,'');
  if CBqrykind then
  begin
    //�R���Ŀﶵ��
    SQLo := TObjectList.Create;
    for sgcount:= 0 to 6 do
    begin
      case sgcount of
        0:
          begin //�ī~
            OrderType := 'M';
            tmpsg     := StringGrid2;
            Seq       := 14;
            statuno   := 0;
            j_no      := 15;
          end;
        1:
          begin //�ç�
            OrderType := 'O';
            tmpsg     := StringGrid3;
            Seq       := 6;
            statuno   := 0;
            j_no      := 8;
          end;
        2:
          begin //��r����
            OrderType := 'T';
            tmpsg     := StringGrid4;
            Seq       := 5;
            statuno   := 0;
            j_no      := 0;
          end;
        3:
          begin//�B�m
            OrderType := 'F';
            tmpsg     := StringGrid5;
            Seq       := 7;
            statuno   := 8;
            j_no      := 9;
          end;
        4:
          begin//����
            OrderType := 'L';
            tmpsg     := StringGrid6;
            Seq       := 11;
            statuno   := 12;
            j_no      := 13;
          end;
        5:
          begin  //�ˬd
            OrderType := 'C';
            tmpsg     := StringGrid7;
            Seq       := 12;
            statuno   := 13;
            j_no      := 14;
          end;
        6:
          begin //��g
            OrderType := 'X';
            tmpsg     := StringGrid8;
            Seq       := 12;
            statuno   := 13;
            j_no      := 14;
          end;
      end;//case


      for i := 1 to tmpsg.RowCount -1 do
      begin
        order_status := 'N';
        if (trim(tmpsg.Cells[0,i]) = 'V') and (trim(tmpsg.Cells[2,i])<>'') and (trim(tmpsg.Cells[1,i])<>'') then
        begin
          order_status := trim(tmpsg.Cells[statuno,i]);
          joinno       := trim(tmpsg.Cells[j_no,i]);
          
          IF order_status ='Y' THEN
          BEGIN
            mssge := mssge+ trim(tmpsg.Cells[1,i])+'_'+trim(tmpsg.Cells[2,i])+':�wñ�����椣��R��!!'+#10#13;
            Continue;
          END;
          if chkgetno ='N' then //�u���@���Ǹ��B�O�_����flag
          begin
            if not GetMaxNo then
            begin
              ShowMessage('���Ǹ�����');
              exit;
            end;
            inc(all_seq);
            chkgetno := 'Y';
          end;
          //�R��
          q_str := sql_str(8);
          SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
          SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
          SetParamter(q_str,'$DC_DATE$',Qt(ROCDate(now,'')));
          SetParamter(q_str,'$DC_TIME$',Qt(ROCTime(now,'')));
          SetParamter(q_str,'$DC_OPER$',Qt(getUserId));
          SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
          SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpsg.Cells[1,i])));
          SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpsg.Cells[Seq,i])));
          SQLs := TStringList.Create;
          SQLs.Add(q_str);
          SQLo.Add(SQLs);

          //���¸��
          DM.QrySubSearch.Close;
          q_str:=sql_str(9);
          SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
          SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
          SetParamter(q_str,'$SO_FLAG$',Qt(OrderType));
          SetParamter(q_str,'$FEE_CODE$',Qt(tmpSG.Cells[1,i]));
          SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
          DM.QrySubSearch.SQL.Text := q_str;
          DM.QrySubSearch.Open;
          if not DM.QrySubSearch.IsEmpty then
          begin
            oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
            oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
            STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
            oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);

            //insert
            q_str := sql_str(10);
            SQLs := TStringList.Create;
            Inc(all_sheet_no);
            Inc(RECORD_SEQ_no);
            SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
            SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));                                    //�}�榸��
            SetParamter(q_str,'$ORDER_TEXT$',Qt(Trim(DM.QrySubSearch.fieldbyname('ORDER_TEXT').AsString)));
            SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
            SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
            SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
            SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
            SetParamter(q_str,'$SO_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('SO_FLAG').AsString)));
            SetParamter(q_str,'$FEE_CODE$',qt(Trim(DM.QrySubSearch.fieldbyname('FEE_CODE').AsString)));
            SetParamter(q_str,'$FEE_CODE1$',qt(Trim(DM.QrySubSearch.fieldbyname('FEE_CODE').AsString)));
            SetParamter(q_str,'$FEE_NAME$',qt(Trim(DM.QrySubSearch.fieldbyname('FEE_NAME').AsString)));
            SetParamter(q_str,'$ORDER_DOC$',qt(getUserId));
            SetParamter(q_str,'$ORDER_TYPE$',qt(Trim(DM.QrySubSearch.fieldbyname('ORDER_TYPE').AsString)));
            SetParamter(q_str,'$ORDER_DAYS$',qt(Trim(DM.QrySubSearch.fieldbyname('ORDER_DAYS').AsString)));
            SetParamter(q_str,'$QTY_NUM$',qt(Trim(DM.QrySubSearch.fieldbyname('QTY_NUM').AsString)));
            SetParamter(q_str,'$UNIT_DESC$',qt(Trim(DM.QrySubSearch.fieldbyname('UNIT_DESC').AsString)));
            SetParamter(q_str,'$CIR_CODE$',qt(Trim(DM.QrySubSearch.fieldbyname('CIR_CODE').AsString)));
            SetParamter(q_str,'$PATH_CODE$',qt(Trim(DM.QrySubSearch.fieldbyname('PATH_CODE').AsString)));
            SetParamter(q_str,'$SELF_PAY_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('SELF_PAY_FLAG').AsString)));
            SetParamter(q_str,'$URG_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('URG_FLAG').AsString)));
            SetParamter(q_str,'$DC_FLAG$',qt('Y'));
            SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
            SetParamter(q_str,'$UPD_DATE$',qt(ROCDate(Now,'')));
            SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
            SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));
            SetParamter(q_str,'$MEMO_DESC$',qt(Trim(DM.QrySubSearch.fieldbyname('MEMO_DESC').AsString)));
            SetParamter(q_str,'$PROG_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('PROG_FLAG').AsString)));
            SetParamter(q_str,'$PRINT_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('PRINT_FLAG').AsString)));
            SetParamter(q_str,'$ARRG_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('ARRG_FLAG').AsString)));
            SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
            SetParamter(q_str,'$Exper_type$',qt(Trim(DM.QrySubSearch.fieldbyname('Exper_type').AsString)));
            SetParamter(q_str,'$Exper_class$',qt(Trim(DM.QrySubSearch.fieldbyname('Exper_class').AsString)));
            SetParamter(q_str,'$Part_code$',qt(Trim(DM.QrySubSearch.fieldbyname('Part_code').AsString)));
            SetParamter(q_str,'$GRIND_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('GRIND_FLAG').AsString)));
            SetParamter(q_str,'$PAY_FLAG$',qt(Trim(DM.QrySubSearch.fieldbyname('PAY_FLAG').AsString)));
            SetParamter(q_str,'$TTL_QTY$',qt(Trim(DM.QrySubSearch.fieldbyname('TTL_QTY').AsString)));
            SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
            SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq));
            SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
            SetParamter(q_str,'$FEE_UNIT$',qt(Trim(DM.QrySubSearch.fieldbyname('FEE_UNIT').AsString)));
            SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
            SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
            SetParamter(q_str,'$NUS_OPER$',qt(''));
            SetParamter(q_str,'$IPD_FLAG$',qt(''));
            SetParamter(q_str,'$VS_DOC$',qt(Trim(DM.QrySubSearch.fieldbyname('VS_DOC').AsString)));
            SetParamter(q_str,'$JOIN_NO$',qt(Trim(DM.QrySubSearch.fieldbyname('join_no').AsString)));
            SQLs.Text:=q_str;
            SQLo.Add(SQLs);
          end;
          DM.QrySubSearch.Close;
        end;
      end;
    end;// for sgcount}
    if SQLo.Count <= 0 then
    begin
      SQLo.Free;
      Result := True;
    end
    else
      if not DM.ExecSQL(SQLo) then
      begin
        SQLo.Free;
        Result := False;
      end
      ELSE
      BEGIN
        SQLo.Free;
        Result := True;
      END;
  end;//CBqrykind
end;

procedure TFrmDitto.SP_ordertranf;
var
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter : STRING;
  myStr:string;
begin
  //�������
  Paramter:=TStringList.Create;
  PType:=TStringList.Create;
  RType:=TStringList.Create;
  PData:=TStringList.Create;
  SpName:=getSpSql(4,Paramter,PType,RType);
  PData.Add(getFeeNo);
  PData.Add(IntToStr(all_seq));
  PData.Add('E');
  ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
  if ReturnID(ExeSPResult) = 'N' then
  BEGIN
    sql_time_log('����:',ReturnName(ExeSPResult));
    ShowMessage('����'+ReturnName(ExeSPResult));
  END;
  //�C���s�ɤW�ǹq�l�f��
  IF EMRPrint_EVERY_TIME THEN
    Temp_EMRRecord(FrmOrder.edtAge.Text,IntToStr(all_seq),'D');

  //�C�L
  SetSheet(GetFeeNo+AddChar(Trim(allseqno),'0',4));
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','�R��','');  //�C�L
  myParamter := Setsys.ReadString('PARAMTER','�R��','');
  comStrRep(mystr);
  comstrRep(myParamter);

  if myStr ='' then
  begin
    sql_time_log('�R��:','���C�L�\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC');
    Exit;
  end;

  try
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
    ShowMessage('�I�s�C�L�{�����ѡA�ШϥθɦL�覡�C�L');
  end;


  //update e_ud_order nus_conf
  Paramter.Clear;
  PType.Clear;
  RType.Clear;
  PData.Clear;
  SpName   := getSpSql(2,Paramter,PType,RType);
  PData.Add(getFeeNo);
  PData.Add(IntToStr(all_seq));
  ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
  Paramter.Free;
  RType.Free;
  PType.Free;
  PData.Free;
  if ReturnID(ExeSPResult) = 'N' then
  BEGIN
    MessageDlg('�g�J����('+SpName+')���D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
    exit;
  END;

end;

end.
