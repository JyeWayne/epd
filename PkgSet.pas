unit PkgSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ExtCtrls, XPMan, ComCtrls, DBCtrls,
  dbcgrids, DB, Contnrs, Grids;

type                                   
  TFrmPkgSet = class(TFrmMain)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    ChkSub: TCheckBox;
    ChkObj: TCheckBox;
    ChkICD9: TCheckBox;
    ChkMed: TCheckBox;
    CHKFee: TCheckBox;
    CHKPlan: TCheckBox;
    Panel3: TPanel;
    RGPAKG: TRadioGroup;
    GroupBox1: TGroupBox;
    edtPkgName: TEdit;
    BitnOk: TBitBtn;
    BitCancel: TBitBtn;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    GroupBox3: TGroupBox;
    EDTGRPNO: TEdit;
    CBOrder: TCheckBox;
    CBExper: TCheckBox;
    CBCheck: TCheckBox;
    CBXray: TCheckBox;
    CBMrt: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBText3: TDBText;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitnOkClick(Sender: TObject);
    procedure BitCancelClick(Sender: TObject);
    procedure RGPAKGClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBText1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    theDept, TheDoc: String;
    SQLo: TObjectList;
  public
    { Public declarations }
  end;

var
  FrmPkgSet: TFrmPkgSet;

implementation

uses Commfunc, DBDM, Global, MyUser, ADODB, Order, MySQLc, ERsFunc;

{$R *.dfm}

procedure TFrmPkgSet.FormShow(Sender: TObject);
var
  q_str,dept : string;
begin
  inherited;
  RGPAKG.ItemIndex := 2;
  case RGPAKG.ItemIndex of
    0 : begin
      theDept:= 'ALL';TheDoc := 'ALL';
    end;
    1 : Begin
      theDept:= GetUserDept; TheDoc := 'XXXXXX';
    end;
    2 : Begin
      theDept:= 'XXXX'; TheDoc := getUserId;
    end;
  end;
  DM.QrySubTemp.Close;
  DataSource1.DataSet :=  DM.QrySubTemp;
  With DM.QrySubTemp do
  begin
    q_str := getPreOrderSql(3);
    if theDept = 'XXXX' then
    begin
      dept := '='+Qt(theDept);
    end
    else
    begin
      dept := '';
      dept := emergencydeptlis(GetUserDept,'N');
      if dept = 'Y' then
        dept := 'in('+emergencydeptlis(theDept,'Y')+') '
      else
        dept := '='+Qt(theDept);
    end;
    SetParamter(q_str,'$User_id$',Qt(TheDoc));
    SetParamter(q_str,'$dept_code$',dept);
    SQL.Text := q_str;
    Open;
  end;
  RGPAKG.ItemIndex := 2;
end;

procedure TFrmPkgSet.BitnOkClick(Sender: TObject);
VAR
  TMPSQL,grpno: STRING;
  SQLs, STFEENAME: TStringList;
  indexi, I: INTEGER;
  SG : TStringGrid;
begin
  inherited;
  //DM.CloseDB;
  //�ˬd���ƲէO
  if checkphragno(theDept,TheDoc,Trim(EDTGRPNO.Text))= 'Y' then
  begin
    ShowMessage('�էO�W�٭��ơA�Ч�]��L�W��');
    exit;
  end;
    
  if (Trim(EDTGRPNO.Text) = 'ED000003') or (Trim(EDTGRPNO.Text) = 'ED000002') or (Trim(EDTGRPNO.Text) = 'ED000004') then
    if MessageDlg('�o�O���g�Ϊ��M�\�T�w�n�ק��?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;

  case RGPAKG.ItemIndex of
    0 :
      begin
        if inputBox('�޲z�K�X','�п�J�K�X ','') <> EncodeStr('CYF}h\`G','650326') then
        begin
          ShowMessage('�ܩ�p�z�S���v���]�w���|�@�ήM�\');
          Exit;
        end;
      end;
    1 :
      Begin
        if getuserLevel <>'1' then
        begin
          ShowMessage('�ܩ�p�z�S���v���]�w��@�ήM�\,��@�ζ��ѥD�v��v�観�v��');
          Exit;
        end
      end;
  end;
  IF (Trim(edtPkgName.Text) = '') or (Trim(EDTGRPNO.Text) = '') THEN
  BEGIN
    ShowMessage('�п�J�M�\�B�էO�W��');
  END
  ELSE
  BEGIN
    try
      SQLo := TObjectList.Create;
      STFEENAME := TStringList.Create;
     { IF TRIM(EDTGRPNO.Text)<> '' THEN
        grpno := TRIM(EDTGRPNO.Text)
      ELSE
      BEGIN
        grpno := getphraseno;
        grpno := 'ED'+grpno;
      END; }
      grpno := Trim(EDTGRPNO.Text);
      //�R��
      TMPSQL := getordergrp(3);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      TMPSQL := getordergrp(4);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      TMPSQL := getordergrp(5);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('�R����ƥ���');
      end;
      SQLo.Clear;

      TMPSQL := getordergrp(0);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SetParamter(TMPSQL,'$GROUP_NAME$',Qt(Trim(edtPkgName.Text)));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);

      indexi := 1;
      IF ChkSub.Checked THEN  //S
      BEGIN
        FOR I := 0 TO FrmOrder.rheSub.Lines.Count-1 DO
          IF Trim(FrmOrder.rheSub.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheSub.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('S'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;

      IF ChkObj.Checked THEN //O
      BEGIN
        FOR I := 0 TO FrmOrder.rheObj.Lines.Count-1 DO
          IF Trim(FrmOrder.rheObj.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheObj.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('O'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;

      IF CHKPlan.Checked THEN  //P
      BEGIN
        FOR I := 0 TO FrmOrder.rhePlan.Lines.Count-1 DO
          IF Trim(FrmOrder.rhePlan.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rhePlan.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('P'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      if CBOrder.Checked then //order
      begin
        SG := FrmOrder.SGOrder;
        FOR I := 0 TO SG.RowCount-1 DO
          IF Trim(FrmOrder.SGOrder.Cells[O_Name,i]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(SG.Cells[O_Name,i])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('R'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;

      indexi := 1;
      IF ChkMed.Checked THEN
      BEGIN
        SG := FrmOrder.SGMed;
        FOR I := 0 TO FrmOrder.SGMed.RowCount -1 do
          if Trim(FrmOrder.SGMed.Cells[M_CODE,i]) <>'' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(Trim(FrmOrder.SGMed.Cells[M_Name,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_Code,i])));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(Trim(FrmOrder.SGMed.Cells[M_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('M'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(FrmOrder.SGMed.Cells[M_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_Cir,i])));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_path,i])));
            SetParamter(TMPSQL,'$MED_DAYS$',Qt(FrmOrder.SGMed.Cells[M_days,i]));
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$',Qt(FrmOrder.SGMed.Cells[M_ttl_qty,i]));
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(FrmOrder.SGMed.Cells[M_INS,i]));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(trim(FrmOrder.SGMed.Cells[M_Memo,i])));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      IF CHKFee.Checked THEN
      BEGIN //�B�m
        SG := FrmOrder.SGFee;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[F_Name,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[F_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[F_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('F'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[F_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(SG.Cells[F_Part,i]));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[F_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));//�g�J����X
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      IF ChkICD9.Checked THEN
      BEGIN
        SG := FrmOrder.SGIcd;
        FOR I := 1 TO SG.RowCount -1 do
          if (Trim(SG.Cells[0,i]) <> '') and (Trim(SG.Cells[1,1]) <> '') then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[1,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(trim(SG.Cells[0,i])));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[1,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('I'));
            SetParamter(TMPSQL,'$UNIT_QTY$','0');
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      if CBXray.Checked then
      begin
        SG := FrmOrder.SGXRay;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('X'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(SG.Cells[C_path,i]));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_NO,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_Send,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(SG.Cells[C_Kind,i]));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBCheck.Checked then
      begin
        SG := FrmOrder.SGChk;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('C'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_path,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_Send,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(SG.Cells[C_2Send,i]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBExper.Checked then
      begin
        SG := FrmOrder.SGLab;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('L'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_Send,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_path,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(SG.Cells[C_2Send,i]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBMrt.Checked then//�ç�
      begin
        SG := FrmOrder.SGMtrl;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(30,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[L_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[L_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('T'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[L_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[L_Ins,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('�g�J��Ʈw����');
        exit;
      end;
    finally
      SQLo.Free;
      STFEENAME.Free;
    end;
  END;
end;

procedure TFrmPkgSet.BitCancelClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmPkgSet.RGPAKGClick(Sender: TObject);
VAR
  q_str,dept: STRING;
begin
  inherited;
  case RGPAKG.ItemIndex of
    0 : begin
      theDept:= 'ALL';TheDoc := 'ALL';
    end;
    1 : Begin
      theDept:= GetUserDept; TheDoc := 'XXXXXX';
    end;
    2 : Begin
      theDept:= 'XXXX'; TheDoc := getUserId;
    end;
  end;
  DM.QryTemp.Close;
  DataSource1.DataSet :=  DM.QryTemp;
  With DM.QryTemp do
  begin
    q_str := getPreOrderSql(3);
    if theDept = 'XXXX' then
    begin
      dept := '='+Qt(theDept);
    end
    else
    begin
      dept := '';
      dept := emergencydeptlis(GetUserDept,'N');
      if dept = 'Y' then
        dept := 'in('+emergencydeptlis(theDept,'Y')+') '
      else
        dept := '='+Qt(theDept);
    end;
    SetParamter(q_str,'$User_id$',Qt(TheDoc));
    SetParamter(q_str,'$dept_code$',dept);
    SQL.Text := q_str;
    Open;
  end;  
end;

procedure TFrmPkgSet.BitBtn1Click(Sender: TObject);
VAR
  TMPSQL : STRING;
  SQLs : TStringList;
  i : integer;
begin
  inherited;
  if (Trim(DBText2.Caption) = 'ED000003') or (Trim(DBText2.Caption) = 'ED000002') or (Trim(DBText2.Caption) = 'ED000004') then
  begin
    ShowMessage('�o�O���g�ήM�\����R��');
    exit;
  end;
  IF Trim(DBText2.Caption) = '' THEN
  BEGIN
    ShowMessage('�п�J�M�\�N�X');
    Exit;
  END
  ELSE
  BEGIN
    if MessageDlg('�A�T�{�n�R�������ض�?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    BEGIN
      try
        SQLo := TObjectList.Create;
        TMPSQL := getordergrp(3);
        SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
        SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
        SetParamter(TMPSQL,'$GROUP_CODE$',Qt(Trim(DBText2.Caption)));
        SQLs := TStringList.Create;
        SQLs.Add(TMPSQL);
        SQLo.Add(SQLs);
        TMPSQL := getordergrp(4);
        SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
        SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
        SetParamter(TMPSQL,'$GROUP_CODE$',Qt(Trim(DBText2.Caption)));
        SQLs := TStringList.Create;
        SQLs.Add(TMPSQL);
        SQLo.Add(SQLs);
        TMPSQL := getordergrp(5);
        SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
        SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
        SetParamter(TMPSQL,'$GROUP_CODE$',Qt(Trim(DBText2.Caption)));
        SQLs := TStringList.Create;
        SQLs.Add(TMPSQL);
        SQLo.Add(SQLs);
        try
          if NOT DM.ExecSQL(SQLo) then
          begin
            ShowMessage('�R����ƥ���');
            exit;
          end;
        finally
          SQLo.Free;
        end;
      except

      end;
    END;
  END;
  RGPAKGClick(Self);
end;

procedure TFrmPkgSet.DBText1DblClick(Sender: TObject);
begin
  inherited;
  EDTGRPNO.Text := Trim(DBText2.Caption);
  edtPkgName.Text := Trim(DBText1.Caption)
end;

procedure TFrmPkgSet.BitBtn2Click(Sender: TObject);
VAR
  TMPSQL,grpno: STRING;
  SQLs, STFEENAME: TStringList;
  indexi, I: INTEGER;
  SG : TStringGrid;
begin
  inherited;
  //�P�_�O�_���f�������d��
  if TBitBtn(Sender).Name = 'BitBtn3' then
    if trim(DataSource1.DataSet.FieldByName('clas').AsString) = '�f�������d��' then
    begin
      ShowMessage('�f�������d���A�L�k�ק�');
      exit;
    end;
    
  //�ˬd���ƲէO
  if checkphragno(theDept,TheDoc,Trim(EDTGRPNO.Text))= 'Y' then
  begin
    if TBitBtn(Sender).Name = 'BitBtn2' then
      if MessageDlg('�էO�W�٭��ơA���ܧ�էO�W��!!', mtConfirmation, [mbYes], 0) = mrYes then
      begin
        EDTGRPNO.SetFocus;
        exit;
      end;
    if MessageDlg('�T�w�n�л\���M�\��ƶ�?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;
  end;

  if (Trim(EDTGRPNO.Text) = 'ED000003') or (Trim(EDTGRPNO.Text) = 'ED000002') or (Trim(EDTGRPNO.Text) = 'ED000004') then
    if MessageDlg('�o�O���g�Τު��M�\��ơA�T�w�n�ק��?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;

  case RGPAKG.ItemIndex of
    0 :
      begin
        if inputBox('�޲z�K�X','�п�J�K�X ','') <> EncodeStr('CYF}h\`G','650326') then
        begin
          ShowMessage('�ܩ�p�z�S���v���]�w���|�@�ήM�\');
          Exit;
        end;
      end;
    1 :
      Begin
        if getuserLevel <>'1' then
        begin
          ShowMessage('�ܩ�p�z�S���v���]�w��@�ήM�\,��@�ζ��ѥD�v��v�観�v��');
          Exit;
        end
      end;
  end;
  IF (Trim(edtPkgName.Text) = '') or (Trim(EDTGRPNO.Text) = '') THEN
  BEGIN
    ShowMessage('�п�J�M�\�B�էO�W��');
  END
  ELSE
  BEGIN
    try
      SQLo := TObjectList.Create;
      STFEENAME := TStringList.Create;
     { IF TRIM(EDTGRPNO.Text)<> '' THEN
        grpno := TRIM(EDTGRPNO.Text)
      ELSE
      BEGIN
        grpno := getphraseno;
        grpno := 'ED'+grpno;
      END; }

      grpno := Trim(EDTGRPNO.Text);

      //�R��
      TMPSQL := getordergrp(3);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      TMPSQL := getordergrp(4);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      TMPSQL := getordergrp(5);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('�R����ƥ���');
      end;
      SQLo.Clear;

      TMPSQL := getordergrp(0);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SetParamter(TMPSQL,'$GROUP_NAME$',Qt(Trim(edtPkgName.Text)));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);

      indexi := 1;
      IF ChkSub.Checked THEN  //S
      BEGIN
        FOR I := 0 TO FrmOrder.rheSub.Lines.Count-1 DO
          IF Trim(FrmOrder.rheSub.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheSub.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('S'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;

      IF ChkObj.Checked THEN //O
      BEGIN
        FOR I := 0 TO FrmOrder.rheObj.Lines.Count-1 DO
          IF Trim(FrmOrder.rheObj.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheObj.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('O'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;

      IF ChkObj.Checked THEN //A
      BEGIN
        FOR I := 0 TO FrmOrder.rheHist.Lines.Count-1 DO
          IF Trim(FrmOrder.rheHist.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheHist.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('A'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;

      IF CHKPlan.Checked THEN  //P
      BEGIN
        FOR I := 0 TO FrmOrder.rhePlan.Lines.Count-1 DO
          IF Trim(FrmOrder.rhePlan.Lines.Strings[I]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rhePlan.Lines.Strings[I]))));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('P'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      if CBOrder.Checked then //order
      begin  //��r����
        SG := FrmOrder.SGOrder;
        FOR I := 0 TO SG.RowCount-1 DO
          IF Trim(FrmOrder.SGOrder.Cells[O_Name,i]) <>'' THEN
          BEGIN
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(SG.Cells[O_Name,i])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('R'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;

      indexi := 1;
      IF ChkMed.Checked THEN
      BEGIN  //�ī~
        SG := FrmOrder.SGMed;
        FOR I := 0 TO FrmOrder.SGMed.RowCount -1 do
          if Trim(FrmOrder.SGMed.Cells[M_CODE,i]) <>'' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(Trim(FrmOrder.SGMed.Cells[M_Name,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_Code,i])));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(Trim(FrmOrder.SGMed.Cells[M_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('M'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(FrmOrder.SGMed.Cells[M_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_Cir,i])));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(Trim(FrmOrder.SGMed.Cells[M_path,i])));
            SetParamter(TMPSQL,'$MED_DAYS$',Qt(FrmOrder.SGMed.Cells[M_days,i]));
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$',Qt(FrmOrder.SGMed.Cells[M_ttl_qty,i]));
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(FrmOrder.SGMed.Cells[M_INS,i]));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(trim(FrmOrder.SGMed.Cells[M_Memo,i])));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      IF CHKFee.Checked THEN
      BEGIN //�B�m
        SG := FrmOrder.SGFee;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[F_Name,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[F_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[F_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('F'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[F_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(SG.Cells[F_Part,i]));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[F_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));//�g�J����X
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      IF ChkICD9.Checked THEN
      BEGIN
        if icdchangea <> 'N' then
          SG := FrmOrder.SGIcd10
        else
          SG := FrmOrder.SGIcd;
        FOR I := 1 TO SG.RowCount -1 do
          if (Trim(SG.Cells[0,i]) <> '') and (Trim(SG.Cells[1,1]) <> '') then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[1,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(trim(SG.Cells[0,i])));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[1,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('I'));
            SetParamter(TMPSQL,'$UNIT_QTY$','0');
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      END;
      if CBXray.Checked then
      begin
        SG := FrmOrder.SGXRay;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('X'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(SG.Cells[C_path,i]));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_NO,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_Send,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(SG.Cells[C_Kind,i]));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBCheck.Checked then
      begin
        SG := FrmOrder.SGChk;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('C'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_path,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_Send,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(SG.Cells[C_2Send,i]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBExper.Checked then
      begin
        SG := FrmOrder.SGLab;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[C_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[C_Order,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('L'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[C_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[C_INS,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(SG.Cells[C_EMG,i])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(SG.Cells[C_Send,i]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(SG.Cells[C_path,i]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(SG.Cells[C_2Send,i]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(SG.Cells[C_MEMO,i]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if CBMrt.Checked then//�ç�
      begin
        SG := FrmOrder.SGMtrl;
        FOR I := 0 TO SG.RowCount -1 do
          if SG.Cells[F_CODE,i] <> '' then
          begin
            STFEENAME.Clear;
            STFEENAME := SliptStr(55,FulltoHalf(trim(SG.Cells[C_Order,i])));
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(Indexi));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(SG.Cells[L_code,i]));
            //SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(SG.Cells[L_Name,i])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(STFEENAME.Strings[0]));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('T'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(SG.Cells[L_Qty,i]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(SG.Cells[L_Ins,i])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
            Inc(indexi);
          END;
      end;
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('�g�J��Ʈw����');
        exit;
      end
      else
        ShowMessage('�s�ɧ���');
    finally
      SQLo.Free;
      STFEENAME.Free;
    end;
  END;
end;

end.
