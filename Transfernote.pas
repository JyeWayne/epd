unit Transfernote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Buttons, IniFiles, Grids,
  CheckLst;

type
  TFrmTransfernote = class(TFrmMain)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ChkBBed: TCheckBox;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Label7: TLabel;
    ChkBdoc: TCheckBox;
    ChkBNus: TCheckBox;
    ChkBTra: TCheckBox;
    ChkBOth: TCheckBox;
    EdtOth: TEdit;
    GroupBox7: TGroupBox;
    Memo6: TMemo;
    GroupBox6: TGroupBox;
    Memo5: TMemo;
    GroupBox8: TGroupBox;
    Memo7: TMemo;
    Panel11: TPanel;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    GroupBox4: TGroupBox;
    Memo3: TMemo;
    GroupBox5: TGroupBox;
    Memo4: TMemo;
    GroupBox9: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    PanlReason: TPanel;
    Panel10: TPanel;
    Button3: TButton;
    BitBtn7: TBitBtn;
    PageControl1: TPageControl;
    Label10: TLabel;
    PalAllSH: TPanel;
    Panel12: TPanel;
    Label11: TLabel;
    Button4: TButton;
    BitBtn8: TBitBtn;
    SGData: TStringGrid;
    Panel2: TPanel;
    Panel13: TPanel;
    Button5: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Edit5: TEdit;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ChkDept: TCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    LblBirth: TLabel;
    LblSex: TLabel;
    Lblage: TLabel;
    Edit4: TComboBox;
    Panel5: TPanel;
    Panel4: TPanel;
    RadioGroup2: TRadioGroup;
    CheckListBox1: TCheckListBox;
    Label18: TLabel;
    CheckListBox2: TCheckListBox;
    Label19: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SGDataClick(Sender: TObject);
    procedure SGDataDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SGDataMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGDataMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGDataMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
  private
    { Private declarations }
    chkin,frmshow: string;
    procedure showdata;
    procedure Plik(pageid:integer;filename:string);
    PROCEDURE OPENPalAllSHDATA(SQL:STRING);
    function checkMemocount(sender: Tobject; strcount: integer):string;
  public
    ICD9LIST,infrom: string;
    { Public declarations }
  end;

var
  FrmTransfernote: TFrmTransfernote;

implementation

uses DBDM, ERsFunc, MySQLc, Commfunc, Global, PrintTransfernote, DB, Registry, Printers;

{$R *.dfm}

procedure TFrmTransfernote.Button1Click(Sender: TObject);
var
  count, i: integer;
  rechk, rechb, othchk, othchkdesc: Boolean;
  SQLs, name_val: TStringList;
  sqrtrs, ckname, messg, writdate,fmatdate,MedicalManlge, recostr,sixrecode,strage : string;
  reg : TRegistry;
  DefPrint : String;
begin
  inherited;
  //檢核資料

  rechk := False;
  rechb := False;
  othchk:= False;
  othchkdesc := False;
  name_val := TStringList.Create;

  strReplacememo(Memo1);
  strReplacememo(Memo2);
  strReplacememo(Memo3);
  strReplacememo(Memo4);
  strReplacememo(Memo5);
  recostr := '';
  for i := 0 to CheckListBox1.Items.Count-1 do
    if CheckListBox1.Checked[i] then
      recostr := recostr + trim(CheckListBox1.Items.Strings[i]) + ',';
  strReplacememo(Memo6);
  sixrecode := '';
  for i := 0 to CheckListBox2.Items.Count-1 do
    if CheckListBox2.Checked[i] then
      sixrecode := sixrecode + trim(CheckListBox2.Items.Strings[i]) + ',';
  strReplacememo(Memo7);

  for Count := 0 to FrmTransfernote.ComponentCount - 1 do
  begin
    messg := '';
    if (FrmTransfernote.Components[Count] is TMemo) then
    begin
      messg := checkMemocount(FrmTransfernote.Components[Count],512);
      if messg <> '' then
      begin
        rechk := True;
        ShowMessage(messg);
        Exit;
      end;
      if trim(TMemo(FrmTransfernote.Components[Count]).Lines.Text) = '' then
      begin
        if (TMemo(FrmTransfernote.Components[Count]).Name='Memo7') or
           (TMemo(FrmTransfernote.Components[Count]).Name='Memo6') then
        begin
          if (recostr = '') and (TMemo(FrmTransfernote.Components[Count]).Name='Memo6') then
            rechk := True;
          if (sixrecode = '') and (TMemo(FrmTransfernote.Components[Count]).Name='Memo7') then
            rechk := True;
        end
        else
          rechk := True;
      end;
    end;
    if (FrmTransfernote.Components[Count] is TCheckBox) then
    begin
      if (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkDept') or (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBBed') then
      begin
        if TCheckBox(FrmTransfernote.Components[Count]).Checked then
          rechb := True;
      end
      else
      begin
        if (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBdoc') or
           (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBNus') or
           (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBTra') or
           (TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBOth') then
        begin
          if TCheckBox(FrmTransfernote.Components[Count]).Checked then
          begin
            othchk := True;
            if TCheckBox(FrmTransfernote.Components[Count]).Name ='ChkBOth' then
              if trim(EdtOth.Text) = '' then
                othchkdesc := True;
          end;
        end;
      end;
    end;
  end;
  if (rechk) or (not othchk) or (not rechb) or (othchkdesc) then
  begin
    ShowMessage('請輸入每一項的資料');
    exit;
  end
  else
  begin
    //insert to db
    writdate := FormatDateTime('YYYYMMDDHHSS',Now);
    fmatdate := ROCDate(Now,'/')+' '+ROCTime(now,':');//FormatDateTime('EEEE/MM/DD HH:SS',Now);
    ckname := '';
    sqrtrs := Trfnte(1);
    SetParamter(sqrtrs,'$PATIENT_NO$',qt(GetChrNo));
    SetParamter(sqrtrs,'$PATIENT_NAME$',qt(GetPatName));
    SetParamter(sqrtrs,'$BIRTHDAY$',qt(GetBirth));
    SetParamter(sqrtrs,'$FROM_DEPT_BED$',qt(trim(Edit3.Text)));
    SetParamter(sqrtrs,'$TO_DEPT_BED$',qt(trim(Edit4.Text)));
    SetParamter(sqrtrs,'$FROM_DEPT_DR$',qt(trim(Edit1.Text)));
    SetParamter(sqrtrs,'$TO_DEPT_DR$',qt(trim(Edit2.Text)));
    {if ChkDept.Checked then
    begin
      SetParamter(sqrtrs,'$FROM_DEPT_DR$',qt(trim(Edit1.Text)));
      SetParamter(sqrtrs,'$TO_DEPT_DR$',qt(trim(Edit2.Text)));
    end
    else
    begin
      SetParamter(sqrtrs,'$FROM_DEPT_DR$',qt(''));
      SetParamter(sqrtrs,'$TO_DEPT_DR$',qt(''));
    end;}
    SetParamter(sqrtrs,'$TRANSFER_NOTE_DATE$',qt(writdate));//開立寫入時間
    SetParamter(sqrtrs,'$REASON_FOR_ADMISSION$',qt(Memo1.Lines.Text));                //一、入院原因(Reason For Admission)
    SetParamter(sqrtrs,'$SIGNIFICANT_FINDINGS$',qt(Memo2.Lines.Text));                //二、有意義的發現(Significant Findings)
    SetParamter(sqrtrs,'$DIAGNOSIS_MADE$',qt(Memo3.Lines.Text));                      //三、診斷的結果(Diagnosis Made)
    SetParamter(sqrtrs,'$PROCEDURES_PERFORMED$',qt(Memo4.Lines.Text));                //四、已執行的處置(Procedures Performed)
    SetParamter(sqrtrs,'$MEDICATIONS_AND_TREATMENTS$',qt(Memo5.Lines.Text));          //五、藥物及其他治療(Any Medications And Treatments)
    if trim(Memo7.Lines.Text) <> '' then
      SetParamter(sqrtrs,'$CONDITION_AT_TRANSFER$',qt('其他:'+Memo7.Lines.Text+sixrecode)) //六、轉科(床)的情況(Patient`s Condition At Transfer)
    else
      SetParamter(sqrtrs,'$CONDITION_AT_TRANSFER$',qt(Memo7.Lines.Text+sixrecode));
    if trim(Memo6.Lines.Text) <> '' then
      SetParamter(sqrtrs,'$RE_COMMUNICATION$',qt('其他:'+Memo6.Lines.Text + recostr))   //七、建議(recommendation)
    else
      SetParamter(sqrtrs,'$RE_COMMUNICATION$',qt(Memo6.Lines.Text + recostr));
    if ChkBdoc.Checked then
      ckname := 'Dr;';
    if ChkBNus.Checked then
      ckname := ckname + 'Nurse;';
    if ChkBTra.Checked then
      ckname := ckname + 'Transfer;';
    if ChkBOth.Checked then
      ckname := ckname + Trim(EdtOth.Text) +';';
    SetParamter(sqrtrs,'$TRANSFER_PEOPLE$',qt(ckname));
    SetParamter(sqrtrs,'$WRITE_TIME$',qt(writdate));
    SetParamter(sqrtrs,'$BED_NO$',qt(''));
    SetParamter(sqrtrs,'$SEX$',qt(SexType(Getsex01)));
    try
      strage := GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear);
    except
      strage := '';
    end;

    SetParamter(sqrtrs,'$AGE$',qt(strage));
    if ChkBOth.Checked then
      SetParamter(sqrtrs,'$TRANSFER_PEOPLE_OTHER$',qt(trim(EdtOth.Text)))
    else
      SetParamter(sqrtrs,'$TRANSFER_PEOPLE_OTHER$',qt(''));
    {if ChkBBed.Checked then
    begin
      SetParamter(sqrtrs,'$FROM_DEPT_BED$',qt(trim(Edit3.Text)));
      SetParamter(sqrtrs,'$TO_DEPT_BED$',qt(trim(Edit4.Text)));
    end
    else
    begin
      SetParamter(sqrtrs,'$FROM_DEPT_BED$',qt(' '));
      SetParamter(sqrtrs,'$TO_DEPT_BED$',qt(' '));
    end;}
    SQLs := TStringList.Create;
    SQLs.Text := sqrtrs;
    if not DM.ExecSQL(SQLs) then
    begin
      ShowMessage('寫入資料庫失敗');
    end
    else
    begin
      //存檔完成
      //列印資料
      if not assigned(FrmPrintTransfernote) then
        FrmPrintTransfernote := TFrmPrintTransfernote.Create(Self);
      DM.QryTemp.Close;
      sqrtrs := Trfnte(0);
      DM.QryTemp.SQL.Text := sqrtrs + ' where chr_no='+qt(GetChrNo)+' and WRITE_TIME='+qt(writdate);
      DM.QryTemp.Open;
      if not DM.QryTemp.IsEmpty then
      begin
        with FrmPrintTransfernote do
        begin
          QRMemo1.Lines.Clear;
          QRLblChar.Caption := Label8.Caption;
          QRLblName.Caption := Label9.Caption;
          QRLblSex.Caption  := LblSex.Caption;
          QRLblAge.Caption  := Lblage.Caption;
          MedicalManlge := '';
          MedicalManlge := SetSys.ReadString('SYSTEM','TRANSFERMEDICAL','');
          if MedicalManlge <> '' then
          begin
            while not (trim(MedicalManlge)='') do
            begin
              QRRichText1.Lines.Add(ReturnId(MedicalManlge));
              MedicalManlge := ReturnName(MedicalManlge);
            end;
          end;

          QRLabel1.Caption  := SetSys.ReadString('SYSTEM','TRANSFERISONO','');

          QRLblBitthDay.Caption := LblBirth.Caption;
          QRLabel6.caption := '時間:' + fmatdate;
          if ChkDept.Checked then
          begin
            if trim(DM.QryTemp.FieldByName('FROM_DEPT_DR').AsString) <> '' then
              QRLblBed_detp.Caption := '轉科：由' + trim(DM.QryTemp.FieldByName('FROM_DEPT_DR').AsString)+' 轉至'+
                                        trim(DM.QryTemp.FieldByName('TO_DEPT_DR').AsString)+';';
          end
          else
            QRLblBed_detp.Caption := '轉科：由      科  轉至      科;';

          if ChkBBed.Checked then
          begin
            if trim(DM.QryTemp.FieldByName('FROM_DEPT_BED').AsString) <> '' then
              QRLblBed_detp1.Caption := '轉床：由 '+ trim(DM.QryTemp.FieldByName('FROM_DEPT_BED').AsString)+' 床 轉至 '+
                                        trim(DM.QryTemp.FieldByName('TO_DEPT_BED').AsString) +' 床;';
          end
          else
            QRLblBed_detp1.Caption := '轉床：由     床  轉至      床;';


          QRMemo1.Lines.Add('一、入院原因(Reason For Admission)');
          if trim(DM.QryTemp.FieldByName('RESON_FOR_ADMISSION').AsString) <> '' then
          begin
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('RESON_FOR_ADMISSION').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('二、有意義的發現(Significant Findings)');
          if trim(DM.QryTemp.FieldByName('SIGNIFICANT_FINDINGS').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('SIGNIFICANT_FINDINGS').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('三、診斷的結果(Diagnosis Made)');
          if trim(DM.QryTemp.FieldByName('DIAGNOSIS_MADE').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('DIAGNOSIS_MADE').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('四、已執行的處置(Procedures Performed)');
          if trim(DM.QryTemp.FieldByName('PROCEDURES_PERFORMED').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('PROCEDURES_PERFORMED').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('五、藥物及其他治療(Any Medications And Treatments)');
          if trim(DM.QryTemp.FieldByName('MEDICATIONS_AND_TREATMENTS').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('MEDICATIONS_AND_TREATMENTS').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('六、轉科(床)的情況(Patient`s Condition At Transfer)');
          if trim(DM.QryTemp.FieldByName('CONDITION_AT_TRANSFER').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('CONDITION_AT_TRANSFER').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end
          else
            QRMemo1.Lines.Add('    ');

          QRMemo1.Lines.Add('七、建議(recommendation)');
          if trim(DM.QryTemp.FieldByName('RE_COMMUNICATION').AsString) <> '' then
          begin
            name_val.Clear;
            name_val := SliptStr(70,FulltoHalf(DM.QryTemp.FieldByName('RE_COMMUNICATION').AsString));
            for count := 0 to name_val.Count-1 do
              QRMemo1.Lines.Add('    '+name_val.Strings[count]);
          end;
          
          ckname := '';
          if ChkBdoc.Checked then
            ckname := ChkBdoc.Caption + ';';
          if ChkBNus.Checked then
            ckname := ckname + ChkBNus.Caption + ';';
          if ChkBTra.Checked then
            ckname := ckname + ChkBTra.Caption + ';';
          if ChkBOth.Checked then
            ckname := ckname + ChkBOth.Caption + trim(EdtOth.Text);

          QRMemo1.Lines.Add('八、負責轉送人員:' + ckname);
          QRMemo1.Lines.Add('-----------------------------------------------------------------------');
          QRMemo1.Lines.Add('                        轉出醫師簽章:__________________      以下空白  ');
        end;
      end
      else
        ShowMessage('沒資料');

      reg := TRegistry.Create;
      reg.RootKey := HKEY_CURRENT_USER;
      if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
      begin
        defPrint := reg.ReadString('Device');
        for i := 0 to printer.Printers.Count -1 do
        begin
          if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA4','')) then
          begin
            reg.DeleteKey('Device');
            reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
          end;
        end;
      end;

      FrmPrintTransfernote.PrepareSQL;
      if assigned(FrmPrintTransfernote) then
        FrmPrintTransfernote := nil;
      reg.DeleteKey('Device');
      reg.WriteString('Device',DefPrint);
      Reg.CloseKey;
      Reg.Free;

      Self.Close;
    end;
    SQLs.Free;
  end;
end;

procedure TFrmTransfernote.RichEdit1Change(Sender: TObject);
var
  tmep:TGroupBox;
begin
  inherited;
  if length(Trim(TMemo(Sender).Lines.Text))> 5 then
  begin
     if TMemo(Sender).Parent is TGroupBox then
     begin
       TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint+'此項已超過字數';
       TGroupBox(TMemo(Sender).Parent).Font.Color :=clRed;
     end;
  end
  else
  begin
     if TMemo(Sender).Parent is TGroupBox then
     begin
       TGroupBox(TMemo(Sender).Parent).Font.Color :=clWindowText;
       TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint;
     end;
  end;
end;

procedure TFrmTransfernote.FormShow(Sender: TObject);
var
  brday: string;
begin
  inherited;
  if infrom = 'OBS' then
  begin
    ChkBBed.Checked := True;
    //ChkDept.Enabled := false;
    //Edit1.Enabled := false;
    //Edit2.Enabled := false;
    //SpeedButton1.Enabled := False;
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select bed_no from bed_area where fee_no='+Qt(GetFeeNo));
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
      Edit3.Text := trim(DM.QryTemp.fieldbyname('bed_no').AsString);
    DM.QryTemp.Close;
  end
  else
  begin
    ChkDept.Checked := True;
    //ChkBBed.Enabled := False;
    //Edit3.Enabled := false;
    //Edit4.Enabled := false;
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select b.smpl_desc'+
                       '  from besp_ipd a,dept_basic b'+
                       ' where fee_no='+Qt(GetFeeNo)+
                       '   and a.dept_code= b.dept_code');
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
      Edit2.Text := trim(DM.QryTemp.fieldbyname('smpl_desc').AsString);
    DM.QryTemp.Close;
  end;
  Label8.Caption := GetChrNo;
  Label9.Caption := GetPatName;
  brday := ROCDate(ROCToDate(GetBirth),'/');
  if copy(trim(brday),1,1) = '0' then
    brday := copy(trim(brday),2,length(trim(brday))-1);
  LblBirth.Caption := Actypedesc(GetACType)+brday;
  LblSex.Caption := GetSex(Getsex01);
  Edit1.Text := '急診科';
  if Trim(Edit3.Text) <> '' then
    Edit3.Text := '治療區_'+Trim(Edit3.Text)
  else
    Edit3.Text := '治療區';
  Edit4.ItemIndex := 0;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;
  Memo4.Lines.Clear;
  Memo5.Lines.Clear;
  Memo6.Lines.Clear;
  Memo7.Lines.Clear;
  CheckListBox1.Checked[0] := True;
  //CheckListBox2.Checked[0] := True;
  
end;

procedure TFrmTransfernote.showdata;
var
  sql,strtrim: string;
  name_val : TStringList;
begin
  //取各項資料
  strtrim := SetSys.ReadString('SYSTEM','CTRLCOUNT','');
  //入院原因  
  sql := 'select *'+
         ' from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no='+
         '(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')';
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  Memo1.Lines.Clear;
  while not DM.QryTemp.Eof do
  begin
    if trim(DM.QryTemp.FieldByName('ORDER_SORT').AsString) = '01' then
    begin
      if Trim(DM.QryTemp.fieldbyname('text').AsString) <> '◎Chief Complaint:' then
        if trim(DM.QryTemp.fieldbyname('text').AsString) <> '' then
        begin
          if UpperCase(strtrim) = 'TRUE' then
          begin
            if ((length(Memo1.Lines.Text)+length(TrimLeft(DM.QryTemp.fieldbyname('text').AsString))) < 490) then
              Memo1.Lines.Add(TrimLeft(DM.QryTemp.fieldbyname('text').AsString));
          end
          else
            Memo1.Lines.Add(TrimLeft(DM.QryTemp.fieldbyname('text').AsString));
        end;
    end;
    DM.QryTemp.Next;
  end;
  
  //檢驗資料
  sql := 'select '''' as "選",'+
       '      (select trim(item_name)'+
       '          from experiment '+
       '         where experiment.item_no=a.item_no ) as expername,'+
       '       Trim(a.r_item_name) as r_item_name,'+
       '       Trim(a.result_date_t) as result_date_t,'+//--定性,
       '       Trim(a.result_data_q) as result_data_q,'+//--定量,
       '       a.result_flag '+
       '  from lab_data a'+
       ' where a.sp_no in(select distinct sp_no'+
       '                    from Lab_list'+
       '                   where fee_no = $FEE_NO$)'+
       '   and a.RESULT_FLAG in(''H'',''L'')'+
       ' order by lab_date||lab_time,sp_no,exper_class,r_item';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  Memo2.Lines.Clear;
  while not DM.QryTemp.Eof do
  begin
    if UpperCase(strtrim) = 'TRUE' then
    begin
      if CompareText(trim(DM.QryTemp.fieldbyname('result_date_t').AsString),
                     trim(DM.QryTemp.fieldbyname('result_data_q').AsString) )=0 then
      begin
        if ((length(Memo2.Lines.Text)+
             length(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                    trim(DM.QryTemp.fieldbyname('result_data_q').AsString))) < 490) then

           Memo2.Lines.Add(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                      trim(DM.QryTemp.fieldbyname('result_data_q').AsString));
      end
      else
      begin
        if ((length(Memo2.Lines.Text)+
             length(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                    trim(DM.QryTemp.fieldbyname('result_date_t').AsString)+','+
                    trim(DM.QryTemp.fieldbyname('result_data_q').AsString))) < 490) then

          Memo2.Lines.Add(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                        trim(DM.QryTemp.fieldbyname('result_date_t').AsString)+','+
                        trim(DM.QryTemp.fieldbyname('result_data_q').AsString));
      end;
    end
    else
    begin
      if CompareText(trim(DM.QryTemp.fieldbyname('result_date_t').AsString),
                     trim(DM.QryTemp.fieldbyname('result_data_q').AsString) )=0 then
        Memo2.Lines.Add(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                      trim(DM.QryTemp.fieldbyname('result_data_q').AsString))
      else
        Memo2.Lines.Add(trim(DM.QryTemp.fieldbyname('r_item_name').AsString)+','+
                        trim(DM.QryTemp.fieldbyname('result_date_t').AsString)+','+
                        trim(DM.QryTemp.fieldbyname('result_data_q').AsString));
    end;
    DM.QryTemp.Next;
  end;
  DM.QryTemp.Close;

  //ICD9
  name_val := TStringList.Create;
  if UpperCase(strtrim) = 'TRUE' then
  begin
    name_val := SliptStr(509,FulltoHalf(ICD9LIST));
    Memo3.Lines.Add(name_val.Strings[0]);
  end
  else
    Memo3.Lines.Add(ICD9LIST);
  name_val.Free;

  //處置資料
  sql :=  'SELECT '''' AS "選",'+
          '       CASE'+
          '       WHEN e.Fee_Date IS NOT NULL THEN'+
          '         e.Fee_Date'+
          '       ELSE'+
          '         O2.Fee_Date'+
          '       END Fee_Date,'+// AS 開立日期
          '       CASE'+
          '       WHEN e.Fee_Time IS NOT NULL THEN'+
          '         Substr(e.Fee_Time, 1, 4)'+
          '       ELSE'+
          '        Substr(O2.Fee_Time, 1, 4)'+
          '       END Fee_Time,'+ // AS 開立時間
          '       CASE'+
          '       WHEN e.Sheet_No IS NOT NULL THEN'+
          '       ''醫令開立'''+
          '       ELSE'+
          '       ''櫃檯補帳'''+
          '       END Order_Type,'+// AS 開立方式
          '       f.fee_desc '+
          '  FROM Opd_Fee o, Fee_Basic f, Epd_Sheet e, Opd_His O2'+
          ' WHERE o.Fee_Code = f.Fee_Code'+
          '   AND o.Fee_No = e.Fee_No(+)'+
          '   AND o.Sheet_No = e.Sheet_No(+)'+
          '   AND o.Fee_No = O2.Fee_No'+
          '   AND o.Seq_No = O2.Seq_No'+
          '   AND o.Fee_Code = O2.Fee_Code '+
          '   AND O2.Cncl_Flag = ''N'' '+
          '   AND o.seq_no LIKE ''7%'' '+
          '   AND o.Fee_No = $FEE_NO$'+
          ' ORDER BY 2,3';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  Memo4.Lines.Clear;
  while not DM.QryTemp.Eof do
  begin
    if UpperCase(strtrim) = 'TRUE' then
    begin
      if ((length(Memo4.Lines.Text)+length(trim(DM.QryTemp.fieldbyname('fee_desc').AsString)+',')) < 490) then
        Memo4.Lines.Add(trim(DM.QryTemp.fieldbyname('fee_desc').AsString)+',');
    end
    else
      Memo4.Lines.Add(trim(DM.QryTemp.fieldbyname('fee_desc').AsString)+',');

    DM.QryTemp.Next;
  end;
  DM.QryTemp.Close;
  
  //藥品
  sql :=  'SELECT '''' AS "選",'+
          '       CASE'+
          '       WHEN e.Fee_Date IS NOT NULL THEN'+
          '       e.Fee_Date'+
          '       ELSE'+
          '       O2.Fee_Date'+
          '       END Fee_Date,'+// AS 開立日期
          '       CASE'+
          '       WHEN e.Fee_Time IS NOT NULL THEN'+
          '       Substr(e.Fee_Time, 1, 4)'+
          '       ELSE'+
          '       Substr(O2.Fee_Time, 1, 4)'+
          '       END Fee_Time,'+//  AS 開立時間
          '       CASE'+
          '       WHEN e.Sheet_No IS NOT NULL THEN'+
          '       ''醫令開立'''+
          '       ELSE'+
          '       ''櫃檯補帳'''+
          '       END Order_Type,'+//  AS 開立方式
          '       m.Med_Desc,'+ // AS 藥品名稱
          '       o.Per_Qty,'+  //AS 次量
          '       o.Unit_Desc,'+ //AS 單位
          '       o.Cir_Code,'+ //AS 頻率
          '       o.Path_Code'+ //AS 途徑
          '  FROM Opd_Med o, Med_Basic m, Epd_Sheet e, Opd_His O2'+
          ' WHERE o.Med_Code = m.Med_Code'+
          '   AND o.Fee_No = e.Fee_No(+)'+
          '   AND o.Sheet_No = e.Sheet_No(+)'+
          '   AND o.Fee_No = O2.Fee_No'+
          '   AND o.Seq_No = O2.Seq_No'+
          '   AND o.Med_Code = O2.Fee_Code'+
          '   AND O2.Cncl_Flag = ''N'''+
          '   AND o.Fee_No = $FEE_NO$'+
          ' ORDER BY 2,3';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  Memo5.Lines.Clear;
  while not DM.QryTemp.Eof do
  begin
    if UpperCase(strtrim) = 'TRUE' then
    begin
      if ((length(Memo5.Lines.Text)+length(trim(DM.QryTemp.fieldbyname('Med_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Per_Qty').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Unit_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Cir_Code').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Path_Code').AsString)+';')) < 490) then
                    
        Memo5.Lines.Add(trim(DM.QryTemp.fieldbyname('Med_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Per_Qty').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Unit_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Cir_Code').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Path_Code').AsString)+';');
    end
    else
      Memo5.Lines.Add(trim(DM.QryTemp.fieldbyname('Med_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Per_Qty').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Unit_Desc').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Cir_Code').AsString)+' '+
                    trim(DM.QryTemp.fieldbyname('Path_Code').AsString)+';');

    DM.QryTemp.Next;
  end;
  DM.QryTemp.Close;


end;

procedure TFrmTransfernote.Button2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmTransfernote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TFrmTransfernote.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmTransfernote := nil;
end;

procedure TFrmTransfernote.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PanlReason.Align := alClient;
  PanlReason.Visible := True;
end;


procedure TFrmTransfernote.Plik(pageid:integer;filename:string);
var
  Plik: TextFile;
  ciag, cname, itcla: string;
  spcnt, vleft, vtop: integer;
  chkbox: TCheckBox;
  edtxt: TEdit;
  ScrlBx: TScrollBox;
begin
  try
    vtop  := 3;
    vleft := 3;
    itcla :='';
    PageControl1.ActivePageIndex := pageid;
    ScrlBx := TScrollBox.Create(Self);
    ScrlBx.Parent := PageControl1.Pages[pageid];
    ScrlBx.Align  := alClient;
    if FileExists(ExtractFileDir(Application.ExeName)+'\'+filename) then
    begin
      AssignFile(Plik, ExtractFileDir(Application.ExeName)+'\'+filename);
      Reset(Plik);
      while not eof(Plik) do
      begin
        ReadLn(Plik, ciag);
        repeat
          cname  := ReturnId(ciag);
          spcnt  := getspace(cname);
          chkbox := TCheckBox.Create(Self);
          chkbox.Parent    := ScrlBx;
          chkbox.Font.Name := '細明體';
          chkbox.Font.Size := 11;
          chkbox.Caption   := trim(cname);
          chkbox.Left      := vleft + (spcnt* 9);
          chkbox.Top       := vtop;
          chkbox.Width     := (length(trim(cname))* 9) + 20;
          vleft            := vleft + ((length(trim(cname))+spcnt)* 9) + 40;
          if pos('$EDIT$',cname) > 0 then
          begin
            SetParamter(cname,'$EDIT$','');
            chkbox.Caption  := cname;
            chkbox.Width    := chkbox.Width-50;
            vleft           := vleft - 50;
            edtxt           := TEdit.Create(Self);
            edtxt.Parent    := ScrlBx;
            edtxt.Font.Name := '細明體';
            edtxt.Font.Size := 11;
            edtxt.Text      := '';
            edtxt.Left      := vleft-26;
            edtxt.Top       := vtop;
            edtxt.Width     := 200;
            vleft           := vleft + 200;
          end;
          ciag := ReturnName(ciag);
        until trim(ciag) = '';
        vtop  := vtop + 25;
        vleft := 3;
      end;
      CloseFile(Plik);
    end;
  except
    ShowMessage('Error.'+'讀取資料失敗');
  end;
end;

procedure TFrmTransfernote.BitBtn7Click(Sender: TObject);
begin
  inherited;
  PanlReason.Visible := False;
end;

procedure TFrmTransfernote.FormCreate(Sender: TObject);
var
  Transf: TInifile;
  itemname,repname: string;
  ts: TTabSheet;
  pid: integer;
begin
  inherited;
  PageControl1.Align := alClient;
  SGData.Align       := alClient;
  frmshow := 'Y';
  itemname := '';
  Transf := TIniFile.Create(ExtractFileDir(Application.ExeName)+'/TRANSFER.ini');
  itemname := Transf.ReadString('MAIN','ITEM','');
  if Trim(itemname)<> '' then
  begin
    repname := itemname;
    pid := 0;
    while not (trim(repname)='') do
    begin
      ts:= TTabSheet.Create(PageControl1);
      ts.Caption:= ReturnId(repname);
      ts.PageControl:= PageControl1;
      plik(pid,ReturnId(repname)+'.txt');
      repname := ReturnName(repname);
      inc(pid);
    end;
  end;
  Edit4.Items.Clear;
  Edit4.Items.Add('留觀區');
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select bed_no from bed_area where area_no in ');
  DM.QryTemp.SQL.Add('(select area_no from area_basic where area_name like ''%留觀%'')');
  DM.QryTemp.SQL.Add('and nvl(trim(fee_no),''0'')=''0'' ');
  DM.QryTemp.Open;
  if DM.QryTemp.Eof then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select bed_no from bed_area where nvl(trim(fee_no),''0'')=''0''');
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      Edit4.Items.Add(trim(DM.QryTemp.fieldbyname('bed_no').AsString));
      DM.QryTemp.Next;
    end;
  end
  else
  begin
    while not DM.QryTemp.Eof do
    begin
      Edit4.Items.Add(trim(DM.QryTemp.fieldbyname('bed_no').AsString));
      DM.QryTemp.Next;
    end;
  end;
  DM.QryTemp.Close;
end;

procedure TFrmTransfernote.Button3Click(Sender: TObject);
var
  i : Integer;
  selectstr: string;
begin
  inherited;
  selectstr := '';
  with TComponent(FrmTransfernote) do
  begin
    for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TCheckBox) then
        if (TCheckBox(Components[i]).Checked) and
           (TCheckBox(Components[i]).Parent.Name <> 'Panel1') and
           (TCheckBox(Components[i]).Parent.Name <> 'Panel6') and (TCheckBox(Components[i]).Parent.Name <> 'Panel13') then
        begin
            if pos(':',TCheckBox(Components[i]).Caption) > 0 then
              selectstr := selectstr + trim(TCheckBox(Components[i]).Caption)
            else
              selectstr := selectstr + trim(TCheckBox(Components[i]).Caption)+';';
          TCheckBox(Components[i]).Checked := False;
        end;
        
      if (Components[i] is TEdit) and (TEdit(Components[i]).Parent.Name <> 'Panel1') and
           (TEdit(Components[i]).Parent.Name <> 'Panel6') and (TEdit(Components[i]).Parent.Name <> 'Panel13') then
          if trim(TEdit(Components[i]).Text) <> '' then
            selectstr := selectstr + trim(TEdit(Components[i]).Text)+';';
    end;
  end;
  if selectstr <> ''  then
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.Text := selectstr;
  end;
  PanlReason.Visible := False;
end;

procedure TFrmTransfernote.BitBtn2Click(Sender: TObject);
var
  sql: string;
begin
  inherited;
  Label11.Caption := BitBtn2.Hint;
  chkin := 'Memo2';
  sql := 'select '''' as "選",'+
         '      (select trim(item_name)'+
         '          from experiment '+
         '         where experiment.item_no=a.item_no ) as expername,'+
         '       Trim(a.r_item_name) as r_item_name,'+
         '       Trim(a.result_date_t) as result_date_t,'+//--定性,
         '       Trim(a.result_data_q) as result_data_q,'+//--定量,
         '       a.result_flag '+
         '  from lab_data a'+
         ' where a.sp_no in(select distinct sp_no'+
         '                    from Lab_list'+
         '                   where fee_no = $FEE_NO$)';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  OPENPalAllSHDATA(sql);
end;

procedure TFrmTransfernote.SGDataClick(Sender: TObject);
begin
  inherited;
  IF (TStringGrid(Sender).Col>=0) and (TStringGrid(Sender).Col<2) THEN
  BEGIN
    if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) = '' then
      TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := 'V'
    else
      if trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]) ='V' then
        TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row] := '';
  END;
end;

procedure TFrmTransfernote.SGDataDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Str : String;
begin
  inherited;
  Str := TStringGrid(Sender).Cells[ACol,Arow];
  if (ARow <> 0) and (ACol <> 0)  then
  begin
    if (ARow mod 2) = 1 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clwindow;

    if chkin = 'Memo2' then
    begin
      //檢驗值顏色區別
      if TStringGrid(Sender).Cells[5,Arow]='H' then
      begin
        TStringGrid(Sender).Canvas.Font.Color := Clred;
      end
      else if  TStringGrid(Sender).Cells[5,Arow]='L' then
      begin
        TStringGrid(Sender).Canvas.Font.Color := clBlue;
      end
      else
        TStringGrid(Sender).Canvas.Font.Color := clWindowText;
    end;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  if ACol < 2 then
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE )
  else
    DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );

end;

procedure TFrmTransfernote.Button4Click(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if chkin = 'Memo2' then
  begin
    FOR I := 1 TO SGData.RowCount-1 DO
      IF SGData.Cells[0,I]='V' THEN
      begin
        if CompareText(trim(SGData.Cells[3,I]),trim(SGData.Cells[4,I]))=0 then
          Memo2.Lines.Add(trim(SGData.Cells[2,I])+','+trim(SGData.Cells[3,I]))
        else
          Memo2.Lines.Add(trim(SGData.Cells[2,I])+','+trim(SGData.Cells[3,I])+','+trim(SGData.Cells[4,I]));
      end;
  end
  else if chkin = 'Memo4' then
  begin
    FOR I := 1 TO SGData.RowCount-1 DO
      IF SGData.Cells[0,I]='V' THEN
        Memo4.Lines.Add(TRIM(FulltoHalf(SGData.Cells[4,I]))+',');
  end
  else if chkin = 'Memo5' then
  begin
    FOR I := 1 TO SGData.RowCount-1 DO
      IF SGData.Cells[0,I]='V' THEN
        Memo5.Lines.Add(trim(SGData.Cells[4,I])+','+trim(SGData.Cells[5,I])+trim(SGData.Cells[6,I])+','+trim(SGData.Cells[7,I])+','+trim(SGData.Cells[8,I]));
  end;
  
  chkin := '';
  PalAllSH.Visible := False;
end;

procedure TFrmTransfernote.BitBtn8Click(Sender: TObject);
begin
  inherited;
  chkin := '';
  PalAllSH.Visible := False;
end;

procedure TFrmTransfernote.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Memo3.Lines.Clear;
  Memo3.Lines.Add(ICD9LIST);
end;

procedure TFrmTransfernote.SGDataMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 2;
end;

procedure TFrmTransfernote.SGDataMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  TStringGrid(Sender).Col := 2;
end;

procedure TFrmTransfernote.SGDataMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SgCol, SgRow,i : integer;
  stv :string;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SgCol, SgRow);
  if (SgCol=0) and (SgRow = 0) then
  begin
    if TStringGrid(Sender).Cells[0,1] ='' then
      stv := ''
    else
      stv := 'V';
    for i := 1 to  TStringGrid(Sender).RowCount-1 do
      if stv = '' then
        TStringGrid(Sender).Cells[0,i] := 'V'
      else
        TStringGrid(Sender).Cells[0,i] := '';
  end;

end;

procedure TFrmTransfernote.OPENPalAllSHDATA(SQL: STRING);
const
  ColWidthMin = 20;
VAR
  mySQLs : TStrings;
  C, W, ColWidthMax: integer;
begin
  mySQLs := TStringList.Create;
  mySQLs.Text := sql;
  if DM.OpenSQL(mySQLs,SGData) then
  begin
    PalAllSH.Top       := 160;
    PalAllSH.Left      := 120;
    PalAllSH.Height    := 370;
    PalAllSH.Width     := 790;
    With SGData do
    begin
      for C := 0 to ColCount - 1 do
      begin
        ColWidthMax := ColWidthMin;
        W := Length(Trim(Cells[C, 0])) * Font.Size - 1;
        if W > ColWidthMax then
          ColWidthMax := W;
        ColWidths[C] := ColWidthMax ;
      end;
    end;
    PalAllSH.Visible := True;
  end
  else
    ShowMessage('沒有資料');
end;

procedure TFrmTransfernote.BitBtn4Click(Sender: TObject);
var
  sql: string;
begin
  inherited;
  Label11.Caption := BitBtn4.Hint;
  chkin := 'Memo4';
  sql :=  'SELECT '''' AS "選",'+
          '       CASE'+
          '       WHEN e.Fee_Date IS NOT NULL THEN'+
          '         e.Fee_Date'+
          '       ELSE'+
          '         O2.Fee_Date'+
          '       END "開立日期",'+
          '       CASE'+
          '       WHEN e.Fee_Time IS NOT NULL THEN'+
          '         Substr(e.Fee_Time, 1, 4)'+
          '       ELSE'+
          '        Substr(O2.Fee_Time, 1, 4)'+
          '       END "開立時間",'+
          '       CASE'+
          '       WHEN e.Sheet_No IS NOT NULL THEN'+
          '       ''醫令開立'''+
          '       ELSE'+
          '       ''櫃檯補帳'''+
          '       END "開立方式",'+
          '       f.fee_desc AS "處置名稱"'+
          '  FROM Opd_Fee o, Fee_Basic f, Epd_Sheet e, Opd_His O2'+
          ' WHERE o.Fee_Code = f.Fee_Code'+
          '   AND o.Fee_No = e.Fee_No(+)'+
          '   AND o.Sheet_No = e.Sheet_No(+)'+
          '   AND o.Fee_No = O2.Fee_No'+
          '   AND o.Seq_No = O2.Seq_No'+
          '   AND o.Fee_Code = O2.Fee_Code '+
          '   AND O2.Cncl_Flag = ''N'' '+
          '   AND o.seq_no LIKE ''7%'' '+
          '   AND o.Fee_No = $FEE_NO$'+
          ' ORDER BY 2,3';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  OPENPalAllSHDATA(sql);
end;

procedure TFrmTransfernote.BitBtn5Click(Sender: TObject);
var
  sql: string;
begin
  inherited;
  Label11.Caption := BitBtn5.Hint;
  chkin := 'Memo5';
  sql :=  'SELECT '''' AS "選",'+
          '       CASE'+
          '       WHEN e.Fee_Date IS NOT NULL THEN'+
          '       e.Fee_Date'+
          '       ELSE'+
          '       O2.Fee_Date'+
          '       END "開立日期",'+
          '       CASE'+
          '       WHEN e.Fee_Time IS NOT NULL THEN'+
          '       Substr(e.Fee_Time, 1, 4)'+
          '       ELSE'+
          '       Substr(O2.Fee_Time, 1, 4)'+
          '       END "開立時間",'+
          '       CASE'+
          '       WHEN e.Sheet_No IS NOT NULL THEN'+
          '       ''醫令開立'''+
          '       ELSE'+
          '       ''櫃檯補帳'''+
          '       END "開立方式",'+
          '       m.Med_Desc  AS "藥品名稱",'+
          '       o.Per_Qty   AS "次量",'+
          '       o.Unit_Desc AS "單位",'+
          '       o.Cir_Code  AS "頻率",'+
          '       o.Path_Code AS "途徑"'+
          '  FROM Opd_Med o, Med_Basic m, Epd_Sheet e, Opd_His O2'+
          ' WHERE o.Med_Code = m.Med_Code'+
          '   AND o.Fee_No = e.Fee_No(+)'+
          '   AND o.Sheet_No = e.Sheet_No(+)'+
          '   AND o.Fee_No = O2.Fee_No'+
          '   AND o.Seq_No = O2.Seq_No'+
          '   AND o.Med_Code = O2.Fee_Code'+
          '   AND O2.Cncl_Flag = ''N'''+
          '   AND o.Fee_No = $FEE_NO$'+
          ' ORDER BY 2,3';
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  OPENPalAllSHDATA(sql);

end;

procedure TFrmTransfernote.Button5Click(Sender: TObject);
var
  st: string;
begin
  inherited;
  st := '';
  if CheckBox1.Checked then
    st := trim(CheckBox1.Caption) + ',';
  if CheckBox2.Checked then
    st := st + trim(CheckBox2.Caption) + ',';
  if CheckBox3.Checked then
    st := st + trim(CheckBox3.Caption) + ',';
  if CheckBox4.Checked then
    st := st + trim(CheckBox4.Caption) + ',';
  if CheckBox5.Checked then
  begin
    st := st + trim(CheckBox5.Caption) + ':';
    st := st + Trim(Edit5.Text);
  end;
  Memo7.Lines.Add(st);
  Panel2.Visible := False;
end;

procedure TFrmTransfernote.Button6Click(Sender: TObject);
begin
  inherited;
  Panel2.Visible := False;
end;

procedure TFrmTransfernote.BitBtn6Click(Sender: TObject);
begin
  inherited;
  //Panel2.Visible := True;
end;

procedure TFrmTransfernote.Memo1Change(Sender: TObject);
begin
  checkMemocount(Sender,490);
end;

function TFrmTransfernote.checkMemocount(sender: Tobject;strcount: integer):string;
var
  i: integer;
  recostr: string;
begin
  if (TMemo(Sender).Name = 'Memo6') or (TMemo(Sender).Name = 'Memo7') then
  begin
    if TMemo(Sender).Name = 'Memo6' then
    begin
      for i := 0 to CheckListBox1.Items.Count-1 do
        if CheckListBox1.Checked[i] then
          recostr := recostr + trim(CheckListBox1.Items.Strings[i]) + ',';
        if Trim(TMemo(Sender).Lines.Text) <> '' then
        recostr := recostr + '其他:';
    end
    else
    begin
      for i := 0 to CheckListBox2.Items.Count-1 do
        if CheckListBox2.Checked[i] then
          recostr := recostr + trim(CheckListBox2.Items.Strings[i]) + ',';
        if Trim(TMemo(Sender).Lines.Text) <> '' then
        recostr := recostr + '其他:';
    end;

    if (length(TMemo(Sender).Lines.Text) + length(recostr))>= 490 then
    begin
      TGroupBox(TMemo(Sender).Parent).Font.Color := clRed;
      TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint + '(' +IntToStr(length(TMemo(Sender).Lines.Text)+ length(recostr)+22)+') 最大Byte數:512';
      Result := TGroupBox(TMemo(Sender).Parent).Hint + #10#13 + '現有Byte數:' +IntToStr(length(TMemo(Sender).Lines.Text)+ length(recostr))+' 最大Byte數:512';
    end
    else
    begin
      TGroupBox(TMemo(Sender).Parent).Font.Color := clBlack;
      TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint + '(' +IntToStr(length(TMemo(Sender).Lines.Text)+ length(recostr)+22)+')';
    end;
  end
  else
    if length(TMemo(Sender).Lines.Text)>= strcount then
    begin
      TGroupBox(TMemo(Sender).Parent).Font.Color := clRed;
      TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint + '(' +IntToStr(length(TMemo(Sender).Lines.Text)+22)+') 最大Byte數:'+IntToStr(strcount+22);
      Result := TGroupBox(TMemo(Sender).Parent).Hint + #10#13 +'現有Byte數:' +IntToStr(length(TMemo(Sender).Lines.Text))+' 最大Byte數:512';
    end
    else
    begin
      TGroupBox(TMemo(Sender).Parent).Font.Color := clBlack;
      TGroupBox(TMemo(Sender).Parent).Caption := TGroupBox(TMemo(Sender).Parent).Hint + '(' +IntToStr(length(TMemo(Sender).Lines.Text)+22)+')';
    end;
end;

procedure TFrmTransfernote.FormActivate(Sender: TObject);
begin
  inherited;
  if frmshow = 'Y' then
  begin
    frmshow := 'N';
    if MessageDlg('是否自動帶入資料?'+#10#13+'是:YES'+#10#13+'否:No',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     showdata;
  end;
end;

procedure TFrmTransfernote.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  RadioGroup2.Items.Clear;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('Select trim(Dept_code) as Dept_code,trim(smpl_desc) as smpl_desc from Dept_BASIC where nh_div between ''01'' and ''11'' and open_flag=''Y'' ');
  DM.QryTemp.SQL.Add('order by dept_code');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    while Not DM.QryTemp.Eof do
    begin
      RadioGroup2.Items.Add(trim(DM.QryTemp.fieldbyname('smpl_desc').AsString));
      DM.QryTemp.Next;
    end;
  end;
  Panel5.Height := 321;
  Panel5.Top := 3;
  Panel5.Width := 561;
  Panel5.Left := 376;
  Panel5.Visible := true;
end;

procedure TFrmTransfernote.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  Edit2.Text := RadioGroup2.Items.Strings[RadioGroup2.ItemIndex];
  Panel5.Visible := False;
end;

procedure TFrmTransfernote.CheckListBox1ClickCheck(Sender: TObject);
begin
  inherited;
  checkMemocount(Memo6,490);
end;

end.
