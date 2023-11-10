//FEE_NO OK 20160718

unit ExitHosp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrmExitHosp = class(TFrmMain)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    RadioGroup2: TListBox;
    Memo1: TMemo;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup2DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure RadioGroup2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    itno,itsubno :string;
  public
    { Public declarations }
    clas :string;
  end;

var
  FrmExitHosp: TFrmExitHosp;

implementation

uses Commfunc, DBDM, Global, MySQLc, DB, ERsFunc, MAJORTRA;

{$R *.dfm}

procedure TFrmExitHosp.FormShow(Sender: TObject);
var
  sqrt : string;
  i,tno : integer;
begin
  inherited;
  itno := '';
  itsubno := '';
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  sqrt := othe_HIS(0);
  SetParamter(sqrt,'$expression$','fee_no='+Qt(GetFeeNo)+' and epd_date='+qt(GetEpdDate));
  DM.QryTemp.SQL.Text := sqrt;
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    if clas = 'EXIT' then
    begin
      itno  := trim(DM.QryTemp.fieldbyname('care').AsString);
      itsubno := trim(DM.QryTemp.fieldbyname('leave_reason').AsString);
    end
    else
    begin
      itno  := trim(DM.QryTemp.fieldbyname('return_code').AsString);
      itsubno := trim(DM.QryTemp.fieldbyname('return_reason').AsString);
    end;
  end;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  sqrt := sql_str(13);
  if clas = 'EXIT' then
  begin
    RadioGroup1.Caption :='離院方式';
    SetParamter(sqrt,'$CODE_DTL$',qt('12'));
  end
  else
  begin
    RadioGroup1.Caption :='返診原因';
    SetParamter(sqrt,'$CODE_DTL$',qt('1A'));
  end;
  DM.QryTemp.SQL.Text := sqrt+' order by code_type';
  DM.QryTemp.Open;
  while not dm.QryTemp.Eof do
  begin
    if Length(trim(DM.QryTemp.FieldByName('code_no').AsString)) = 2 then
      RadioGroup1.Items.Add(trim(DM.QryTemp.FieldByName('code_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('code_desc').AsString));
    DM.QryTemp.Next;
  end;
  if itsubno <> '' then
   Memo1.Lines.Text := itsubno;
  //if RadioGroup1.Items.Count <> 0 then
  //  RadioGroup1.ItemIndex := 0;
end;

procedure TFrmExitHosp.RadioGroup1Click(Sender: TObject);
var
  cono : string;
  i,tno : integer;
begin
  inherited;
  RadioGroup2.Items.Clear;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  if clas = 'EXIT' then
    DM.QryTemp.SQL.Add('select * from code_dtl where code_type=''12'' and code_no <> '+qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))+' and InStr(code_no,'+qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))+') > 0')
  else
    DM.QryTemp.SQL.Add('select * from code_dtl where code_type=''1A'' and code_no <> '+qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))+' and InStr(code_no,'+qt(ReturnId(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))+') > 0');
  DM.QryTemp.Open;
  while not dm.QryTemp.Eof do
  begin
    RadioGroup2.Items.Add(trim(DM.QryTemp.FieldByName('code_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('code_desc').AsString));
    DM.QryTemp.Next;
  end;
  if RadioGroup2.Items.Count <> 0 then
    RadioGroup2.ItemIndex := 0;
  DM.QryTemp.Close;
end;

procedure TFrmExitHosp.BitBtn1Click(Sender: TObject);
VAR
  SQSTR, seqno, BackFlag, str, medcir : STRING;
  sno, i : integer;
  trnoflag : Boolean;
  str1,str2: TStringList;
begin
  inherited;
  //save data no the epd_his
  trnoflag := false;
  if RadioGroup1.ItemIndex = -1 then
  begin
    ShowMessage('請選擇');
    exit;
  end;
  BackFlag := '';
  BackFlag := SetSys.ReadString('SYSTEM','BACKFLAG','');
  //20140402離院方式為轉院並在ini設定要填寫轉院檢核表項目
  Str1 := TStringList.Create;
  Str2 := TStringList.Create;
  str :=  SetSys.ReadString('SYSTEM','TRANFER','');
  if str <> '' then
  begin
    while not (Str = '') do
    begin
      Str1.Add(ReturnId(Str));
      Str := ReturnName(str);
    end;
  end;
  
  DM.ADOLink.BeginTrans;
  try
    if clas = 'EXIT' then
    begin
      SQSTR := othe_HIS(1);
      SetParamter(SQSTR,'$expression$',' CARE=$CARE$,leave_reason=$leave_reason$  ');
      if (Trim(RadioGroup2.Items.Text) = '') or (RadioGroup2.ItemIndex = -1) then //all item text
      begin
        SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))));
        medcir := ReturnName(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]));
      end
      else
      begin
        SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))));
        medcir := ReturnName(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]));
        str2.Add(Trim(ReturnName(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex])));
        for i := 0 to str1.Count-1 do
        begin
          trnoflag := ( str2.IndexOf(Str1.Strings[i]) > -1 );
          if trnoflag then
            break;
        end;
      end;
      if Trim(Memo1.Text)<> '' then
        medcir := medcir + Trim(Memo1.Text);
      SetParamter(SQSTR,'$leave_reason$',Qt(Trim(Memo1.Text)));
      SetParamter(SQSTR,'$FEE_NO$',Qt(Trim(GetFeeNo)));
      SetParamter(SQSTR,'$EPDDATE$',Qt(Trim(GetEpdDate)));

      //寫入護理計錄
      InserCARERECORD_DATA_ER(' ','離院原因='+medcir,' ','CARERECORD',' ','');
     { //送EMR
      if NURDATA.Count > 0 then
      begin
        if not Assigned(FrmNursEMR) then
          FrmNursEMR := TFrmNursEMR.Create(Self);
        FrmNursEMR.MYMEMO := NURDATA;
        FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
        FrmNursEMR.PrepareSQL('NURDATA');
        if Assigned(FrmNursEMR) then
          FreeAndNil(FrmNursEMR);
      end;}
    end
    else
    begin
      //返診save data no the epd_log
      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      DM.QryInsert.SQL.Text :='select nvl(max(SEQ_NO),''0'') as seq_no from EPDEXITBK_LOG where fee_no='+qt(GetFeeNo);
      DM.QryInsert.Open;
      sno := DM.QryInsert.fieldbyname('seq_no').AsInteger;
      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      DM.QryInsert.SQL.Text :='select SEQ_NO from EPDEXITBK_LOG where fee_no='+qt(GetFeeNo)+' and TYPE_M =''02'' ';
      DM.QryInsert.Open;
      if DM.QryInsert.IsEmpty then
      begin
        //Insert
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add('select * from epd_his where fee_no='+Qt(re72feeno)+' and epd_date='+Qt(trim(GetEpdDate)));
        DM.QryTemp.Open;
        SQSTR := othe_HIS(3);
        SetParamter(SQSTR,'$SEQ_NO$',IntToStr(sno+1));
        SetParamter(SQSTR,'$OPD_DATE$',Qt(trim(GetEpdDate)));
        SetParamter(SQSTR,'$OPD_TIME$',Qt(Trim(GetEpdTime)));
        SetParamter(SQSTR,'$FEE_NO$',Qt(Trim(GetFeeNo)));
        SetParamter(SQSTR,'$CHR_NO$',Qt(Trim(GetChrNo)));
        SetParamter(SQSTR,'$PAT_NAME$',Qt(Trim(GetPatName)));
        SetParamter(SQSTR,'$DOC_CODE$',Qt(Trim(getUserId)));
        if re72h ='24' then
          SetParamter(SQSTR,'$TYPE_D$',Qt('01'))
        else if re72h ='48' then
          SetParamter(SQSTR,'$TYPE_D$',Qt('02'))
        else
          SetParamter(SQSTR,'$TYPE_D$',Qt('03'));
        SetParamter(SQSTR,'$TYPE_M$',Qt('02'));
        SetParamter(SQSTR,'$OLD_DATE$',Qt(Trim(DM.QryTemp.fieldbyname('reg_date').AsString)));
        SetParamter(SQSTR,'$OLD_TIME$',Qt(Trim(DM.QryTemp.fieldbyname('reg_time').AsString)));
        SetParamter(SQSTR,'$OLD_FEENO$',Qt(Trim(DM.QryTemp.fieldbyname('fee_no').AsString)));
        SetParamter(SQSTR,'$EXIT_DATE$',Qt(Trim(DM.QryTemp.fieldbyname('end_date').AsString)));
        SetParamter(SQSTR,'$EXIT_TIME$',Qt(Trim(DM.QryTemp.fieldbyname('end_time').AsString)));
        SetParamter(SQSTR,'$CARE_REASON$',Qt(Trim(Memo1.Text)));
        SetParamter(SQSTR,'$LOG_OPER$',Qt(getUserId));
        SetParamter(SQSTR,'$LOG_DATE$',Qt(ROCDate(Now,'')));
        SetParamter(SQSTR,'$LOG_TIME$',Qt(ROCTime(Now,'')));
        if Trim(RadioGroup2.Items.Text) ='' then
          SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))))
        else
          SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))));
      end
      else
      begin
        //Update
        SQSTR := othe_HIS(4);
        seqno := DM.QryInsert.fieldbyname('seq_no').AsString;
        SetParamter(SQSTR,'$expression$',' CARE_REASON=$CARE_REASON$,CARE=$CARE$,LOG_OPER=$LOG_OPER$,LOG_DATE=$LOG_DATE$,LOG_TIME=$LOG_TIME$  ');
        SetParamter(SQSTR,'$CARE_REASON$',Qt(Trim(Memo1.Text)));
        if Trim(RadioGroup2.Items.Text) ='' then
          SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))))
        else
          SetParamter(SQSTR,'$CARE$',Qt(ReturnId(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))));
        SetParamter(SQSTR,'$LOG_OPER$',Qt(getUserId));
        SetParamter(SQSTR,'$LOG_DATE$',Qt(ROCDate(Now,'')));
        SetParamter(SQSTR,'$LOG_TIME$',Qt(ROCTime(Now,'')));
      end;
      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      DM.QryInsert.SQL.Text :=SQSTR;
      DM.QryInsert.ExecSQL;

      //update epd_his
      SQSTR := othe_HIS(1);
      IF UpperCase(BackFlag) = 'TURE' THEN
      begin
        //寫入back_flag(1、2、3)2013/09/27
        SetParamter(SQSTR,'$expression$',' BACK_FLAG=$BACK_FLAG$,return_code=$RETURN_CODE$,return_reason=$RETURN_REASON$  ');
        if Trim(RadioGroup2.Items.Text) ='' then
          SetParamter(SQSTR,'$RETURN_CODE$',Qt(ReturnId(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))))
        else
          SetParamter(SQSTR,'$RETURN_CODE$',Qt(ReturnId(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))));
        SetParamter(SQSTR,'$RETURN_REASON$',Qt(Trim(Memo1.Text)));
        if re72h ='24' then
          SetParamter(SQSTR,'$BACK_FLAG$',Qt('1'))
        else if re72h ='48' then
          SetParamter(SQSTR,'$BACK_FLAG$',Qt('2'))
        ELSE
          SetParamter(SQSTR,'$BACK_FLAG$',Qt('3'));
      end
      else
      begin
        SetParamter(SQSTR,'$expression$',' return_code=$RETURN_CODE$,return_reason=$RETURN_REASON$  ');
        if Trim(RadioGroup2.Items.Text) ='' then
          SetParamter(SQSTR,'$RETURN_CODE$',Qt(ReturnId(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))))
        else
          SetParamter(SQSTR,'$RETURN_CODE$',Qt(ReturnId(Trim(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))));
        SetParamter(SQSTR,'$RETURN_REASON$',Qt(Trim(Memo1.Text)));
      end;
      SetParamter(SQSTR,'$FEE_NO$',Qt(Trim(GetFeeNo)));
      SetParamter(SQSTR,'$EPDDATE$',Qt(Trim(GetEpdDate)));
    end;
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Clear;
    DM.QryUpdate.SQL.Text := SQSTR;

    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
  end;
  //轉診表單填寫
  if clas = 'EXIT' then
    if (ReturnName(Trim(RadioGroup1.Items.Strings[RadioGroup1.ItemIndex]))= '轉院') or (trnoflag) then
    begin
      if not assigned(FrmMAJORTRA) then
        FrmMAJORTRA := TFrmMAJORTRA.Create(Self);
      FrmMAJORTRA.ShowModal;

    end;
  Self.Close;
end;

procedure TFrmExitHosp.RadioGroup2DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
 const
    IsSelected : array[Boolean] of Integer = (DFCS_BUTTONRADIO, DFCS_BUTTONRADIO or DFCS_CHECKED) ;
 var
    optionButtonRect: TRect;
    listBox : TListBox;
 begin
    listBox := Control as TListBox;
    with listBox.Canvas do
    begin
      FillRect(rect) ;
      optionButtonRect.Left := rect.Left + 1;
      optionButtonRect.Right := Rect.Left + 13;
      optionButtonRect.Bottom := Rect.Bottom;
      optionButtonRect.Top := Rect.Top;
      DrawFrameControl(Handle, optionButtonRect, DFC_BUTTON, IsSelected[odSelected in State]) ;
      TextOut(rect.Left+ 15, rect.Top + 3, listBox.Items[Index]) ;
    end;
end;

procedure TFrmExitHosp.RadioGroup2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  i : Tpoint;
  j : Integer;
begin
  i := Point(X,Y);
  Hint := '';
  j := RadioGroup2.ItemAtPos(i,true);
  if j >= 0 then
  begin
    Hint :=  RadioGroup2.Items.Strings[j];
    application.ActivateHint(i);
  end
  else
    Application.CancelHint;
end;

procedure TFrmExitHosp.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if (Pos('自行輸',ReturnName(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))> 0) or (Pos('其他',ReturnName(RadioGroup2.Items.Strings[RadioGroup2.ItemIndex]))> 0) then
    Memo1.Enabled := True
  else
  begin
    Memo1.Clear;
    Memo1.Enabled := False;
  end;
end;

procedure TFrmExitHosp.FormActivate(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if Trim(itno) <> '' then //帶入輸入值
  begin
    for i := 0 to RadioGroup1.Items.Count -1 do
    begin
      if copy(trim(RadioGroup1.Items.Strings[i]),1,2) = copy(itno,1,2) then
      begin
        RadioGroup1.ItemIndex := i;
        RadioGroup1Click(Self);
        Break;
      end;
    end;
    for i := 0 to RadioGroup2.Items.Count-1 do
    begin
      if ReturnId(trim(RadioGroup2.Items.Strings[i])) = itno then
      begin
        RadioGroup2.ItemIndex := i;
        if Pos('自行輸',RadioGroup2.Items.Strings[i])> 0 then
        begin
          Memo1.Enabled := True;
          Memo1.Lines.Text := itsubno;
        end;
        Break;
      end;
    end;
  end;
end;

end.
