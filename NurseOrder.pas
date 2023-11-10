unit NurseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Grids, ExtCtrls, ComCtrls, Contnrs, Buttons, Math,
  ShellAPI, Menus, ToolWin, Mask, DB, DBCtrls, ImgList, ClipBrd;

type
  TFrmNurseOrder = class(TFrmMain)
    Panel3: TPanel;
    SGNuresCHK: TStringGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    edtIdno: TEdit;
    edtName: TEdit;
    edtAge: TEdit;
    Panel5: TPanel;
    edtchrno: TEdit;
    Panel8: TPanel;
    Button3: TButton;
    CBUser: TComboBox;
    Label11: TLabel;
    Label6: TLabel;
    edtSex: TEdit;
    Button1: TButton;
    Label9: TLabel;
    edtweth: TEdit;
    Label5: TLabel;
    LblBLOOD_TYPE: TLabel;
    Panel1: TPanel;
    PnlDate: TPanel;
    PnlTime: TPanel;
    PnlCHKOper: TPanel;
    PnlClass: TPanel;
    PnlSdate: TPanel;
    Pnlorder: TPanel;
    PnlQty: TPanel;
    PnlPath: TPanel;
    PnlCir: TPanel;
    Pnlodoc: TPanel;
    Pnlins: TPanel;
    PnlEnddate: TPanel;
    CmbSOFLAG: TComboBox;
    PnlExeOper: TPanel;
    RGpPatid: TRadioGroup;
    POPMMEDDC: TPopupMenu;
    DC1: TMenuItem;
    LBMed: TListBox;
    EdtCir: TEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    CkBAll: TCheckBox;
    PnlDC: TPanel;
    ToolButton18: TToolButton;
    pnldelymed: TPanel;
    Panel2: TPanel;
    Rdgdelaymed: TRadioGroup;
    Btnchk: TButton;
    Button5: TButton;
    BtnExit: TButton;
    N1: TMenuItem;
    N2: TMenuItem;
    CMBoxDateRecordVI: TComboBox;
    Shape1: TShape;
    CmBEVM_G: TComboBox;
    CMBEVM_C: TComboBox;
    CMBEVM_S: TComboBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    MEDTBR: TMaskEdit;
    MDETHR: TMaskEdit;
    MEDTBT: TMaskEdit;
    MEDTBPH: TMaskEdit;
    MEDTBT2: TMaskEdit;
    MEDTBPL: TMaskEdit;
    MEDTBS: TMaskEdit;
    MEDTSPO2: TMaskEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    BtnVitasignUpdate: TBitBtn;
    BtnVitasignInsert: TBitBtn;
    MEdtMeasuring: TMaskEdit;
    Label24: TLabel;
    Shape2: TShape;
    Label15: TLabel;
    Label16: TLabel;
    sgBioinf: TStringGrid;
    Lbtreage: TLabel;
    ImgMed: TImage;
    Image_AMI: TImage;
    ImgMDRO: TImage;
    ImgTemperature: TImage;
    ImgSkin: TImage;
    ImgSex: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    MEdtPAIN: TMaskEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    CmBid: TComboBox;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ImgBoold: TImage;
    DtSImage: TDataSource;
    DBImage1: TDBImage;
    ImageListforPat: TImageList;
    Edtdelaymed: TEdit;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Edit1: TEdit;
    N7: TMenuItem;
    ImgFALL: TImage;
    CkBtraumaNo: TCheckBox;
    CMBTraumaNo: TComboBox;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CBUserChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SGNuresCHKClick(Sender: TObject);
    procedure SGNuresCHKMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGNuresCHKMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SGNuresCHKDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure CkBAllClick(Sender: TObject);
    procedure CmbSOFLAGChange(Sender: TObject);
    procedure PnlDateClick(Sender: TObject);
    procedure PnlCHKOperClick(Sender: TObject);
    procedure PnlExeOperClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SGNuresCHKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DC1Click(Sender: TObject);
    procedure LBMedClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure BtnchkClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SGNuresCHKMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure CMBoxDateRecordVIChange(Sender: TObject);
    procedure BtnVitasignInsertClick(Sender: TObject);
    procedure ImgSkinClick(Sender: TObject);
    procedure ImgMedClick(Sender: TObject);
    procedure RdgdelaymedClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure CkBtraumaNoClick(Sender: TObject);
  private
    { Private declarations }
    opersign: string;
    name_val: TStringList;
    procedure initTextOrderTile;
    procedure showdata;
    procedure VITALSIGNSHOWDATA;
    procedure SetListWidth1(Sender: TObject; cols: Integer);
    procedure UpdateRowHeights(AGrid: TStringGrid);
    Function  insertnusconf(row: integer;stu,dd,dt: string):string;
    Function  updtenusconf(row: integer;dd,dt: string):string;
    Function  INSERCONFLOG(SHEETNO, SEQNO: STRING):Boolean;
    Function  InserDataVitalsignER(VSITEM, VSRECORD, RECORDDATE,CARERECORD_ID: string):Boolean;
    Function  updateDataVitalsignER(VSITEM, VSRECORD: string):Boolean;
    Function  CheckVitasign():Boolean;
  public
    { Public declarations }

  end;

var
  FrmNurseOrder: TFrmNurseOrder;
  const
    ckdate      = 0;
    cktime      = 1;
    ckcode      = 2;
    cncode      = 3;
    sheeno      = 14;
    orderSTATUS = 15;
    SEQNO       = 16;
    seq         = 17;
    ORDERTYPE   = 18;
    DELAY       = 19;
    DELAY_desc  = 20;
    MEMO_DESC   = 21;
    NurName : Array[0..13] of String=('PnlDate','PnlTime','PnlCHKOper','PnlExeOper','PnlClass','PnlSdate','PnlEnddate','PnlDC','Pnlorder','PnlQty','PnlPath','PnlCir','Pnlodoc','Pnlins');


implementation

uses Commfunc, Global, MySQLc, DBDM, PatInf, NurseOrderRpt, NurseEisai,
  ERsFunc, outproms, NursEMR, warning, MTRL_LIST_PRINT, TriageData;

{$R *.dfm}


procedure TFrmNurseOrder.initTextOrderTile;
var
  i : Integer;
  tmppnl: string;
  pnl: TPanel;

begin

  for i := 0 to 13 do
    if i > 0 then
    begin //自動延展
      tmppnl := NurName[i];
      pnl    := TPanel(FindComponent(tmppnl));
      pnl.Left  := Ceil(pnl.Left * (Panel1.Width /1000));
      pnl.Width := Ceil(pnl.Width * (Panel1.Width /1000));
      if pnl.Name ='PnlClass' then
      begin
        CmbSOFLAG.Left  := pnl.Left;
        CmbSOFLAG.Width := pnl.Width;
      end;
    end
    else
    begin
      tmppnl := NurName[i];
      pnl    := TPanel(FindComponent(tmppnl));
      pnl.Width := Ceil(pnl.Width * (Panel1.Width /1000));
    end;

  for i := 0 to SGNuresCHK.ColCount -1 do
  begin
    if FrmNurseOrder.FindComponent(NurName[i]) <> nil then
    begin
      if i < 7 then //控制自動延展的誤差
        SGNuresCHK.ColWidths[i] := TPanel(FrmNurseOrder.FindComponent(NurName[i])).Width - 1
      else
        SGNuresCHK.ColWidths[i] := TPanel(FrmNurseOrder.FindComponent(NurName[i])).Width - 2;
    end
    else
      SGNuresCHK.ColWidths[i] := -1;
  end;

end;

procedure TFrmNurseOrder.UpdateRowHeights(AGrid: TStringGrid);
var
  Y: Integer;
  MaxHeight: Integer;
  X: Integer;
  R: TRect;
  TxtHeight: Integer;
begin
  for Y := AGrid.FixedRows to AGrid.RowCount - 1 do
  begin
    MaxHeight := AGrid.DefaultRowHeight - 4;
    for X := AGrid.FixedCols to AGrid.ColCount - 1 do
    begin
      R := Rect(0, 0, AGrid.ColWidths[X] - 4, 0);
      TxtHeight := DrawText(AGrid.Canvas.Handle, PChar(AGrid.Cells[X, Y]), -1,
        R, DT_WORDBREAK or DT_CALCRECT);
      if TxtHeight > MaxHeight then
        MaxHeight := TxtHeight;
    end;
    AGrid.RowHeights[Y] := MaxHeight + 4;
  end;
end;

procedure TFrmNurseOrder.FormShow(Sender: TObject);
var
  SexBMP : TBitmap;
  i : Integer;
  s_qty,ag : string;
begin
  inherited;
  initTextOrderTile;
  name_val := TStringList.Create;
  if rdonly then
  begin
    Button1.Enabled := False;
    BtnVitasignInsert.Enabled := False;
    BtnVitasignUpdate.Enabled := False;
  end
  else
  begin
    BtnVitasignInsert.Enabled := True;
    BtnVitasignUpdate.Enabled := True;
    Button1.Enabled := True;
  end;
  MySBar.Panels[0].Text := GetFeeNo;
  Button3.Hint := getUserId;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.Close;  //CHR_BASIC
  s_qty := sql_str(18);
  SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
  DM.QryTemp.SQL.Text:=s_qty;
  DM.QryTemp.Open;
  if NOT DM.QryTemp.IsEmpty then
  BEGIN
    LblBLOOD_TYPE.Caption := trim(DM.QryTemp.FieldByName('BLOOD_TYPE').AsString);//血型
  END;
  DM.QryTemp.Close;
  try
    ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(ag,1,1)<>'0' then
      edtAge.Text := copy(ag,1,length(ag)-2)+'歲'+copy(ag,4,2)+'個月'
    else
      edtAge.Text := copy(ag,2,2)+'歲'+copy(ag,4,2)+'個月';
  except
    edtAge.Text := '';
  end;

  DM.QryTemp.Close;
  s_qty := '';
  s_qty := GetPatList(3);//opd_basic1
  SetParamter(s_qty,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(s_qty,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := s_qty;
  DM.QryTemp.Open;
  IF NOT DM.QryTemp.IsEmpty THEN
  BEGIN
    if trim(DM.QryTemp.FIELDBYNAME('PAT_ID').AsString) = '' then
      RGpPatid.ItemIndex := 0
    else
      RGpPatid.ItemIndex := DM.QryTemp.FIELDBYNAME('PAT_ID').AsInteger-1;
  end;

  edtSex.Text := GetSex(Getsex01);
  edtweth.Text := Getpatweight;
  CBUser.Items.Clear;
  CBUser.Items := Uuser;
  opersign := getUserId;
  SetCbbitem(CBUser,opersign);

  //109.12.17 shh ITe add 載入重大疾病編號

  //109.12.17 shh ITe 11138 add 重大疾病編號
  //填入維護檔項目
  CMBTraumaNo.Items.Clear;

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT TRIM(t.Trauma_No) || ''_'' || trim(t.trauma_desc) Trauma_list FROM Epd_Trauma_No_Bas t WHERE t.Cncl_Flag = ''N'' AND Pkutility.f_Sys_Date BETWEEN t.Begin_Date AND t.End_Date');
  DM.QryTemp.Open;

  while not DM.QryTemp.Eof do
  begin
    CMBTraumaNo.Items.Add(trim(DM.QryTemp.fieldbyname('Trauma_list').AsString));
    DM.QryTemp.Next;
  end;
  //CMBTraumaNo.ItemIndex := CMBTraumaNo.Items.Count-1;
  DM.QryTemp.Close;
  //END填入維護檔

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := 'SELECT CASE WHEN T2.Trauma_Desc IS NOT NULL THEN TRIM(t.Trauma_No) || ''_'' || TRIM(T2.Trauma_Desc)' +
                	  		 ' ELSE trim(t.Trauma_No) END Trauma_No ' +
                         ' FROM Epd_Trauma_No t, Epd_Trauma_No_Bas T2 WHERE t.Del_Flag = ''N'' AND t.Fee_No = ' + QT(getFeeNo) +
	                       ' AND t.Trauma_No = T2.Trauma_No(+)';
  //'select trim(trauma_no) trauma_no from epd_trauma_no where del_flag = ''N'' and fee_no = ' ;
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    ckbTraumano.Checked := True;
    //edtTraumaNo.Text := DM.QryTemp.fieldbyname('trauma_no').AsString;
    CMBTraumaNo.ItemIndex := CMBTraumaNo.Items.IndexOf(DM.QryTemp.fieldbyname('trauma_no').AsString);
    if CMBTraumaNo.ItemIndex = -1 then
    begin
      CMBTraumaNo.Items.Add(DM.QryTemp.fieldbyname('trauma_no').AsString);
      CMBTraumaNo.ItemIndex := CMBTraumaNo.Items.Count-1;
    end;

  end;
  DM.QryTemp.Close;
  //END 109.12.17 shh ITe add 載入重大疾病編號

  sgBioinf.RowHeights[0] := 20;
  sgBioinf.Cells[0,0] := ' 體溫';
  sgBioinf.Cells[1,0] := ' 體重';
  sgBioinf.Cells[2,0] := ' 脈搏';
  sgBioinf.Cells[3,0] := '  血壓';

  //取生理量測次數
  MEdtMeasuring.Text := ROCTime(Now,'');
  CMBoxDateRecordVI.Items.Clear;
  CmBid.Items.Clear;
  s_qty := nurse(82);
  SetParamter(s_qty,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := s_qty;
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    CMBoxDateRecordVI.Items.Add(trim(DM.QryTemp.fieldbyname('record_date').AsString));
    CmBid.Items.Add(trim(DM.QryTemp.fieldbyname('CARERECORD_ID').AsString));
    DM.QryTemp.Next;
  end;
  CMBoxDateRecordVI.ItemIndex := CMBoxDateRecordVI.Items.Count-1;
  CmBid.ItemIndex := CMBoxDateRecordVI.ItemIndex;
  CMBoxDateRecordVIChange(CMBoxDateRecordVI);
  BtnVitasignInsert.Caption := '清除';

  //圖示
  with DM.QryTemp do 
  begin
    //三院隔離註記共識(1040129最終版)
    ImgMDRO.Hint  := '';
    ImgBoold.Hint := '';
    Close;
    SQL.Clear;
    SQL.Add('select * from ICN_DISEASE_basic where icn_code in (select icn_code from ICN_DISEASE_MAIN where chr_no='+Qt(getChrNo)+' and nvl(trim(end_date),''0'')=''0'')');
    sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
    Open;
    sql_Waiting_log('CLOSE','');
    if not IsEmpty then
    begin
      DtSImage.DataSet := DM.QryTemp;
      while not Eof do
      begin
        if trim(FieldByName('ICON_NAME').AsString) = 'I001' then //血液圖案
        begin
          ImgBoold.Hint := ImgBoold.Hint + trim(FieldByName('icn_code').AsString) + '(' + trim(FieldByName('disease_type').AsString) + ') \ ';
          ImgBoold.Picture.Graphic := nil;
          ImgBoold.Picture.Graphic := DBImage1.Picture.Graphic;
        end;
        if trim(FieldByName('ICON_NAME').AsString) = 'I002' then //人偶圖案
        begin
          ImgMDRO.Hint  := ImgMDRO.Hint + trim(FieldByName('icn_code').AsString) + '(' + trim(FieldByName('disease_type').AsString) + ') \ ';
          ImgMDRO.Picture.Graphic := nil;
          ImgMDRO.Picture.Graphic := DBImage1.Picture.Graphic;
        end;
        Next;
      end;
      if trim(ImgBoold.Hint)<> '' then
        ImgBoold.Hint := copy(ImgBoold.Hint,1,length(ImgBoold.Hint)-2);
      if trim(ImgMDRO.Hint)<> '' then
        ImgMDRO.Hint := copy(ImgMDRO.Hint,1,length(ImgMDRO.Hint)-2);
    end;
    DtSImage.DataSet := nil;

    //過敏
    Close;
    SQL.Clear;
    SQL.Add('Select * from OPD_WARNING2 where CHR_NO='+Qt(GetChrno)+' and nvl(MED_CODE ,''nil'')<>''nil''');
    sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
    Open;
    sql_Waiting_log('CLOSE','');
    if NOT IsEmpty then
    BEGIN
      SexBMP := TBitmap.Create;
      ImageListforPat.GetBitmap(4,SexBMP);
      ImgMed.Picture.Graphic := SexBMp;
      SexBMP.FreeImage;
      freeandnil(SexBMP);
    END;

    //特別註記
    Close;
    SQL.Clear;
    SQL.Add('select kind , comm_desc , stage , msg_flag from chr_spec where CHR_NO='+Qt(GetChrno)+' and ');
    SQL.Add(' trim(impl_date) <= trim('+GetEpdDate+') and nvl(trim(end_date),trim('+GetEpdDate+')) >= trim('+GetEpdDate+') and rownum=1');
    sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
    Open;
    sql_Waiting_log('CLOSE','');
    SexBMP := TBitmap.Create;
    if NOT IsEmpty then
    BEGIN
      IF trim(FieldByName('kind').AsString)= '' then
        ImageListforPat.GetBitmap(10,SexBMP)// 鳥
      ELSE
        ImageListforPat.GetBitmap(9,SexBMP);//花
    END
    else
    begin
      ImageListforPat.GetBitmap(10,SexBMP)// 鳥
    end;
    ImgSkin.Picture.Graphic := SexBMp;
    SexBMP.FreeImage;
    freeandnil(SexBMP);

    close;  //安寧
    SQL.Clear;
    SQL.Add('Select * from hospice_basic where CHR_NO='+Qt(GetChrNo)+' and can_cd=''N'' order by 1 ');
    sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
    Open;
    sql_Waiting_log('CLOSE','');
    IF NOT IsEmpty THEN
    begin
      SexBMP := TBitmap.Create;//安寧
      ImageListforPat.GetBitmap(7,SexBMP);
      ImgSex.Picture.Graphic := SexBMp;
      SexBMP.FreeImage;
      freeandnil(SexBMP);
    end
    else
    begin
      close;  //DNR
      SQL.Clear;
      SQL.Add('SELECT * FROM DNR_BASIC WHERE chr_no='+Qt(GetChrNo)+' AND CAN_CD=''N'' order by 1');
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      Open;
      sql_Waiting_log('CLOSE','');
      IF NOT IsEmpty THEN
      begin
        SexBMP := TBitmap.Create;//DNR
        ImageListforPat.GetBitmap(6,SexBMP);
        ImgSex.Picture.Graphic := SexBMp;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;

      {
      //108.07.04 shh ITe 11138 add fall mark
      //易跌倒
      SQL.Clear;
      SQL.Add(' select * from view_nis_fall_assess where feeno='+ Qt(GetFeeNo) );
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      Open;
      sql_Waiting_log('CLOSE','');
      IF NOT IsEmpty THEN
      begin
        SexBMP := TBitmap.Create;
        ImageListforPat.GetBitmap(3,SexBMP);   //紫色跌倒人
        ImgFALL.Picture.Graphic := SexBMp;
        ImgFALL.Hint := '[病人易跌倒]';
        ImgFALL.ShowHint := True;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;
      //END 108.07.04 add fall Mark
      }
    end;
  end;
  showdata;
end;

procedure TFrmNurseOrder.Button3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmNurseOrder.CBUserChange(Sender: TObject);
begin
  inherited;
  opersign := ReturnId(CBUser.Text);
end;

procedure TFrmNurseOrder.Button1Click(Sender: TObject);
var
  i : integer;
  sql,sqlsub,DAT,TIM,condistr,havsql,medcir,printdate : string;
  NURmed, NURDATA: TStringList;
  SQLs : TStrings;
  SQLo: TObjectList;
  OpenEisai: Boolean;
  trauma_cnt : integer;
  ls_trauma_no : string;
begin
  inherited;
  Button1.Enabled := False;
  OpenEisai := False;
  DAT := ROCDate(Now,'');
  TIM := ROCTimes(Now,'');
  NURmed  := TStringList.Create;
  NURDATA := TStringList.Create;
  if Assigned(SQLo) then
    SQLo.Clear
  else
    SQLo := TObjectList.Create;
  for i := 0 to SGNuresCHK.RowCount-1 do
  begin
    havsql := '';
    if (trim(SGNuresCHK.Cells[ckcode,i]) <> '') or (trim(SGNuresCHK.Cells[cncode,i]) <> '') then
    begin
      if trim(SGNuresCHK.Cells[orderSTATUS,i])= '' then
      begin
        //uns_conf沒有資料insert
        condistr := '';
        sql := nurse(3);
        SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
        SetParamter(sql,'$SEQ$',Qt(Trim(SGNuresCHK.Cells[seq,i])));
        SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,i])));
        SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sql,'$NUS_OPER$',Qt(trim(getUserId)));
        SetParamter(sql,'$UPD_DATE$',Qt(DAT));
        SetParamter(sql,'$UPD_TIME$',Qt(TIM));
        SetParamter(sql,'$DEL_FLAG$',Qt('N'));
        SetParamter(sql,'$PRINTSHEET$','0');
        if Trim(SGNuresCHK.Cells[ckcode,i]) <> '' then
        begin
          SetParamter(sql,'$NUS_CHECK$',Qt(Trim(SGNuresCHK.Cells[ckcode,i])));
          SetParamter(sql,'$CHECK_DATE$',Qt(Trim(SGNuresCHK.Cells[ckdate,i])));
          SetParamter(sql,'$CHECK_TIME$',Qt(Trim(SGNuresCHK.Cells[cktime,i])));
          if Trim(SGNuresCHK.Cells[cncode,i]) = '' then
          begin
            SetParamter(sql,'$STATUS$',Qt('1'));

            //update epd_all_order
            condistr := 'nus_oper='+Qt(Trim(SGNuresCHK.Cells[ckcode,i]))+',NUS_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+',NUS_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]));
          end;
        end
        else
        begin
          SetParamter(sql,'$NUS_CHECK$',Qt(''));
          SetParamter(sql,'$CHECK_DATE$',Qt(''));
          SetParamter(sql,'$CHECK_TIME$',Qt(''));
        end;
        if Trim(SGNuresCHK.Cells[cncode,i]) <> '' then
        begin
          SetParamter(sql,'$NUS_CONF$',Qt(Trim(SGNuresCHK.Cells[cncode,i])));
          SetParamter(sql,'$CONF_DATE$',Qt(Trim(SGNuresCHK.Cells[ckdate,i])));
          SetParamter(sql,'$CONF_TIME$',Qt(Trim(SGNuresCHK.Cells[cktime,i])));
          SetParamter(sql,'$STATUS$',Qt('2'));

          //update epd_all_order
          //判斷是否為多筆
          sqlsub := nurse(20);
          SetParamter(sqlsub,'$FEE_NO$',Qt(GetFeeNo));
          SetParamter(sqlsub,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          DM.QryTemp.SQL.Text := sqlsub;
          DM.QryTemp.Open;

          if DM.QryTemp.FieldByName('qry').AsInteger = 0 then
            condistr := 'nus_oper='+Qt(Trim(SGNuresCHK.Cells[cncode,i]))+',NUS_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+
                        ',NUS_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]))+',conf_date='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]));
        end
        else
        begin
          SetParamter(sql,'$NUS_CONF$',Qt(''));
          SetParamter(sql,'$CONF_DATE$',Qt(''));
          SetParamter(sql,'$CONF_TIME$',Qt(''));
        end;
        SQLs := TStringList.Create;
        SQLs.Add(sql);
        SQLo.Add(SQLs);

        //update epd_all_order
        sql := nurse(2);
        SetParamter(sql,'$CONDITION$', condistr);
        SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,i])));
        SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
        SQLs := TStringList.Create;
        SQLs.Add(sql);
        SQLo.Add(SQLs);
      end
      else
      begin
        //uns_conf有資料 update
        havsql   := 'Y';
        condistr := '';
        sql := nurse(4);
        SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
        SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,i])));
        IF trim(SGNuresCHK.Cells[orderSTATUS,i])= 'N' then //未確認、未執行
        begin
          condistr := '';
          if (Trim(SGNuresCHK.Cells[cncode,i]) <> '') then //點選執行
          begin
            condistr := 'STATUS=''2'',NUS_CONF='+Qt(Trim(SGNuresCHK.Cells[cncode,i]))+',CONF_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+
                        ',CONF_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]))+',NUS_CHECK='+Qt(Trim(SGNuresCHK.Cells[ckcode,i]))+
                        ',CHECK_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+',CHECK_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]));
            SetParamter(sql,'$CONDITION$', condistr);

            //update epd_all_order
            condistr := '';
            condistr := 'nus_oper='+Qt(Trim(SGNuresCHK.Cells[cncode,i]))+',NUS_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+
                        ',NUS_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]))+',conf_date='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]));
          end
          else if (Trim(SGNuresCHK.Cells[ckcode,i]) <> '') then
          begin
            condistr := 'STATUS=''1'',NUS_CHECK='+Qt(Trim(SGNuresCHK.Cells[ckcode,i]))+',CHECK_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+',CHECK_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]));
            SetParamter(sql,'$CONDITION$', condistr);

            //update epd_all_order
            condistr := '';
            condistr := 'nus_oper='+Qt(Trim(SGNuresCHK.Cells[ckcode,i]))+',NUS_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+
                        ',NUS_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]));
          end;
        end
        else if (trim(SGNuresCHK.Cells[orderSTATUS,i])= 'C') and (Trim(SGNuresCHK.Cells[cncode,i]) <> '') then // 未執行
        begin
          SetParamter(sql,'$CONDITION$','STATUS=''2'',NUS_CONF='+Qt(Trim(SGNuresCHK.Cells[cncode,i]))+',CONF_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+',CONF_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i])));

          //update epd_all_order
          condistr := '';
          condistr := 'nus_oper='+Qt(Trim(SGNuresCHK.Cells[cncode,i]))+',NUS_DATE='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]))+
                      ',NUS_TIME='+Qt(Trim(SGNuresCHK.Cells[cktime,i]))+',conf_date='+Qt(Trim(SGNuresCHK.Cells[ckdate,i]));
        end
        else
        begin
          havsql := '';
          sql    := '';
        end;

        if havsql <> '' then
        begin
          SQLs := TStringList.Create;
          SQLs.Add(sql);
          SQLo.Add(SQLs);

          //update epd_all_order
          sql := nurse(2);
          SetParamter(sql,'$CONDITION$', condistr);
          SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
          SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,i])));
          SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
          SQLs := TStringList.Create;
          SQLs.Add(sql);
          SQLo.Add(SQLs);
        end;
      end;
      //護理記錄
      medcir := '';
      if Trim(SGNuresCHK.Cells[ORDERTYPE,i]) <> 'M' then
      begin
        if (trim(SGNuresCHK.Cells[cncode,i]) <> '') and (trim(SGNuresCHK.Cells[orderSTATUS,i])<> 'O') then
        begin
          if Trim(SGNuresCHK.Cells[ORDERTYPE,i]) = 'F' then
            OpenEisai := true;

          if (Trim(SGNuresCHK.Cells[cncode,i]) <> '') then
            NURDATA.Add('         '+Trim(SGNuresCHK.Cells[8,i]));
        end;
      end
      else
      begin
        if (trim(SGNuresCHK.Cells[cncode,i]) <> '') and (trim(SGNuresCHK.Cells[orderSTATUS,i])<> 'O') then
        begin
          printdate := '';
          if Trim(SGNuresCHK.Cells[11,i]) = 'STAT' THEN
          begin
            medcir := '立即給予(STAT)藥物';
            printdate := FormatDateTime('YYYY-',Now)+Trim(SGNuresCHK.Cells[6,i]);
            
            //STAT藥物寫入護理紀錄2015/08/28增加
            {NURDATA.Add('日期時間:'+printdate+'#13#10'); //20150907 mark
            NURDATA.Add(CharAdd(medcir,' ',25)+CharAdd('藥名',' ',35)+CharAdd('劑量',' ',4)+CharAdd('途徑',' ',10)+CharAdd('頻次',' ',10)+'#13#10');
            NURDATA.Add(CharAdd(Trim(SGNuresCHK.Cells[8,i]) ,' ' ,60)+
                        CharAdd(Trim(SGNuresCHK.Cells[9,i]) ,' ' ,4 )+
                        CharAdd(Trim(SGNuresCHK.Cells[10,i]),' ' ,10)+
                        CharAdd(Trim(SGNuresCHK.Cells[11,i]),' ' ,10));}
            NURDATA.Add(Trim(SGNuresCHK.Cells[8,i]) +'  '+
                        Trim(SGNuresCHK.Cells[9,i]) +'  '+
                        Trim(SGNuresCHK.Cells[10,i])+'  '+
                        Trim(SGNuresCHK.Cells[11,i])+'  ');
          end
          ELSE IF (POS('PRN',SGNuresCHK.Cells[11,i]) > 0) or (Trim(SGNuresCHK.Cells[11,i]) = 'ASORDER') THEN
          begin
            medcir := '必要時給予(PRN)藥物';
            printdate := FormatDateTime('YYYY-MM-DD HHNN',Now);
          end
          ELSE
          begin
            medcir := '常規藥物';
            printdate := FormatDateTime('YYYY-',Now)+Trim(SGNuresCHK.Cells[6,i]);
          end;
          NURmed.Add('日期時間:'+printdate+'#13#10');
          NURmed.Add(CharAdd(medcir,' ',25)+CharAdd('藥名',' ',35)+CharAdd('劑量',' ',4)+CharAdd('途徑',' ',10)+CharAdd('頻次',' ',10)+'#13#10');
          NURmed.Add(CharAdd(Trim(SGNuresCHK.Cells[8,i]) ,' ' ,60)+
                     CharAdd(Trim(SGNuresCHK.Cells[9,i]) ,' ' ,4 )+
                     CharAdd(Trim(SGNuresCHK.Cells[10,i]),' ' ,10)+
                     CharAdd(Trim(SGNuresCHK.Cells[11,i]),' ' ,10));

        end;
      end
    end
    else
    begin //未確認、執行，新增項目
      if trim(SGNuresCHK.Cells[orderSTATUS,i])= '' then
      begin
        //uns_conf沒有資料insert
        sql := nurse(3);
        SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,i])));
        SetParamter(sql,'$SEQ$',Qt(Trim(SGNuresCHK.Cells[seq,i])));
        SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,i])));
        SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sql,'$STATUS$',Qt('0'));
        SetParamter(sql,'$NUS_OPER$',Qt(trim(getUserId)));
        SetParamter(sql,'$UPD_DATE$',Qt(DAT));
        SetParamter(sql,'$UPD_TIME$',Qt(TIM));
        SetParamter(sql,'$DEL_FLAG$',Qt('N'));
        SetParamter(sql,'$PRINTSHEET$','0');
        SetParamter(sql,'$NUS_CHECK$',Qt(''));
        SetParamter(sql,'$CHECK_DATE$',Qt(''));
        SetParamter(sql,'$CHECK_TIME$',Qt(''));
        SetParamter(sql,'$NUS_CONF$',Qt(''));
        SetParamter(sql,'$CONF_DATE$',Qt(''));
        SetParamter(sql,'$CONF_TIME$',Qt(''));

        SQLs := TStringList.Create;
        SQLs.Add(sql);
        SQLo.Add(SQLs);
      end;
    end;
  end;
  if not DM.ExecSQL(SQLo) then
  begin
    Button1.Enabled := true;
    ShowMessage('寫入資料庫失敗');
    SQLo.Free;
  end;

  //寫入護理記錄
  if NURDATA.Count > 0 then
  BEGIN
    medcir := '';
    FOR i := 0 TO NURDATA.Count-1 DO
    begin
      if pos('#13#10',Trim(NURFulltoHalf(NURDATA.Strings[I]))) > 0 then
        medcir := medcir + StringReplace(Trim(NURFulltoHalf(NURDATA.Strings[I])),'#13#10',#13#10,[rfReplaceAll])
      else
        medcir := medcir + Trim(NURFulltoHalf(NURDATA.Strings[I]))+';';
    end;
    //NURDATA.Insert(0,'護理紀錄');//20150907 mark
    DM.ADOLink.BeginTrans;
    try
      InserCARERECORD_DATA_ER(' ',' ',medcir,'CARERECORD',' ','');
      DM.ADOLink.CommitTrans;
    except
      DM.ADOLink.RollbackTrans;
      Button1.Enabled := true;
    end;
  END;

  //送EMR
  if NURDATA.Count > 0 then
  begin
    if not Assigned(FrmNursEMR) then
      FrmNursEMR := TFrmNursEMR.Create(Self);

    if NURDATA.Count > 0 then
    BEGIN
      medcir := '';
      FOR i := 0 TO NURDATA.Count-1 DO
      begin
        if pos('#13#10',Trim(NURFulltoHalf(NURDATA.Strings[I]))) > 0 then
          FrmNursEMR.MYMEMO.Add(StringReplace(Trim(NURFulltoHalf(NURDATA.Strings[I])),'#13#10',#13#10,[rfReplaceAll]))
        else
          FrmNursEMR.MYMEMO.Add(Trim(NURFulltoHalf(NURDATA.Strings[I]))+';');
      end;
    end;
    FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
    FrmNursEMR.PrepareSQL('NURDATA');
    if Assigned(FrmNursEMR) then
      FreeAndNil(FrmNursEMR);
  end;
  FreeAndNil(NURDATA);

  if NURmed.Count > 0 then
  begin
    if not Assigned(FrmNursEMR) then
      FrmNursEMR := TFrmNursEMR.Create(Self);

    if NURmed.Count > 0 then
    BEGIN
      FOR i := 0 TO NURmed.Count-1 DO
      begin
        if pos('#13#10',Trim(NURFulltoHalf(NURmed.Strings[I]))) > 0 then
          FrmNursEMR.MYMEMO.Add(StringReplace(Trim(NURFulltoHalf(NURmed.Strings[I])),'#13#10',#13#10,[rfReplaceAll]))
        else
          FrmNursEMR.MYMEMO.Add(Trim(NURFulltoHalf(NURmed.Strings[I]))+';');
      end;
    end;
    FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
    FrmNursEMR.PrepareSQL('NURMED');
  end;
  FreeAndNil(NURMED);


  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select count(*) cnt from epd_trauma_no where fee_no = ' + qt(GetFeeNo) + ' and del_flag = ''N''');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
    trauma_cnt := DM.QryTemp.fieldbyname('cnt').AsInteger;
  ls_trauma_no := '';
  //ls_trauma_no := edtTraumaNo.Text;
  //ls_trauma_no := CMBTraumaNo.Text;
  ls_trauma_no := trim(returnID(CMBTraumaNo.Text));
  DM.QryTemp.Close;

  //有勾選
  if CkBtraumaNo.Checked then
  begin
    //無資料insert
    if trauma_cnt = 0 then
    begin

      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('insert into epd_trauma_no values ');
      DM.QryTemp.SQL.Add('(' + qt(GetFeeNo) + ',''' + ls_trauma_no +  ''',''N'',' + Qt(trim(getUserId)) + ',pkutility.f_Sys_Date,to_char(sysdate,''hh24miss''))');
      //DM.QryTemp.Open;
      DM.QryTemp.ExecSQL;
      DM.QryTemp.Close;
    end

    //有資料update
    else
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('update epd_trauma_no ');
      DM.QryTemp.SQL.Add('set trauma_no = ''' + ls_trauma_no + ''', ');
      DM.QryTemp.SQL.Add('upd_oper = ' + qt(getUserId) + ' , ');
      DM.QryTemp.SQL.Add('upd_date = pkutility.f_Sys_Date, ');
      DM.QryTemp.SQL.Add('upd_time = to_char(sysdate,''hh24miss'') ');
      DM.QryTemp.SQL.Add('where fee_no = ' + qt(getFeeNo) + ' and del_flag = ''N''');
//      DM.QryTemp.SQL.Add('(' + qt(GetFeeNo) + ',''' + ls_trauma_no +  ''',''N'',' + Qt(trim(getUserId)) + ',pkutility.f_Sys_Date,to_char(sysdate,''hh24miss''))');
      //DM.QryTemp.Open;
      DM.QryTemp.ExecSQL;
      DM.QryTemp.Close;
    end;
  end
  //沒勾選
  else
  begin
    //有資料update   刪除flag
    if trauma_cnt > 0 then
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('update epd_trauma_no ');
      DM.QryTemp.SQL.Add('set trauma_no = ''' + ls_trauma_no + ''', ');
      DM.QryTemp.SQL.Add('del_flag = ''Y'', ');
      DM.QryTemp.SQL.Add('upd_oper = ' + qt(getUserId) + ' , ');
      DM.QryTemp.SQL.Add('upd_date = pkutility.f_Sys_Date, ');
      DM.QryTemp.SQL.Add('upd_time = to_char(sysdate,''hh24miss'') ');
      DM.QryTemp.SQL.Add('where fee_no = ' + qt(getFeeNo) + ' and del_flag = ''N''');
//      DM.QryTemp.SQL.Add('(' + qt(GetFeeNo) + ',''' + ls_trauma_no +  ''',''N'',' + Qt(trim(getUserId)) + ',pkutility.f_Sys_Date,to_char(sysdate,''hh24miss''))');
      //DM.QryTemp.Open;
      DM.QryTemp.ExecSQL;
      DM.QryTemp.Close;
    end
    //無資料pass
    else
    begin

    end;
  end;
  //END 109.12.17 shh ITe 11138 add 重大疾病編號

  showdata;
  Button1.Enabled := true;
  //開啟記價衛材
  if OpenEisai then
    ToolButton10Click(Self);
end;

procedure TFrmNurseOrder.showdata;
var
  sql : string;
  mySQLs : TStrings;
  i : integer;
begin
  mySQLs := TStringList.Create;
  selfClearSG(SGNuresCHK);
  case CmbSOFLAG.ItemIndex of
    -1,0:
      begin
        if CkBAll.Checked then
          sql := nurse(1)
        else
          sql := nurse(0);
        SetParamter(sql,'$SOFLAG$',' and so_flag in(''T'',''X'',''F'',''L'',''C'')');
      end;
    1:
      begin
        if CkBAll.Checked then
          sql := nurse(1)
        else
          sql := nurse(0);
        SetParamter(sql,'$SOFLAG$',' and so_flag =''N/A'' ');
      end;
    2:
      begin
        if CkBAll.Checked then
          sql := nurse(11)
        else
          sql := nurse(12);
        SetParamter(sql,'$SOFLAG$',' and so_flag in(''T'',''X'',''F'',''L'',''C'')');
      end;
  end;
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  mySQLs.Text := sql;
  DM.OpenSQL(mySQLs,SGNuresCHK,True);
  if SGNuresCHK.Cells[4,SGNuresCHK.RowCount] = '' then
    SGNuresCHK.RowCount :=  SGNuresCHK.RowCount-1;
  UpdateRowHeights(SGNuresCHK);
  SGNuresCHK.Repaint;
end;

procedure TFrmNurseOrder.SGNuresCHKClick(Sender: TObject);
begin
  inherited;
  if ((SGNuresCHK.Col = ckcode) or (SGNuresCHK.Col=cncode)) and (trim(SGNuresCHK.Cells[orderSTATUS,SGNuresCHK.Row]) <> 'O') then
    if (trim(SGNuresCHK.Cells[SGNuresCHK.Col,SGNuresCHK.Row]) = '') and (SGNuresCHK.Col <= 3) then
    begin
      if (SGNuresCHK.Col = cncode) and (trim(SGNuresCHK.Cells[ckcode,SGNuresCHK.Row]) = '') then
        SGNuresCHK.Cells[ckcode,SGNuresCHK.Row] := ReturnId(CBUser.Text);
      SGNuresCHK.Cells[SGNuresCHK.Col,SGNuresCHK.Row] := ReturnId(CBUser.Text);
      SGNuresCHK.Cells[0,SGNuresCHK.Row] := ROCDate(now,'');
      SGNuresCHK.Cells[1,SGNuresCHK.Row] := ROCTime(Now,'');
    end
    else
    begin
      if (trim(SGNuresCHK.Cells[SGNuresCHK.Col,SGNuresCHK.Row]) <> '') and (SGNuresCHK.Col <= 3) then
      begin
        if ((SGNuresCHK.Col = ckcode) and (trim(SGNuresCHK.Cells[3,SGNuresCHK.Row]) = '')) or ((SGNuresCHK.Col = 3) and (trim(SGNuresCHK.Cells[2,SGNuresCHK.Row]) = '')) then
        begin
        SGNuresCHK.Cells[SGNuresCHK.Col,SGNuresCHK.Row] := '';
        SGNuresCHK.Cells[0,SGNuresCHK.Row]    := '';
        SGNuresCHK.Cells[1,SGNuresCHK.Row]    := '';
        end
        else
          SGNuresCHK.Cells[SGNuresCHK.Col,SGNuresCHK.Row] := '';
      end;
    end;
end;

procedure TFrmNurseOrder.SGNuresCHKMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  SGNuresCHK.Col := 9;
end;

procedure TFrmNurseOrder.SGNuresCHKMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  SGNuresCHK.Col := 9;
end;

procedure TFrmNurseOrder.SGNuresCHKDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if (ARow mod 2) = 0 then
    TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
  else
    TStringGrid(Sender).Canvas.Brush.Color := clwindow;

  if (Trim(TStringGrid(Sender).Cells[7,ARow]) = 'DC') or (Trim(TStringGrid(Sender).Cells[DELAY,ARow]) <> '') then
    TStringGrid(Sender).Canvas.Font.Color := clRed
  else
    if TStringGrid(Sender).Row = ARow then
      TStringGrid(Sender).Canvas.Font.Color := clblue
    else
      TStringGrid(Sender).Canvas.Font.Color := clblack;


  if (ACol=0) or (ACol= 1) then
  begin
    if Pos('#13#10', TStringGrid(Sender).Cells[ACol, ARow]) > 0 then
      TStringGrid(Sender).Cells[ACol, ARow] := StringReplace(TStringGrid(Sender).Cells[ACol, ARow],'#13#10',#13#10,[rfReplaceAll]);
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  Inc(Rect.Left, 1);
  Inc(Rect.Top, 1);
  DrawText(TStringGrid(Sender).Canvas.Handle, PChar(TStringGrid(Sender).Cells[ACol, ARow]), Length(TStringGrid(Sender).Cells[ACol, ARow]), Rect, DT_NOPREFIX or DT_WORDBREAK);

  case ACol of                                                                                            //20151223 edit mask over all for 萬芳
    2: TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, CharAdd(GETDOCNAME(Trim(TStringGrid(Sender).Cells[ckcode,ARow])),' ',6 ) );
    3: TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, CharAdd(GETDOCNAME(Trim(TStringGrid(Sender).Cells[cncode,ARow])),' ',6 ) );
   12:
      begin
        if TStringGrid(Sender).Cells[12,ARow] ='' then
           TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '')
        else if (TStringGrid(Sender).Cells[ACol,ARow] = 'Y') then
          TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '健')
        else if (TStringGrid(Sender).Cells[ACol,ARow] = 'N') then
          TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '自')
        else if (TStringGrid(Sender).Cells[ACol,ARow] = 'H') then
          TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '自(含)')
        else if (TStringGrid(Sender).Cells[ACol,ARow] = 'G') then
          TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '健(含)');
      end;
  else
    TStringGrid(Sender).Canvas.TextOut(Rect.Left +1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
  end;

end;

procedure TFrmNurseOrder.CkBAllClick(Sender: TObject);
begin
  inherited;
    showdata;
end;


function TFrmNurseOrder.insertnusconf(row: integer;stu,dd,dt: string): string;
var
  sql : string;
begin
  sql := nurse(3);
  SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,row])));
  SetParamter(sql,'$SEQ$',Qt(Trim(SGNuresCHK.Cells[seq,row])));
  SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,row])));
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sql,'$STATUS$',Qt(stu));
  SetParamter(sql,'$NUS_OPER$',Qt(trim(ReturnId(CBUser.Text))));
  SetParamter(sql,'$UPD_DATE$',Qt(dd));
  SetParamter(sql,'$UPD_TIME$',Qt(dt));
  SetParamter(sql,'$DEL_FLAG$',Qt('N'));
  SetParamter(sql,'$PRINTSHEET$','0');
  if Trim(SGNuresCHK.Cells[ckcode,row]) <> '' then
  begin
  SetParamter(sql,'$NUS_CHECK$',Qt('N'));
  SetParamter(sql,'$NUS_CONF$',Qt('N'));
  end
  else
  begin

  end;
  SetParamter(sql,'$CHECK_DATE$',Qt('N'));
  SetParamter(sql,'$CHECK_TIME$',Qt('N'));
  SetParamter(sql,'$CONF_DATE$',Qt('N'));
  SetParamter(sql,'$CONF_TIME$',Qt('N'));
  SetParamter(sql,'$DONE$',Qt('N'));
  SetParamter(sql,'$DC_DATE$',Qt('N'));
  SetParamter(sql,'$DC_TIME$',Qt('N'));
  SetParamter(sql,'$DC_OPER$',Qt('N'));
  Result := sql;
end;

function TFrmNurseOrder.updtenusconf(row: integer;dd,dt: string): string;
var
  sql : string;
begin
  sql := nurse(2);
  SetParamter(sql,'$NUS_OPER$',qt(trim(ReturnId(CBUser.Text))));//Qt(SGNuresCHK.Cells[nusoper,row]));
  SetParamter(sql,'$NUS_DATE$',Qt(dd));
  SetParamter(sql,'$NUS_TIME$',Qt(dt));
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,row])));
  Result := sql;
end;

procedure TFrmNurseOrder.CmbSOFLAGChange(Sender: TObject);
begin
  showdata;
end;

procedure TFrmNurseOrder.PnlDateClick(Sender: TObject);
begin
  inherited;
  if TPanel(sender).Name ='PnlDate' then
    TPanel(sender).Tag := 0
  else if TPanel(sender).Name ='PnlTime' then
    TPanel(sender).Tag := 1
  //else if TPanel(sender).Name ='PnlCHKOper' then
  //  TPanel(sender).Tag := 2
  //else if TPanel(sender).Name ='PnlExeOper' then
  //  TPanel(sender).Tag := 3
  else if TPanel(sender).Name ='PnlClass' then
    TPanel(sender).Tag := 4
  else if TPanel(sender).Name ='PnlSdate' then
    TPanel(sender).Tag := 5
  else if TPanel(sender).Name ='PnlEnddate' then
    TPanel(sender).Tag := 6;

  if TPanel(sender).Hint <> '' then
  begin
    SGridSortnotitle(1,TPanel(sender).Tag,SGNuresCHK);
    TPanel(sender).Hint := '';
  end
  else
  begin
    SGridSortnotitle(0,TPanel(sender).Tag,SGNuresCHK);
    TPanel(sender).Hint :='X';
  end;
  SGNuresCHK.Repaint;
end;

procedure TFrmNurseOrder.PnlCHKOperClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   for i := 0 to SGNuresCHK.RowCount-1 do
   begin
     if trim(SGNuresCHK.Cells[ckcode,i]) = '' then
     begin
       SGNuresCHK.Cells[0,i] := ROCDate(Now,'');
       SGNuresCHK.Cells[1,i] := ROCTime(now,'');
       SGNuresCHK.Cells[ckcode,i] := ReturnId(CBUser.Text);
     end;
    { else
     begin
       if trim(SGNuresCHK.Cells[cncode,i]) = '' then
       begin
         SGNuresCHK.Cells[0,i] := '';
         SGNuresCHK.Cells[1,i] := '';
         SGNuresCHK.Cells[ckcode,i] := '';
       end
       else
         SGNuresCHK.Cells[ckcode,i] := '';
     end; }
   end;
end;

procedure TFrmNurseOrder.PnlExeOperClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   for i := 0 to SGNuresCHK.RowCount-1 do
   begin
     if trim(SGNuresCHK.Cells[cncode,i]) = '' then
     begin
       SGNuresCHK.Cells[0,i] := ROCDate(Now,'');
       SGNuresCHK.Cells[1,i] := ROCTime(now,'');
       SGNuresCHK.Cells[cncode,i] := ReturnId(CBUser.Text);
     end ;
    { else
     begin
       if trim(SGNuresCHK.Cells[ckcode,i]) = '' then
       begin
         SGNuresCHK.Cells[0,i] := '';
         SGNuresCHK.Cells[1,i] := '';
         SGNuresCHK.Cells[cncode,i] := '';
       end
       else
         SGNuresCHK.Cells[cncode,i] := '';
     end;}
   end;
end;

procedure TFrmNurseOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if trim(GetFeeNo)= '' then
    er_look('OUT',trim(MySBar.Panels[0].Text),trim(MySBar.Panels[1].Text),'EDNUS')
  else
    er_look('OUT',GetFeeNo,getUserId,'EDNUS');
  name_val.Free;
  Action := Cafree;
end;

procedure TFrmNurseOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmNurseOrder := nil;
end;

procedure TFrmNurseOrder.SGNuresCHKMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  TStringGrid(Sender).Row := Gid.Y;
  SGNuresCHK.Repaint;
end;

procedure TFrmNurseOrder.SetListWidth1(Sender: TObject; cols: Integer);
var
  i:Integer;
  iMaxWidth:Integer;
begin
  iMaxWidth :=40;
  for i := 0 to TListBox(Sender).Items.Count  - 1 do
    iMaxWidth:= Max(iMaxWidth,Length(TListBox(Sender).Items[i])*9 );
  TListBox(Sender).Width :=  iMaxWidth * Cols;
  TListBox(Sender).Columns := Cols;
end;

procedure TFrmNurseOrder.LBMedClick(Sender: TObject);
begin
  inherited;
  IF LBMed.itemindex >= 0 THEN
  BEGIN
    EdtCir.Text := Trim(ReTurnId(LBMed.Items.Strings[LBMed.itemindex]));
    LBmed.Visible := False;
    SGNuresCHK.Cells[EdtCir.Tag,LBMed.Tag]:= EdtCir.Text;
    EdtCir.Text := '';
    EdtCir.Visible := False;
    SGNuresCHK.SetFocus;
  END;
  LBmed.Visible := False;
  EdtCir.Visible := False;
  SGNuresCHK.Repaint;
end;

procedure TFrmNurseOrder.ToolButton1Click(Sender: TObject);
var
  Handle : THandle;
  myStr,hintstr : String;
  ageint: integer;
begin
  inherited;
  ageint := 0;
  if Trim(TToolButton(Sender).Hint)= 'FALLASSESS' then
  begin
    if TryStrToInt(GSAGE,ageint) then
    begin
      if ageint > 6 then
        hintstr := 'FALLASSESS'
      else
        hintstr := 'FALLASSESSCHILD';
    end
    else
      hintstr := 'FALLASSESS';
  end
  else
    hintstr := Trim(TToolButton(Sender).Hint);
  myStr :=Setsys.ReadString('WEB',hintstr,'');
  comStrRep(mystr);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'此功能不開放使用，如有疑問請洽資訊室詢問。'));
    Exit;
  end;
  try
    if winexec(PChar(PChar(myStr)),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle,'open',PChar(myStr),NIL,nil,SW_SHOWNORMAL);
  except
  end;
end;

procedure TFrmNurseOrder.ToolButton10Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmNurseEisai) then
    FrmNurseEisai := TFrmNurseEisai.Create(Self);
  FrmNurseEisai.ShowModal;
end;

procedure TFrmNurseOrder.ToolButton15Click(Sender: TObject);
var
  s_qty :string;
begin
  inherited;
  if not assigned(FrmPatInf) then
    FrmPatInf := TFrmPatInf.Create(self);
  FrmPatInf.SOURCE_KIND := 'E';
  FrmPatInf.SOUR_AP := 'ER';
  FrmPatInf.ShowModal;

  DM.QryTemp.Close;  //取最新體重
  s_qty := sql_str(11);
  SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
  DM.QryTemp.SQL.Text:=s_qty;
  DM.QryTemp.Open;
  if NOT DM.QryTemp.IsEmpty then
  begin
    Setpatweight(DM.QryTemp.FIELDBYNAME('weight').AsString);
    edtweth.Text  := Trim(DM.QryTemp.FIELDBYNAME('weight').AsString);
  end;
  DM.QryTemp.Close;
end;

procedure TFrmNurseOrder.ToolButton16Click(Sender: TObject);
begin
  inherited;
  F_EMRRecord(edtAge.Text,'NUR');//看病歷資料
end;

procedure TFrmNurseOrder.DC1Click(Sender: TObject);
begin
  inherited;
  // 住記未給藥原因
  if Trim(SGNuresCHK.Cells[ORDERTYPE,SGNuresCHK.row]) = 'M' then
  begin
    pnldelymed.Left := PnlClass.Left;
    pnldelymed.Top  := SGNuresCHK.Top+20;
    pnldelymed.Visible := True;
  end;
end;

procedure TFrmNurseOrder.BtnExitClick(Sender: TObject);
begin
  inherited;
  pnldelymed.Visible := False;
end;

procedure TFrmNurseOrder.Button5Click(Sender: TObject);
begin
  inherited;
  Rdgdelaymed.ItemIndex := -1;
  Edtdelaymed.Visible := False;
end;

procedure TFrmNurseOrder.SGNuresCHKMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
  p1:TPoint;
begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  Hint := '';
  if (gid.Y = -1) or (gid.X = -1 ) then
  begin
    Application.CancelHint;
    Exit;
  end;
  
  if Trim(TStringGrid(Sender).Cells[ORDERTYPE,gid.Y]) = 'M' then
  begin
    if trim(TStringGrid(Sender).Cells[DELAY,gid.y]) <> '' then
    begin
      TStringGrid(Sender).Hint := '延遲給藥:'+#10#13+'時間:'+trim(TStringGrid(Sender).Cells[DELAY,gid.y])+#10#13+'原因:'+trim(TStringGrid(Sender).Cells[DELAY_desc,gid.y]);
      p1 := TStringGrid(Sender).ClientToScreen(Point(x,y));
      Application.ActivateHint(p1);
    end
    else if trim(TStringGrid(Sender).Cells[MEMO_DESC,gid.y]) <> '' then
    begin
      TStringGrid(Sender).Hint := '備註說明:'+trim(TStringGrid(Sender).Cells[MEMO_DESC,gid.y]);
      p1 := TStringGrid(Sender).ClientToScreen(Point(x,y));
      Application.ActivateHint(p1);
    end
    else
      Application.CancelHint;
  end
  else
    Application.CancelHint;
end;

procedure TFrmNurseOrder.BtnchkClick(Sender: TObject);
var
  sql, condistr, delaytime, delaydesc: string;
begin
  inherited;
  //寫入未給藥原因
  if Rdgdelaymed.ItemIndex = -1 then
  begin
    ShowMessage('請選擇延遲給藥原因!!');
    Exit;
  end;
  if (Rdgdelaymed.ItemIndex = 9) and (trim(Edtdelaymed.Text)='') then
  begin
    ShowMessage('請選擇延遲給藥原因其他，請輸入原因!!');
    Edtdelaymed.SetFocus;
    Exit;
  end;

  condistr := '';
  sql := '';
  sql := nurse(4);
  SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,SGNuresCHK.row])));
  SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
  SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,SGNuresCHK.row])));
  delaytime := ROCTime(now,':');
  if (Rdgdelaymed.ItemIndex = 9) then
    delaydesc := qt(Rdgdelaymed.Items[Rdgdelaymed.ItemIndex]+':'+trim(Edtdelaymed.Text))
  else
    delaydesc := qt(Rdgdelaymed.Items[Rdgdelaymed.ItemIndex]);
    
  condistr := ' delay_flag=''Y'', delay_desc= '+delaydesc+
              ',DELAY_DATE='+Qt(ROCDate(now,''))+
              ',DELAY_time='+Qt(ROCTime(now,''))+
              ',status=''2''';
  SetParamter(sql,'$CONDITION$', condistr);
  try
    DM.ADOLink.BeginTrans;
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sql;
    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;

    //送電子病歷簽章
    if not Assigned(FrmNursEMR) then
      FrmNursEMR := TFrmNursEMR.Create(Self);

    FrmNursEMR.MYMEMO.Add('日期時間:'+ROCDate(now,'-')+' '+delaytime);
    FrmNursEMR.MYMEMO.Add('給藥未執行原因:'+Rdgdelaymed.Items[Rdgdelaymed.ItemIndex]);
    FrmNursEMR.MYMEMO.Add(CharAdd('給藥未執行藥名',' ',60)+CharAdd('劑量',' ',4)+CharAdd('途徑',' ',10)+CharAdd('頻次',' ',10));
    FrmNursEMR.MYMEMO.Add(CharAdd(Trim(SGNuresCHK.Cells[8,SGNuresCHK.row]) ,' ' ,60)+
               CharAdd('-'+Trim(SGNuresCHK.Cells[9,SGNuresCHK.row]) ,' ' ,4 )+
               CharAdd(Trim(SGNuresCHK.Cells[10,SGNuresCHK.row]),' ' ,10)+
               CharAdd(Trim(SGNuresCHK.Cells[11,SGNuresCHK.row]),' ' ,10));

    FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
    FrmNursEMR.PrepareSQL('NURMED');

    
  except
    DM.ADOLink.RollbackTrans;
    ShowMessage('延遲給藥寫入失敗');
    exit;
  end;
  pnldelymed.Visible := False;
  showdata;
end;

procedure TFrmNurseOrder.N1Click(Sender: TObject);
var
  sql, condistr,ostus: string;
begin
  inherited;
  //取消未給藥原因
  if Trim(SGNuresCHK.Cells[DELAY,SGNuresCHK.row]) <> '' then
  begin
    condistr := '';
    sql := '';
    sql := nurse(4);
    SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,SGNuresCHK.row])));
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,SGNuresCHK.row])));
    if Trim(SGNuresCHK.Cells[ckcode,SGNuresCHK.row]) = '' then
      ostus := '0'
    else
      ostus := '1';
    condistr := ' delay_flag='''', delay_desc= '''', DELAY_DATE='''', DELAY_time='''',status='+Qt(ostus);

    SetParamter(sql,'$CONDITION$', condistr);
    try
      DM.ADOLink.BeginTrans;
      if INSERCONFLOG(Trim(SGNuresCHK.Cells[sheeno,SGNuresCHK.row]), Trim(SGNuresCHK.Cells[SEQNO,SGNuresCHK.row])) then
      begin
        DM.QryUpdate.Close;
        DM.QryUpdate.SQL.Text := sql;
        DM.QryUpdate.ExecSQL;
        DM.ADOLink.CommitTrans;
        //送電子病歷簽章
        if not Assigned(FrmNursEMR) then
          FrmNursEMR := TFrmNursEMR.Create(Self);

        FrmNursEMR.MYMEMO.Add('取消給藥未執行: 日期時間:'+ROCDate(now,'-')+' '+ROCTime(now,':'));
        FrmNursEMR.MYMEMO.Add(CharAdd('取消給藥未執行藥名',' ',60)+CharAdd('劑量',' ',4)+CharAdd('途徑',' ',10)+CharAdd('頻次',' ',10));
        FrmNursEMR.MYMEMO.Add(CharAdd(Trim(SGNuresCHK.Cells[8,SGNuresCHK.row]) ,' ' ,60)+
                   CharAdd('-'+Trim(SGNuresCHK.Cells[9,SGNuresCHK.row]) ,' ' ,4 )+
                   CharAdd(Trim(SGNuresCHK.Cells[10,SGNuresCHK.row]),' ' ,10)+
                   CharAdd(Trim(SGNuresCHK.Cells[11,SGNuresCHK.row]),' ' ,10));

        FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
        FrmNursEMR.PrepareSQL('NURMED');
        
      end
      else
      begin
        DM.ADOLink.RollbackTrans;
        ShowMessage('取消延遲給藥失敗');
        exit;
      end;
    except
      DM.ADOLink.RollbackTrans;
      ShowMessage('取消延遲給藥失敗');
      exit;
    end;
    pnldelymed.Visible := False;
    showdata;
  end
  else
    ShowMessage('此筆 "'+Trim(SGNuresCHK.Cells[8,SGNuresCHK.row])+'" 非延遲給藥項!!');
end;

procedure TFrmNurseOrder.N2Click(Sender: TObject);
var
  sql, condistr,dd,td: string;
begin
  inherited;
  //取消執行
  dd := ROCDate(Now,'');
  td := ROCTime(Now,'');
  if (Trim(SGNuresCHK.Cells[cncode,SGNuresCHK.row]) <> '') and (Trim(SGNuresCHK.Cells[orderstatus,SGNuresCHK.row]) = 'O') then
  begin
    condistr := '';
    sql := '';
    sql := nurse(4);
    SetParamter(sql,'$SHEET_NO$',Qt(Trim(SGNuresCHK.Cells[sheeno,SGNuresCHK.row])));
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$SEQ_NO$',Qt(Trim(SGNuresCHK.Cells[SEQNO,SGNuresCHK.row])));
    condistr := ' nus_conf='''', conf_date= '''', conf_time='''', upd_date='+Qt(dd)+', upd_time='+Qt(td)+',status=''1''';

    SetParamter(sql,'$CONDITION$', condistr);
    try
      DM.ADOLink.BeginTrans;
      if INSERCONFLOG(Trim(SGNuresCHK.Cells[sheeno,SGNuresCHK.row]), Trim(SGNuresCHK.Cells[SEQNO,SGNuresCHK.row])) then
      begin
        DM.QryUpdate.Close;
        DM.QryUpdate.SQL.Text := sql;
        DM.QryUpdate.ExecSQL;

        DM.ADOLink.CommitTrans;

        //送電子病歷簽章
        if not Assigned(FrmNursEMR) then
          FrmNursEMR := TFrmNursEMR.Create(Self);

        FrmNursEMR.MYMEMO.Add('取消執行日期時間:'+ROCDate(now,'-')+' '+ROCTime(Now,':'));
        FrmNursEMR.MYMEMO.Add('取消執行項目:'+Trim(SGNuresCHK.Cells[4,SGNuresCHK.row])+'[ '+Trim(SGNuresCHK.Cells[8,SGNuresCHK.row])+' ]'+
                              '  數量:'+ Trim(SGNuresCHK.Cells[9,SGNuresCHK.row])+'頻率:'+ Trim(SGNuresCHK.Cells[11,SGNuresCHK.row]));
        FrmNursEMR.MYMEMO.Insert(0,'------------------------------------------------------------------------------------------');
        FrmNursEMR.PrepareSQL('護理記錄');
      end
      else
      begin
        DM.ADOLink.RollbackTrans;
        ShowMessage('取消執行失敗');
        exit;
      end;
    except
      DM.ADOLink.RollbackTrans;
      ShowMessage('取消執行失敗');
      exit;
    end;
    pnldelymed.Visible := False;
    showdata;
  end
  else
    ShowMessage('此筆 "'+Trim(SGNuresCHK.Cells[8,SGNuresCHK.row])+'" 非已執行項!!');
end;

Function TFrmNurseOrder.INSERCONFLOG(SHEETNO, SEQNO: STRING):Boolean;
VAR
  SQL: STRING;
begin
  Result := True;
  try
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text := 'select * from nus_conf where fee_no='+Qt(GetFeeNo)+' and sheet_no='+Qt(SHEETNO)+
                           ' and seq_no='+Qt(SEQNO);
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      sql := nurse(10);
      SetParamter(sql,'$SHEET_NO$',Qt(SHEETNO));
      SetParamter(sql,'$SEQ$',Qt(trim(DM.QryTemp.fieldbyname('seq').AsString)));
      SetParamter(sql,'$SEQ_NO$',Qt(SEQNO));
      SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(sql,'$STATUS$',Qt(trim(DM.QryTemp.fieldbyname('status').AsString)));
      SetParamter(sql,'$CNCL_OPER$',Qt(getUserId));
      SetParamter(sql,'$CNCL_DATE$',Qt(ROCDate(Now,'')));
      SetParamter(sql,'$CNCL_TIME$',Qt(ROCTime(Now,'')));
      SetParamter(sql,'$OLD_OPER$',Qt(trim(DM.QryTemp.fieldbyname('nus_oper').AsString)));
      SetParamter(sql,'$OLD_DATE$',Qt(trim(DM.QryTemp.fieldbyname('upd_date').AsString)));
      SetParamter(sql,'$OLD_TIME$',Qt(trim(DM.QryTemp.fieldbyname('upd_time').AsString)));
      DM.QryInsert.Close;
      DM.QryInsert.SQL.Text := sql;
      DM.QryInsert.ExecSQL;
    end
    else
    begin
      ShowMessage('insert log error');
      Result := False;
    end;
  except
    Result := False;
  end;
end;

function TFrmNurseOrder.InserDataVitalsignER(VSITEM, VSRECORD, RECORDDATE,CARERECORD_ID: string): Boolean;
VAR
  SQL: STRING;
begin
  Result := True;
  try
    sql := nurse(8);
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$CARERECORD_ID$',Qt(CARERECORD_ID));
    SetParamter(sql,'$VS_ITEM$',Qt(VSITEM));
    SetParamter(sql,'$VS_RECORD$',Qt(VSRECORD));
    SetParamter(sql,'$RECORD_USER$',Qt(getUserId));
    SetParamter(sql,'$RECORD_DATE$','(select to_date('+Qt(RECORDDATE+'00')+',''YYYYMMDDHH24MISS'') from dual)');
    SetParamter(sql,'$CREATE_USER$',Qt(getUserId));
    SetParamter(sql,'$MODIFY_USER$',Qt(getUserId));
    DM.QryInsert.Close;
    DM.QryInsert.SQL.Text := sql;
    DM.QryInsert.ExecSQL;
  except
    Result := False;
  end;
end;

function TFrmNurseOrder.updateDataVitalsignER(VSITEM, VSRECORD: string): Boolean;
VAR
  SQL: STRING;
begin
  Result := True;
  try
    sql := nurse(81);
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$VS_ITEM$',Qt(VSITEM));
    SetParamter(sql,'$VS_RECORD$',Qt(VSRECORD));
    //SetParamter(sql,'$RECORD_DATE$','(select to_date('+Qt(RECORDDATE+'00')+',''YYYYMMDDHH24MISS'') from dual)');
    SetParamter(sql,'$RECORD_DATE$',Qt(CMBoxDateRecordVI.Text));
    SetParamter(sql,'$MODIFY_USER$',Qt(getUserId));
    DM.QryInsert.Close;
    DM.QryInsert.SQL.Text := sql;
    DM.QryInsert.ExecSQL;
  except
    Result := False;
  end;
end;


procedure TFrmNurseOrder.Label24Click(Sender: TObject);
begin
  inherited;
  MEdtMeasuring.Text := ROCTime(Now,'');
end;

procedure TFrmNurseOrder.CMBoxDateRecordVIChange(Sender: TObject);
begin
  inherited;
  CmBid.ItemIndex := CMBoxDateRecordVI.ItemIndex;
  VITALSIGNSHOWDATA;
end;

procedure TFrmNurseOrder.VITALSIGNSHOWDATA;
VAR
  SQL: STRING;
begin
  If CMBoxDateRecordVI.ItemIndex <> -1 then
  begin
    sql := nurse(83);
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$RECORD_DATE$',Qt(CMBoxDateRecordVI.Text));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text := sql;
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
      MEdtMeasuring.Text := trim(DM.QryTemp.FieldByName('mdt').AsString);
    while not DM.QryTemp.Eof do
    begin
      if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_G' then
      begin
        IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '4' then
          CmBEVM_G.ItemIndex := 0
        else IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '3' then
          CmBEVM_G.ItemIndex := 1
        else IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '2' then
          CmBEVM_G.ItemIndex := 2
        else IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '1' then
          CmBEVM_G.ItemIndex := 3
        else IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = 'C' then
          CmBEVM_G.ItemIndex := 4
        else
          CmBEVM_G.ItemIndex := -1;
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_C' then
      BEGIN
         IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '5' then
           CMBEVM_C.ItemIndex := 0
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '4' then
           CMBEVM_C.ItemIndex := 1
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '3' then
           CMBEVM_C.ItemIndex := 2
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '2' then
           CMBEVM_C.ItemIndex := 3
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '1' then
           CMBEVM_C.ItemIndex := 4
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = 'E' then
           CMBEVM_C.ItemIndex := 5
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = 'T' then
           CMBEVM_C.ItemIndex := 6
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = 'A' then
           CMBEVM_C.ItemIndex := 7
         ELSE
           CMBEVM_C.ItemIndex := -1;
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_S' then
      begin
         IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '6' then
           CMBEVM_S.ItemIndex := 0
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '5' then
           CMBEVM_S.ItemIndex := 1
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '4' then
           CMBEVM_S.ItemIndex := 2
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '3' then
           CMBEVM_S.ItemIndex := 3
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '2' then
           CMBEVM_S.ItemIndex := 4
         ELSE IF trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) = '1' then
           CMBEVM_S.ItemIndex := 5
         ELSE
           CMBEVM_S.ItemIndex := -1;
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BR' then
        MEDTBR.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BS' then
        MEDTBS.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'SPO2' then
        MEDTSPO2.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'HR' then
        MDETHR.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BT' then
        MEDTBT.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BT2' then
        MEDTBT2.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BPH' then
        MEDTBPH.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BPL' then
        MEDTBPL.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'PAIN' then
        MEdtPAIN.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);

      DM.QryTemp.Next;
    end;
  end;
end;

procedure TFrmNurseOrder.BtnVitasignInsertClick(Sender: TObject);
VAR
  INSERT_FLAG: Boolean;
  s_qty,Contents,crid,sql : string;
  i : Integer;
begin
  inherited;
  if (TBitBtn(Sender).Name <> 'BtnVitasignUpdate') AND (BtnVitasignInsert.Caption = '清除') then
  begin
    BtnVitasignInsert.Caption := '新增';
    CmBEVM_G.ItemIndex := -1;
    CMBEVM_C.ItemIndex := -1;
    CMBEVM_S.ItemIndex := -1;
    MEDTBR.Text := '';
    MEDTBS.Text := '';
    MEDTSPO2.Text := '';
    MDETHR.Text := '';
    MEDTBT.Text := '';
    MEDTBT2.Text := '';
    MEDTBPH.Text := '';
    MEDTBPL.Text := '';
    MEdtPAIN.Text := '';
    MEdtMeasuring.text := roctime(Now,'');
    exit;
  end ;
  if not CheckVitasign then
  begin
    ShowMessage('請至少輸入一項資料');
    exit;
  end;
  Contents := '';
  INSERT_FLAG := True;

  DM.ADOLink.BeginTrans;

  if TBitBtn(Sender).Name = 'BtnVitasignUpdate' then
  begin
    //EVM
    if CmBEVM_G.ItemIndex >= 0 then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(CmBEVM_G.Hint),TRIM(CmBEVM_G.Text));
      Contents := Contents + 'E'+TRIM(CmBEVM_G.Text);
    end;
    if CMBEVM_C.ItemIndex >= 0 then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(CMBEVM_C.Hint),TRIM(CMBEVM_C.Text));
      Contents := Contents + 'V'+TRIM(CMBEVM_C.Text)+'';
    end;
    if CMBEVM_S.ItemIndex >= 0 then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(CMBEVM_S.Hint),TRIM(CMBEVM_S.Text));
      Contents := Contents + 'M'+TRIM(CMBEVM_S.Text)+'; ';
    end;
    //體溫
    if MEDTBT.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBT.Hint),TRIM(MEDTBT.Text));
      Contents := Contents + '體溫:'+TRIM(MEDTBT.Text)+'.'+TRIM(MEDTBT2.Text)+'度; ';
    end;
    if MEDTBT2.Text <> '' then
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBT2.Hint),TRIM(MEDTBT2.Text));
    //脈博
    if MDETHR.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MDETHR.Hint),TRIM(MDETHR.Text));
      Contents := Contents + '脈博:'+TRIM(MDETHR.Text)+'次/分; ';
    end;
    //呼吸
    if MEDTBR.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBR.Hint),TRIM(MEDTBR.Text));
      Contents := Contents + '呼吸:'+TRIM(MEDTBR.Text)+'次/分; ';
    end;
    //血壓
    if MEDTBPH.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBPH.Hint),TRIM(MEDTBPH.Text));
      Contents := Contents + '血壓:'+TRIM(MEDTBPH.Text)+'/'+TRIM(MEDTBPL.Text)+'mmHg; ';
    end;
    if MEDTBPL.Text <> '' then
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBPL.Hint),TRIM(MEDTBPL.Text));
    //血氧
    if MEDTSPO2.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTSPO2.Hint),TRIM(MEDTSPO2.Text));
      Contents := Contents + '血氧:'+TRIM(MEDTSPO2.Text)+'%; ';
    end;
    //血糖
    if MEDTBS.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEDTBS.Hint),TRIM(MEDTBS.Text));
      Contents := Contents + '血糖:'+TRIM(MEDTBS.Text)+'mg/dl; ';
    end;
    //疼痛指數
    if MEdtPAIN.Text <> '' then
    begin
      INSERT_FLAG := updateDataVitalsignER(TRIM(MEdtPAIN.Hint),TRIM(MEdtPAIN.Text));
      Contents := Contents + '疼痛指數:'+TRIM(MEdtPAIN.Text)+'分; ';
    end;

    //更新量測時間
    sql := nurse(84);
    SetParamter(sql,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sql,'$RECORD_DATEUP$','(select to_date('+Qt(FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text+'00')+',''YYYYMMDDHH24MISS'') from dual)');
    SetParamter(sql,'$RECORD_DATE$',Qt(CMBoxDateRecordVI.Text));
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sql;
    DM.QryUpdate.ExecSQL;

    if trim(Contents) <> '' then
      Contents := COPY(Contents,1,length(Contents)-2)+'。';

    //update護理記錄
    INSERT_FLAG := updateCARERECORD_DATA_ER(trim(CmBid.Text),'C','[生理量測]:'+Contents,'ERAPDATA',' ');
    Contents := '[生理量測]:'+Contents;
  end
  else
  begin
    if trim(MEdtMeasuring.Text) = '' then
      exit;

    crid := GetFeeNo+'_'+FormatDateTime('YYYYMMDDHHNNSSZZZ',Now);

    INSERT_FLAG := InserDataVitalsignER(TRIM(CmBEVM_G.Hint),TRIM(CmBEVM_G.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if CmBEVM_G.ItemIndex >= 0 then
      Contents := Contents + 'E'+TRIM(CmBEVM_G.Text);

    INSERT_FLAG := InserDataVitalsignER(TRIM(CMBEVM_C.Hint),TRIM(CMBEVM_C.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if CMBEVM_C.ItemIndex >= 0 then
      Contents := Contents + 'V'+TRIM(CMBEVM_C.Text)+'';

    INSERT_FLAG := InserDataVitalsignER(TRIM(CMBEVM_S.Hint),TRIM(CMBEVM_S.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if CMBEVM_S.ItemIndex >= 0 then
      Contents := Contents + 'M'+TRIM(CMBEVM_S.Text)+'; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBT.Hint),TRIM(MEDTBT.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBT2.Hint),TRIM(MEDTBT2.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEDTBT.Text <> '' then
      Contents := Contents + '體溫:'+TRIM(MEDTBT.Text)+'.'+TRIM(MEDTBT2.Text)+'度; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MDETHR.Hint),TRIM(MDETHR.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MDETHR.Text <> '' then
      Contents := Contents + '脈博:'+TRIM(MDETHR.Text)+'次/分; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBR.Hint),TRIM(MEDTBR.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEDTBR.Text <> '' then
      Contents := Contents + '呼吸:'+TRIM(MEDTBR.Text)+'次/分; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBPH.Hint),TRIM(MEDTBPH.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBPL.Hint),TRIM(MEDTBPL.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEDTBPH.Text <> '' then
      Contents := Contents + '血壓:'+TRIM(MEDTBPH.Text)+'/'+TRIM(MEDTBPL.Text)+'mmHg; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTSPO2.Hint),TRIM(MEDTSPO2.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEDTSPO2.Text <> '' then
      Contents := Contents + '血氧:'+TRIM(MEDTSPO2.Text)+'%; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEDTBS.Hint),TRIM(MEDTBS.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEDTBS.Text <> '' then
      Contents := Contents + '血糖:'+TRIM(MEDTBS.Text)+'mg/dl; ';

    INSERT_FLAG := InserDataVitalsignER(TRIM(MEdtPAIN.Hint),TRIM(MEdtPAIN.Text),FormatDateTime('YYYYMMDD',Now)+MEdtMeasuring.Text,crid);
    if MEdtPAIN.Text <> '' then
      Contents := Contents + '疼痛指數:'+TRIM(MEdtPAIN.Text)+'分; ';
    if trim(Contents) <> '' then
      Contents := COPY(Contents,1,length(Contents)-2)+'。';
    //insert寫護理記錄
    INSERT_FLAG := InserCARERECORD_DATA_ER(' ',' ','[生理量測]:'+Contents,'CARERECORD',' ',crid);
    BtnVitasignInsert.Caption := '清除';
    Contents := '[生理量測]:'+Contents;
  end;

  if not INSERT_FLAG then
  begin
    ShowMessage('寫入失敗');
    DM.ADOLink.RollbackTrans;
    Exit;
  end
  else
  begin
    DM.ADOLink.CommitTrans;
    //送EMR
    if trim(Contents) <> '' then
    begin
      if not Assigned(FrmNursEMR) then
        FrmNursEMR := TFrmNursEMR.Create(Self);
      FrmNursEMR.MYMEMO.Add('------------------------------------------------------------------------------------------');
      if Length(Contents) > 70 then
      begin
        name_val.Clear;
        name_val := SliptStr(70,NURFulltoHalf(Contents));
        for i := 0 to name_val.Count-1 do
        begin
          if i = 0 then
            FrmNursEMR.MYMEMO.Add('  護理記錄: '+name_val.Strings[i])
          else
            FrmNursEMR.MYMEMO.Add('            '+name_val.Strings[i]);
        end;
      end
      else
        FrmNursEMR.MYMEMO.Add('  護理記錄:'+Contents);
      FrmNursEMR.PrepareSQL('NURDATA');
    end;
  end;

  CMBoxDateRecordVI.Items.Clear;
  CmBid.Items.Clear;
  s_qty := nurse(82);
  SetParamter(s_qty,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := s_qty;
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    CMBoxDateRecordVI.Items.Add(trim(DM.QryTemp.fieldbyname('record_date').AsString));
    cmbid.Items.Add(trim(DM.QryTemp.fieldbyname('CARERECORD_ID').AsString));
    DM.QryTemp.Next;
  end;

  CMBoxDateRecordVI.ItemIndex := CMBoxDateRecordVI.Items.Count-1;
  CmBid.ItemIndex := CMBoxDateRecordVI.ItemIndex;
end;

procedure TFrmNurseOrder.ImgSkinClick(Sender: TObject);
var
  SexBMP : TBitmap;
  mystr, myParamter : string;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','CHRSPEC','');
  myParamter := Setsys.ReadString('PARAMTER','CHRSPEC','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'此功能不開放使用，如有疑問請洽資訊室詢問。'));
    Exit;
  end;
  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
  end;

  SexBMP := TBitmap.Create;
  try
    with DM.QryTemp do //特別註記
    begin
      Close;
      SQL.Clear;
      SQL.Add('select kind , comm_desc , stage , msg_flag from chr_spec where CHR_NO='+Qt(GetChrno)+' and ');
      SQL.Add(' trim(impl_date) <= trim('+GetEpdDate+') and nvl(trim(end_date),trim('+GetEpdDate+')) >= trim('+GetEpdDate+') and rownum=1');
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      Open;
      sql_Waiting_log('CLOSE','');
      SexBMP := TBitmap.Create;
      if NOT IsEmpty then
      BEGIN
        IF trim(FieldByName('kind').AsString)= '' then
          ImageListforPat.GetBitmap(10,SexBMP)// 鳥
        ELSE
          ImageListforPat.GetBitmap(9,SexBMP);//花
      END
      else
      begin
        ImageListforPat.GetBitmap(10,SexBMP)// 鳥
      end;
      ImgSkin.Picture.Graphic := SexBMp;
      SexBMP.FreeImage;
    end;
  finally
    freeandnil(SexBMP);
  end;
end;

procedure TFrmNurseOrder.ImgMedClick(Sender: TObject);
begin
  inherited;
  if not assigned(FrmWarning) then
    FrmWarning := TFrmWarning.Create(self);
  FrmWarning.ShowModal;
end;

procedure TFrmNurseOrder.RdgdelaymedClick(Sender: TObject);
begin
  inherited;
  if Rdgdelaymed.ItemIndex = 9 then
  begin
    Edtdelaymed.Visible := true;
    Edtdelaymed.Text := '';
  end
  else
    Edtdelaymed.Visible := False;
end;

function TFrmNurseOrder.CheckVitasign: Boolean;
begin
  if CmBEVM_G.ItemIndex > -1 then
    Result := True
  else if CMBEVM_C.ItemIndex > -1 then
    Result := True
  else if CMBEVM_S.ItemIndex > -1 then
    Result := True
  else if Trim(MEDTBR.Text) <> '' then
    Result := True
  else if Trim(MEDTBS.Text) <> '' then
    Result := True
  else if Trim(MEDTSPO2.Text) <> '' then
    Result := True
  else if Trim(MDETHR.Text) <> '' then
    Result := True
  else if Trim(MEDTBT.Text) <> '' then
    Result := True
  else if Trim(MEDTBT2.Text) <> '' then
    Result := True
  else if Trim(MEDTBPH.Text) <> '' then
    Result := True
  else if Trim(MEDTBPL.Text) <> '' then
    Result := True
  else if Trim(MEdtPAIN.Text) <> '' then
    Result := True
  else
    Result := False;
end;

procedure TFrmNurseOrder.N5Click(Sender: TObject);
begin
  inherited;
  Button3Click(Button3);
end;

procedure TFrmNurseOrder.N4Click(Sender: TObject);
var
  myStr,myParamter : String;
begin
  inherited;
  if sender is TMenuItem then
  begin
    IF TMenuItem(Sender).Hint <> 'FRM' THEN
    BEGIN
      mystr := Setsys.ReadString('WEB', TMenuItem(sender).Caption, '');
      myParamter := Setsys.ReadString('PARAMTER', TMenuItem(sender).Caption, '');

      comStrRep(mystr);
      comstrRep(myParamter);

      if myStr = '' then
      begin
        showMessage(NullStrTo(gsSysMsg, '此功能不開放使用，如有疑問請洽資訊室詢問。'));
        Exit;
      end;
      try
        if winexec(PChar(PChar(myStr) + ' ' + PChar(myParamter)), SW_SHOWNORMAL) < 31 then
          ShellExecute(Handle, 'open', PChar(myStr), PChar(myParamter), nil, SW_SHOWNORMAL);
      except
      end;

    END
    ELSE
    BEGIN
      if not Assigned(FrmMTRLListPrint) then
        FrmMTRLListPrint := TFrmMTRLListPrint.Create(Self);
      FrmMTRLListPrint.ShowModal;
      FreeAndNil(FrmMTRLListPrint);
    END;
  end;
end;

procedure TFrmNurseOrder.N7Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  //其他報告
begin
  myStr :=Setsys.ReadString('護理其他',trim(TMenuItem(sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTERSYSTEM',TMenuItem(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'此功能不開放使用，如有疑問請洽資訊室詢問。'));
    Exit;
  end;
  try
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
  end;
end;

procedure TFrmNurseOrder.ToolButton23Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmTriage) then
    FrmTriage := TFrmTriage.Create(Self);
  FrmTriage.ShowModal;
  FreeAndNil(FrmTriage);
end;
procedure TFrmNurseOrder.FormCreate(Sender: TObject);
var
  menuItems, subItems : String;
  myItems, mysubItems : TMenuItem;
  Key : String;
begin
  inherited;

  {
  //加 MAINMENU第一層
  menuItems := SetSys.ReadString('NURSEMAINMENU', '項目', '');
  while MenuItems <> '' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.Hint := 'NURSE_MAINMENU';
    myItems.OnClick := N4Click;
    MainMenu1.Items.Add(myItems);
    MenuItems := ReTurnName(MenuItems);
    //子項
    subItems := '';
    subItems := SetSys.ReadString(myItems.Caption, '項目', '');
    if subItems <> '' then
      myItems.OnClick := nil;
    while SubItems <> '' do
    begin
      mysubItems := TMenuItem.Create(myItems);
      mysubItems.Caption := ReTurnId(SubItems);
      mysubItems.Hint := myItems.Caption;
      mysubItems.OnClick := N4Click;
      myItems.Add(mysubItems);
      SubItems := ReTurnName(SubItems);
    end;
  end;
  }

  //加 MAINMENU第一層  護理其他
  menuItems := SetSys.ReadString('護理其他', '項目', '');
  while MenuItems <> '' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.Hint := 'NURSE_MAINMENU';
    myItems.OnClick := N7Click;
    MainMenu1.Items[2].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
    //子項
    subItems := '';
    subItems := SetSys.ReadString(myItems.Caption, '項目', '');
    if subItems <> '' then
      myItems.OnClick := nil;
    while SubItems <> '' do
    begin
      mysubItems := TMenuItem.Create(myItems);
      mysubItems.Caption := ReTurnId(SubItems);
      mysubItems.Hint := myItems.Caption;
      //mysubItems.OnClick := N4Click;
      mysubItems.OnClick := N7Click;
      myItems.Add(mysubItems);
      SubItems := ReTurnName(SubItems);
    end;
  end;


end;


procedure TFrmNurseOrder.N6Click(Sender: TObject);
begin
  inherited;
  if Trim(SGNuresCHK.Cells[8,SGNuresCHK.row]) <> '' then
  begin
    Edit1.Text := Trim(SGNuresCHK.Cells[8,SGNuresCHK.row]);
    Edit1.SetFocus;
    Edit1.CopyToClipboard;
    Edit1.Text := '';
  end;
end;

procedure TFrmNurseOrder.CkBtraumaNoClick(Sender: TObject);
begin
  inherited;
  if CMBTraumaNo.Enabled then
  begin
    CMBTraumaNo.Enabled := False;
  end
  else
  begin
    CMBTraumaNo.Enabled := True;
  end;
end;

end.
