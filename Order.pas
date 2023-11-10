unit Order;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, ToolWin, ImgList, Grids,
  Buttons, dateutils, ADODB, DB, Math, DBCtrls, dbcgrids, Contnrs, Menus,SHELLapi,
  CheckLst, OleServer, WordXP, Registry, Printers;
type TTempCheck=class(TChecklistbox);
  
type
  TFrmOrder = class(TFrmMain)
    Panel3: TPanel;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    GroupBox2: TGroupBox;
    rheSub: TRichEdit;
    GroupBox3: TGroupBox;
    rheObj: TRichEdit;
    GroupBox4: TGroupBox;
    rheHist: TRichEdit;
    GroupBox5: TGroupBox;
    rhePlan: TRichEdit;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    BtnModityMed: TBitBtn;
    BtnSeqMed: TBitBtn;
    BtnDelmed: TBitBtn;
    BtnNamemed: TBitBtn;
    BtnDose: TBitBtn;
    BtnCir: TBitBtn;
    BtnPath: TBitBtn;
    BtnCodemed: TBitBtn;
    BtnMemo: TBitBtn;
    BtnIns: TBitBtn;
    BtnGri: TBitBtn;
    BtnUnit: TBitBtn;
    BtnSheetNo: TBitBtn;
    Btndays: TBitBtn;
    BtnTatl: TBitBtn;
    BtnFeeUnit: TBitBtn;
    TabSheet6: TTabSheet;
    Panel20: TPanel;
    BtnLDel: TBitBtn;
    BtnLCode: TBitBtn;
    BtnLOrder: TBitBtn;
    BtnLDose: TBitBtn;
    BtnLUnit: TBitBtn;
    BtnLCir: TBitBtn;
    BtnLPath: TBitBtn;
    btnLIns: TBitBtn;
    BtnLEMG: TBitBtn;
    BtnLMemo: TBitBtn;
    TabSheet7: TTabSheet;
    Panel35: TPanel;
    BtnCDel: TBitBtn;
    BtnCCode: TBitBtn;
    BtnCOrder: TBitBtn;
    BtnCDose: TBitBtn;
    BtnCUnit: TBitBtn;
    BtnCCir: TBitBtn;
    BtnCPath: TBitBtn;
    btnCIns: TBitBtn;
    BtnCEMG: TBitBtn;
    BtnCMemo: TBitBtn;
    TabSheet8: TTabSheet;
    Panel32: TPanel;
    BtnRDel: TBitBtn;
    BtnRMemo: TBitBtn;
    BtnRCode: TBitBtn;
    BtnROrder: TBitBtn;
    BtnRDose: TBitBtn;
    BtnRUnit: TBitBtn;
    BtnRCir: TBitBtn;
    BtnRPath: TBitBtn;
    btnRIns: TBitBtn;
    BtnREMG: TBitBtn;
    SGXRay: TStringGrid;
    LBRCir: TListBox;
    EdtRMemo: TEdit;
    CbbROrderYN: TComboBox;
    EdtRCir: TEdit;
    PanelRadioCount: TPanel;
    Shape2: TShape;
    Label37: TLabel;
    Shape3: TShape;
    Label38: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    EdtMsv: TEdit;
    EdtRisk: TEdit;
    EdtNewmsv: TEdit;
    EdtnewRisk: TEdit;
    EdtAllmsv: TEdit;
    EdtallRisk: TEdit;
    EdtSumMsv: TEdit;
    EdtSumRisk: TEdit;
    TabSheet9: TTabSheet;
    Panel15: TPanel;
    BtnFModity: TBitBtn;
    BtnFSeq: TBitBtn;
    BtnFDel: TBitBtn;
    BtnFName: TBitBtn;
    BtnFpart: TBitBtn;
    BtnFCode: TBitBtn;
    BtnFIns: TBitBtn;
    BitBtn1: TBitBtn;
    BtnFQty: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet10: TTabSheet;
    Panel16: TPanel;
    BtnOModity: TBitBtn;
    BtnOSeq: TBitBtn;
    BtnODel: TBitBtn;
    BtnOName: TBitBtn;
    BtnOpart: TBitBtn;
    BtnOCode: TBitBtn;
    BtnOIns: TBitBtn;
    BtnOQty: TBitBtn;
    TabSheet11: TTabSheet;
    Panel11: TPanel;
    BtnStModity: TBitBtn;
    BtnStSeq: TBitBtn;
    BtnStDel: TBitBtn;
    BtnStName: TBitBtn;
    BtnStCode: TBitBtn;
    SGOrder: TStringGrid;
    SGMed: TStringGrid;
    LBMed: TListBox;
    EdtCir: TEdit;
    EdtOrderEdit: TEdit;
    CbbOrderYN: TComboBox;
    SGLab: TStringGrid;
    LBCir: TListBox;
    EdtLCir: TEdit;
    EdtLMemo: TEdit;
    CbbLOrderYN: TComboBox;
    SGChk: TStringGrid;
    EdtCMemo: TEdit;
    EdtCCir: TEdit;
    CbbCOrderYN: TComboBox;
    LBCCir: TListBox;
    SGFee: TStringGrid;
    EdTSGFEE: TEdit;
    CbbFeeYN: TComboBox;
    SGMtrl: TStringGrid;
    EdTSGMTRL: TEdit;
    CBBMtrlYN: TComboBox;
    pnlHintGrid: TPanel;
    pnlIcd: TPanel;
    DBCIcd: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    pnlIcdT: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    pnlfee: TPanel;
    pnlFeeT: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label15: TLabel;
    DBCFee: TDBCtrlGrid;
    DBText19: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    pnlmtrl: TPanel;
    pnlMtrlT: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBCMtrl: TDBCtrlGrid;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    PanelLab: TPanel;
    DBCLab: TDBCtrlGrid;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Panel39: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    PanelCHK: TPanel;
    Panel40: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBCCHK: TDBCtrlGrid;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText20: TDBText;
    PanelRay: TPanel;
    Panel12: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBCRay: TDBCtrlGrid;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    PanelMed: TPanel;
    DBCGMed: TDBCtrlGrid;
    Bevel4: TBevel;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    Label52: TLabel;
    Panel41: TPanel;
    Panel42: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBMemo1: TDBMemo;
    DSMed: TDataSource;
    DSRay: TDataSource;
    DSCHK: TDataSource;
    DSLab: TDataSource;
    DSMtrl: TDataSource;
    DSHintGrd: TDataSource;
    DSIcd: TDataSource;
    ImageListforPat: TImageList;
    ImageList1: TImageList;
    TabSheet13: TTabSheet;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox8: TGroupBox;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    GroupBox10: TGroupBox;
    REdt_Triageman: TRichEdit;
    SGtriage: TStringGrid;
    GroupBox11: TGroupBox;
    StringGrid1: TStringGrid;
    GroupBox12: TGroupBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Timer1: TTimer;
    TabSheet12: TTabSheet;
    MainMenu1: TMainMenu;
    N1231: TMenuItem;
    BitBtn11: TBitBtn;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    DNR1: TMenuItem;
    N17: TMenuItem;
    AERS1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    PACS1: TMenuItem;
    CDFile1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    ScrollBox1: TScrollBox;
    Panel24: TPanel;
    Panel25: TPanel;
    GroupBox18: TGroupBox;
    Memo3: TRichEdit;
    GroupBox19: TGroupBox;
    GroupBox21: TGroupBox;
    Panel26: TPanel;
    pnlcap: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText37: TDBText;
    Memo5: TRichEdit;
    SGEmgicd: TStringGrid;
    Memo10: TRichEdit;
    DSIV: TDataSource;
    N21: TMenuItem;
    N29: TMenuItem;
    Panel22: TPanel;
    Panel1: TPanel;
    Panel23: TPanel;
    GroupBox17: TGroupBox;
    Panel28: TPanel;
    Memo9: TRichEdit;
    Memo8: TRichEdit;
    CheckListBox6: TCheckListBox;
    GroupBox15: TGroupBox;
    Memo4: TRichEdit;
    CheckListBox4: TCheckListBox;
    GroupBox13: TGroupBox;
    Memo1: TRichEdit;
    CheckListBox2: TCheckListBox;
    GroupBox14: TGroupBox;
    Memo2: TRichEdit;
    CheckListBox3: TCheckListBox;
    GroupBox16: TGroupBox;
    Panel29: TPanel;
    Memo6: TRichEdit;
    Memo7: TRichEdit;
    CheckListBox5: TCheckListBox;
    GroupBox20: TGroupBox;
    Memo11: TRichEdit;
    CheckListBox7: TCheckListBox;
    Panel27: TPanel;
    btnFirstsave: TButton;
    Button2: TButton;
    BitBtn3: TBitBtn;
    N30: TMenuItem;
    Panel30: TPanel;
    Panel31: TPanel;
    GroupBox22: TGroupBox;
    Edit1: TEdit;
    pnlphrase: TPanel;
    DBCphrase: TDBCtrlGrid;
    DBText38: TDBText;
    DSphrase: TDataSource;
    N31: TMenuItem;
    N32: TMenuItem;
    bmpjpg1: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    TabSheet1: TTabSheet;
    Panel33: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    SGfeepay: TStringGrid;
    PpMconst: TPopupMenu;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    pnltriage: TPanel;
    N15: TMenuItem;
    N46: TMenuItem;
    ppmcopy: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    N20: TMenuItem;
    Clineguide1: TMenuItem;
    MDConsult1: TMenuItem;
    BtnorderShift: TBitBtn;
    REdtSOP: TMemo;
    Edit2: TEdit;
    Label65: TLabel;
    BitBtn5: TBitBtn;
    Label66: TLabel;
    TabSheet2: TTabSheet;
    Panel34: TPanel;
    BtnpthCode: TBitBtn;
    BtnpthOrder: TBitBtn;
    BtnpthDose: TBitBtn;
    btnpthIns: TBitBtn;
    BtnpthMemo: TBitBtn;
    BitBtn17: TBitBtn;
    SGPath: TStringGrid;
    BtnpthDel: TBitBtn;
    BtnpthSeq: TBitBtn;
    BtnpthModity: TBitBtn;
    Label67: TLabel;
    DBText39: TDBText;
    Label68: TLabel;
    DBText40: TDBText;
    DtSImage: TDataSource;
    N47: TMenuItem;
    ISS1: TMenuItem;
    PopMMedDC: TPopupMenu;
    DC1: TMenuItem;
    Shape1: TShape;
    Button3: TButton;
    ChkBOutmed: TCheckBox;
    Btnoutmed: TBitBtn;
    N48: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Bevel1: TBevel;
    Image7: TImage;
    Panel6: TPanel;
    Panel7: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    CbbPart: TComboBox;
    CbbCase: TComboBox;
    RGPatId: TRadioGroup;
    CheckBox1: TCheckBox;
    GroupBox6: TGroupBox;
    lbltleve: TLabel;
    Panel8: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ill_time: TLabel;
    Lbl_ill: TLabel;
    BtbnMAJOR: TBitBtn;
    BtnAMI: TBitBtn;
    BtnCVA: TBitBtn;
    BtnTrauma: TBitBtn;
    GroupBox23: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    CbbArea: TComboBox;
    CbbBedNo: TComboBox;
    Panel13: TPanel;
    Panel14: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl: TLabel;
    LblBLOOD_TYPE: TLabel;
    Label63: TLabel;
    labdept: TLabel;
    edtIdno: TEdit;
    edtName: TEdit;
    cbchrno: TComboBox;
    edtAge: TEdit;
    edtchrno: TEdit;
    edtwdt: TEdit;
    Panel17: TPanel;
    Label41: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    CBtriage: TComboBox;
    stattrend: TStaticText;
    STXTArea: TStaticText;
    STXTBED: TStaticText;
    Panel36: TPanel;
    Label1: TLabel;
    Label64: TLabel;
    Image2: TImage;
    ImgMDRO: TImage;
    ImgBoold: TImage;
    sgBioinf: TStringGrid;
    cbbvscode: TComboBox;
    btnRePrint: TBitBtn;
    BtnTempSave: TBitBtn;
    btnSave: TBitBtn;
    PanelPatInf: TPanel;
    ImgSex: TImage;
    ImgMed: TImage;
    ImgSkin: TImage;
    ImgTemperature: TImage;
    Image_AMI: TImage;
    BitBtn4: TBitBtn;
    ComboBox1: TComboBox;
    DBImage1: TDBImage;
    Shape4: TShape;
    CoolBar2: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton80: TToolButton;
    ToolButton55: TToolButton;
    ToolButton15: TToolButton;
    ToolButton5: TToolButton;
    ToolButton78: TToolButton;
    ToolButton19: TToolButton;
    ToolButton61: TToolButton;
    ToolButton1: TToolButton;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton7: TToolButton;
    Label69: TLabel;
    MEDTBT: TEdit;
    Label70: TLabel;
    MDETHR: TEdit;
    Label71: TLabel;
    MEDTBR: TEdit;
    Label72: TLabel;
    MEDTBPH: TEdit;
    Label73: TLabel;
    MEDTBS: TEdit;
    Label74: TLabel;
    MEdtPAIN: TEdit;
    Label75: TLabel;
    MEDTSPO2: TEdit;
    Label76: TLabel;
    Label77: TLabel;
    CMBoxDateRecordVI: TComboBox;
    CmBid: TComboBox;
    Label78: TLabel;
    EdtE: TEdit;
    Label79: TLabel;
    EdtV: TEdit;
    Label80: TLabel;
    EdtM: TEdit;
    N49: TMenuItem;
    PnlICD10: TPanel;
    DBCICD10: TDBCtrlGrid;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    Panel37: TPanel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DSICD10: TDataSource;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    SGIcd: TStringGrid;
    Button1: TButton;
    TabSheet14: TTabSheet;
    SGIcd10: TStringGrid;
    Button4: TButton;
    BitBtn8: TBitBtn;
    CBx_VS: TCheckBox;
    BtnTDM: TBitBtn;
    ToolButton2: TToolButton;
    IVPanel: TPanel;
    Panel38: TPanel;
    Label84: TLabel;
    lbIVPump: TLabel;
    BtnCancel: TButton;
    BtnConfirm: TButton;
    GBoxCIVD: TGroupBox;
    LbSPDKG: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    LbSpdUnit: TLabel;
    LbTUnit: TLabel;
    LbWeight: TLabel;
    LbQty: TLabel;
    LbQtyUnit: TLabel;
    LbWeightUnit: TLabel;
    EdtSpeedMCG: TEdit;
    CbIVD: TCheckBox;
    EdtSpeedMCGE: TEdit;
    EdtCIVDSpd: TEdit;
    EdtCIVDSpdE: TEdit;
    Edtweight: TEdit;
    BtnR: TBitBtn;
    EdtQty: TEdit;
    EdtQtyMax: TEdit;
    Panel43: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    LbOther: TLabel;
    LbOther1: TLabel;
    LbMedName: TLabel;
    Label89: TLabel;
    LbMedUnit: TLabel;
    LbOldQty: TLabel;
    LbIVModiflag: TLabel;
    LbSpdModiflag: TLabel;
    MIXCombo: TComboBox;
    EdtMixPack: TEdit;
    EdtOther: TEdit;
    Btndata: TBitBtn;
    EdtMedQty: TEdit;
    Panel44: TPanel;
    Label90: TLabel;
    LbMedPack: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    LbMixpack: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    EdtPack: TEdit;
    GBoxIVD: TGroupBox;
    Label95: TLabel;
    LbIVDSpdUnit: TLabel;
    LbIVDTUnit: TLabel;
    Label96: TLabel;
    EdtIVDSpeed: TEdit;
    EdtIVDTime: TEdit;
    GBoxIV: TGroupBox;
    Label97: TLabel;
    LbIVTUnit: TLabel;
    EdtIVTime: TEdit;
    EdtMemo: TEdit;
    SGMix: TStringGrid;
    MemoPanel: TPanel;
    Memo12: TMemo;
    Panel45: TPanel;
    BtnClose: TButton;
    btnInfo: TButton;
    DataSource1: TDataSource;
    ImgFALL: TImage;
    ImgB01A: TImage;
    CheckBox2: TCheckBox;
    procedure FormShow(Sender: TObject);
    Procedure myBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbchrnoChange(Sender: TObject);
    procedure cbchrnoContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure SGMedKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGIcdDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SGIcdDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SGIcdDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGIcdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SGIcdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGIcdKeyPress(Sender: TObject; var Key: Char);
    procedure SGIcdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGIcdSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBText1Click(Sender: TObject);
    procedure LBMedDblClick(Sender: TObject);
    procedure EdtCirChange(Sender: TObject);
    procedure EdtCirExit(Sender: TObject);
    procedure EdtCirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtOrderEditExit(Sender: TObject);
    procedure EdtOrderEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtOrderEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbbOrderYNClick(Sender: TObject);
    procedure CbbOrderYNExit(Sender: TObject);
    procedure SGMedSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SGMedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText32DblClick(Sender: TObject);
    procedure SGMedEnter(Sender: TObject);
    procedure SGMedDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BtnTempSaveClick(Sender: TObject);
    procedure SGMedDblClick(Sender: TObject);
    procedure SGLabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGLabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGLabSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure LBCirDblClick(Sender: TObject);
    procedure DBText9Click(Sender: TObject);
    procedure EdtLCirChange(Sender: TObject);
    procedure EdtLCirExit(Sender: TObject);
    procedure EdtLCirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LBCCirDblClick(Sender: TObject);
    procedure EdtCCirChange(Sender: TObject);
    procedure EdtCCirExit(Sender: TObject);
    procedure EdtCCirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGChkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGChkKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText15Click(Sender: TObject);
    procedure SGChkSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure EdtRCirChange(Sender: TObject);
    procedure EdtRCirExit(Sender: TObject);
    procedure EdtRCirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LBRCirDblClick(Sender: TObject);
    procedure SGXRayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGXRayKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText25Click(Sender: TObject);
    procedure SGXRaySelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SGFeeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGFeeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGFeeSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBText19Click(Sender: TObject);
    procedure SGMtrlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGMtrlKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGMtrlSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBText4Click(Sender: TObject);
    //procedure ToolButton47Click(Sender: TObject);
    procedure ToolButton80Click(Sender: TObject);
    procedure SGOrderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SGOrderSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SGOrderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RGPatIdClick(Sender: TObject);
    procedure cbbvscodeChange(Sender: TObject);
    procedure BtnDelmedClick(Sender: TObject);
    procedure DBCGMedPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure BtnLDelClick(Sender: TObject);
    procedure BtnCDelClick(Sender: TObject);
    procedure BtnRDelClick(Sender: TObject);
    procedure BtnFDelClick(Sender: TObject);
    procedure BtnODelClick(Sender: TObject);
    procedure SGIcdDblClick(Sender: TObject);
    procedure ToolButton61Click(Sender: TObject);
    procedure ToolButton78Click(Sender: TObject);
    procedure BtnCirClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure BtbnMAJORClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid3DblClick(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure StringGrid4DblClick(Sender: TObject);
    procedure CbbBedNoChange(Sender: TObject);
    procedure CbbAreaChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure PACS1Click(Sender: TObject);
    procedure CDFile1Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure DNR1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Memo3Enter(Sender: TObject);
    procedure myLblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBText37Click(Sender: TObject);
    procedure CheckListBox2Click(Sender: TObject);
    procedure CheckListBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btnFirstsaveClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure stattrendClick(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure ImgMedClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText38Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton55Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure BtnAMIClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure bmpjpg1Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure SGIcdExit(Sender: TObject);
    procedure AERS1Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure BtnStDelClick(Sender: TObject);
    procedure StringGrid2Click(Sender: TObject);
    procedure GroupBox7Click(Sender: TObject);
    procedure GroupBox9Click(Sender: TObject);
    procedure GroupBox8Click(Sender: TObject);
    procedure GroupBox7DblClick(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure BtnLDoseClick(Sender: TObject);
    procedure BtnRDoseClick(Sender: TObject);
    procedure BtnCDoseClick(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure BtnorderShiftClick(Sender: TObject);
    procedure btnRePrintClick(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure SGfeepayDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn4Click(Sender: TObject);
    procedure SGMedMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rheSubChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SGMedMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgSkinClick(Sender: TObject);
    procedure cbbvscodeDropDown(Sender: TObject);
    procedure cbbvscodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N15Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure MyItemsForRepClick(Sender: TObject);
    procedure MyItemsForSysClick(Sender: TObject);
    procedure MyItemsForSubSysClick(Sender: TObject);
    procedure MyItemsForCONSULTClick(Sender: TObject);
    procedure MyItemsForWaitingClick(Sender: TObject);
    procedure DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure Clineguide1Click(Sender: TObject);
    procedure MDConsult1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure PageControl2DrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure SGOrderExit(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure ISS1Click(Sender: TObject);
    procedure DC1Click(Sender: TObject);
    procedure ChkBOutmedClick(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure CMBoxDateRecordVIChange(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure DBText41Click(Sender: TObject);
    procedure DSIcdDataChange(Sender: TObject; Field: TField);
    procedure ToolButton2Click(Sender: TObject);
    procedure IVPanelDblClick(Sender: TObject);
    procedure EdtMedQtyExit(Sender: TObject);
    procedure EdtMedQtyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IVPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtndataClick(Sender: TObject);
    procedure MIXComboChange(Sender: TObject);
    procedure MIXComboExit(Sender: TObject);
    procedure EdtMixPackExit(Sender: TObject);
    procedure EdtMixPackKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPackKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtMemoExit(Sender: TObject);
    procedure EdtIVDTimeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCIVDSpdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSpeedMCGKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtweightEnter(Sender: TObject);
    procedure EdtweightKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRClick(Sender: TObject);
    procedure EdtIVDSpeedKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbIVDClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnConfirmClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
  private
    { Private declarations }
    ChengeEndDate:string;//�ܧ�end_date
    SourceCol,SourceRow: integer;
    oldicda,oldicdr,lt,tag,cnpage2idx : Integer;
    oldicd9,frmshw, StrKey, oftendept, couslutname,ditofeeno, oftenindex: string;
    Erftqry : TADOQuery;
    phrasestl,firsticd9:TStringList;
    firstrecodechange, icd9orXray : Boolean;
    PATARSS,TEL,feeorder :STRING;
    Joinno, ins_ctrl : String;
    procedure InitCbb();
    procedure StringGridSort(Sender : TObject);
    procedure count_s_h_o;
    procedure SetComboDropDownWidth(Sender: TObject);
    procedure MAJOR_INJURIES;
    procedure cncl_btn_lab;
    procedure getinitpatinfo;
    procedure initTextOrderTile;
    Procedure SetPanel(Bview: Boolean;Sender : TObject);
    procedure SetListWidth1(Sender : TObject;cols : Integer);
    procedure dbsgcncl(sender : TObject;conf :string);
    procedure delchilitme(sender: TObject;c_Name: string);
    procedure deljoinitem(join_no: string);
    procedure SaveReaction(degree: String ; medcode1 : String ; medcode2 : String ; kind: String ; operno : String);
    procedure SpecMedCheck(Med:String);
    procedure SpecMedbgCheck(Med:String);
    procedure Checkdisease;
    procedure showalldata;
    procedure Patient_Instructions(ICD9:string);//�ñг�C�L
    procedure ExecJoin(Join_code:String);   //�s�a
    procedure VITALSIGNSHOWDATA;//�@�z�Ͳz�q��

    //��g���q
    procedure Radionum;
    //�ī~
    Function InsertMed(Med_code : String; aCir: String = ''; aQty: String = ''; DcDate: String = ''; DcTime: String = '';aPath :String='';aMemo : String='';adays : String='') : Boolean;
    //����
    Function InsertLab(feecode,qty,selfins,sendcd1,sendcd2,sendcd3,Joinno:string):Boolean;
    //�ˬd
    Function InsertChk(feecode,sendcd1,qty,sefins,memo:string):Boolean;
    //��g
    Function InsertXRay(feecode,ordertpye,sefins,qty,position,sendcd2,memo,sendcd1:string):Boolean;
    //�B�m
    Function InsertFee(fee_code, source: string; Part_code: string = ''; aqty: string = ''; SELF_PAY_FLAG: string = ''):Boolean;
    //ICD
    Function InsertIcd(fee_code,fnu: string):Boolean;
    //�ç�
    Function InsertMrtl(fee_code,qty,selfpay:string):Boolean;

    function UseThePkg(usefrm: TForm): Boolean;
    function isRepeat(fee_code,path,send,send2:string;tmpSG:TStringGrid):Boolean;
    function RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
    function checkdata(var messg:string):Boolean;
    function UseTheditto: Boolean;
    function ckvscode():boolean;
    function ckvscode2():boolean;
    function ckvscode3():boolean;
    function FetchPhrase(prat,key:string;var Keystr : string):Boolean;
    function GetMyStr(id : String): String;
    function insertFirstRecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
    Function CheckDDI(sg: string):Boolean;
    function BeforeCheck(Med_code,INS_FLAG,UNIT_QTY,CIR_CODE,Start_date,Start_time,Dc_Date,Dc_time,Text_kind: String; Var Mes :String):Boolean;  //�T�{�O�_�������
    FUNCTION MEDCHK(Med_code,CIR_CODE:STRING;VAR MES:STRING):Boolean;//�Ī��ˮ�
    Function InsertChild(feecode: string;seq_no: integer):Boolean;
    function CheckDupMed: Boolean;
    function childPDC(var msg:string; weight,height,medcode,cir,qty,days :string):Boolean;
    function ctrlmed(var msg:string; medcode :string):Boolean;
    function CheckMedURGPurchase(Med_Code: string; Row: integer):Boolean;//�ī~������
    function CheckMedCtrl(Med_Code: string; Row: integer):Boolean;//�ި����
    function CheckMedprog(medcode,self_flag,qty: string):string;//�Ƽf����
    function Mgmtctrl:boolean;//�¾K�ި��ī~�C�L�ި��
    function CheckCTMRI: Boolean;//���j��O�ˮ�
    function insertepdrecordorder(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,cnclflag: string): string;
    function MedUseCtrl(i: Integer; var Mes: string): Boolean;//�S���ī~�}���v���ˮ�
    function checkexper(itemno: string): Boolean;
    function AllMedChk(medcode, ATC_CODE, InOut: string):Boolean;
    function chckipdroom(fee_no: string):Boolean;
    function IVCalcul(Spdtype: string; Spdname: string; Speed: string; Qty: string; Pack_Trans: string; Times: string; Accu_flag: string; Dose_unit: string): string;
    procedure IVModifyCheck(Sender: TObject);
    procedure SaveIVError(FEE_CODE: string; QTY_NUM: string; UNIT_DESC: string; CIR_CODE: string; PATH_CODE: string;
      MIX_CODE: string; MIX_PACK: string; CONCENTRATION: string; CONCEN_UNIT: string; SPEED_TYPE: string; SPEED: string;
      SPEED_END: string; SPEED_MCG: string; SPEED_MCG_E: string; TIMES: string; TIMES_END: string; WEIGHT: string; DAY_QTY: string;
      MIX_TEXT: string; SPEED_UNIT: string; TIMES_UNIT: string; SPEEDMCG_UNIT: string; MED_PACK: string; DAY_QTY_MAX: string; MESSAGELog: string);
    procedure SpdModifyCheck(Sender: TObject);
    procedure CheckIV(aRow: integer);
    procedure ClearIVItem(Sender: TObject);

  public
    { Public declarations }
    function SaveOrder(Sender : TObject):Boolean;
    Function GETPKGdtl(grpcode:string):Boolean;
    Function Quickpkginstorder(grpcode :string):Boolean;
    function chsginstrow(Sender : TObject):integer;
    function ordermedbefor(medcode:string):string;
    //��r����
    Function insertordertxt(seqno,otxt:string):Boolean;

    procedure SetICINFOR(percent: integer; meg: String);//ic card

    function InsertIcd10(Icd_Code: string): Boolean;
  end;

var
  FrmOrder: TFrmOrder;
  UUpddate,UUpdtime : String;
  FCheck,FNoCheck:TBitmap;
const
  modifyType = 0 ;
  Seq = 1;
  Del = 2;
//*************** �ī~
  M_Code = 3;     //�N�X
  M_Name = 4;     //�W��
  M_Qty  = 5;     //���q
  M_Unit = 6;     //���
  M_Cir  = 7;     //�W�v
  M_days = 8;     //�Ѽ�
  M_path = 9;     //�~�|
  M_FeeUnit = 10; //�p�����
  M_ttl_qty = 11; //�`�q
  M_INS  = 12;    //�۶O�O
  M_Memo = 13;    //�Ƶ�
  M_pkg  = 14;    //�]�˶q
  M_GRI  = 15;    //�i��
  Ordertype = 16;
  M_EDate = 17;
  M_ETime = 18;
  M_Bdate = 19;
  M_BTime = 20;
  M_Hint  = 21;
  M_Join  = 22;//�ծM�s���X
  M_Choose = 23;
  M_outmed = 24;
  M_density = 25;
  //iv
  M_Mix = 26;
  M_Pack = 27;
  M_Spdtype = 28;
  M_Speed = 29;
  M_SpeedE = 30;
  M_Speedunit = 31;
  M_SpeedMCG = 32;
  M_SpeedMCGE = 33;
  M_SpeedMCGUnit = 34;
  M_Times = 35;
  M_TimesE = 36;
  M_TimeUnit = 37;
  M_MedPack = 38;
  M_AllPack = 39;
  M_DayQty = 40;
  M_Weight = 41;
  M_Other = 42;
  M_IVSEQ = 43;
  M_DAYQTY_MAX = 44;
  M_PARENTFLAG = 45;
  M_PARENTCODE = 46;
  M_colnumber = 47;
  OrderName : Array[0..25] of String=('BtnModityMed','BtnSeqMed','BtnDelmed','BtnCodemed','BtnNamemed','BtnDose','BtnUnit','BtnCir','Btndays','BtnPath',
                                      'BtnFeeUnit',  'BtnTatl',   'BtnIns',  'BtnMemo',   'M_pkg',     'M_GRI','Ordertype','M_EDate','M_ETime','M_Bdate',
                                      'M_BTime',     'M_Hint',   'M_Join',   'M_Choose',  'Btnoutmed', 'BtnTDM');
  //**********************�B�m
  F_code = 3;
  F_Name = 4;
  F_Part = 5;
  F_Qty  = 6;
  F_Ins  = 7;
  F_chil = 8;
  F_Join = 9;//�ծM�s���X
  feeName : Array[0..7] of String=('BtnFModity','BtnFSeq','BtnFDel','BtnFCode','BtnFName','BtnFpart','BtnFQty','BtnFIns');
//**********************��r
  O_code = 3;
  O_Name = 4;
  strorderName : Array[0..4] of String=('BtnStModity','BtnStSeq','BtnStDel','BtnStCode','BtnStName');
  //***************** �ç�
  L_code = 3;
  L_Name = 4;
  L_Patr = 5;
  L_Qty  = 6;
  L_Ins  = 7;
  L_chil = 8;
  L_Join = 9;//�ծM�s���X
  MtrlName : Array[0..7] of String=('BtnOModity','BtnOSeq','BtnODel','BtnOCode','BtnOName','BtnOpart','BtnOQty','BtnOIns');
  //******************* ����
  C_Code  = 3;
  C_Order = 4;
  C_Qty  = 5;
  C_Unit = 6;
  C_Cir  = 7;
  C_path = 8;//��g���� ��������
  C_INS  = 9;
  C_EMG  = 10;
  C_MEMO = 11;
  C_NO   = 12;
  C_Send = 13;//����էO  �ˬd��
  C_Kind = 14;
  C_Sheet_no = 15;
  C_2SEnd = 16;//���綵��
  C_CONFSTATUS = 17;//�^�g��ñ�����A
  C_Join = 18;//�ծM�s���X
  COrderName : Array[0..16] of String=('BtnCModity','BtnCSeq','BtnCDel','BtnCCode','BtnCOrder','BtnCDose','BtnCUnit','BtnCCir','BtnCPath','btnCIns','BtnCEMG','BtnCMemo','BtnCNo','BtnCSend','BtnCKind','BtnCSheetNo','Btn2CSend');
  LOrderName : Array[0..16] of String=('BtnLModity','BtnLSeq','BtnLDel','BtnLCode','BtnLOrder','BtnLDose','BtnLUnit','BtnLCir','BtnLPath','btnLIns','BtnLEMG','BtnLMemo','BtnLNo','BtnLSend','BtnLKind','BtnLSheetNo','Btn2LSend');
  ROrderName : Array[0..16] of String=('BtnRModity','BtnRSeq','BtnRDel','BtnRCode','BtnROrder','BtnRDose','BtnRUnit','BtnRCir','BtnRPath','btnRIns','BtnREMG','BtnRMemo','BtnRNo','BtnRSend','BtnRKind','BtnRSheetNo','Btn2RSend');
  //**************************�f�z
  Pth_Code = 3;
  Pth_Order = 4;
  Pth_Qty = 5;
  Pth_item = 6;
  Pth_seqno = 7;
  Pth_seqno2 =8;
  Pth_INS = 9;
  Pth_EMG = 10;
  Pth_MEMO = 11;
  Pth_Kind = 12;
  Pth_CONFSTATUS =13;//�^�g��ñ�����A
  pth_no=14;//�渹
  pthordername : Array[0..7] of String=('BtnpthModity','BtnpthSeq','BtnpthDel','BtnpthCode','BtnpthOrder','BtnpthDose','btnpthIns','BtnpthMemo');
implementation

uses Commfunc, MySQLc, Global, DBDM, ERsFunc, LabOrder, ChkOrder,
  XRayOrder, IPDCertificate, DNRList, HosPiceList, UsePKG, PkgSet,
  PrintPatData, userpsw, SetPhrase, FirstRecord, warning, Ditto, GetICD9,
  ExitHosp, SMSsend, AreaBed, Trauma, Transfernote, PrintFirstRecord,
  often, PatInf, MECHANISM, ReportTrauma, SaveData, MAJOR2, DDI, PIC,
  shift_note, MAJOR, BedEmpty, Pain, MedProved, PubPrintMain, RDShift,
  outproms, warningdesc, IPDDupMed, instruction, leave_diagnosis,
  insertIcInfor, ICFunction, EMGLeve, Types, ISS, VCLFixes, EMRRecord,
  PreliminaryReport, MaskUtils;

{$R *.dfm}


procedure TFrmOrder.FormCreate(Sender: TObject);
var
  Key ,menuItems,subItems : String;
  myItems,mysubItems : TMenuItem;
  pageheight,i : integer;
  tmpaa :string;
  bmp:TBitmap;
begin
  inherited;
    FCheck := TBitmap.Create;
    FNoCheck := TBitmap.Create;
    bmp := TBitmap.Create;
  try
    bmp.Handle := LoadBitmap(0,PChar(OBM_CHECKBOXES));
    With FNoCheck Do Begin
        Width := bmp.Width div 4;
        Height := bmp.Height div 3;
        canvas.CopyRect(canvas.ClipRect, bmp.canvas, canvas.cliprect);
    End;
    With FCheck Do Begin
        width := bmp.Width div 4;
        Height := bmp.Height div 3;
        canvas.CopyRect(canvas.cliprect, bmp.canvas, rect(width,0,2*width,height));
    End;
  finally
    bmp.free;
  end;

  Btnoutmed.caption := '�X�|'+#10#13+'�a��';

  StringGrid1.Cells[0,0]:= '�N�X';
  StringGrid1.Cells[1,0]:= '����';
  MySBar.Panels[0].Text := GetFeeNo;
  
  //�[�J�|�E����
  MenuItems := '';
  PpMconst.Items.Clear;
  menuItems := SetSys.ReadString('MAINMENU','CONSULT','False');
  tmpaa := ReTurnId(MenuItems);
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForCONSULTClick;
    if myItems.Caption = tmpaa then
      couslutname := myItems.Caption;
    PpMconst.Items.Add(myItems);
    MenuItems := ReturnName(MenuItems);
  end;



  //�[ MAINMENU�Ĥ@�h
  MenuItems := '';
  menuItems := SetSys.ReadString('MAINMENU','����','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForSysClick;
    MainMenu1.Items.Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  END;

  //�{�ɸ�T
  cnpage2idx := 0;
  MenuItems := '';
  Key := SetSys.ReadString('OTHERSYSTEMLINK','��L���i','False');
  if upperCase(Key) ='TRUE' then
    menuItems := SetSys.ReadString('��L���i','����','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForRepClick;
    MainMenu1.Items[0].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;

  //�}��_�w��
  MainMenu1.Items[1].Clear;
  MenuItems := '';
  menuItems := SetSys.ReadString('MAINMENU','ORDER','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForWaitingClick;
    MainMenu1.Items[1].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;

  //�f��
  MenuItems := '';
  menuItems := SetSys.ReadString('MAINMENU','�f��','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForRepClick;
    MainMenu1.Items[2].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;
  //�E�_/�ҩ���
  MenuItems := '';
  menuItems := SetSys.ReadString('MAINMENU','�E�_','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForRepClick;
    MainMenu1.Items[3].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;
  //�q��/���O
  MenuItems := '';
  menuItems := SetSys.ReadString('MAINMENU','�q��','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForRepClick;
    MainMenu1.Items[4].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;

  //��L�\�઺��L�ﶵ-�ۭq�l��
  Key := '';
  Key :=SetSys.ReadString('OTHERSYSTEMLINK','��L','False');
  if upperCase(Key) ='TRUE' then
    menuItems := SetSys.ReadString('��L','����','False');
  while trim(MenuItems) <>'' do
  begin
    myItems := TMenuItem.Create(self);
    myItems.Caption := ReTurnId(MenuItems);
    myItems.OnClick := MyItemsForSysClick;
    MainMenu1.Items[5].Add(myItems);
    MenuItems := ReTurnName(MenuItems);
  end;

  //BitBtn7.Caption := 'Uni-'+#13#10+'Report';
  Label46.Caption := '���f�H�~�֭p��'+#13#10+'�q�w�W�L 85 mSv';
  phrasestl := TStringList.Create;
  firsticd9 := TStringList.Create;
  pageheight := PageControl2.Pages[9].Height-4;
  ScrollBox1.Height := (pageheight*4)+8;
  Panel22.Height    := (pageheight*3);
  GroupBox13.Height := pageheight;
  GroupBox14.Height := pageheight;
  GroupBox15.Height := pageheight;
  GroupBox16.Height := pageheight;
  GroupBox17.Height := pageheight;
  GroupBox20.Height := pageheight;
  Panel24.Height    := pageheight;
end;


procedure TFrmOrder.initTextOrderTile;
var
  i : Integer;
begin
  try
    for i := 0 to SGFee.ColCount -1 do
    begin
      if FrmOrder.FindComponent(feeName[i]) <> nil then
        SGFee.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(feeName[i])).Width-1
      else
        SGFee.ColWidths[i] := -1;
    end;

    for i := 0 to SGmtrl.ColCount -1 do
    begin
      if FrmOrder.FindComponent(mtrlName[i]) <> nil then
        SGmtrl.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(mtrlName[i])).Width-1
      else
        SGmtrl.ColWidths[i] := -1;
    end;

    for i := 0 to SGLab.ColCount -1 do
    begin
      if FrmOrder.FindComponent(LOrderName[i]) <> nil then
      begin
        if i <= Length(LOrderName) then
          SGLab.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(LOrderName[i])).Width-1
        else
          SGLab.ColWidths[i] := -1;
      end
      else
        SGLab.ColWidths[i] := -1;
    end;

    for i := 0 to SGXRay.ColCount -1 do
    begin
      if FrmOrder.FindComponent(ROrderName[i]) <> nil then
      begin
        if i <= Length(ROrderName) then
          SGXRay.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(ROrderName[i])).Width-1
        else
          SGXRay.ColWidths[i] := -1;
      end
      else
        SGXRay.ColWidths[i] := -1;
    end;

    for i := 0 to SGChk.ColCount -1 do
    begin
      if FrmOrder.FindComponent(COrderName[i]) <> nil then
      begin
        if i <= Length(COrderName) then
          SGChk.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(COrderName[i])).Width-1
        else
          SGChk.ColWidths[i] := -1;
      end
      else
        SGChk.ColWidths[i] := -1;
    end;

    for i := 0 to SGOrder.ColCount -1 do
    begin
      if FrmOrder.FindComponent(strorderName[i]) <> nil then
        SGOrder.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(strorderName[i])).Width-1
      else
        SGOrder.ColWidths[i] := -1;
    end;

    for i := 0 to SGMed.ColCount -1 do
    begin
      if (FrmOrder.FindComponent(OrderName[i]) <> nil) and (length(OrderName) >= i) then
        SGMed.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(OrderName[i])).Width-1
      else
        SGMed.ColWidths[i] := -1;
    end;

    for i := 0 to SGPath.ColCount -1 do
    begin
      if i <= High(pthordername) then
        SGPath.ColWidths[i] := TBitBtn(FrmOrder.FindComponent(pthordername[i])).Width-1
      else
        SGPath.ColWidths[i] := -1;
    end;

    //�����ī~�e�����׽վ�
    GroupBox7.Align   := alNone;
    GroupBox8.Align   := alNone;
    GroupBox9.Align   := alNone;
    GroupBox10.Align  := alNone;
    GroupBox11.Align  := alNone;
    GroupBox12.Align  := alNone;
    i := Ceil(Panel21.Height / 2);
    GroupBox9.Height  := i;
    GroupBox10.Height := i;
    i := ceil(i/2);
    GroupBox8.Height  := i;
    GroupBox11.Height := i;
    GroupBox12.Height := i;
    GroupBox8.Align   := alBottom;
    GroupBox9.Align   := alBottom;
    GroupBox7.Align   := alClient;
    GroupBox12.Align  := alBottom;
    GroupBox11.Align  := alBottom;
    GroupBox10.Align  := alClient;
  except

  end;
end;


procedure TFrmOrder.FormShow(Sender: TObject);
var
  SexBMP : TBitmap;
  sqlstr,edoc,majtmp,pathSwitch : string;
  s, n, majorname: TStringList;
  i: integer;
begin
  inherited;
  frmshw := 'N';
  ChengeEndDate := 'N';
  ComboBox1.ItemIndex := 0;


  //�榸(���E)or�h��(�Ȧs�B���E)�W�ǹq�l�f��
  if UpperCase(SetSys.ReadString('SYSTEM','EMREVERYTMEPRT',''))= 'TRUE' then
  EMRPrint_EVERY_TIME := True;


  btnRePrint.Hint := getUserId;
  initTextOrderTile;
  InitCbb;
  ins_ctrl := SetSys.ReadString('SYSTEM','INS_CTRL','FALSE');
  CbbCase.Items.Clear;
  CbbCase.Items.AddStrings(casetype);
  CbbPart.Items.Clear;
  CbbPart.Items.AddStrings(partcode);
  cbbvscode.Items.Clear;
  edoc := SetSys.ReadString('SYSTEM','EMGDOC','');
  if edoc = 'True' then
    cbbvscode.Items.AddStrings(EMGVSDOC)
  else
    cbbvscode.Items.AddStrings(VsDoc);
  CbbArea.Items.Clear;
  CbbArea.Items.AddStrings(EPDAREA);

  //���i�Ϊ��ɦ�
  Bednotuse;
  CbbArea.ItemIndex := 0;
  CbbBedNo.Items.Clear;
  CbbBedNo.Items.AddStrings(GetccbBed(ReturnName(trim(CbbArea.Text))));

  getinitpatinfo;

  //���@�z�Ͳz�q������
  CMBoxDateRecordVI.Items.Clear;
  CmBid.Items.Clear;
  sqlstr := nurse(82);
  SetParamter(sqlstr,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := sqlstr;
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

  PageControl2.ActivePageIndex := 0;
  IF UpperCase(SetSys.ReadString('SYSTEM','ICD10','FALSE'))= 'TRUE' THEN
    PageControl1.ActivePageIndex :=1
  ELSE
    PageControl1.ActivePageIndex :=0;
  PageControl2Change(Self);
  sgBioinf.RowHeights[0] := 20;
  sgBioinf.Cells[0,0] := ' ���';
  sgBioinf.Cells[1,0] := ' �魫';
  sgBioinf.Cells[2,0] := ' �߷i';
  sgBioinf.Cells[3,0] := '  ����';

  SGIcd.Cells[0,0] := '�N�X';
  //SGIcd.Cells[1,0] := '�^��';
  //SGIcd.Cells[2,0] := '����';
  SGIcd.ColWidths[0] := 74;
  SGIcd.ColWidths[1] := (SGIcd.Width-74)-5;
  SGIcd.ColWidths[2] := -1;
  SGIcd.ColWidths[3] := -1;
  SGIcd.ColWidths[4] := -1;

  SGIcd10.Cells[0,0] := '�N�X';
  SGIcd10.ColWidths[0] := 74;
  SGIcd10.ColWidths[1] := (SGIcd10.Width-74)-5;
  SGIcd10.ColWidths[2] := -1;
  SGIcd10.ColWidths[3] := -1;
  SGIcd10.ColWidths[4] := -1;
  SGIcd10.ColWidths[5] := -1;
  SGIcd10.ColWidths[6] := -1;
  SGIcd10.ColWidths[7] := -1;
  SGIcd10.ColWidths[8] := -1;
  //�ʧO
  SexBMP := TBitmap.Create;
  if Getsex01 = '1' then 
    ImageList1.GetBitmap(0,SexBMP)
  else
    ImageList1.GetBitmap(1,SexBMP);
  Image1.Picture.Graphic := SexBMp;
  SexBMP.FreeImage;
  freeandnil(SexBMP);

  //�o�N
  try
    if sgBioinf.Cells[0,1]<> '' then
      if StrToFloat(Trim(sgBioinf.Cells[0,1])) > 38 then
      begin
        SexBMP := TBitmap.Create;
        ImageListforPat.GetBitmap(5,SexBMP);
        ImgTemperature.Picture.Graphic := SexBMp;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;
  except

  end;


  with DM.QryTemp do
  begin
    //�T�|�j�����O�@��(1040129�̲ת�)
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
        if trim(FieldByName('ICON_NAME').AsString) = 'I001' then //��G�Ϯ�
        begin
          ImgBoold.Hint := ImgBoold.Hint + trim(FieldByName('icn_code').AsString) + '(' + trim(FieldByName('disease_type').AsString) + ') \ ';
          ImgBoold.Picture.Graphic := nil;
          ImgBoold.Picture.Graphic := DBImage1.Picture.Graphic;
        end;
        if trim(FieldByName('ICON_NAME').AsString) = 'I002' then //�H���Ϯ�
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

    //�L��
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

    //�S�O���O
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
        ImageListforPat.GetBitmap(10,SexBMP)// ��
      ELSE
        ImageListforPat.GetBitmap(9,SexBMP);//��
    END
    else
    begin
      ImageListforPat.GetBitmap(10,SexBMP)// ��
    end;
    ImgSkin.Picture.Graphic := SexBMp;
    SexBMP.FreeImage;
    freeandnil(SexBMP);

    close;  //�w��
    SQL.Clear;
    SQL.Add('Select * from hospice_basic where CHR_NO='+Qt(GetChrNo)+' and can_cd=''N'' order by 1 ');
    sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
    Open;
    sql_Waiting_log('CLOSE','');
    IF NOT IsEmpty THEN
    begin
      SexBMP := TBitmap.Create;//�w��
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

      //108.07.04 shh ITe 11138 add fall mark
      //���^��
      SQL.Clear;
      SQL.Add(' select * from view_nis_fall_assess where feeno='+ Qt(GetFeeNo) );
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      Open;
      sql_Waiting_log('CLOSE','');
      IF NOT IsEmpty THEN
      begin
        SexBMP := TBitmap.Create;
        ImageListforPat.GetBitmap(3,SexBMP);   //����^�ˤH
        ImgFALL.Picture.Graphic := SexBMp;
        ImgFALL.Hint := '[�f�H���^��]';
        ImgFALL.ShowHint := True;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;
      //END 108.07.04 add fall Mark

      //109.08.11 shh ITe 11138 add �ܾ�����ĵ��O mark
      //�ܾ���
      SQL.Clear;
      SQL.Add(' select f_Chk_Med_B01a('+ Qt(GetFeeNo) + ') B01A_FLAG from dual ');
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      Open;
      sql_Waiting_log('CLOSE','');
      IF NOT IsEmpty THEN
      BEGIN
        IF trim(FieldByName('B01A_FLAG').AsString) = '1' then
        begin
          SexBMP := TBitmap.Create;
          ImageListforPat.GetBitmap(12,SexBMP);   //�ܾ����ī~��
          ImgB01A.Picture.Graphic := SexBMp;
          ImgB01A.Hint := '[�f�H���ϥΧܾ������]';
          ImgB01A.ShowHint := True;
          SexBMP.FreeImage;
          freeandnil(SexBMP);
        END;
      end;
      //END 109.08.11 shh ITe 11138 add �ܾ�����ĵ��O mark
     end;
  end;

  //MAJOR_INJURIES;
  s := TStringList.Create;
  n := TStringList.Create;
  majorname := TStringList.Create;
  majorname := getmajtime(GetFeeNo,s,n);
  try
    for i := 0 to majorname.Count-1 do
    begin
      if majorname.Strings[i] ='AMI' then
      begin
        BtnAMI.Font.Color := clRed;
        SexBMP := TBitmap.Create;
        ImageListforPat.GetBitmap(11,SexBMP);
        Image_AMI.Picture.Graphic := SexBMp;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;
      if majorname.Strings[i] ='CVA' then
        BtnCVA.Font.Color := clRed;
      if majorname.Strings[i] ='Trauma' then
      BEGIN
        BtnTrauma.Font.Color := clRed;
        chtrm := 'Y';
      END;
    end;
    if chtrm = 'Y' then //�Ұ�TRAUMA
      IF BtnTrauma.Font.Color <> clRed THEN
        BtnTrauma.OnClick(BtnTrauma);

  finally
    FreeAndNil(n);
    FreeAndNil(s);
    FreeAndNil(majorname);
  end;


  PageControl2.SetFocus;
  //�f������
  PageControl2.Pages[9].TabVisible := false;
  //�f�z
  pathSwitch := SetSys.ReadString('SYSTEM','PATHOLOGY','FALSE');
  if UpperCase(pathSwitch) <> 'TRUE' then
    PageControl2.Pages[11].TabVisible := false;

  //�i�J��O���O
  times_log('STARTMED','',getUserId,'');
  frmshw := 'Y';
  //��sheetno
  SetSheet(sqlsheetno);
  if rdonly then
  begin
    BtnTempSave.Enabled := False;
    btnSave.Enabled := False;
  end;
end;

procedure TFrmOrder.MAJOR_INJURIES;
var
  sqlstr,leve_no,seq_no : string;
  myBtn : TButton;
  countnext:integer;
begin
  seq_no := '';
  sqlstr := getlog_sql(0);
  SetParamter(sqlstr,'$fee_no$',Qt(GetFeeNo));
  //SetParamter(sqlstr,'$UPDDATE$',Qt(Trim(Minus_six_months_date)));
  DM.QryTemp.Close;
  dm.QryTemp.SQL.Text := sqlstr;
  dm.QryTemp.Open;
  if not dm.QryTemp.IsEmpty then //�����g�������
  begin
    BtbnMAJOR.Visible := True;
    Label8.Caption :=  '��  �e:';
    Label10.Caption := '�U�@�B:';
    leve_no := trim(DM.QryTemp.fieldbyname('LEVE_NO').AsString);
    seq_no :=  trim(DM.QryTemp.fieldbyname('ill_no').AsString);
    sqlstr := getMAJOR_sql(3);
    SetParamter(sqlstr,'$kind$',Qt(trim(DM.QryTemp.fieldbyname('kind').AsString)));
    SetParamter(sqlstr,'$leve_no$',Qt(DM.QryTemp.fieldbyname('LEVE_NO').AsString));
    DM.QryTemp.Close;
    dm.QryTemp.SQL.Text := sqlstr;
    dm.QryTemp.Open;
    countnext := Label10.Left + Label10.Width + 2;
    while not DM.QryTemp.Eof do
    begin
      if (trim(DM.QryTemp.FieldByName('leve_no').AsString) = IntToStr(StrToInt(leve_no))) and (trim(DM.QryTemp.FieldByName('name').AsString)<>'����') and
         (trim(DM.QryTemp.FieldByName('seq_no').AsString) = seq_no) then
      begin
        Lbl_ill.Caption := trim(DM.QryTemp.FieldByName('name').AsString);
      end
      else if trim(DM.QryTemp.FieldByName('leve_no').AsString) = IntToStr(StrToInt(leve_no)+1) then
      begin
        myBtn := TButton.Create(FrmOrder);
        myBtn.Parent := Twincontrol(FrmOrder.Panel7);
        MyBtn.Left := countnext;
        myBtn.Enabled := true;
        myBtn.Width := 52;
        MyBtn.Top := Label10.Top-5;
        myBtn.Height := 27;
        myBtn.Caption := trim(DM.QryTemp.FieldByName('name').AsString);
        MyBtn.Name := '_'+trim(DM.QryTemp.FieldByName('seq_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('Leve_seq').AsString)+
                      '_'+trim(DM.QryTemp.FieldByName('Leve_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('kind').AsString)+
                      '_'+trim(DM.QryTemp.FieldByName('LIMIT_TIME').AsString) ;
        myBtn.Hint := trim(DM.QryTemp.FieldByName('name').AsString);
        myBtn.OnClick := myBtnClick;
        countnext := countnext +54;
      end;
      DM.QryTemp.Next;
    end;

  end
  else
  begin
    BtbnMAJOR.Visible := False;
    sqlstr := getMAJOR_sql(1);
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := sqlstr;
    DM.QryTemp.Open;
    countnext := Label10.Left + Label10.Width + 2;
    while not DM.QryTemp.Eof do
    begin
      if DM.QryTemp.FieldByName('leve_no').AsString='1' then
      begin
        Label10.Caption := '��  ��:';
        myBtn := TButton.Create(FrmOrder);
        myBtn.Parent := TwinControl(FrmOrder.Panel7);
        MyBtn.Left := countnext;
        myBtn.Enabled := true;
        myBtn.Width := 52;
        MyBtn.Top := Label10.Top-5;
        myBtn.Height := 27;
        myBtn.Caption := trim(DM.QryTemp.FieldByName('name').AsString);
        MyBtn.Name := '_'+trim(DM.QryTemp.FieldByName('seq_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('Leve_seq').AsString)+
                      '_'+trim(DM.QryTemp.FieldByName('Leve_no').AsString)+'_'+trim(DM.QryTemp.FieldByName('kind').AsString)+
                      '_'+trim(DM.QryTemp.FieldByName('LIMIT_TIME').AsString) ;
        myBtn.Hint := trim(DM.QryTemp.FieldByName('name').AsString);
        myBtn.OnClick := myBtnClick;
        countnext := countnext +54;
      end;
      DM.QryTemp.Next;
    end;
  end;
end;

procedure TFrmOrder.myBtnClick(Sender: TObject);
var
  myBtn : TButton;
  myLabel:TLabel;
  Paramter,PType,RType,PData,sqlst : TStrings;
  SpName, ExeSPResult : STRING;
  s,n,majorname: TStringList;
  count,countnext,i : integer;
  seq_no,leve_seq,Leve_no,kind,ill_name,LIMIT_TIME,sqlstr,sendsmess,smsend,constr :string;
  ctbu,sms,Consultation : Boolean;
begin
  sendsmess := '';
  smsend := '';
  constr := '';
  ctbu := False;
  sms := False;
  Consultation := False;
  BtbnMAJOR.Visible := True;
  seq_no := ReturnId(ReturnName(TButton(Sender).Name));
  leve_seq := ReturnId(ReturnName(ReturnName(TButton(Sender).Name)));
  Leve_no := ReturnId(ReturnName(ReturnName(ReturnName(TButton(Sender).Name))));
  kind := ReturnId(ReturnName(ReturnName(ReturnName(ReturnName(TButton(Sender).Name)))));
  LIMIT_TIME := ReturnId(ReturnName(ReturnName(ReturnName(ReturnName(ReturnName(TButton(Sender).Name))))));
  ill_name := TButton(Sender).Caption;

  if regdept ='B' then
  begin
    sqlstr := getMAJOR_sql(0);
    SetParamter(sqlstr,'$FEE_NO$',Qt(Trim(GetFeeNo)));
    SetParamter(sqlstr,'$STATRDATE$',Qt(Minus_six_months_date));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add(sqlstr);
    DM.QryTemp.Open;
    IF DM.QryTemp.IsEmpty THEN
    BEGIN
      if not Assigned(FrmMECHANISM) then
        FrmMECHANISM := TFrmMECHANISM.Create(Self);
      FrmMECHANISM.fee_no := GetFeeNo;
      FrmMECHANISM.incident_dt := trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1]);
      FrmMECHANISM.ShowModal;
      chtrm := FrmMECHANISM.OPNMAJ;
      FreeAndNil(FrmMECHANISM);
    END;
  end;
  //�M�䦹�ץ󪺮M�\���e
  sqlstr := getMAJOR_sql(1);
  sqlstr := sqlstr + ' where Seq_no = $seq_no$';
  SetParamter(sqlstr,'$seq_no$',Qt(seq_no));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sqlstr;
  //DM.QryTemp.SQL.SaveToFile('L:\sql_1.txt');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
    if Quickpkginstorder(DM.QryTemp.fieldbyname('group_code').AsString) then

  if sms then  //�o�e²�T
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('SELECT * FROM EPD_SMS_GROUP WHERE SMSGROUP in('+Qts(smsend)+') and nvl(trim(PHONE_NO),''0'')<> ''0'' ' );
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      try
        Paramter:=TStringList.Create;
        PType:=TStringList.Create;
        RType:=TStringList.Create;
        PData:=TStringList.Create;
        while not DM.QryTemp.Eof do
        begin
          SpName:=getSpSql(7,Paramter,PType,RType);
          PData.Add('1');
          PData.Add(Trim(DM.QryTemp.fieldbyname('USER_ID').AsString));
          PData.Add('��E�f�H:'+GetPatName+',�Ұ�'+ill_name);//�T��
          PData.Add(getUserId);//�o�e��
          ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
          DM.QryTemp.Next;
        end;
      finally
        Paramter.Free;
        PType.Free;
        RType.Free;
        PData.Free;
      end;
    end;
  end;
  if Consultation then
  begin
    //�Ұʷ|�E
  end;
  //�M�䦹�ץ󪺤U�@�B
  sqlstr := getMAJOR_sql(3);
  SetParamter(sqlstr,'$kind$',Qt(kind));
  SetParamter(sqlstr,'$leve_no$',Qt(Leve_no));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sqlstr;
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    while not dm.QryTemp.Eof do
    begin
      if DM.QryTemp.FieldByName('leve_no').AsString= IntToStr(StrToInt(Leve_no)+1) then
        ctbu := True;
      if DM.QryTemp.FieldByName('leve_no').AsString= IntToStr(StrToInt(Leve_no)+2) then
        ctbu := True;
      DM.QryTemp.Next;
    end;
  end;

  //�M��panel7�Ҧ���button
  cncl_btn_lab;

  s := TStringList.Create;
  n := TStringList.Create;
  majorname := TStringList.Create;
  try
    if Leve_no = '1' then //�������A
    begin
      setstatus(GetFeeNo,'9',seq_no+'_'+leve_seq+'_'+Leve_no+'_'+kind+'_S'+'_'+ill_name+'_'+LIMIT_TIME);
      times_log(ill_name,'',getUserId,'');
      MAJOR_INJURIES;
      majorname := getmajtime(GetFeeNo,s,n);
      for i := 0 to majorname.Count-1 do
      begin
        if ReturnName(n.Strings[i])= 'N' then
          ill_time.font.Color := ClBlue
        else if ReturnName(n.Strings[i])= 'C' then
          ill_time.font.Color := ClGreen
        else
          ill_time.font.Color := ClRed;
        if (s.Strings[i]<>'') and (n.Strings[i]<> '') then
          ill_time.Caption := s.Strings[i]
        else
          ill_time.Caption := s.Strings[i];
      end;
    end
    else
    begin
      setstatus(GetFeeNo,'9',seq_no+'_'+leve_seq+'_'+Leve_no+'_'+kind+'_N'+'_'+ill_name+'_'+LIMIT_TIME);
      times_log(ill_name,'',getUserId,'');
      MAJOR_INJURIES;
      majorname := getmajtime(GetFeeNo,s,n);
      for i := 0 to majorname.Count-1 do
      begin
        if ReturnName(n.Strings[i])= 'N' then
          ill_time.font.Color := ClBlue
        else if ReturnName(n.Strings[i])= 'C' then
          ill_time.font.Color := ClGreen
        else
          ill_time.font.Color := ClRed;
        if (s.Strings[i]<>'') and (n.Strings[i]<> '') then
          ill_time.Caption := s.Strings[i]
        else
          ill_time.Caption := s.Strings[i];
      end;
    end;
  finally
    FreeAndNil(n);
    FreeAndNil(s);
    FreeAndNil(majorname);
  end;

end;



procedure TFrmOrder.Timer2Timer(Sender: TObject);
var
  i : integer;
  s,n,majorname: TStringList;
begin
  inherited;
  if StrToInt(copy(RocTimes(now,''),5,2)) mod 60 = 0 then
  begin
    s := TStringList.Create;
    n := TStringList.Create;
    majorname := TStringList.Create;
    try
      majorname := getmajtime(GetFeeNo,s,n);
    finally
      FreeAndNil(n);
      FreeAndNil(s);
      FreeAndNil(majorname);
    end;
  end;
end;


procedure TFrmOrder.getinitpatinfo;
var
  ag,sqlst,s_qty : string;
  i,k,aa : integer;
  mySQLs : TStrings;
begin
  if GetChrNo <> trim(edtchrno.Text) then
  begin
    //���\�ॼ�ϥ�
    qstr := ' and a.chr_no = '+Qt(trim(edtchrno.Text));
    sqlst := GetPatList(1);
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := sqlst;
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      SetPat(DM.QryTemp.fieldbyname('CHR_NO').AsString,
             DM.QryTemp.fieldbyname('fee_no').AsString,
             DM.QryTemp.fieldbyname('id_no').AsString,
             DM.QryTemp.fieldbyname('epd_bed').AsString,
             DM.QryTemp.fieldbyname('sex_type').AsString,
             DM.QryTemp.fieldbyname('dept_code').AsString,
             DM.QryTemp.fieldbyname('opd_date').AsString,
             DM.QryTemp.fieldbyname('rsv_opd_time').AsString,
             '',// cost,
             DM.QryTemp.fieldbyname('birth_date').AsString,
             DM.QryTemp.fieldbyname('PAT_NAME').AsString,
             DM.QryTemp.fieldbyname('seq_no').AsString,
             DM.QryTemp.fieldbyname('AC_TYPE').AsString,// ACType,
             '',// cpddate(�X�|���)
             DM.QryTemp.fieldbyname('shift_no').AsString,
             DM.QryTemp.fieldbyname('dept_room').AsString,
             DM.QryTemp.fieldbyname('opd_status').AsString);
      sgBioinf.Cells[0,1] := DM.QryTemp.fieldbyname('temperature').AsString;
      sgBioinf.Cells[1,1] := DM.QryTemp.fieldbyname('weight').AsString;
      sgBioinf.Cells[2,1] := DM.QryTemp.fieldbyname('pulse').AsString;
      sgBioinf.Cells[3,1] := DM.QryTemp.fieldbyname('systolic').AsString+'/'+DM.QryTemp.fieldbyname('diastolic').AsString;

      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      try
        s_qty := sql_str(11);
        SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
        DM.QryTemp.SQL.Text:=s_qty;
        DM.QryTemp.Open;
        if NOT DM.QryTemp.IsEmpty then
          Setpatweight(DM.QryTemp.FIELDBYNAME('weight').AsString)
        ELSE
          Setpatweight('N');
      except

      end;
      edtwdt.Text := Getpatweight;
    end;
  end;

  PATARSS := '';
  TEL := '';
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.Close;  //CHR_BASIC
  s_qty := sql_str(18);
  SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
  DM.QryTemp.SQL.Text:=s_qty;
  DM.QryTemp.Open;
  if NOT DM.QryTemp.IsEmpty then
  BEGIN
    LblBLOOD_TYPE.Caption := trim(DM.QryTemp.FieldByName('BLOOD_TYPE').AsString);//�嫬
    PATARSS := Trim(DM.QryTemp.FieldByName('ADDR_NAME1').AsString);
    TEL := Trim(DM.QryTemp.FieldByName('HOME_TEL_NO').AsString);
  END;
  DM.QryTemp.Close;

  edtchrno.Text := GetChrNo;
  edtIdno.Text := GetIdNo;
  edtName.Text := GetPatName;
  labdept.Caption := GetDeptName(GetPatDept);
  try
    ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(ag,1,1)<>'0' then
      edtAge.Text := copy(ag,1,length(ag)-2)+'�� '+copy(ag,4,2)+'�Ӥ�'
    else
      edtAge.Text := copy(ag,2,2)+'�� '+copy(ag,4,2)+'�Ӥ�';
  except
    edtAge.Text := '';
  end;
  sqlst := GetPatList(3);//opd_basic1
  SetParamter(sqlst,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(sqlst,'$FEE_NO$',Qt(GetFeeNo));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sqlst;
  DM.QryTemp.Open;
  IF NOT DM.QryTemp.IsEmpty THEN
  BEGIN
    if trim(DM.QryTemp.FIELDBYNAME('PAT_ID').AsString) = '' then
      RGPatId.ItemIndex := 0
    else
      RGPatId.ItemIndex := DM.QryTemp.FIELDBYNAME('PAT_ID').AsInteger-1;

    SetCbbitem(CbbPart,Trim(DM.QryTemp.FIELDBYNAME('part_code').AsString));
    SetCbbitem(CbbCase,Trim(DM.QryTemp.FIELDBYNAME('case_type').AsString));
    SetCbbitem(cbbvscode,Trim(DM.QryTemp.FIELDBYNAME('ins_doc').AsString));
    if cbbvscode.ItemIndex <> -1 then
      setvscode(ReturnId(cbbvscode.Text));

    rheSub.tag := length(Trim(rheSub.Text));
    rheObj.tag := length(Trim(rheObj.Text));
    rhePlan.tag := length(Trim(rhePlan.Text));
    rheHist.tag := length(Trim(rheHist.Text));

    lbltleve.Caption := '';
    if trim(DM.QryTemp.FIELDBYNAME('TRIAGE_LEVEL').AsString)<> '' then
    begin
      if TryStrToInt(trim(DM.QryTemp.FIELDBYNAME('TRIAGE_LEVEL').AsString),aa) then
        CBtriage.ItemIndex := StrToInt(DM.QryTemp.FIELDBYNAME('TRIAGE_LEVEL').AsString)-1;
      lbltleve.Caption := DM.QryTemp.FIELDBYNAME('TRIAGE_LEVEL').AsString;
    end
    else
    begin
      CBtriage.ItemIndex := -1;

    end;
    SGIcd.Row := 1;
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE1').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE2').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE3').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE4').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE5').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE6').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE7').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE8').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE9').AsString),'N');
    InsertIcd(Trim(DM.QryTemp.fieldbyname('ICD9_CODE10').AsString),'N');
    {for i := 1 to 10 do
    begin
      if Trim(DM.QryTemp.FIELDBYNAME('ICD9_CODE'+IntToStr(i)).AsString)<> '' then
      InsertIcd(Trim(DM.QryTemp.FIELDBYNAME('ICD9_CODE'+IntToStr(i)).AsString),'N');
    end;}
    SGIcd.Row := 1;

    //��icd10
    sqlst :='';
    mySQLs := TStringList.Create;
    sqlst := sqlstr(3);
    SetParamter(sqlst, '$FEE_NO$', qt(GetFeeNo));
    SetParamter(sqlst, '$OPD_DATE$', qt(GetEpdDate));
    SetParamter(sqlst, '$ORDER_TYPE$', ' and ORDER_TYPE = '+qt('N'));
    mySQLs.Text := sqlst;
    DM.OpenSQL(mySQLs, SGIcd10);
    SGIcd10.RowCount := 11;
    FreeAndNil(mySQLs);

    if icdchangea <> 'N' then
    begin
      SetICD91(SGIcd10.Cells[0,1]);
      SetICD92(SGIcd10.Cells[0,2]);
      SetICD93(SGIcd10.Cells[0,3]);
    end
    else
    begin
      SetICD91(SGIcd.Cells[0,1]);
      SetICD92(SGIcd.Cells[0,2]);
      SetICD93(SGIcd.Cells[0,3]);
    end;

    //SetICD91(SGIcd10.Cells[0,1]);
    //SetICD92(SGIcd10.Cells[0,2]);
    //SetICD93(SGIcd10.Cells[0,3]);
    
  END
  else //�S��opd_basic1���
  begin
    DM.QrySubSearch.Close;
    DM.QrySubSearch.SQL.Clear;
    DM.QrySubSearch.SQL.Add('select part_code,case_type from opd_basic where fee_no='+Qt(GetFeeNo)+' and opd_date='+qt(GetEpdDate));
    DM.QrySubSearch.Open;
    if DM.QrySubSearch.IsEmpty then
    begin
      setcbbitem(CbbPart,SetSys.ReadString('SYSTEM','PARTCODE',''));
    end
    else
    begin
      if Trim(DM.QrySubSearch.fieldbyname('part_code').AsString)='' then
         setcbbitem(CbbPart,SetSys.ReadString('SYSTEM','PARTCODE',''))
      else
        setcbbitem(CbbPart,Trim(DM.QrySubSearch.fieldbyname('part_code').AsString));
      if Trim(DM.QrySubSearch.fieldbyname('case_type').AsString)='' then
         setcbbitem(CbbCase,'02')
      else
        setcbbitem(CbbCase,Trim(DM.QrySubSearch.fieldbyname('case_type').AsString));
    end;
    if (GetUserLevel < '3') THEN //�P�_�D�v��v (copy(AddChar(trim(getUserId),'0',6),5,2)<> '99') AND
      SetCbbitem(cbbvscode,Trim(getUserId));
    if cbbvscode.ItemIndex <> -1 then //�]�w�D�v��v
      setvscode(ReturnId(cbbvscode.Text));
  end;

  if trim(CbbPart.Text)='�п��' then
    CbbPart.ItemIndex := 0;
  if trim(CbbCase.Text)='�п��' then
    CbbCase.ItemIndex := 0;
  if RGPatId.ItemIndex = -1 then
    RGPatId.ItemIndex := 0;

  sqlst := GetPatList(2);
  //SetParamter(sqlst,'$opd_date$',Qt(GetEpdDate));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := sqlst;
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    cbchrno.Items.Clear;
    for i := 0 to 4 do
    begin
      cbchrno.Items.Add(trim(DM.QryTemp.fieldbyname('chr_no').AsString));
      DM.QryTemp.Next;
    end;
  end;
  DM.QryTemp.Close;

  //110.05.18 shh ITe ��~���ĵ��O
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Text := 'select count(*) cnt from er_outdoor_bag where fee_no =' + qt(GetFeeNo);
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    if (DM.QryTemp.fieldbyname('cnt').AsInteger) = 0 then
      CheckBox2.Checked := False
    else
      CheckBox2.Checked := True;
  end;

  DM.QryTemp.Close;
  //END

  sqlst := GETEPDRECORD(2); //���˶˸��
  sqlst := sqlst + ' a.id_no=$ID_NO$ and a.opd_date=$OPD_DATE$ and $DATE_TIME3$';
  SetParamter(sqlst,'$ID_NO$',qt(GetIdNo));
  SetParamter(sqlst,'$OPD_DATE$',qt(GetEpdDate)); 
  SetParamter(sqlst,'$DATE_TIME3$','trim(c.arrival_date)||substr(trim(c.arrival_time),1,4) between to_char(to_date(trim(a.reg_date)+19110000||trim(''' + GetEpdTime + '''),''YYYYMMDDHH24MI'')-10/24/60,''YYYYMMDDHH24MI'')'+
                       ' and to_char(to_date(trim(a.reg_date)+19110000||trim(''' + GetEpdTime + '''),''YYYYMMDDHH24MI'')+30/24/60,''YYYYMMDDHH24MI'') and rownum =1');
  //SetParamter(sqlst,'$DATE_TIME3$','trim(c.arrival_date)||substr(trim(c.arrival_time),1,4) between to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')-10/24/60,''YYYYMMDDHH24MI'')'+
  //                     ' and to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')+30/24/60,''YYYYMMDDHH24MI'')');
  //��E���˶˸��

  //�h����ƿ��(�A�T�{)

  mySQLs := TStringList.Create;
  mySQLs.Text := sqlst;
  //mySQLs.SaveToFile('TTE.TXT');
  DM.OpenSQL(mySQLs,SGtriage);
  if CBtriage.ItemIndex = -1 then
  begin
    if trim(SGtriage.Cells[2,1]) <> '' then
    begin
      if TryStrToInt(trim(SGtriage.Cells[2,1]),aa) then
        CBtriage.ItemIndex := StrToInt(trim(SGtriage.Cells[2,1]))-1;
      lbltleve.Caption := trim(SGtriage.Cells[2,1]);
    end
    else
    begin
      lbltleve.Caption := '';
      CBtriage.ItemIndex := -1;
    end;
  end;
  
end;

procedure TFrmOrder.Button3Click(Sender: TObject);
VAR
  TMPSQL: STRING;
begin
  inherited;
  tmpSql := getDitto(24);
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  SetParamter(tmpSql,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(tmpSql,'$FEE_NO$',Qt(GetFeeNo));
  DM.QrySearch.SQL.Text := tmpSql;
  DM.QrySearch.Open;
  WHILE NOT DM.QrySearch.Eof DO
  BEGIN                                  // �~�|         �Ƶ�            �Ѽ�
    if InsertMed(DM.QrySearch.FieldByName('MED_CODE').asstring,//Med_code,
                 DM.QrySearch.FieldByName('CIR_CODE').asstring,//aCir,�W�v
                 DM.QrySearch.FieldByName('QTY').asstring,//aQty,���q
                 '',// DcDate,
                 '',// DcTime,
                 DM.QrySearch.FieldByName('PATH_CODE').asstring,//aPath,
                 DM.QrySearch.FieldByName('MED_CMD').asstring,//aMemo,
                 DM.QrySearch.FieldByName('MED_DAYS').asstring) //adays
       then
    begin                                   
      SGMed.Cells[ordertype,SGMed.Row-1] := DM.QrySearch.FieldByName('FEE_UNIT').asstring;//���
      SGMed.Cells[M_INS,SGMed.Row-1]     := DM.QrySearch.FieldByName('SELF_PAY_FLAG').asstring;
      SGMed.Cells[SEQ,SGMed.Row-1]       := DM.QrySearch.FieldByName('seq').asstring;//SEQ
      SGMed.Cells[M_join,SGMed.Row-1]    := '';//MSg.Cells[15,i];
      SGMed.Cells[modifyType,SGMed.Row-1] := 'N';
    end;
    DM.QrySearch.Next;
  END;
  DM.QrySearch.Close;
end;

procedure TFrmOrder.cbchrnoChange(Sender: TObject);
begin
  inherited;
  if GetChrNo<>trim(cbchrno.Text) then
  begin
    edtchrno.Text := trim(cbchrno.Text);
    getinitpatinfo;
  end;
end;

procedure TFrmOrder.cbchrnoContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  sqlstr : string;
  i : integer;
begin
  inherited;
    sqlstr := GetPatList(2);
    //SetParamter(sqlstr,'$opd_date$',Qt(GetEpdDate));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := sqlstr;
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      cbchrno.Items.Clear;
      for i := 0 to 4 do
      begin
        cbchrno.Items.Add(trim(DM.QryTemp.fieldbyname('chr_no').AsString));
        DM.QryTemp.Next;
      end;
    end;
    DM.QryTemp.Close;
end;

function TFrmOrder.isRepeat(fee_code,path,send,send2:string;tmpSG:TStringGrid):Boolean;
var
  i:integer;
  isRe,isRe1,isRe2,isRe3,isRe4:boolean;
begin
  isRe:=false;
  for i:=0 to tmpSG.RowCount - 1 do
  begin
    if tmpSG.Cells[3,i] <> '' then
    begin
      if fee_code <> '' then
        if TRIM(UpperCase(fee_code)) <> TRIM(UpperCase(tmpSG.Cells[3,i])) then
          isRe1:=false
        else
          isRe1:=true;

      if path <> '' then
      begin
        if TRIM(UpperCase(path)) <> TRIM(UpperCase(tmpSG.Cells[8,i])) then
          isRe2:=false
        else
          isRe2:=true;
      end
      else
        if TRIM(UpperCase(tmpSG.Cells[8,i])) = '' then
          isRe2:=true;
          
      if send <> '' then
      BEGIN
        if TRIM(UpperCase(send)) <> TRIM(UpperCase(tmpSG.Cells[13,i])) then
          isRe3:=false
        else
          isRe3:=true;
      END
      ELSE
      BEGIN
        IF TRIM(tmpSG.Cells[13,i])= '' THEN
          isRe3:=true;
      END;

      if send2 <> '' then
      BEGIN
        if TRIM(UpperCase(send2)) <> TRIM(UpperCase(tmpSG.Cells[16,i])) then
          isRe4:=false
        else
          isRe4:=true;
      END
      ELSE
      BEGIN
        IF TRIM(tmpSG.Cells[16,i])= '' THEN
          isRe4:=true;
      END;

      if isRe1 and isRe2 and isRe3 and isRe4 then
      begin
        isRe:= true;
        break;
      end;
    end;
  end;

  Result:=isRe;
end;

function TFrmOrder.InsertChk(feecode,sendcd1,qty,sefins,memo:string): Boolean;
var
  i : Integer;
  Qrys :TADOQuery;
  tmpSql,y_val :String;
begin
  Result := False;
  Qrys := TAdoQuery.Create(self);
  Qrys.Connection := Dm.ADOLink;
  if feecode <> '' then
    y_val := 'Y'
  else
    y_val := 'N';
  if (y_val='Y') then
  begin
    tmpSql := getPreOrderSql(1);
    SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
    SetParamter(tmpSql,'$ORDER_TYPE$',Qt('E'));
    if TRIM(sendcd1) <> '' then
      tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(trim(sendcd1));
    Qrys.SQL.Text:=tmpSql;
    Qrys.Open;
    if not Qrys.IsEmpty then
    begin
      if isRepeat(Trim(feecode),Trim(Qrys.FieldByName('Send_cd_1').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_3').AsString),SGChk) then
      begin
        if MessageDlg('��'+Trim(feecode)+'('+Trim(Qrys.FieldByName('fee_name').AsString)+') �ˬd���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
        begin
          SGChk.Cells[C_Code,SGChk.Rowcount -1] := '';
          SGChk.Cells[C_Order,SGChk.Rowcount -1] := '';
          exit;
        end;
      end;

      SGChk.Cells[modifyType,SGChk.Rowcount -1] := 'N';
      SGChk.Cells[Seq,SGChk.Rowcount -1] := '';
      SGChk.Cells[Del,SGChk.Rowcount -1] := '';

      SGChk.Cells[C_Code,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('fee_CODE').AsString);
      SGChk.Cells[C_Order,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('fee_name').AsString);
      SGChk.Cells[C_Qty,SGChk.Rowcount -1] := qty;
      SGChk.Cells[C_Unit,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('UNIT').AsString);
      SGChk.Cells[C_Cir,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('CIR_CODE').AsString);
      SGChk.Cells[C_path,SGChk.Rowcount -1] := sendcd1;
      SGChk.Cells[C_INS,SGChk.Rowcount -1] := sefins;
      SGChk.Cells[C_EMG,SGChk.Rowcount -1] := NullStrTo(Trim(Qrys.FieldByName('URG_FLAG_SCHE').AsString),'N');
      SGChk.Cells[C_MEMO,SGChk.Rowcount -1] := memo;
      SGChk.Cells[C_Send,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_2').AsString);
      SGChk.Cells[C_Kind,SGChk.Rowcount -1] := 'C';  // �ˬd����
      SGChk.Cells[C_2Send,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_3').AsString);
      SGChk.Cells[C_no,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_3').AsString);
      SGChk.RowCount := SGChk.RowCount +1 ;
      Result := True;
    end;
  end
  else
  begin
    if OutList.Count >0 then
    begin
      for i := 0 to OutList.Count-1 do
      begin
        tmpSql := getPreOrderSql(1);
        SetParamter(tmpSql,'$FEE_CODE$',QT(ReturnId(ReturnName(OutList.Strings[i]))));
        SetParamter(tmpSql,'$ORDER_TYPE$',QT('E'));
        if ReturnId(ReturnName(ReturnName(OutList.Strings[i]))) ='' then
          tmpSql:=tmpSql+#13+'  And nvl(Send_cd_1,''nil'')=''nil'' '
        else
          tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(ReturnId(ReturnName(ReturnName(OutList.Strings[i]))));
        Qrys.SQL.Text:=tmpSql;
        Qrys.Open;
        if not Qrys.IsEmpty then
        begin
          if isRepeat(ReturnId(ReturnName(OutList.Strings[i])),Trim(Qrys.FieldByName('Send_cd_1').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_3').AsString),SGChk) then
          begin
            if MessageDlg('��'+Trim(ReturnId(ReturnName(OutList.Strings[i])))+'('+Trim(ReturnId(ReturnName(OutList.Strings[i])))+') �ˬd���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
            begin
              SGChk.Cells[C_Code,SGChk.Rowcount -1] := '';
              SGChk.Cells[C_Order,SGChk.Rowcount -1] := '';
              exit;
            end;
          end;

          SGChk.Cells[modifyType,SGChk.Rowcount -1] := 'N';
          SGChk.Cells[Seq,SGChk.Rowcount -1] := '';
          SGChk.Cells[Del,SGChk.Rowcount -1] := '';

          SGChk.Cells[C_Code,SGChk.Rowcount -1] := ReturnId(ReturnName(OutList.Strings[i]));
          SGChk.Cells[C_Order,SGChk.Rowcount -1] := ReTurnId(OutList.Strings[i]);
          SGChk.Cells[C_Qty,SGChk.Rowcount -1] := NullStrTo(qty,Trim(Qrys.FieldByName('UNIT_QTY').AsString));
          SGChk.Cells[C_Unit,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('UNIT').AsString);
          SGChk.Cells[C_Cir,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('CIR_CODE').AsString);
          SGChk.Cells[C_path,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_1').AsString);
          SGChk.Cells[C_INS,SGChk.Rowcount -1] := NullStrTo(sefins,Trim(Qrys.FieldByName('INS_FLAG').AsString));
          SGChk.Cells[C_EMG,SGChk.Rowcount -1] := NullStrTo(Trim(Qrys.FieldByName('URG_FLAG_SCHE').AsString),'N');
          SGChk.Cells[C_MEMO,SGChk.Rowcount -1] := RETurnID(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))));
          SGChk.Cells[C_Send,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_2').AsString);
          SGChk.Cells[C_Kind,SGChk.Rowcount -1] := 'C';  // �ˬd����
          SGChk.Cells[C_2Send,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_3').AsString);
          SGChk.Cells[C_no,SGChk.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_3').AsString);
          SGChk.RowCount := SGChk.RowCount +1 ;
          Result := True;
        end;
      end;
    end;
  end;
  Qrys.Free;
end;

function TFrmOrder.InsertFee(fee_code, source, Part_code, aqty,
  SELF_PAY_FLAG: string): Boolean;
var
  q_str,fcode : string;
begin
  if fee_code <> '' then
  begin
    fcode := '';
    with DM.QrySearch do
    begin
      q_str := getPreOrderSql(12);
      q_str := q_str + ' AND Fee_CODE = '+Qt(fee_code);
      SQL.Text := q_str;
      //sql.SaveToFile('D:\insertfee.txt');
      Open;
      Last;
      First;
      if RecordCount > 0 then
      begin
        if RepeatInGrid(FieldByName('FEE_CODE').AsString,'0', F_code, SGFee) then
        begin
          ShowMessage(FieldByName('FEE_NAME').AsString + ' ���ƶ}��');
          SGFee.Rows[SGFee.Row].Clear ;
          exit;
        end;
        if Trim(FieldByName('FEE_CODE').AsString) <> '' then
        begin
          SGFee.Cells[modifyType, SGFee.Row] :='N';
          SGFee.Cells[F_code, SGFee.Row] := Trim(FieldByName('fee_code').AsString); //  �O�ΥN�X
          SGFee.Cells[F_Name, SGFee.Row] := Trim(FieldByName('fee_name').AsString); //  �O�ΦW��
          if Part_code <> '' then
            SGFee.Cells[F_Part, SGFee.Row] := Part_code
          else
            SGFee.Cells[F_Part, SGFee.Row] := ''; //  ����
          if aqty <> '' then
            SGFee.Cells[F_Qty, SGFee.Row] := aqty
          else
            SGFee.Cells[F_Qty, SGFee.Row] := '1'; //  �ƶq
          if SELF_PAY_FLAG <> '' then
            SGFee.Cells[F_Ins, SGFee.Row] := SELF_PAY_FLAG
          else
            SGFee.Cells[F_Ins, SGFee.Row] := Trim(FieldByName('ins_flag').AsString);
          if SGFee.Row = (SGFee.RowCount - 1) then
          begin
            SGFee.RowCount := SGFee.RowCount + 1;
          end;
          SGFee.Row := SGFee.Row+1;
          if InsertChild(FieldByName('FEE_CODE').AsString,SGFee.Row-1) then
            pkgdtl := false;
          Result := True;
        end
        else
          SGFee.Rows[SGFee.Row].Clear;
      end;
    end;
    if frmshw = 'N' then
      if pkgdtl then
        if GETPKG(fee_code,fcode) then
        begin
          if MessageDlg('���B�m���ç��Ӷ��O�_�a�X?',
             mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             GETPKGdtl(fcode);
          PageControl2.ActivePageIndex := 0;
          PageControl2Change(Self);
        end;
  end;
end;

function TFrmOrder.InsertIcd(fee_code,fnu: string): Boolean;
var
  q_str,fcode : string;
  i : integer;
  icdqry : TADOQuery;
begin
  Result := False;
  if fee_code <> '' then
  begin
    icdqry := TADOQuery.Create(Self);
    icdqry.Connection := DM.ADOLink;
    fcode := '';
    with icdqry do
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
          ShowMessage(FieldByName('ICD9_CODE').AsString+ #13#10 +FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '�e�f�N�X ����');
          if ((trim(SGIcd.Cells[0, SGIcd.Row]) = '') or (trim(SGIcd.Cells[1, SGIcd.Row]) = '')) then
            SGIcd.Rows[SGIcd.Row].Clear;
        end
        else if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
        begin
          //���w��Ū�row
            for i := 1 to 10 do
            begin
              if ((trim(SGIcd.Cells[0, i]) = '') or (trim(SGIcd.Cells[1, i]) = '')) then
              begin
                SGIcd.Row := i;
                Break;
              end;
            end;
          //
          SGIcd.Cells[0, SGIcd.Row] := FieldByName('ICD9_CODE').AsString;
          SGIcd.Cells[1, SGIcd.Row] := FieldByName('ENG_full_DESC').AsString;
          SGIcd.Cells[2, SGIcd.Row] := FieldByName('CHN_full_DESC').AsString;
          SGIcd.Cells[3, SGIcd.Row] := FieldByName('slow_flag').AsString;
          SGIcd.Cells[4, SGIcd.Row] := FieldByName('urg_flag').AsString;
          if SGIcd.Row < (SGIcd.RowCount - 1) then
          begin
            SGIcd.Row := SGIcd.Row + 1;
          end;
          if pnlHintGrid.Visible then
            SetPanel(False,pnlHintGrid);
          if fnu = 'Y' then
          begin
            if frmshw = 'N' then
              if pkgdtl then
                if GETPKG(fee_code,fcode) then
                begin
                  if MessageDlg('���E�_���M�\�Ӷ��O�_�a�X?',
                     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     GETPKGdtl(fcode);
                  PageControl2.ActivePageIndex := 1;
                  PageControl2Change(Self);
                end;
            //showt�ǬV�f�q��=======================SELECT count(*) FROM icd9_basic WHERE icd9_code = :data AND inf_flag <> 'N'
            if FieldByName('inf_flag').AsString <> 'N' then
              If MessageDlg('�ǬV�f��1��~5���e�f�X �O�_�q��?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                N37Click(N37);
              end;
          end;
          Result := True;
        end
        else
          if ((trim(SGIcd.Cells[0, SGIcd.Row]) = '') or (trim(SGIcd.Cells[1, SGIcd.Row]) = '')) then
            SGIcd.Rows[SGIcd.Row].Clear;
      end;
    end;
    icdqry.Free;
  end;
end;

function TFrmOrder.InsertLab(feecode,qty,selfins,sendcd1,sendcd2,sendcd3,Joinno:string): Boolean;
var
  i : Integer;
  Qrys :TADOQuery;
  tmpSql,fY :String;
begin
  Result := False;

  Qrys := TAdoQuery.Create(self);
  Qrys.Connection := Dm.ADOLink;
  if feecode <> '' then
    fY := 'Y'
  else
    fY := 'N';
  if fy = 'Y' then
  begin
    if checkexper(sendcd3) then
       ShowMessage('�����綵�ؤw�b������E�Ϋ�E�}�߹L');
    tmpSql := getPreOrderSql(1);
    SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
    SetParamter(tmpSql,'$ORDER_TYPE$',qt('L'));
    tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(sendcd1);
    tmpSql:=tmpSql+#13+' And Send_cd_2=' +Qt(sendcd2);
    tmpSql:=tmpSql+#13+' And Send_cd_3=' +Qt(sendcd3);
    Qrys.SQL.Text:=tmpSql;
    Qrys.Open;
    if not Qrys.IsEmpty then
    begin
      if isRepeat(feecode,Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_1').AsString),Trim(Qrys.FieldByName('Send_cd_3').AsString),SGLab) then
      begin
        if MessageDlg('��'+feecode+'('+Trim(Qrys.FieldByName('fee_name').AsString)+') ����~���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
        begin
          SGLab.Cells[C_Code,SGLab.Rowcount -1] := '';
          SGLab.Cells[C_Order,SGLab.Rowcount -1] := '';
          exit;
        end;
      end;
      SGLab.Cells[modifyType,SGLab.Rowcount -1] := 'N';
      SGLab.Cells[Seq,SGLab.Rowcount -1] := '';
      SGLab.Cells[Del,SGLab.Rowcount -1] := '';

      SGLab.Cells[C_Code,SGLab.Rowcount -1] := feecode;
      SGLab.Cells[C_Order,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('fee_name').AsString);
      if qty <> '' then
        SGLab.Cells[C_Qty,SGLab.Rowcount -1] := qty
      else
        SGLab.Cells[C_Qty,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('UNIT_QTY').AsString);
      SGLab.Cells[C_Unit,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('UNIT').AsString);
      SGLab.Cells[C_Cir,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('CIR_CODE').AsString);
      SGLab.Cells[C_path,SGLab.Rowcount -1] :=  Trim(Qrys.FieldByName('send_cd_2').AsString);//��g���� �������� send_cd_2
      if selfins <> '' then
        SGLab.Cells[C_INS,SGLab.Rowcount -1] := selfins
      else
        SGLab.Cells[C_INS,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('INS_FLAG').AsString);
      SGLab.Cells[C_EMG,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('URG_FLAG').AsString);
      SGLab.Cells[C_MEMO,SGLab.Rowcount -1] := '';
      SGLab.Cells[C_Send,SGLab.Rowcount -1] :=  Trim(Qrys.FieldByName('send_cd_1').AsString); //send_cd_1
      SGLab.Cells[C_Kind,SGLab.Rowcount -1] := 'L';  // ���綵��
      SGLab.Cells[C_2Send,SGLab.Rowcount -1] :=  sendcd3;//send_cd_3
      SGLab.Cells[C_no,SGLab.Rowcount -1] :=  Trim(Qrys.FieldByName('send_cd_3').AsString);
      SGLab.Cells[C_Join,SGLab.Rowcount -1]  := Joinno;
      SGLab.RowCount := SGLab.RowCount +1 ;
      Result := True;
    end;
  end
  else
  begin
    if OutList.Count > 0then
    begin
      for i := 0 to OutList.Count-1 do
      begin
        if checkexper(ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i])))))) then
          ShowMessage('�����綵�ؤw�b������E�Ϋ�E�}�߹L');
        tmpSql := getPreOrderSql(1);
        SetParamter(tmpSql,'$FEE_CODE$',qt(ReturnId(ReturnName(ReturnName(OutList.Strings[i])))) );
        SetParamter(tmpSql,'$ORDER_TYPE$',qt('L'));

        if ReturnId(OutList.Strings[i]) = '' then
          tmpSql:=tmpSql+' And nvl(Send_cd_1,'' '')='' '' '
        else
          tmpSql:=tmpSql+' And Send_cd_1=' +Qt(ReturnId(OutList.Strings[i]));

        if ReturnId(ReturnName(OutList.Strings[i])) ='' then
          tmpSql:=tmpSql+' And nvl(Send_CD_2,'' '')='' '' '
        else
          tmpSql:=tmpSql+' And Send_Cd_2='+Qt(ReturnId(ReturnName(OutList.Strings[i])));

        if ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i]))))) ='' then
          tmpSql:=tmpSql+' And nvl(Send_CD_3,'' '')='' '' '
        else
          tmpSql:=tmpSql+' And Send_Cd_3='+Qt(ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i]))))));
        Qrys.SQL.Text:=tmpSql;
        Qrys.Open;
        if not Qrys.IsEmpty then
        begin
          if isRepeat(ReturnId(ReturnName(ReturnName(OutList.Strings[i]))),ReturnId(ReturnName(OutList.Strings[i])),ReturnId(OutList.Strings[i]),ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i]))))),SGLab) then
          begin
            if MessageDlg('��'+feecode+'('+Trim(Qrys.FieldByName('fee_name').AsString)+') ����~���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
            begin
              SGLab.Cells[C_Code,SGLab.Rowcount -1] := '';
              SGLab.Cells[C_Order,SGLab.Rowcount -1] := '';
              exit;
            end;
          end;

          SGLab.Cells[modifyType,SGLab.Rowcount -1] := 'N';
          SGLab.Cells[Seq,SGLab.Rowcount -1] := '';
          SGLab.Cells[Del,SGLab.Rowcount -1] := '';

          SGLab.Cells[C_Code,SGLab.Rowcount -1]  := ReturnId(ReturnName(ReturnName(OutList.Strings[i])));
          SGLab.Cells[C_Order,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('fee_name').AsString);//ReturnId(ReturnName(ReturnName(ReturnName(OutList.Strings[i]))));
          if qty <> '' then
            SGLab.Cells[C_Qty,SGLab.Rowcount -1] := qty
          else
            SGLab.Cells[C_Qty,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('UNIT_QTY').AsString);
          SGLab.Cells[C_Unit,SGLab.Rowcount -1]  := Trim(Qrys.FieldByName('UNIT').AsString);
          SGLab.Cells[C_Cir,SGLab.Rowcount -1]   := Trim(Qrys.FieldByName('CIR_CODE').AsString);
          SGLab.Cells[C_path,SGLab.Rowcount -1]  :=  ReturnId(ReturnName(OutList.Strings[i]));//��g���� �������� send_cd_2
          if selfins <> '' then
            SGLab.Cells[C_INS,SGLab.Rowcount -1] := selfins
          else
            SGLab.Cells[C_INS,SGLab.Rowcount -1] := Trim(Qrys.FieldByName('INS_FLAG').AsString);
          SGLab.Cells[C_EMG,SGLab.Rowcount -1]   := Trim(Qrys.FieldByName('URG_FLAG').AsString);
          SGLab.Cells[C_MEMO,SGLab.Rowcount -1]  := '';
          SGLab.Cells[C_Send,SGLab.Rowcount -1]  :=  ReturnId(OutList.Strings[i]); //send_cd_1
          SGLab.Cells[C_Kind,SGLab.Rowcount -1]  := 'L';  // ���綵��
          SGLab.Cells[C_2Send,SGLab.Rowcount -1] :=  ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i])))));//send_cd_3
          SGLab.Cells[C_no,SGLab.Rowcount -1]    :=  ReTurnID(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i])))));//send_cd_3
          SGLab.Cells[C_Join,SGLab.Rowcount -1]  := ReTurnID(ReTurnName(ReturnName(ReturnName(ReturnName(ReturnName(OutList.Strings[i]))))));
          SGLab.RowCount := SGLab.RowCount +1 ;
          Result := True;
        end;
      end;
    end;
  end;
  PageControl2.ActivePageIndex := 3;
  Qrys.Free;
end;

function TFrmOrder.InsertMed(Med_code, aCir, aQty, DcDate, DcTime,
  aPath, aMemo, adays: String): Boolean;
Var
  QtyStr,QtyStrs, CirStr, StartDateStr: String;//�Ω�Ddefault����
  sIns_Days,sMax_Days,TempStr,preOrderType,DefaultType: String;
  TempQ,TempQ2,TempQ3 :  TADOQuery;
  ArrKey ,Mes,majordesc,majorselfpay : String;
  i : Integer;
  PreOrderCheck: String;
  myProgram,myParamter : String;
  ReplaceMed1,ReplaceMed2,ReplaceMed3 : String;
  key : Word;
  QryMedstr,QryMedstr1 : String;
  m_atccode,warntype,medstr : string;//�L�ӥv
  //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
  ls_med_desc : string;
begin
  if Trim(Med_code) ='' then
  begin
    Result := False;
    Exit;
  end;
  majorselfpay := '';
  ReplaceMed1:='';ReplaceMed2:='';ReplaceMed3:='';
  DefaultType := 'M';
  // ���Х���
  for i := SGMed.FixedRows to SGMed.RowCount -1 do
  begin
    if SGMed.Cells[del,i]='X' then
      continue
    else
    begin
      if (Trim(SGMed.Cells[M_CODE,i])= Trim(Med_code)) AND (I<> SGMed.Row)  then
      begin
        Case MessageDlg('�w�����@�Ī�'+#13+'�O�_�n�~��}��?'+#10#13+'�~��:       Yes'+#10#13+'�אּSTAT: No'+#10#13+'����:       Cancel',  mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          2: begin
               Result := False;
               Exit;
             end;
          7: begin
               aCir := 'STAT';
               Break;
             end;
          6: begin
               Break;
             end;
        end;
      end;
    end;
  end;
  if ordermedbefor(Med_code) = 'N' then
  begin
    result := False;
    SGMed.Cells[M_Code,SGMed.Row] := '';
    exit;
  end;
  TempQ :=  TADOQuery.Create(self);
  TempQ.Connection := DM.ADOLink;
  TempQ2 :=  TADOQuery.Create(self);
  TempQ2.Connection := DM.ADOLink;
  TempQ3 :=  TADOQuery.Create(self);
  TempQ3.Connection := DM.ADOLink;
  With TempQ do
  begin
    // �L���Ī�
    QryMedstr := '';
    QryMedstr1 := '';
    //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
    ls_med_desc := '';
    with TempQ3 do
    begin
      Close;
      SQL.Clear;
      //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
      //SQL.Add('select med_type,atc_code from orderitem_basic where FEE_CODE='+Qt(Trim(Med_CODE)));
      SQL.Add('select med_type,atc_code, trim(alise_desc) || ''('' || trim(med_eng_desc) || '')'' med_desc  from med_basic where med_code = '+Qt(Trim(Med_CODE)));
      Open;

      m_atccode := Trim(FieldbyName('atc_code').AsString);
      //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
      ls_med_desc := Trim(FieldbyName('med_desc').AsString);

      //if Copy(Trim(FieldbyName('med_type').AsString),1,5) = '02020' then
      if (Copy(Trim(FieldbyName('med_type').AsString), 1, 5) = '02020') and (Trim(FieldbyName('med_type').AsString)<>'02020100') and (Trim(FieldbyName('med_type').AsString)<>'02020600')  and (Trim(FieldbyName('med_type').AsString)<>'02021000') then
        QryMedstr := ' and DRUG_INTER1=''Y'' '
      else if Copy(Trim(FieldbyName('med_type').AsString),1,6) = '100101' then
        QryMedstr := ' and DRUG_INTER2=''Y'' '
      else if Copy(Trim(FieldbyName('med_type').AsString),1,6) = '100102' then
        QryMedstr := ' and DRUG_INTER3=''Y'' '
      else if Copy(Trim(FieldbyName('med_type').AsString),1,8) = '10010700' then
        QryMedstr := ' and DRUG_INTER4=''Y'' '
      else if Copy(Trim(FieldbyName('med_type').AsString),1,8) = '10010900' then
        QryMedstr := ' and DRUG_INTER5=''Y'' '
      //else if Copy(Trim(FieldbyName('med_type').AsString),1,5) = '01070' then
      else if (Copy(Trim(FieldbyName('atc_code').AsString), 1, 4) = 'N03A') and (Copy(Trim(FieldbyName('atc_code').AsString), 1, 5) <> 'N03AG') and (Copy(Trim(FieldbyName('atc_code').AsString), 1, 5) <> 'N03AX')  then
        QryMedstr := ' and DRUG_INTER6=''Y'' '
      else
        QryMedstr := '';

      if QryMedstr <> '' then
        QryMedstr1 := ' union ' +
                      ' select A.* from OPD_WARNING2 A join  OPD_WARNING3 B ON a.upd_oper=b.upd_oper and a.upd_date=b.upd_date and a.UPD_TIME=b.UPD_TIME ' +
                      ' where A.chr_no='+Qt(getChrno)+ QryMedstr;
    end;
    // �L���Ī�
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT case when B.ATC_CODE =' + Qt(trim(m_atccode)) +  ' and B.ADR_STOP_FLAG=''Y'' then ''1'' '  );
    SQL.Add('                     when B.ATC_CODE =' + Qt(trim(m_atccode)) +  ' and B.ADR_STOP_FLAG=''N'' then ''2'' '  );
    SQL.Add('                     when B.ATC_CODE<>' + Qt(trim(m_atccode)) +  ' and B.STOP_FLAG2=''Y'' then ''3'' '  );
    SQL.Add('                     when B.ATC_CODE<>' + Qt(trim(m_atccode)) +  ' and B.STOP_FLAG2=''N'' then ''4'' '  );
    SQL.Add('                     end as flag , ');
    SQL.Add('       MED_CODE,MED_TYPE,ATC_CODE,STOP_FLAG FROM ( ');
    SQL.Add('select A.* from OPD_WARNING2 A join  ORDERITEM_BASIC B ON A.ATC_CODE=B.ATC_CODE where chr_no=' + Qt(getChrno) + ' and FEE_CODE=' + Qt(Trim(Med_CODE)));
    SQL.Add(QryMedstr1);
    SQL.Add(' ) B  order by flag ');
    open;
    while not Eof do
    begin
      if warntype='' then
      begin
        if Trim(FieldByName('FLAG').AsString) = '1' then
          warntype :='1'
        else if Trim(FieldByName('FLAG').AsString) = '2' then
          warntype :='2'
        else if Trim(FieldByName('FLAG').AsString) = '3' then
          warntype :='3'
        else
          warntype :='4';
      end;

      medstr := medstr + ';' + trim(FieldbyName('MED_CODE').AsString) ;
      Next;
    end;

    medstr := Copy(medstr, 2, Length(medstr));

    if trim(warntype) <> '' then
    begin
      UUpddate := '';
      UUpdtime := '';

      UUpddate := DBDate(RocDate(now, ''));
      UUpdtime := DBDate(RocTime(now, '')); //���o�{�b�ɶ�

      if trim(warntype) = '1' then
      begin
        //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
        //if Showmessage('�f�H�惡�Ī����Y�����}���������A�g�Ī����}�����u�@�p�յ��w��[���i�ϥ�]�A�Ч�Ψ�L�Ī�', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        if Showmessage('�f�H�惡�Ī��i' + ls_med_desc + '�j���Y�����}���������A�g�Ī����}�����u�@�p�յ��w��[���i�ϥ�]�A�Ч�Ψ�L�Ī�', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        begin
          if not Assigned(FrmWarningdesc) then
            FrmWarningdesc := TFrmWarningdesc.Create(self);
          //FrmWarningdesc.medcode := FieldbyName('MED_CODE').AsString;
          FrmWarningdesc.medcode := Trim(Med_CODE);
          FrmWarningdesc.medstr := StringReplace(medstr, ';', ' '','' ', [rfReplaceAll]);
          FrmWarningdesc.Panel1.Visible := False;
          FrmWarningdesc.BtnOK.Visible := False;
          FrmWarningdesc.ShowModal;
          if FrmWarningdesc <> nil then
            FrmWarningdesc := nil;
        end
        else
        begin

        end;
        SGMed.Cells[M_code,SGMed.Row] := '';
        SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '3'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
        Result := False;
        Close;
        FreeAndNil(TempQ);
        Exit;

      end
      else if trim(warntype) = '2' then
      begin
        //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
        //if ShowMessage('�f�H�惡�Ī������L�Ӥ��������A�O�_�n�~��}�ߡH' + #13 + '�p�n�}�ߥ�����g�}�߲z�ѡI', ['�}��', '����'], msComf) = 1 then
        if ShowMessage('�f�H�惡�Ī��i' + ls_med_desc + '�j�����L�Ӥ��������A�O�_�n�~��}�ߡH' + #13 + '�p�n�}�ߥ�����g�}�߲z�ѡI', ['�}��', '����'], msComf) = 1 then
        begin
          SGMed.Cells[M_code,SGMed.Row] := '';
          SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '1'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
          Result := False;
          Close;
          FreeAndNil(TempQ);
          Exit;
        end
        else
        begin
          if not Assigned(FrmWarningdesc) then
            FrmWarningdesc := TFrmWarningdesc.Create(self);
          FrmWarningdesc.medcode := Trim(Med_CODE);
          FrmWarningdesc.medstr  := StringReplace(medstr, ';', ',', [rfReplaceAll]);
          FrmWarningdesc.atccode := trim(m_atccode);
          FrmWarningdesc.Upddate := UUpddate;
          FrmWarningdesc.Updtime := UUpdtime;
          FrmWarningdesc.Panel1.Visible := True;
          FrmWarningdesc.BtnOK.Visible := True;
          FrmWarningdesc.ShowModal;

          if FrmWarningdesc.WarningFlag = 0 then
          begin
            SGMed.Cells[M_code,SGMed.Row] := '';
            SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '1'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
            Result := False;
            Close;
            FreeAndNil(TempQ);
            Exit;
          end
          else
          begin
            SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '2'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
          end;
          if FrmWarningdesc <> nil then
            FrmWarningdesc := nil;
        end;
      end
      else if trim(warntype) = '3' then
      begin
        //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
        //if Showmessage('�Ъ`�N�A�f�H�惡���Ī������L��/���}���������A�B�g�Ī����}�����u�@�p�յ��w��[���i�ϥ�]', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        if Showmessage('�Ъ`�N�A�f�H�惡���Ī��i'+ ls_med_desc +'�j�����L��/���}���������A�B�g�Ī����}�����u�@�p�յ��w��[���i�ϥ�]', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        begin
          if not Assigned(FrmWarningdesc) then
            FrmWarningdesc := TFrmWarningdesc.Create(self);
          FrmWarningdesc.medcode := Trim(Med_CODE);
          FrmWarningdesc.medstr := StringReplace(medstr, ';', ' '','' ', [rfReplaceAll]);
          FrmWarningdesc.Panel1.Visible := False;
          FrmWarningdesc.BtnOK.Visible := False;
          FrmWarningdesc.ShowModal;
          if FrmWarningdesc <> nil then
            FrmWarningdesc := nil;
        end
        else
        begin

        end;
        SGMed.Cells[M_code,SGMed.Row] := '';
        SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '3'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
        Result := False;
        Close;
        FreeAndNil(TempQ);
        Exit;
      end      
      else
      begin
        //106.12.06 shh ITe 11138 modify �ī~�r�˧אּ�e�{��ڰӫ~�W��
        //if Showmessage('�Ъ`�N,�f�H�惡���Ī������L��/���}��������!!', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        if Showmessage('�Ъ`�N,�f�H�惡���Ī��i' + ls_med_desc + '�j�����L��/���}��������!!', ['�ԲӸ��', '�T�w'], msComf) = 0 then
        begin
          if not Assigned(FrmWarningdesc) then
            FrmWarningdesc := TFrmWarningdesc.Create(self);
          FrmWarningdesc.medcode := Trim(Med_CODE);
          FrmWarningdesc.medstr := StringReplace(medstr, ';', ',', [rfReplaceAll]);
          FrmWarningdesc.Panel1.Visible := False;
          FrmWarningdesc.BtnOK.Visible := False;
          FrmWarningdesc.ShowModal;
          if FrmWarningdesc <> nil then
            FrmWarningdesc := nil;
        end
        else
        begin
        end;

        SaveReaction('0', Trim(Med_code), Trim(Med_code), '05', '2'); //05:�L�ӥv ;1:�^�h�ק�,2:�~��,3:���_
      end;

    end;
    //�ī~�j�M
    Close;
    SQL.Clear;
    SQL.Add('Select a.*,(select trim(batch_no) from vaccines_drugs where vaccines_drugs.med_code=a.fee_code and switch=''Y'' and Rownum = 1) as batch_no,');
    SQL.Add('decode(a.tdm_flag,''Y'',''�@'','''') density,decode(a.interaction_flag,''Y'',''��'','''') food,decode(a.no_powder_flag,''Y'',''/�i'','''') grind,');
    SQL.Add('decode(a.FALL_FLAG,''Y'',''�^'','''') fall,decode(a.pregnancy_note_flag,''Y'',''��'','''') pregnancy from orderItem_basic a where a.fee_code='+Qt(Trim(Med_code)));
    Open;
    if Eof then
    begin
      Result := False;
      Close;
      FreeAndNil(TempQ);
      Exit;
    end;
    if UpperCase(SetSys.ReadString('SYSTEM','�͵����ˮ�',''))='TRUE' then
    begin
      myProgram := SetSys.ReadString('OTHERSYSTEMLINK','�͵����ˮ�','');
      myParamter := SetSys.ReadString('PARAMTER','�͵����ˮ�','');
      PreOrderCheck := '';
      if myProgram <> '' then
      begin
        //�͵��֥���
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('SELECT F_HaveBTChart('+Qt(GetFeeNo)+','+Qt(Med_code)+') as aa from Dual');
        TempQ2.Open;
        if TempQ2.FieldByName('aa').AsString='Y' then
        begin
          comStrRep(myProgram);
          comstrRep(myParamter);
          SetParamter(myParamter,'$+MEDCODE+$',Med_code);
          WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
        end;
        TempQ2.Close;
      end;
    end;
    //���&�Ƽf
    {myProgram:= SetSys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
    PreOrderCheck := '';
    if myProgram<>'' then
    begin
      TempQ2.Close;
      TempQ2.SQL.Clear;
      TempQ2.SQL.Add('select F_IPD_MED_CHECK('+Qt(GetChrNo)+','+Qt(Med_code)+','+Qt(GetFeeNo)+','+Qt(RocDate(now,''))+','+Qt(Trim(FieldByName('INS_FLAG').AsString))+','+Qt(NullStrTo(aQty,Trim(FieldByName('UNIT_QTY').AsString)))+') as AA from dual;');
      TempQ2.open;
      PreOrderCheck:= StringReplace(TempQ2.fieldByName('AA').AsString,';','_',[rfReplaceAll]);
      if ReturnID(PreOrderCheck) ='Y' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
      end
      else if ReturnID(PreOrderCheck) ='N' then
      begin
        if ShowMessage(ReturnName(PreOrderCheck),['��ӽг�','�}��','���}'],mscomf) = 0 then
        begin
          //�]�ӽг�
          myProgram :=Setsys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
          myParamter := Setsys.ReadString('PARAMTER','�ƫe�f��','');
          comStrRep(myProgram);
          comstrRep(myParamter);
          SetParamter(myParamter,'$+MEDCODE+$',Med_code);
          WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
        end;
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end
      else if ReturnID(PreOrderCheck) ='1' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end
      else if ReturnID(PreOrderCheck) ='2' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end;
    end ;   }
    {if not varisnull(FieldByName('ANESTAETICE_TYPE').AsVariant) then
    begin
      if (FieldByName('ANESTAETICE_TYPE').AsString ='1' ) or
          (FieldByName('ANESTAETICE_TYPE').AsString ='2' ) or
          (FieldByName('ANESTAETICE_TYPE').AsString ='3' ) then
      begin
        Result := False;
        Close;
        FreeAndNil(TempQ);
        ShowMessage('�@�ܤT�źި��ī~�A�Щ��r������J�A�ýж�g�ި��ıM�γB���');
        Exit;
      end;
    //end }
    majordesc := '';
    if Med_code=SetSys.ReadString('SYSTEM','RTPA','') then
    begin
      if not assigned(FrmMAJOR) then
        FrmMAJOR := TFrmMAJOR.Create(Self);
      FrmMAJOR.ShowModal;
      majordesc := FrmMAJOR.Str_Note;
      majorselfpay := FrmMAJOR.selfpay;
      FreeAndNil(FrmMAJOR);
    end;

    if Trim(TempQ.FieldByName('USE_STATUS_O').AsString) <>'1' then //���ί���
    begin
      TempStr := '';
      if FieldByName('USE_STATUS_O').AsString ='2' then
        TempStr :=' �Ȯɯ���' + #13#10 + '�Ч�}��L�ī~'
      else
        TempStr :=' �w����' + #13#10 + '�Ч�}��L�ī~';
      if (Trim(FieldByName('REPLACE_CODE1').AsString)<>'' ) or (Trim(FieldByName('REPLACE_CODE2').AsString)<>'' ) or (Trim(FieldByName('REPLACE_CODE3').AsString)<>'' ) then
      begin
        if Trim(FieldByName('REPLACE_CODE1').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE1').AsString));
        TempQ2.Open;
        ReplaceMed1 := TempQ2.fieldbyName('Fee_name').AsString;
        end;
        if Trim(FieldByName('REPLACE_CODE2').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE2').AsString));
        TempQ2.Open;
        ReplaceMed2 := TempQ2.fieldbyName('Fee_name').AsString;
        end;

        if Trim(FieldByName('REPLACE_CODE3').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE3').AsString));
        TempQ2.Open;
        ReplaceMed3 := TempQ2.fieldbyName('Fee_name').AsString;
        end;
        TempQ2.Close;


        Case ShowMessage2(FieldByName('Fee_Name').AsString+#13+TempStr,[Trim(ReplaceMed1),NullStrTo(Trim(ReplaceMed2),'����'),nullstrTo(Trim(ReplaceMed3),'����'),'����'],MsInfor) of
          0 : result:=InsertMed(Trim(FieldByName('REPLACE_CODE1').AsString),'','','','','');
          1 : result:=InsertMed(Trim(FieldByName('REPLACE_CODE2').AsString),'','','','','');
          2 : result:=InsertMed(Trim(FieldByName('REPLACE_CODE3').AsString),'','','','','');
          3 :
          begin
            result := False;
            Close;
            FreeAndNil(TempQ);
            exit;
          end;
        end;
        Close;
        FreeAndNil(TempQ);
        Exit;
      end
      else
      begin
        ShowMessage(FieldByName('Fee_name').AsString+TempStr);
        Close;
        result := False;
        FreeAndNil(TempQ);
        exit;
      end;
    end
    else
    begin
      //�Y���ī~�ˮ�
      if not AllMedChk( Med_code,Trim(FieldByName('ATC_CODE').AsString),'ADD') then
      begin
        Result := False;
        Close;
        FreeAndNil(TempQ);
        SGMed.Cells[M_code,SGMed.Row] := '';
        Exit;
      end;

      //���O�Ѽ�,�̤j�Ѽ�
      sMAX_Days:=NullStrTo(Trim(FieldByName('DAYS_LIMIT').AsString),'0');
      sIns_Days:=NullStrTo(Trim(FieldByName('MED_DAYS').AsString),'0');
      SGMed.Cells[modifyType,SGMed.Row] := 'N';//�s�}��
      SGMed.Cells[Seq,SGMed.Row] := '';
      SGMed.Cells[Del,SGMed.Row] := '';
      try
        if SGMed.Row > 1 then
          preOrdertype := SGMed.Cells[Ordertype,SGMed.Row -1]
        else
          preOrdertype:= '';
      except
        preOrdertype:= '';
      end;
      SGMed.Cells[OrderType,SGMed.Row] := NullStrTo(preOrdertype,DefaultType);
      SGMed.Cells[M_Bdate,SGMed.Row] := ROCDATE(now,'');
      SGMed.Cells[M_BTime,SGMed.Row] := ROCTIME(now,'');

      if (Trim(aCir)<>'STAT') and (Trim(aCir)<>'ST') then
      begin
        if (sIns_Days ='0') and (sMax_Days ='0') then
        begin
          SGMed.Cells[M_EDate,SGMed.Row] := '';
          SGMed.Cells[M_ETime,SGMed.Row] := '';
        end
        else if (sIns_Days <>'0') then
        begin
          SGMed.Cells[M_EDate,SGMed.Row] := ROCDATE(now+StrToInt(sIns_Days),'');
          SGMed.Cells[M_ETime,SGMed.Row] := ROCTIME(now,'');
        end
        else
        begin
          if (SGMed.Cells[OrderType,SGMed.Row] = 'D') or (sMax_Days ='99') then
          begin
            SGMed.Cells[M_EDate,SGMed.Row] := '';
            SGMed.Cells[M_ETime,SGMed.Row] := '';
          end
          else
          begin
            SGMed.Cells[M_EDate,SGMed.Row] := ROCDATE(now+StrToInt(sMax_Days),'');
            SGMed.Cells[M_ETime,SGMed.Row] := ROCTIME(now,'');
          end;
        end;
      end;

      SGMed.Cells[M_code,SGMed.Row] := Trim(Med_code);
      SGMed.Cells[M_Name,SGMed.Row] := Trim(TempQ.FieldByName('Fee_name').AsString);//�ӫ~�W

      //�̤j���q
      if Trim(TempQ.FieldByName('UNIT_QTY').AsString) = '' then
      begin
        SGMed.Cells[M_Qty,SGMed.Row] := '0';
        if aQty = '' then
          SGMed.Cells[M_Qty,SGMed.Row] := '0'
        else
          if StrtoFloat(NullStrTo(aQty,'0')) <=  StrtoFloat(NullStrTo(Trim(FieldByName('qty_max_dose').AsString),'0')) then //�榸�̤j���q
            SGMed.Cells[M_Qty,SGMed.Row] := NullStrTo(aQty,'0')
          else
            SGMed.Cells[M_Qty,SGMed.Row] := NullStrTo(aQty,Trim(TempQ.FieldByName('qty_max_dose').AsString));
      end
      else
        if StrtoFloat(NullStrTo(aQty,Trim(TempQ.FieldByName('UNIT_QTY').AsString))) <=  StrtoFloat(NullStrTo(Trim(FieldByName('qty_max_dose').AsString),'0')) then //�榸�̤j���q
          SGMed.Cells[M_Qty,SGMed.Row] := NullStrTo(aQty,Trim(TempQ.FieldByName('UNIT_QTY').AsString))
        else
          SGMed.Cells[M_Qty,SGMed.Row] := NullStrTo(aQty,Trim(TempQ.FieldByName('qty_max_dose').AsString));

      SGMed.Cells[M_Unit,SGMed.Row] := Trim(TempQ.FieldByName('UNIT_O').AsString);
      IF MEDCIRDEF = 'False' THEN//�w�]�aSTAT
      begin
        if (copy(NullStrTo(Trim(Med_code),'O'),1,1) = MEDIVCIRDEF) then
          SGMed.Cells[M_Cir,SGMed.Row] := 'STAT'
        else
          SGMed.Cells[M_Cir,SGMed.Row] := Trim(TempQ.FieldByName('CIR_CODE_O').AsString);
      end
      ELSE
       SGMed.Cells[M_Cir,SGMed.Row] := NullStrTo(aCir,Trim(TempQ.FieldByName('CIR_CODE_O').AsString));
      SGMed.Cells[M_Path,SGMed.Row] := NullStrTo(aPath,Trim(TempQ.FieldByName('PATH_CODE_O').AsString));
      SGMed.Cells[M_INS,SGMed.Row] := NullStrTo(majorselfpay,Trim(TempQ.FieldByName('INS_FLAG').AsString));
      SGMed.Cells[M_days,SGMed.Row] := NullStrTo(adays,'1');
      //iv code begin
      with DM.QrySelf do
      begin
        Close;
        SQL.Clear;                                                                //+ ' and Epd_Flag = ''E'''
        SQL.Add('select * from in_med_dtl where in_med_code =' + Qt(Trim(MED_CODE)) );
        Open;
        if not Eof then
        begin
          SGMed.Cells[M_Path, SGMed.Row] := '';//FieldByName('path_code').AsString;
          SGMed.Cells[M_Qty, SGMed.Row]  := '';//FieldByName('qty_num').AsString;
          SGMed.Cells[M_Cir, SGMed.Row]  := '';//FieldByName('cir_code').AsString;
        end;
        Close;
      end;
      //iv end
      SGMed.Cells[M_FeeUnit,SGMed.Row] := Trim(TempQ.FieldByName('fee_unit_o').AsString);
      //20151124�W�[�ī~�帹�e�{�Ƶ����
      SGMed.Cells[M_MEMO,SGMed.Row] := NullStrTo(Trim(majordesc),aMemo)+ TempQ.FieldByName('batch_no').AsString;
      SGMed.Cells[M_pkg,SGMed.Row] := Trim(TempQ.FieldByName('fee_pack_o').AsString);
      SGMed.Cells[M_ttl_qty,SGMed.Row] := CalTotal(Trim(Med_code),NullStrTo(majorselfpay,Trim(TempQ.FieldByName('INS_FLAG').AsString)),SGMed.Cells[M_CIR,SGMed.Row],StrToInt(NullStrTo(Trim(SGMed.Cells[M_PKG,SGMed.Row]),'0')),StrToInt(NullStrTo(Trim(SGMed.Cells[M_days,SGMed.Row]),'0')),StrToFloat(NullStrTo(Trim(SGMed.Cells[M_Qty,SGMed.Row]),'0')));
      //20131227�P�_���󶷽T�{
      //if (StrToFloat(NullStrTo(Trim(SGMed.Cells[M_ttl_qty,SGMed.Row]),'0')) >= (StrToFloat(NullStrTo(Trim(TempQ.FieldByName('unit_qty_limit').AsString),'0')))* StrToFloat(SGMed.Cells[M_days,SGMed.Row])) and (NullStrTo(Trim(TempQ.FieldByName('unit_qty_limit').AsString),'0')<> '0')then//�̤j�`���q
      //   SGMed.Cells[M_ttl_qty,SGMed.Row] := NullStrTo(Trim(TempQ.FieldByName('unit_qty_limit').AsString),'0');
      //20150422 JCI 20150410-A003
      SGMed.Cells[M_Hint,SGMed.Row] := fieldByName('Fee_Desc').AsString+#13+
                                       '�ܥͯ����� : '+fieldByName('ANTICONTROL_TYPE').AsString+#13+
                                       '�h�����Ĥ��� :'+fieldByName('PREG_CATE').AsString+#13+
                                       '�ǥ\��վ� :'+fieldByName('CKD_DESC').AsString+#13+
                                       '�x�\��վ�:'+TRIM(fieldByName('LIVER_DESC').AsString)+#13+
                                       '�ѤH���Ĵ���:'+TRIM(fieldByName('ELDERLY_MED').AsString);
      SGMed.Cells[M_Choose,SGMed.Row] := Trim(TempQ.FieldByName('ins_flag').AsString);//20140114�۶O�O�i�οﶵ

      SGMed.Cells[M_density,SGMed.Row] := Trim(FieldByName('density').AsString) +
                                          Trim(FieldByName('food').AsString) +
                                          Trim(FieldByName('grind').AsString) +
                                          Trim(FieldByName('fall').AsString) +
                                          Trim(FieldByName('pregnancy').AsString);//�@ �� �i �^ ��

    end;
    Close;
  end;
  Result := True;

  SGMed.RowCount:= SGMed.RowCount+1;
  key := vk_down;
  sendMessage(SGMed.Handle,wm_keydown,key,0);
  FreeAndNil(TempQ);
  FreeAndNil(TempQ2);
  PageControl2.ActivePageIndex := 2
end;

function TFrmOrder.InsertMrtl(fee_code,qty,selfpay:string): Boolean;
var
  q_str : string;
begin
  DM.QrySearch.Close;
  q_str := getPreOrderSql(13);
  q_str := q_str + ' AND Fee_CODE like '+Qt(fee_code+'%');

  dm.QrySearch.SQL.Text := q_str;
  dm.QrySearch.Open;
  if not dm.qrysearch.IsEmpty then
  begin
    if RepeatInGrid(dm.qrysearch.FieldByName('Fee_CODE').AsString,'0', 0, SGMtrl) then
    begin
      ShowMessage(dm.qrysearch.FieldByName('Fee_CODE').AsString+ #13#10 +dm.qrysearch.FieldByName('fee_name').AsString + #13#10 + '�ç��Ϋ~ ���ƶ}��');
      SGMtrl.Rows[SGMtrl.Row].Clear;
      Result := False;
    end
    else if Trim(dm.qrysearch.FieldByName('FEE_CODE').AsString) <> '' then
    begin
      SGMtrl.Cells[modifytype, SGMtrl.Row] := 'N';
      SGMtrl.Cells[3, SGMtrl.Row] := dm.qrysearch.FieldByName('fee_code').AsString; //  �O�ΥN�X
      SGMtrl.Cells[4, SGMtrl.Row] := dm.qrysearch.FieldByName('fee_name').AsString; //  �O�ΦW��
      SGMtrl.Cells[5, SGMtrl.Row] := ''; //  ���O
      if (qty = '') or (qty = '0') then
        SGMtrl.Cells[6, SGMtrl.Row] := '1' //  �ƶq
      else
        SGMtrl.Cells[6, SGMtrl.Row] := qty;
      if selfpay = '' then
        SGMtrl.Cells[L_Ins, SGMtrl.Row] := dm.qrysearch.FieldByName('ins_flag').AsString
      else
        SGMtrl.Cells[L_Ins, SGMtrl.Row] := selfpay;
      if SGMtrl.Row = (SGMtrl.RowCount - 1) then
      begin
        SGMtrl.RowCount := SGMtrl.RowCount + 1;
      end;
      SGMtrl.Row := SGMtrl.Row+1;
      Result := True;
    end
    else
    BEGIN
      SGMtrl.Rows[SGMtrl.Row].Clear;
      Result := False;
    END;
  end;
  dm.QrySearch.close;
end;

function TFrmOrder.InsertXRay(feecode,ordertpye,sefins,qty,position,sendcd2,memo,sendcd1:string): Boolean;
var
  i : Integer;
  Qrys :TADOQuery;
  tmpSql :String;
  yf :Boolean;
  //SQLs :TStrings;
  tempQuery : TADOQuery;
  myStr : String;
begin
  Result := False;
  Qrys := TAdoQuery.Create(self);
  Qrys.Connection := Dm.ADOLink;
  if feecode <> '' then
    yf := True
  else
    yf := False;
  if yf then
  begin
    tmpSql := getPreOrderSql(1);
    SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
    SetParamter(tmpSql,'$ORDER_TYPE$',qt(ordertpye));
    if trim(sendcd1) <> '' then
      tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(sendcd1);
    if trim(sendcd2) = '' then
      tmpSql:=tmpSql+#13+' And nvl(Send_CD_2,''nil'')=''nil'' '
    else
      tmpSql:=tmpSql+#13+' And Send_CD_2='+Qt(sendcd2);
    Qrys.SQL.Text:=tmpSql;
    Qrys.Open;
    if not Qrys.IsEmpty then
    begin
      if isRepeat(Trim(Qrys.fieldByName('Fee_CODE').AsString),Trim(Qrys.FieldByName('position_o').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),SGXRay) then
      begin
        if MessageDlg('��'+Trim(Qrys.fieldByName('Fee_CODE').AsString)+'('+Trim(Qrys.fieldByName('Fee_NAME').AsString)+') ��g���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
        begin
          SGXRay.Cells[C_Code,SGXRay.Rowcount -1] := '';
          SGXRay.Cells[C_Order,SGXRay.Rowcount -1] := '';
          exit;
        end;
      end;

      SGXRay.Cells[modifyType,SGXRay.Rowcount -1] := 'N';
      SGXRay.Cells[Seq,SGXRay.Rowcount -1] := '';
      SGXRay.Cells[Del,SGXRay.Rowcount -1] := '';

      SGXRay.Cells[C_Code,SGXRay.Rowcount -1]  := trim(feecode);
      SGXRay.Cells[C_Order,SGXRay.Rowcount -1] := Trim(Qrys.FieldByName('FEE_name').AsString);
      SGXRay.Cells[C_Qty,SGXRay.Rowcount -1]   := NullStrTo(qty,Trim(Qrys.FieldByName('UNIT_QTY').AsString));
      SGXRay.Cells[C_Unit,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('UNIT').AsString);
      SGXRay.Cells[C_Cir,SGXRay.Rowcount -1]   := Trim(Qrys.FieldByName('CIR_CODE').AsString);
      SGXRay.Cells[C_path,SGXRay.Rowcount -1]  := NullStrTo(position,Trim(Qrys.FieldByName('position_o').AsString));
      SGXRay.Cells[C_NO,SGXRay.Rowcount -1]    := NullStrTo(Trim(sendcd1),Trim(Qrys.FieldByName('Send_cd_1').AsString));
      SGXRay.Cells[C_INS,SGXRay.Rowcount -1]   := NullStrTo(sefins,Trim(Qrys.FieldByName('INS_FLAG').AsString));
      //110.11.04 shh ITe 11138 modify 00-04 ��g�w�]�D��@
      //SGXRay.Cells[C_EMG,SGXRay.Rowcount -1]   := 'Y';
      try
        tempQuery := TADOQuery.Create(self);
        tempQuery.ConnectionString := DM.ADOLink.ConnectionString;

        myStr := 'select case when pkutility.f_Sys_Time between ''0000'' and ''0400'' then ''N'' else ''Y'' end urg_flag from dual';
        //for test
        //myStr := 'select case when pkutility.f_Sys_Time between ''1600'' and ''1700'' then ''N'' else ''Y'' end urg_flag from dual';
        comStrRep(mystr);
        tempQuery.SQL.Add(mystr);
        tempQuery.Open;

        if (tempQuery.FieldByName('URG_FLAG').Value <> '') then
          myStr := tempQuery.FieldByName('URG_FLAG').Value;
        tempQuery.Close;

      finally
        FreeAndNil(tempQuery);
      end;
      SGXRay.Cells[C_EMG,SGXRay.Rowcount -1]   := myStr;
      //END 110.11.04 shh ITe 11138 modify 00-04 ��g�w�]�D��@

      SGXRay.Cells[C_MEMO,SGXRay.Rowcount -1]  := memo;
      SGXRay.Cells[C_Send,SGXRay.Rowcount -1]  := NullStrTo(Trim(sendcd2),Trim(Qrys.FieldByName('Send_cd_2').AsString));
      SGXRay.Cells[C_Kind,SGXRay.Rowcount -1]  := NullStrTo(ordertpye,Trim(Qrys.FieldByName('Order_Type').AsString));
      SGXRay.Cells[C_2Send,SGXRay.Rowcount -1] := NullStrTo(Trim(sendcd2),Trim(Qrys.FieldByName('Send_cd_2').AsString));
      SGXRay.RowCount := SGXRay.RowCount +1 ;
      Result := True;
    end;
  end
  else
  begin
    if OutList.Count >0then
    begin
      for i := 0 to OutList.Count-1 do
      begin
        tmpSql := getPreOrderSql(1);
        SetParamter(tmpSql,'$FEE_CODE$',qt(ReturnId(ReturnName(ReTurnName(OutList.Strings[i]))) ));
        SetParamter(tmpSql,'$ORDER_TYPE$',qt(ReTurnID(OutList.Strings[i])) );
        if ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))) ='' then
          tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))
        else
          tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))));
        if ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))) ='' then
          tmpSql:=tmpSql+#13+' And nvl(Send_CD_2,''nil'')=''nil'' '
        else
          tmpSql:=tmpSql+#13+' And Send_CD_2='+Qt(ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))));

        Qrys.SQL.Text:=tmpSql;
        Qrys.Open;
        if not Qrys.IsEmpty then
        begin
          if isRepeat(Trim(Qrys.fieldByName('Fee_CODE').AsString),Trim(Qrys.FieldByName('position_o').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),SGXRay) then
          begin
            if MessageDlg('��'+Trim(Qrys.fieldByName('Fee_CODE').AsString)+'('+Trim(Qrys.fieldByName('Fee_NAME').AsString)+') ��g���w���ƶ}�ߡI'+#10#13+'�~��}��:  Yes'+#10#13+'����:  No',mtWarning,[mbYes, mbNo],0)= mrNo then
            begin
              SGXRay.Cells[C_Code,SGXRay.Rowcount -1] := '';
              SGXRay.Cells[C_Order,SGXRay.Rowcount -1] := '';
              exit;
            end;
          end;
          //Order_type,����,�|���N�X,���ئW��,����,Sender,�y����,position';
          SGXRay.Cells[modifyType,SGXRay.Rowcount -1] := 'N';
          SGXRay.Cells[Seq,SGXRay.Rowcount -1] := '';
          SGXRay.Cells[Del,SGXRay.Rowcount -1] := '';

          SGXRay.Cells[C_Code,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('Fee_CODE').AsString);//ReturnId(ReturnName(ReTurnName(OutList.Strings[i])));
          SGXRay.Cells[C_Order,SGXRay.Rowcount -1] := Trim(Qrys.FieldByName('FEE_NAME').AsString);
          SGXRay.Cells[C_Qty,SGXRay.Rowcount -1]   := Trim(Qrys.FieldByName('UNIT_QTY').AsString);
          SGXRay.Cells[C_Unit,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('UNIT').AsString);
          SGXRay.Cells[C_Cir,SGXRay.Rowcount -1]   := Trim(Qrys.FieldByName('CIR_CODE').AsString);
          SGXRay.Cells[C_path,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('position_o').AsString);//ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReturnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))));//����position
          SGXRay.Cells[C_INS,SGXRay.Rowcount -1]   := Trim(Qrys.FieldByName('INS_FLAG').AsString);
          SGXRay.Cells[C_EMG,SGXRay.Rowcount -1]   := 'Y';
          SGXRay.Cells[C_NO,SGXRay.Rowcount -1]    := Trim(Qrys.FieldByName('SEND_CD_1').AsString);
          SGXRay.Cells[C_MEMO,SGXRay.Rowcount -1]  := '';//RETurnId(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))));
          SGXRay.Cells[C_Send,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('Send_cd_2').AsString);//ReTurnId(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReTurnName(ReturnName(OutList.Strings[i]))))))); //Send_cd_2
          SGXRay.Cells[C_Kind,SGXRay.Rowcount -1]  := Trim(Qrys.FieldByName('Order_Type').AsString);//ReTurnID(OutList.Strings[i]); //��g����   ����
          SGXRay.Cells[C_2Send,SGXRay.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_2').AsString);
          SGXRay.RowCount := SGXRay.RowCount +1 ;
          Result := True;
        end;
      end;
    end;
  end;
  Qrys.Free;
end;

function TFrmOrder.RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
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


procedure TFrmOrder.cncl_btn_lab;
var
  myBtn: TButton;
  myLabel: TLabel;
  count: integer;
begin
  for Count := FrmOrder.Panel7.ControlCount-1 downto  0 do
    if (FrmOrder.Panel7.Controls[count] is TButton) then
      if copy(FrmOrder.Panel7.Controls[count].Name,1,1) = '_' then
      begin
        myBtn := TButton(FrmOrder.Panel7.Controls[count]);
        FrmOrder.panel7.RemoveControl(myBtn);
        FrmOrder.RemoveComponent(myBtn);
      end;

end;

procedure TFrmOrder.SGMedKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  q_str : string;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (pnlHintGrid.Visible) then
    exit;
  if TStringGrid(Sender).Cells[modifytype,TStringGrid(Sender).Row] <>'' then
    Exit;
  if (TStringGrid(Sender).Col = m_name) then
  begin
    TStringGrid(Sender).Options := TStringGrid(Sender).Options +[goEditing];
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      q_str := sql_str(1);
      q_str := q_str +' And INSTR(UPPER(Fee_DESC)||UPPER(Fee_Name),'+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') > 0'+
                      ' Order by  USE_STATUS_O,Fee_code,Fee_Desc,Fee_Name';
      dm.QrySearch.SQL.Text := q_str;
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');
      IF DM.QrySearch.Eof THEN
      BEGIN
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelMed);
      END
      ELSE
      BEGIN
        SetPanel(true,pnlHintGrid);
        SetPanel(True,PanelMed);
      END;
      DBText32.Hint :=  TStringGrid(Sender).Name;
    end
    ELSE
    BEGIN
      TStringGrid(Sender).Options := TStringGrid(Sender).Options +[goEditing];
      SetPanel(False,pnlHintGrid);
      SetPanel(False,PanelMed);
    END;
  end;


  if TStringGrid(Sender).Col = M_code then
  begin

    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      q_str := sql_str(1);
      q_str := q_str + ' and INSTR(UPPER(fee_code),'+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1'+
                       ' Order by  USE_STATUS_O,Fee_code,Fee_Desc,Fee_Name';
      dm.QrySearch.SQL.Text := q_str;
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');
      IF DM.QrySearch.Eof THEN
      BEGIN
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelMed);
      END
      ELSE
      BEGIN
        SetPanel(true,pnlHintGrid);
        SetPanel(True,PanelMed);
      END;
      DBText32.Hint :=  TStringGrid(Sender).Name;
    end
    ELSE
    BEGIN
      SetPanel(False,pnlHintGrid);
      SetPanel(False,PanelMed);
    end
  END;

end;

procedure TFrmOrder.SGIcdDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  vCol,vRow : integer;
  a,b,c,d,e : string;
begin
inherited;
  if (Trim(TStringGrid(Sender).Cells[0,SourceRow])<> '') and (Trim(TStringGrid(Sender).Cells[1,SourceRow])<> '') then
  begin
    TStringGrid(Sender).MouseToCell(X, Y, vCol, vRow);
    if TStringGrid(Sender) = SGIcd10 then
    begin
      if (vRow = 1) then
      begin
        if ((UpperCase(copy(TStringGrid(Sender).cells[0,SourceRow],1,1)) = 'V') or
            (UpperCase(copy(TStringGrid(Sender).cells[0,SourceRow],1,1)) = 'W') or
            (UpperCase(copy(TStringGrid(Sender).cells[0,SourceRow],1,1)) = 'X') or
            (UpperCase(copy(TStringGrid(Sender).cells[0,SourceRow],1,1)) = 'Y')) then
        begin
          ShowMessage('���X���~�]�X���ର�D�E�_!');
          SGIcd10.Rows[SGIcd10.Row].Clear;
          exit;
        end;
      end;
    end;
    if vRow > 0 then
    begin
      //c := a
      a :=  TStringGrid(Sender).Cells[0,SourceRow];
      b :=  TStringGrid(Sender).Cells[1,SourceRow];
      c :=  TStringGrid(Sender).Cells[2,SourceRow];
      d :=  TStringGrid(Sender).Cells[3,SourceRow];
      e :=  TStringGrid(Sender).Cells[4,SourceRow];
      //a := b
      TStringGrid(Sender).Cells[0,SourceRow] := TStringGrid(Sender).cells[0,vRow];
      TStringGrid(Sender).Cells[1,SourceRow] := TStringGrid(Sender).cells[1,vRow];
      TStringGrid(Sender).Cells[2,SourceRow] := TStringGrid(Sender).cells[2,vRow];
      TStringGrid(Sender).Cells[3,SourceRow] := TStringGrid(Sender).cells[3,vRow];
      TStringGrid(Sender).Cells[4,SourceRow] := TStringGrid(Sender).cells[4,vRow];
      //b := c
      TStringGrid(Sender).Cells[0,vRow] := a;
      TStringGrid(Sender).Cells[1,vRow] := b;
      TStringGrid(Sender).Cells[2,vRow] := c;
      TStringGrid(Sender).Cells[3,vRow] := d;
      TStringGrid(Sender).Cells[4,vRow] := e;
      oldicd9 := '';
    end;
  end;
end;

procedure TFrmOrder.SGIcdDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  oCol, oRow:integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, oCol, oRow);
  Accept := (TStringGrid(Sender).Name = TStringGrid(Source).Name) and (oCol >= 0) and (oRow >= 1);
end;

procedure TFrmOrder.SGIcdDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if (TStringGrid(Sender).Name = 'SGIcd') or (TStringGrid(Sender).Name = 'SGIcd10') then
  begin
    if ARow <> 0 then
      if (ARow mod 2) = 0 then
        TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
      else
        TStringGrid(Sender).Canvas.Brush.Color := clWindow;
    if TStringGrid(Sender).Cells[3, arow] = 'Y' then
      TStringGrid(Sender).Canvas.Font.Color := clBlue;
    if TStringGrid(Sender).Cells[4, arow] = 'Y' then
      TStringGrid(Sender).Canvas.Font.Color := clGreen;
    if (TStringGrid(Sender).Cells[3, arow] = 'Y') and  (TStringGrid(Sender).Cells[4, arow] = 'Y') then
      TStringGrid(Sender).Canvas.Font.Color := clRed;
    if TStringGrid(Sender).Row = ARow then
      TStringGrid(Sender).Canvas.Font.Color := clWindowText;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

procedure TFrmOrder.SetPanel(Bview: Boolean; Sender: TObject);
begin
  try
    TPanel(sender).Visible := Bview;
  except
  end;
  if Sender is TPanel then
  begin
    if TPanel(Sender).Name = 'pnlphrase' then
    begin
      if Bview = False then
      BEGIN
        if DM.QrySearch.State in[dsBrowse] then
          DM.QrySearch.Close;
        DSphrase.DataSet := nil;
      END
      else
      begin
        pnlphrase.Left := 234;
        IF Trim(pnlphrase.Hint) = 'pkg' THEN
          pnlphrase.Top := 219
        ELSE
          pnlphrase.Top := 387;
        pnlphrase.Width := 220;
        pnlphrase.Height := 220;
        DBCphrase.Align := alClient;
        DSphrase.DataSet := DM.QrySearch;
      end;
    end;
    if TPanel(Sender).Name = 'pnlfee' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        pnlfee.Align := alClient;
        DBCFee.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSHintGrd.DataSet := DM.QrySearch;
      end;
    end
    else if  TPanel(Sender).Name = 'pnlIcd' then
    begin
      if Bview = False then
      begin
        DM.QrySearch.Close;
      end
      else
      begin
        pnlIcd.Align := alClient;
        DBCIcd.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSIcd.DataSet := DM.qryicd9;
      end;
    end
    else if  TPanel(Sender).Name = 'PnlICD10' then
    begin
      PnlICD10.Visible := Bview;
      DBCICD10.Enabled := True;
    end
    else if  TPanel(Sender).Name = 'pnlmtrl' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        pnlmtrl.Align := alClient;
        DBCMtrl.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSMtrl.DataSet := DM.QrySearch;
      end;
    end
    else if TPanel(Sender).Name = 'PanelLab' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        PanelLab.Align := alClient;
        DBCLab.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSLab.DataSet := DM.QrySearch;
      end;
    end
    else if TPanel(Sender).Name = 'PanelCHK' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        PanelCHK.Align := alClient;
        DBCCHK.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSCHK.DataSet := DM.QrySearch;
      end;
    end
    else if TPanel(Sender).Name = 'PanelRay' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        PanelRay.Align := alClient;
        DBCRay.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSRay.DataSet := DM.QrySearch;
      end;
    end
    else if TPanel(Sender).Name = 'PanelMed' then
    begin
      if Bview = False then
        DM.QrySearch.Close
      else
      begin
        PanelMed.Align := alClient;
        pnlHintGrid.Height := 165;
        pnlHintGrid.Align := alBottom;
        DSMed.DataSet := DM.QrySearch;
      end;
    end
    else if TPanel(Sender).Name = 'pnlHintGrid' then
    begin

      if Bview = False then
      begin
        if (oldicd9 <> '') and (oldicd9 <> 'N') then
          if DSIcd.DataSet <> nil then
          SGIcd.Cells[oldicda,oldicdr] := oldicd9;
        pnlfee.Visible := False;
        pnlIcd.Visible := False;
        PnlICD10.Visible := False;
        pnlmtrl.Visible := False;
        PanelLab.Visible := False;
        PanelCHK.Visible := False;
        PanelRay.Visible := False;
        PanelMed.Visible := False;
        pnlphrase.Visible := False;
        DSHintGrd.DataSet := nil;
        DSIcd.DataSet := nil;
        DSICD10.DataSet := nil;
        DSMtrl.DataSet := nil;
        DSLab.DataSet := nil;
        DSCHK.DataSet := nil;
        DSRay.DataSet := nil;
        DSMed.DataSet := nil;
        DSphrase.DataSet := nil;
      end;
    end;
  end;
end;
procedure TFrmOrder.SGIcdMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
  hest :integer;
begin
  inherited;
  if (Button in [mbRight])  then
  begin
    gid := TStringGrid(Sender).MouseCoord(x,y);
    if gid.y >= 0 then
      TStringGrid(Sender).Row := Gid.Y;
  end;

  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
    { Allow dragging only if an acceptable cell was clicked
    (cell beyond the fixed column and row) }
  if (SourceCol >= 0) and(SourceRow >= 0) then
    if pnlHintGrid.Visible then
      if DSIcd.DataSet.IsEmpty then
      begin
        if SGIcd.Cells[1,SourceRow] = '' then
          TStringGrid(Sender).Rows[SourceRow].Clear;
        SetPanel(False,pnlHintGrid);
      end;
  if (SourceCol = 0) and (SourceRow > 0) then
    if (TStringGrid(Sender).Cells[0,SourceRow]<> '') and (TStringGrid(Sender).Cells[1,SourceRow]<> '')  then
      TStringGrid(Sender).BeginDrag(False, 4);
end;


procedure TFrmOrder.SGIcdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
  i : integer;
  q_str,STR : string;
  myKeyWord: TStringList;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and ((pnlHintGrid.Visible) or (PnlICD10.Visible)) then
    exit;
  if key = VK_DELETE then
  begin
    if TStringGrid(Sender).RowCount = 1 then
      TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
    if TStringGrid(Sender).row >= 0 then
    begin
      for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
        TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
      TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
      TStringGrid(Sender).RowCount := 10;
    end;
  end
  else
  begin
    if TStringGrid(Sender).Col = 0 then
    begin
      if trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '' then
      begin
        if Sender = SGIcd then
        begin
          q_str := sql_str(2);
          if length(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])) <= 3 then
          begin
            q_str := q_str + ' AND INSTR(icd9_code, '+qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1 and rownum <= 50 order by icd9_code';
          end
          else
          begin
            if pos('.',TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) = 0  then
            begin
              q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(copy(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row],1,3)+'.'+
                                                                  copy(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row],4, +
                                                                  length(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])))))+') = 1 and rownum <= 50 order by icd9_code';

            end
            else
            begin
              q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1 and rownum <= 50 order by icd9_code';
            end;
          end;
          DM.qryicd9.Close;
          dm.qryicd9.SQL.Text := q_str;
          dm.qryicd9.Open;
          if not DM.qryicd9.IsEmpty then
          begin
            SetPanel(True,pnlHintGrid);
            SetPanel(True,pnlIcd);
          end
          else
          begin
            SetPanel(False,pnlHintGrid);
            SetPanel(False,pnlIcd);
          end;
        end
        else
        begin
          q_str := sqlstr(0);
          q_str := q_str + ' upper(icd_code) like ' +qt(UPPERCASE(TStringGrid(Sender).Cells[TStringGrid(Sender).Col, TStringGrid(Sender).Row]) + '%');
          q_str := q_str + ' and eff_flag=''Y'' and icd_system = ''C'' and rownum <= 50';
          PnlICD10.Height := 165;
          PnlICD10.Align := alBottom;
          DBCICD10.RowCount := 5;
          DM.qryICD10.SQL.Text := q_str;
          DM.qryICD10.Open;
          IF NOT DM.qryICD10.IsEmpty THEN
          begin
            DSICD10.DataSet := DM.qryICD10;
            SetPanel(True, PnlICD10);
          end
          else
            SetPanel(False, PnlICD10);
        end;
      end
    end
    else if (TStringGrid(Sender).Col = 1) or (TStringGrid(Sender).Col = 2) then // AND (key = VK_LEFT)
    begin
      if not Timer1.Enabled then
      begin
        icd9orXray := true;
        Timer1.OnTimer(Sender);
        Timer1.Enabled := True;
      end;
    end;
  end;
end;

procedure TFrmOrder.SGIcdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in [#10,#08]) then
    key := key;
end;

procedure TFrmOrder.SGIcdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_ESCAPE) then
  begin
    pnlHintGrid.Visible := false;
  end;
  Timer1.Enabled := False;
  if (pnlHintGrid.Visible) or (PnlICD10.Visible) then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        if pnlHintGrid.Visible then
          DBText1Click(self);
        if (PnlICD10.Visible) and (Sender = SGIcd10) then
          DBText41Click(self);
        key :=0;
      end;
      if pnlHintGrid.Visible then
        Sendmessage(DBCIcd.Handle,WM_KEYDOWN,key,0);
      if (PnlICD10.Visible) and (Sender = SGIcd10) then
        Sendmessage(DBCICD10.Handle, WM_KEYDOWN, key, 0);
      key :=0;
    end;
  end;
  
end;

procedure TFrmOrder.SGIcdSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  inherited;
  if ((oldicda <> ACol) or (oldicdr <> ARow)) and (oldicd9 <> 'N') and (oldicd9 <> '') then
  begin
    SGIcd.Cells[oldicda,oldicdr]:=oldicd9;
    oldicd9:= '';
  end;
  if (trim(SGIcd.Cells[0,ARow])<> '') and (trim(SGIcd.Cells[1,ARow])<> '') then
    oldicd9 := SGIcd.Cells[ACol,ARow]
  else
  begin
    SetPanel(False,pnlHintGrid);
    SetPanel(False,pnlIcd);
  end;
  oldicda := ACol;
  oldicdr := ARow;
  Case ACol of
    0,1:
    BEGIN
      if (Trim(TStringGrid(Sender).Cells[0,Arow])<>'') and (Trim(TStringGrid(Sender).Cells[1,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    END;
  end;
end;

procedure TFrmOrder.DBText1Click(Sender: TObject);
var
  i: integer;
  icd10code: string;
begin
  inherited;
  icd10code := '';
  if RepeatInGrid(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,'0', 0, SGIcd) then
  begin
    ShowMessage(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString+ #13#10 +DBCIcd.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '�e�f�N�X ����');
    SGIcd.Rows[SGIcd.Row].Clear;
  end
  else if Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString) <> '' then
  begin
    pkgdtl := true;
    IF PnlICD10.Visible THEN
       icd10code :=Trim(DSICD10.DataSet.FieldByName('ICD9_CODE').AsString);
    InsertIcd(Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString),'Y');

    pkgdtl := False;
    //ICD10�g�J
    IF trim(icd10code)<> '' THEN
      InsertIcd10(icd10code);
  end
  else
    SGIcd.Rows[SGIcd.Row].Clear;

  SetPanel(False,pnlIcd);
  SetPanel(False,pnlHintGrid);
  StringGridSort(SGICd);
end;

procedure TFrmOrder.LBMedDblClick(Sender: TObject);
begin
  inherited;
  IF LBMed.itemindex >= 0 THEN
  BEGIN
    if SGMed.Cells[EdtCir.Tag, LBMed.Tag] <> Trim(ReTurnId(LBMed.Items.Strings[LBMed.itemindex])) then
    begin
      SGMed.Cells[M_MIX, LBMed.Tag] := '';
      SGMed.Cells[M_PACK, LBMed.Tag] := '';
      SGMed.Cells[M_Spdtype, LBMed.Tag] := '';
      SGMed.Cells[M_SPEED, LBMed.Tag] := '';
      SGMed.Cells[M_SPEEDE, LBMed.Tag] := '';
      SGMed.Cells[M_Speedunit, LBMed.Tag] := '';
      SGMed.Cells[M_SpeedMCG, LBMed.Tag] := '';
      SGMed.Cells[M_SpeedMCGE, LBMed.Tag] := '';
      SGMed.Cells[M_SpeedMCGUnit, LBMed.Tag] := '';
      SGMed.Cells[M_Times, LBMed.Tag] := '';
      SGMed.Cells[M_TimesE, LBMed.Tag] := '';
      SGMed.Cells[M_TimeUnit, LBMed.Tag] := '';
      SGMed.Cells[M_Dayqty, LBMed.Tag] := '';
      SGMed.Cells[M_Dayqty_Max, LBMed.Tag] := '';
      SGMed.Cells[M_Weight, LBMed.Tag] := '';
      SGMed.Cells[M_MedPack, LBMed.Tag] := '';
      SGMed.Cells[M_AllPack, LBMed.Tag] := '';
      SGMed.Cells[M_Other, LBMed.Tag] := '';
      SGMed.Cells[M_IVSEQ, LBMed.Tag] := '';
    end;

    EdtCir.Text := Trim(ReTurnId(LBMed.Items.Strings[LBMed.itemindex]));
    LBmed.Visible := False;
    SGMed.Cells[EdtCir.Tag,LBMed.Tag]:= EdtCir.Text;
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('SELECT CIR_CODE,QTY_NUM FROM IN_MED_DTL WHERE Trim(IN_MED_CODE)=' + Qt(Trim(SGMed.Cells[M_CODE, LBMed.Tag])) + ' and Upper(PATH_CODE)=' + Qt(UpperCase(Trim(SGMed.Cells[M_PATH, LBMed.Tag]))));
    DM.QryTemp.Open;
    if not DM.QryTemp.Eof then
    begin
      if Trim(SGMed.Cells[M_Qty, LBMed.Tag]) = '' then
        SGMed.Cells[M_Qty, LBMed.Tag] := DM.QryTemp.FieldbyName('Qty_num').AsString;
      if Trim(SGMed.Cells[M_Cir, LBMed.Tag]) = '' then
        SGMed.Cells[M_Cir, LBMed.Tag] := DM.QryTemp.FieldbyName('Cir_code').AsString;
    end;

    IF EdtCir.Tag <> M_path THEN
    begin
      SGMed.Cells[M_ttl_qty,LBMed.Tag] := CalTotal(SGMed.Cells[M_code,LBMed.Tag],SGMed.Cells[M_ins,LBMed.Tag],SGMed.Cells[M_CIR,LBMed.Tag],StrToInt(NullStrTo(Trim(SGMed.Cells[M_PKG,LBMed.Tag]),'0')),StrToInt(NullStrTo(Trim(SGMed.Cells[M_days,LBMed.Tag]),'0')),StrToFloat(NullStrTo(Trim(SGMed.Cells[M_Qty,LBMed.Tag]),'0')));
    end;
    EdtCir.Text := '';
    EdtCir.Visible := False;
    //SGMed.SetFocus;
  END;
  LBmed.Visible := False;
  EdtCir.Visible := False;

  if ((Uppercase(Trim(SGMed.Cells[M_PATH, LBMed.Tag])) = 'IVD') or (Uppercase(Trim(SGMed.Cells[M_PATH, LBMed.Tag])) = 'CIVD') or (Uppercase(Trim(SGMed.Cells[M_PATH, LBMed.Tag])) = 'IV')) then
    CheckIV(LBMed.Tag);
end;

procedure TFrmOrder.EdtCirChange(Sender: TObject);
begin
  inherited;
  LbMed.ItemIndex := -1;
  With LbMed Do
    itemindex := Perform( LB_FINDSTRING, ItemIndex,Longint(PChar(Tedit(Sender).Text)));
end;

procedure TFrmOrder.EdtCirExit(Sender: TObject);
begin
  inherited;
  if FrmOrder.ActiveControl <> TWincontrol(LBMed) then
  begin
    LBMedDblClick(self);
  end
end;

procedure TFrmOrder.EdtCirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i  : Integer;
  akey : word;
begin
  inherited;
  if key = VK_ESCAPE then
  begin
    LBmed.Visible := False;
    EdtCir.Visible := False;
    SGMed.SetFocus;
  end;
  if key in [vk_up,vk_down,vk_return] then
  begin
    if Key = vk_return then
    begin
      i := LBMed.ItemIndex;
      try
        SetCbbitem(LBMed,UPPERCASE(EdtCir.Text));
        if LBMed.ItemIndex = -1 then
          LBMed.ItemIndex := i;
      except
        LBMed.ItemIndex := i;
      end;
      LBMedDblClick(self);
      key :=0;
    end;
    Sendmessage(LBMed.Handle,WM_KEYDOWN,key,0);
    key :=0;
  end;
end;

procedure TFrmOrder.EdtOrderEditExit(Sender: TObject);
VAR
  MSG : TStringGrid;
  INJECTIONSTR: STRING;
  dy : Integer;
begin
  inherited;
  dy := 0;
  MSG := TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint));

  try
    MSG.Cells[TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Col,TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Row] := ReturnID(TComBoBox(Sender).Text);
    IF (MSG.Name ='SGMed') THEN
    BEGIN  //�p���`�q
      IF MSG.Col <> M_ttl_qty THEN
      begin
        if TryStrToInt(NullStrTo(Trim(MSG.Cells[M_days,MSG.Row]),'0'),dy) then
        begin
        MSG.Cells[M_ttl_qty,MSG.Row] :=
          CalTotal(Trim(MSG.Cells[M_code,MSG.Row]),
                   Trim(MSG.Cells[M_ins,MSG.Row]),
                   Trim(MSG.Cells[M_Cir,MSG.Row]),
                   StrToInt(NullStrTo(Trim(MSG.Cells[M_pkg,MSG.Row]),'0')),
                   StrToInt(NullStrTo(Trim(MSG.Cells[M_days,MSG.Row]),'0')),
                   StrToFloat(NullStrTo(Trim(MSG.Cells[M_Qty,MSG.Row]),'0')) );
        end
        else
        begin
          ShowMessage('�Ѽƽп�J���');
        end;
      end;
    END;
    TComBoBox(Sender).Hide;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Refresh;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).SetFocus;
    TComBoBox(Sender).Text := '';
  except
  end;

end;

procedure TFrmOrder.EdtOrderEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key in [vk_up,vk_down] then
  begin
    EdtOrderEditExit(sender);
    SendMessage(sgmed.Handle,WM_keyDown,key,0);
  end;
end;

procedure TFrmOrder.EdtOrderEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  caSel : Boolean;
  INJECTIONSTR:STRING;
begin
  inherited;

  if Key in [vk_up,vk_down] then
  begin
    SGMedSelectCell(sgmed,sgmed.Col,sgmed.Row,caSel);
    SendMessage(Tedit(Sender).Handle, EM_SETSEL, 0, -1);
  end;
end;

procedure TFrmOrder.CbbOrderYNClick(Sender: TObject);
begin
  inherited;
  try
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Cells[TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Col,TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Row] := ReturnID(TComBoBox(Sender).Text);
    TComBoBox(Sender).Hide;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Refresh;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).SetFocus;
    TComBoBox(Sender).Text := '';
  except
  end;
end;

procedure TFrmOrder.CbbOrderYNExit(Sender: TObject);
begin
  inherited;
  try
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Cells[TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Col,TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Row] := ReturnID(TComBoBox(Sender).Text);
    TComBoBox(Sender).Hide;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).Refresh;
    TStringGrid(FrmOrder.FindComponent(TComBoBox(Sender).Hint)).SetFocus;
    TComBoBox(Sender).Text := '';
  except
  end;
end;

procedure TFrmOrder.SetListWidth1(Sender: TObject; cols: Integer);
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


procedure TFrmOrder.SGMedSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
  Path :string;
  dy : integer;
begin
  inherited;
  IF Trim(TStringGrid(Sender).Cells[M_Code,Arow])<> '' THEN
    TStringGrid(Sender).Options :=  TStringGrid(Sender).Options -[goEditing] ;
  if (Trim(TStringGrid(Sender).Cells[DEL,Arow])='X')  then
    Exit;
  if Trim(TStringGrid(Sender).Cells[modifytype,Arow]) ='O' then
    exit;
  if not TWinControl(Sender).Focused then
    Exit;
  if (NullStrTo(Trim(TStringGrid(Sender).Cells[M_Code,Arow]),Trim(TStringGrid(Sender).Cells[M_Name,Arow])) ='') and ((ACol <> M_code) and (ACol <> M_name))then
    Exit;
  Case ACol of
    M_Name,M_Code :
    begin
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,Arow],'N')<> 'N' then
      begin
        SetPanel(False,PanelMed);
        exit;
      end;
      if (TStringGrid(Sender).Cells[modifyType,Arow] ='N') and (Trim(TStringGrid(Sender).Cells[M_CODE,Arow])<>'') then
        begin
          SetPanel(False,PanelMed);
          TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
          Exit;
        end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    end;
    M_Cir :
    begin
      if Trim(TStringGrid(Sender).Cells[modifytype,Arow]) ='' then
        Exit;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdtCir.Tag := M_Cir;
      LBmed.Tag := ARow;
      EdtCir.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      EdtCir.Show;
      EdtCir.BringTofront;
      EdtCir.Text := Trim(TStringGrid(Sender).cells[Acol,Arow]);
      LBmed.Items.Text := gsCir.Text;
      SetListWidth1(LBMed,3);
      if (MyRec.Bottom +EdtCir.Height) <=(ceil(TStringGrid(Sender).Height/3)*2) then
        LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30) ,MyRec.Bottom +EdtCir.Height + 30 ,LBMed.Width,TStringGrid(Sender).Height-(MyRec.Bottom +EdtCir.Height))
      else
        LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30),25  ,LBMed.Width    ,MyRec.Top-2);
      LBMed.Visible := True;
      try
        LBMed.ItemIndex := LBMed.Items.IndexOf(EdtCir.Text);
      except
      end ;
      EdtCir.SetFocus;
    end;  //end of Cir

    M_path :
    begin
      if TStringGrid(Sender).Cells[modifytype,Arow] = '' then
        Exit;
      if TStringGrid(Sender).Cells[M_PARENTCODE,Arow] <> '' then
        Exit;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdtCir.Tag := M_path;
      LBmed.Tag := ARow;
      EdtCir.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      EdtCir.Show;
      EdtCir.BringTofront;
      EdtCir.Text := Trim(TStringGrid(Sender).cells[Acol,Arow]);
      LBmed.Items.Clear;
      with Dm.QryTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select A.PATH_CODE,PATH_DESC from IN_MED_DTL A,PATH_BASIC B WHERE IN_MED_CODE = ' + Qt(Trim(TStringGrid(Sender).cells[M_CODE, Arow])) + ' AND A.PATH_CODE=B.PATH_CODE GROUP BY A.PATH_CODE,B.PATH_DESC ORDER BY 1');
        open;

        if not Eof then
        begin
          Height := 0;
          while not Eof do
          begin

            LBmed.Items.Add(Trim(FieldByName('Path_code').AsString) + '_' + Trim(FieldByName('PATH_DESC').AsString));
            Height := Height + 25;
            Next;
          end;
          SetListWidth1(LBMed,2);
          if (MyRec.Bottom +EdtCir.Height) <=(ceil(TStringGrid(Sender).Height/3)*2) then
            LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30) ,MyRec.Bottom + EdtCir.Height + 30 ,LBMed.Width, TStringGrid(Sender).Height-(MyRec.Bottom +EdtCir.Height))

          else
            LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30),25  ,LBMed.Width  ,MyRec.Top-2);
        end
        else
        begin
          LBmed.Items.Text := gsPath.Text;
          SetListWidth1(LBMed,2);
          if (MyRec.Bottom +EdtCir.Height) <=(ceil(TStringGrid(Sender).Height/3)*2) then
            LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30) ,MyRec.Bottom +EdtCir.Height + 30 ,LBMed.Width, TStringGrid(Sender).Height-(MyRec.Bottom +EdtCir.Height))
          else
            LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30),25  ,LBMed.Width  ,MyRec.Top-2);
        end;

        LBMed.Visible := True;
        try
          LBMed.ItemIndex := LBMed.Items.IndexOf(EdtCir.Text);
        except
        end ;
      end;
      EdtCir.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    end;
    M_Unit :
    begin
      if (Trim(TStringGrid(Sender).Cells[M_CODE,Arow]) <>'OM' ) then
        Exit
      else
      begin
        if TStringGrid(Sender).Cells[modifytype,Arow] ='' then
          Exit;
        TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
        MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
        Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
        EdtCir.Tag := M_Unit;
        LBmed.Tag := ARow;
        EdtCir.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
        EdtCir.Show;
        EdtCir.BringTofront;
        EdtCir.Text := Trim(TStringGrid(Sender).cells[Acol,Arow]);
        LBmed.Items.Text := gsUnitDesc.Text;
        SetListWidth1(LBMed,2);
        if (MyRec.Bottom +EdtCir.Height) <=(ceil(TStringGrid(Sender).Height/3)*2) then
          LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30) ,MyRec.Bottom +EdtCir.Height + 30 ,LBMed.Width,  TStringGrid(Sender).Height-(MyRec.Bottom +EdtCir.Height))
        else
          LBMed.SetBounds(min(EdtCir.Left,Screen.ActiveForm.Width-LBMed.Width-30),25  ,LBMed.Width  ,MyRec.Top-2);
        LBMed.Visible := True;
        try
          LBMed.ItemIndex := LBMed.Items.IndexOf(EdtCir.Text);
        except
        end ;
        EdtCir.SetFocus;
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
      end;
    end;

    M_Qty,M_days,M_ttl_qty :
    begin
      if  Trim(TStringGrid(Sender).Cells[modifytype,Arow]) = 'O' then
        Exit;
      if (Trim(TStringGrid(Sender).Cells[M_CODE,Arow]) = '' ) or (Trim(TStringGrid(Sender).Cells[M_name,Arow])='') then
        Exit;

      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      if (Trim(SGmed.Cells[M_MIX, Arow]) <> '') and (ACol <>M_ttl_qty) then//�Цb���[�J and (ACol <>M_ttl_qty)
      begin
        CheckIV(Arow);
      end
      else
      begin
        EdtOrderEdit.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
        EdtOrderEdit.Text := TStringGrid(Sender).cells[Acol,Arow];
        EdtOrderEdit.SelectAll;
        EdtOrderEdit.Show;
        EdtOrderEdit.BringTofront;
        EdtOrderEdit.SetFocus;
      end;
    end;

    M_Memo:
    begin
      if (Trim(TStringGrid(Sender).Cells[M_CODE,Arow]) = '' ) or (Trim(TStringGrid(Sender).Cells[M_name,Arow])='') then
        Exit;
      if not IVPanel.Visible then
      begin
        if ((UpperCase(Trim(TStringGrid(Sender).Cells[M_PATH, Arow])) = 'IVD') or (UpperCase(Trim(TStringGrid(Sender).Cells[M_PATH, Arow])) = 'CIVD') or (UpperCase(Trim(SGOrder.Cells[M_PATH, Arow])) = 'IV')) then
        begin
          //if Trim(SGOrder.Cells[M_PARENTCODE, Arow]) = '' then
            CheckIV(Arow);
        end
        else
        begin
          if not Assigned(Frmshift_note) then
            Frmshift_note := TFrmshift_note.Create(Self);
          Frmshift_note.RichEdit1.Lines.Text := Trim(TStringGrid(Sender).Cells[m_memo,Arow]);//Trim(EdtOrderEdit.Text);
          Frmshift_note.note_kind := TStringGrid(Sender).name;
          Frmshift_note.ShowModal;
          TStringGrid(Sender).Cells[m_memo,ARow] := trim(Frmshift_note.RichEdit1.Lines.Text);
        end;
      end;
    end;


    M_Ins:
    begin
      if TStringGrid(Sender).Cells[modifytype,Arow] ='O' then
        Exit;
      if IVPanel.Visible then
        Exit;
      //N_�۶O,Y_���O,G_��(�t),H_��(�t)
      IF UpperCase(ins_ctrl) = 'TRUE' THEN
        if trim(TStringGrid(Sender).Cells[M_Choose,Arow])= 'Y' then
        begin
          CbbOrderYN.Clear;
          CbbOrderYN.Items.Add('N_�۶O');
          CbbOrderYN.Items.Add('Y_���O');
          CbbOrderYN.Items.Add('G_��(�t)');
          CbbOrderYN.Items.Add('H_��(�t)');
        end
        else
        begin
          CbbOrderYN.Clear;
          CbbOrderYN.Items.Add('N_�۶O');
          CbbOrderYN.Items.Add('H_��(�t)');
        end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CbbOrderYN.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      CbbOrderYN.Show;
      CbbOrderYN.BringTofront;
      CbbOrderYN.Text := TStringGrid(Sender).cells[Acol,Arow];
      CbbOrderYN.SetFocus;
    end;
    M_density:
    begin
      //���Ĵ��ܳs���u�W�Ĩ�
      if Trim(TStringGrid(Sender).Cells[M_density, ARow]) <> '' then
        if SetSys.ReadString('OTHERSYSTEMLINK','�u�W�Ĩ�','') <> '' then
        begin
          Path := SetSys.ReadString('OTHERSYSTEMLINK','�u�W�Ĩ�','');
          SetParamter(Path,'$+MEDNAME+$',Copy(Trim(TStringGrid(Sender).Cells[M_Name, ARow]),1,length(Trim(TStringGrid(Sender).Cells[M_Name, ARow]))));
          SetParamter(Path,'$+FEECODE+$',Copy(Trim(TStringGrid(Sender).Cells[M_Code, ARow]),1,length(Trim(TStringGrid(Sender).Cells[M_Code, ARow]))));
          ShellExecute(Handle, 'open',PChar(Path),nil,nil,SW_SHOWNORMAL);
        end;
    end;
  end;
end;

procedure TFrmOrder.SGMedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (key = VK_ESCAPE) then
  begin
    pnlHintGrid.Visible := false;
  end;

  if pnlHintGrid.Visible then
  begin
    if Key = vk_return then
    begin
      DBText32DblClick(DBText32);
      key :=0;
    end;
    if key in [vk_up,vk_down] then
    begin
      Sendmessage(DBCGMed.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.DBText32DblClick(Sender: TObject);
var
  tmpGrd : TStringGrid;
  med_code : string;
begin
  inherited;
  tmpGrd := TStringGrid(FrmOrder.FindComponent(DBText32.Hint));
  med_code := Trim(DBCGMed.DataSource.DataSet.FieldByName('FEE_CODE').AsString);
  if InsertMed(med_code)  then
  begin
    SetPanel(False,PanelMed);
    SetPanel(False,pnlHintGrid);
    DBText32.Hint := '';
    tmpGrd.Row := tmpGrd.Row+1;
  end;
  //
  SetPanel(False,PanelMed);
  SetPanel(False,pnlHintGrid);
  DBText32.Hint := '';
  //�ī~�s�a�l��
  InsertChild(Med_code,tmpGrd.Row-1);
end;

procedure TFrmOrder.SGMedEnter(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  if PnlICD10.Visible then
    SetPanel(False,PnlICD10);
end;

procedure TFrmOrder.SGMedDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  ins, mycode: integer;
begin
  inherited;
   case PageControl2.ActivePageIndex of
    2: mycode := M_Code;
    6: mycode := F_code;
    3,4,5: mycode := C_Code;
    8: mycode := O_Name;
  end;
  if TStringGrid(Sender).Cells[modifyType,ARow]='O' then
    TStringGrid(Sender).Canvas.Brush.Color :=$00E0E0BA
  else
  begin
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  end;
  TStringGrid(Sender).Canvas.Font.Color :=  ClBLACK;
  
  IF copy(TStringGrid(Sender).Name,1,5)='SGMed' then
  begin
   SpecMedCheck(trim(TStringGrid(Sender).Cells[M_Code,ARow]));
   SpecMedbgCheck(trim(TStringGrid(Sender).Cells[M_Code,ARow]));
  end;
  
  if TStringGrid(Sender).Cells[Del,ARow] = 'X' then
    TStringGrid(Sender).Canvas.Font.Color :=  Clred;
  if m_qty <> 5 then  //1061020 SHH ITE 11138 �٤����D������B�mQTY�|��n  ���ư�
  begin
    if (StrToFloat(NullStrTo(Trim(TStringGrid(Sender).Cells[M_Qty,ARow]),'1')) < 1) and (ACol= m_qty) then
      TStringGrid(Sender).Canvas.Font.Style := [fsBold,fsItalic];
  end;

  TStringGrid(Sender).Canvas.FillRect(Rect);

  IF copy(TStringGrid(Sender).Name,1,5)='SGMed' then
  begin
    ins := 12;
    if (ACol = M_outmed) and (Trim(TStringGrid(Sender).Cells[M_Code,Arow])<> '') then
    begin
     with TStringGrid(Sender).Canvas do
      begin
        brush.Color:=clWindow;
        FillRect(Rect);
        if TStringGrid(Sender).Cells[ACol,ARow]='99' then
          Draw( (rect.right + rect.left - FCheck.width) div 2, (rect.bottom + rect.top - FCheck.height) div 2, FCheck )
        else
          Draw( (rect.right + rect.left - FCheck.width) div 2, (rect.bottom + rect.top - FCheck.height) div 2, FNoCheck );
      end;
    end;
  end
  else if ((TStringGrid(Sender).Name ='SGFee') or (TStringGrid(Sender).Name ='SGMtrl')) then
    ins := 7
  else
    ins := 9;



  if ACol = del then
  begin
    if (TStringGrid(Sender).Cells[del,aRow] ='X') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, 'X')
    else if (TStringGrid(Sender).Cells[mycode,aRow] <>'') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, inttostr(Arow+1));
  end
  else if ACol <> ins then
  begin
    if (ACol <> M_outmed) then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left +2, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
  end
  else
  begin
    if TStringGrid(Sender).Cells[mycode,ARow] ='' then
       TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'Y') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '��')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'N') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '��')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'H') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '��(�t)')
    else if (TStringGrid(Sender).Cells[ACol,ARow] = 'G') then
      TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1 , Rect.Top + 1, '��(�t)');
  end;

end;

function TFrmOrder.ckvscode():boolean;
var
  emgdoc : string;
begin
  emgdoc := '';
  Result := False;
  emgdoc := SetSys.ReadString('SYSTEM','EMGDOC','');
  if emgdoc = 'True' then
    if cbbvscode.ItemIndex = -1 then
    begin
      ShowMessage('�п�J�D�v��v���N�X');
      Exit;
    end;
  if (trim(cbbvscode.Text)= '��J�b���ο��') or (trim(cbbvscode.Text)= '') then
  begin
    ShowMessage('�п�J�D�v��v���N�X');
    Exit;
  end
  else
  begin
    //���ҿ�J�D�v��v�X
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select * from user_basic where user_id='+Qt(ReturnId(cbbvscode.Text))+' and use_flag=''Y''');
    DM.QryTemp.Open;
    if DM.QryTemp.IsEmpty then
    begin
      ShowMessage('�D�v��v�N�X��J���~�нT�{');
      Exit;
    end
    else
    begin
      //�K�X�T�{�e��
      setvscode(ReturnId(cbbvscode.Text));
      if not assigned(Frmuserpsw) then
        Frmuserpsw := TFrmuserpsw.Create(Self);
      Frmuserpsw.ShowModal;
      if Frmuserpsw.cncl_flag then
      begin
        FreeAndNil(Frmuserpsw);
        Exit;
      end
      else
      begin
        FreeAndNil(Frmuserpsw);
        Result := true;
      end;
    end;
    DM.QryTemp.Close;
  end;
end;

function TFrmOrder.ckvscode3():boolean;
var
  emgdoc : string;
begin
  //108.10.23 shh ITe add check �Ұʭ��g  �w�����
  emgdoc := '';
  Result := False;
  {emgdoc := SetSys.ReadString('SYSTEM','EMGDOC','');
  if emgdoc = 'True' then
    if cbbvscode.ItemIndex = -1 then
    begin
      ShowMessage('�п�J�D�v��v���N�X');
      Exit;
    end;
  }
  if (trim(cbbvscode.Text)= '��J�b���ο��') or (trim(cbbvscode.Text)= '') then
  begin
    ShowMessage('�п�J�D�v��v���N�X');
    Exit;
  end
  else
  begin
    //���ҿ�J�D�v��v�X
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select * from user_basic where user_id='+Qt(ReturnId(cbbvscode.Text))+' and use_flag=''Y''');
    DM.QryTemp.Open;
    if DM.QryTemp.IsEmpty then
    begin
      ShowMessage('�D�v��v�N�X��J���~�нT�{');
      Exit;
    end
    else
    begin
      //�K�X�T�{�e��
      setvscode(ReturnId(cbbvscode.Text));
      if not assigned(Frmuserpsw) then
        Frmuserpsw := TFrmuserpsw.Create(Self);
      Frmuserpsw.ShowModal;
      if Frmuserpsw.cncl_flag then
      begin
        FreeAndNil(Frmuserpsw);
        Exit;
      end
      else
      begin
        FreeAndNil(Frmuserpsw);
        Result := true;
      end;
    end;
    DM.QryTemp.Close;
  end;
end;

function TFrmOrder.ckvscode2():boolean;
var
  emgdoc : string;
begin
  emgdoc := '';
  Result := False;
  emgdoc := SetSys.ReadString('SYSTEM','EMGDOC','');
  if emgdoc = 'True' then
    if cbbvscode.ItemIndex = -1 then
    begin
      ShowMessage('�п�J�D�v��v���N�X');
      Exit;
    end;
  if (trim(cbbvscode.Text)= '��J�b���ο��') or (trim(cbbvscode.Text)= '') then
  begin
    ShowMessage('�п�J�D�v��v���N�X');
    Exit;
  end;
  Result := True;
end;

procedure TFrmOrder.BtnTempSaveClick(Sender: TObject);
var
  messg,myStr,tramssg,SQLSTRSAVE:string;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter, ag, q_strt, feenotemp : STRING;
  Handle : THandle;
  i,stats : Integer;
  moths: Double;
  OpenTransfer : string;
  li_cause : Integer;
begin
  inherited;
  if ComboBox1.ItemIndex = -1 then
    ComboBox1.ItemIndex := 0;
  SetPrtcnt(IntToStr(ComboBox1.ItemIndex+1));
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  stats      := 0;
  Edit1.Text := '';
  mystr      := '';
  messg      := '';
  myParamter := '';
  feenotemp  := '';
  moths      := -999;
  if rdonly then
  begin
    ShowMessage('���f�H����w�Ѩ�L��v�}�Ҥ��A�ثe�Ȧ��s���\��');
    exit;
  end;
  stats := 1;
  try
    if checkdata(messg) then
    begin
      if trim(messg) <> '' then
        ShowMessage(messg);

      BtnTempSave.Enabled := False;
      btnSave.Enabled     := False;
      //jci�k�h����20160426-A001
      if UpperCase(Setsys.ReadString('SYSTEM','PAINSCORE','')) = 'TRUE' THEN
      BEGIN
        //�@�z�k�h����
        IF Trim(SGtriage.Cells[27,1])= '' THEN
        BEGIN
          q_strt := sql_str(26);//�O�_���k�h�������
          SetParamter(q_strt,'$OPD_DATE$',qt(GetEpdDate));
          SetParamter(q_strt,'$FEE_NO$',qt(GetFeeNo));
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          DM.QryTemp.SQL.Text := q_strt;
          sql_Waiting_log('�O�_���k�h�������',q_strt);
          DM.QryTemp.Open;
          sql_Waiting_log('close�O�_���k�h�������','');
          if DM.QryTemp.IsEmpty then
            N38Click(BtnTempSave);
        END;
      END;
      //�̷Ӧ~�ָ��X�魫��s�n�D
      stats := 7;
      q_strt := getChkSqlStr(2);//�O�_���魫���
      SetParamter(q_strt,'$CHR_NO$',qt(GetChrNo));
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Text := q_strt;
      sql_Waiting_log('�P�_�_���魫���',q_strt);
      DM.QryTemp.Open;
      sql_Waiting_log('close�P�_�_���魫���','');
      if not DM.QryTemp.IsEmpty then
      begin
        moths := DM.QryTemp.fieldbyname('aa').AsFloat;
        feenotemp := DM.QryTemp.fieldbyname('fee_no').AsString;
      end;
      if feenotemp <> GetFeeNo then
      begin
        ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear);
        if not assigned(FrmPatInf) then
          FrmPatInf := TFrmPatInf.Create(self);
        FrmPatInf.SOURCE_KIND := 'E';
        FrmPatInf.SOUR_AP := 'ERL';
        try
          if StrToFloat(trim(ag)) < 3 then //�C���ݶE����
          begin
            FrmPatInf.ShowModal;//showme ��J�e��
          end
          else if (StrToFloat(trim(ag)) >= 3) and (StrToFloat(trim(ag)) < 12) then//�C�T�Ӥ���@��
          begin
            if moths <= 3 then
              FrmPatInf.ShowModal;
          end
          else
          begin//�C���Ӥ���@��
            if StrToFloat(trim(ag)) < 19 then
              if (moths >= 6) or (moths = -999) then
                FrmPatInf.ShowModal;
          end;

        except
          if assigned(FrmPatInf) then
            FreeAndNil(FrmPatInf);
        end;
        FreeAndNil(FrmPatInf);
      end;

      //�T�{�D�v��v
      if not ckvscode then
      begin
        BtnTempSave.Enabled := True;
        btnSave.Enabled := True;
        exit;
      end;

      //�^�E�k�s
      times_log('FOUR_HOURS','',getUserId,'');

      //110.05.18 shh ITe ��~�o�ĵ��O
      if DM.ADOLink.InTransaction then
      DM.ADOLink.BeginTrans;
      DM.ADOLink.BeginTrans;

      Try
        With DM.QryInsert do
        begin
          Close;
          SQL.Clear;

        if CheckBox2.Checked then
          begin
            SQL.Text := 'INSERT INTO er_outdoor_bag ';
            SQL.Add( ' (fee_no) VALUES(' );
            SQL.Add( Qt(getFeeNo) + ' ) ' );
          end
          else
          begin
            SQL.Text := 'DELETE er_outdoor_bag where';
            SQL.Add( ' fee_no = ' + Qt(getFeeNo));
          end;

          execsql;
        end;

        DM.ADOLink.CommitTrans;
      except
        DM.ADOLink.RollbackTrans;
      end;
      //END ��~�o�ĵ��O

      if TBitBtn(Sender).Name = BtnTempSave.Name then 
      begin

      end
      else
      begin
        //���E��J�����ˮ�
        tramssg := '';

        //�˶˯żƽT�{1030220�T�|��E�|ĳ�q�L
        stats := 8;
        if not assigned(FrmEMGLeve) then
          FrmEMGLeve := TFrmEMGLeve.Create(Self);
        FrmEMGLeve.leveconut := CBtriage.ItemIndex;
        FrmEMGLeve.ShowModal;
        CBtriage.ItemIndex := FrmEMGLeve.leveconut;


        //111.02.21 shh ITe �̯żƼg�J��e���Ť�r����
        //�^�ǯż�index�q0�}�l
        if CBtriage.ItemIndex < 4 then   //4�ťH�W�~�n�g��e����
        begin
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          mystr := 'SELECT Order_Text FROM Order_Grp_Text WHERE Dept_Code = ''86'' AND Order_Type = ''R'' AND Group_Code = $TRANS_LEVEL$ ORDER BY Seq_No';

          if CBtriage.ItemIndex = 0 then   //1��
            SetParamter(mystr,'$TRANS_LEVEL$',qt('transDDD'))
          else if CBtriage.ItemIndex = 1 then   //2��
            SetParamter(mystr,'$TRANS_LEVEL$',qt('transEEE'))
          else   //3.4��
            SetParamter(mystr,'$TRANS_LEVEL$',qt('transSSS'));

          DM.QryTemp.SQL.Add(mystr);

          sql_Waiting_log('epd_record',DM.QryTemp.SQL.Text);
          DM.QryTemp.Open;
          sql_Waiting_log('close epd_record','');
          while not DM.QryTemp.Eof do
          begin
            if trim(DM.QryTemp.FieldByName('Order_Text').AsString) <> '' then
              insertordertxt('',trim(DM.QryTemp.FieldByName('Order_Text').AsString));
              DM.QryTemp.Next;
          end;
        end;

        //��E�ݧɱw����J�f�Юɿ�J
        if chckipdroom(GetFeeNo) then//���ݧɪ�
        begin
          stats := 9;
          try
            //1061013 shh ITe 11138 modify �s�W�����W�ߪ�
            OpenTransfer := UpperCase(SetSys.ReadString('SYSTEM','TRANSFERSELF',''));
            if UpperCase(OpenTransfer) ='TRUE' then
            begin
              myStr :=Setsys.ReadString('OTHERSYSTEMLINK','�����ɳ�','');
              myParamter := Setsys.ReadString('PARAMTER','�����ɳ�','');
              comStrRep(mystr);
              comstrRep(myParamter);
              if myStr <>'' then
              begin
                try
                  WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
                except
                  Exit;
                end;
              end;
            end
            else
            begin
            //��{���}�l
              //��Z��
              if not Assigned(FrmTransfernote) then
                FrmTransfernote := TFrmTransfernote.Create(Self);
              FrmTransfernote.Lblage.Caption := Trim(edtAge.Text);
              FrmTransfernote.infrom := '';//��|�w��
              FOR I := 1 TO 10 DO
              BEGIN
                IF (TRIM(SGIcd10.Cells[0,I]) <> '') AND (TRIM(SGIcd10.Cells[1,I]) <> '') THEN
                  FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + TRIM(SGIcd10.Cells[0,I])+'_'+ TRIM(SGIcd10.Cells[1,I])+';';
              END;

              //Assessment
              DM.QryTemp.Close;
              DM.QryTemp.SQL.Clear;
              DM.QryTemp.SQL.Add('select text from epd_record where fee_no = '+qt(GetFeeNo)+' and kind=''O_HISTORY'' and order_date='+qt(GetEpdDate)+' order by seq_no');
              sql_Waiting_log('epd_record',DM.QryTemp.SQL.Text);
              DM.QryTemp.Open;
              sql_Waiting_log('close epd_record','');
              while not DM.QryTemp.Eof do
              begin
                if trim(DM.QryTemp.FieldByName('text').AsString) <> '' then
                  FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString));
                DM.QryTemp.Next;
              end;
              for i := 0 to rheHist.Lines.Count-1 do
              begin
                if trim(rheHist.Lines.Strings[i])<> '' then
                  FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+ rheHist.Lines.Strings[i];
              end;

              FrmTransfernote.ShowModal;
              FreeAndNil(FrmTransfernote);
              //��{������
            end;
            //END �s�W�����W�ߪ�
          except
          end;
        end;

        //108.11.06 shh ITe ICD�~���ˮ֬O�_��J�~�]�X
        //�Ĥ@�D�E�_���~�˽X
        //���E�_2~5�����~�]�X

        if ((copy(TRIM(SGIcd10.Cells[0,1]),1,1) = 'S') or
            (copy(TRIM(SGIcd10.Cells[0,1]),1,1) = 'T')) and
           not ((copy(TRIM(SGIcd10.Cells[0,1]),1,3) >= 'T15') and (copy(TRIM(SGIcd10.Cells[0,1]),1,3) <= 'T19')) and
           not ((copy(TRIM(SGIcd10.Cells[0,1]),1,3) >= 'T36') and (copy(TRIM(SGIcd10.Cells[0,1]),1,3) <= 'T65')) and
           not ((copy(TRIM(SGIcd10.Cells[0,1]),1,3) >= 'T67') and (copy(TRIM(SGIcd10.Cells[0,1]),1,3) <= 'T78')) and
           not ((copy(TRIM(SGIcd10.Cells[0,1]),1,3) >= 'T82') and (copy(TRIM(SGIcd10.Cells[0,1]),1,3) <= 'T87')) and
           not (copy(TRIM(SGIcd10.Cells[0,1]),1,3) = 'T88') THEN
        BEGIN
          li_cause := 0;
          FOR I := 2 TO 5 DO
          BEGIN
            IF ((copy(TRIM(SGIcd10.Cells[0,i]),1,3) >= 'V00') and (copy(TRIM(SGIcd10.Cells[0,i]),1,3) <= 'Y99')) THEN
              li_cause := 1;
          END;

          if li_cause = 0 then
          begin
            ShowMessage('���f�H�]�D�E�_���~�ˬ����E�_�i' + TRIM(SGIcd10.Cells[0,1]) + '_' + TRIM(SGIcd10.Cells[1,1]) + '�j�A�Щ��2�ܲ�5���@�E�_����J�~�]�X');
            BtnTempSave.Enabled := True;
            btnSave.Enabled := True;
            BitBtn8Click(btnSave);
            exit;
          end;
        END;
        //END



        //Trauma blue �������ˮ�
        if chtrm ='Y' then
          if not ChkTraumaPapeOk(tramssg,GetFeeNo) then
          begin
            stats := 2;
            IF MessageDlg('�� Trauma blue �������Ƥ����F�^�h�ɨ����?'+#10#13+tramssg,mtWarning, [mbYes, mbNo], 0) = mrYes then
              N10Click(Self);
          end;

        //���|��]
        stats := 3;
        if not Assigned(FrmExitHosp) then
          FrmExitHosp := TFrmExitHosp.Create(Self);
        FrmExitHosp.clas := 'EXIT';
        FrmExitHosp.ShowModal;
        FreeAndNil(FrmExitHosp);

        //���|�E�_
        {
        stats := 6;
        if not Assigned(Frmleave_diagnosis) then
          Frmleave_diagnosis := TFrmleave_diagnosis.Create(Self);
        if icdchangea <> 'N' then
        begin
          for i := 1 to 10 do
            if trim(SGIcd10.Cells[0,i])<> '' then
              Frmleave_diagnosis.leaveicd.Add(trim(SGIcd10.Cells[0,i]));
        end
        else
        begin
          for i := 1 to 10 do
            if trim(SGIcd.Cells[0,i])<> '' then
              Frmleave_diagnosis.leaveicd.Add(trim(SGIcd.Cells[0,i]));
        end;
        Frmleave_diagnosis.ShowModal;
        if not Frmleave_diagnosis.leaveok then
        begin
          FreeAndNil(Frmleave_diagnosis);
          BtnTempSave.Enabled := True;
          btnSave.Enabled := True;
          exit;//�������E
        end
        else
          FreeAndNil(Frmleave_diagnosis);
        }
      end;

      stats := 4;
      //�s�ɧ@�~=============================
      if SaveOrder(Sender)then
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
        stats := 5;
        ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
        if ReturnID(ExeSPResult) = 'N' then
        BEGIN
          sql_time_log('Pk_Opd_All_Order����:',ReturnName(ExeSPResult));
          MessageDlg('Pk_Opd_All_Order���ɥ��Ѱ��D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
          BtnTempSave.Enabled := True;
          btnSave.Enabled := True;
          Self.Close;
        END;

        //��E�@�z�i�� 1040730
        Paramter.Clear;
        PType.Clear;
        RType.Clear;
        PData.Clear;
        SpName   := getSpSql(2,Paramter,PType,RType);
        PData.Add(getFeeNo);
        PData.Add(IntToStr(all_seq));
        stats := 10;
        ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
        if ReturnID(ExeSPResult) = 'N' then
        BEGIN
          sql_time_log('�g�J�@�z�i�ĥ���('+SpName+')���D:',ReturnName(ExeSPResult));
          MessageDlg('�g�J�@�z�i�ĥ���('+SpName+')���D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
        END;

        //�W���i�B�߹q�Ϫ�B���i�M��W�ǰӤ���
        myStr := '';
        myStr := Setsys.ReadString('SYSTEM','PRE_FLAG','');
        if trim(SGIcd.Cells[0,1])<> '' then//�S��ICD9�X�W�Ƿ|�X��
        begin
          IF UpperCase(myStr) = 'TRUE' THEN
          BEGIN
            myStr := Setsys.ReadString('SYSTEM','PRELIMINARY','');
            if myStr <> '' then
            begin
              q_strt := Setsys.ReadString('SYSTEM','PRELIMINARY','');
              //�W���i
              DM.QryTemp.Close;
              DM.QryTemp.SQL.Clear;
              DM.QryTemp.SQL.Add('select fee_no,fee_code,order_seq,order_date from epd_all_order where fee_no='+qt(GetFeeNo));
              DM.QryTemp.SQL.Add(' and fee_code in('+qts(q_strt)+') and order_date='+qt(GetEpdDate)+' and trans_flag=''Y'' and dc_flag=''N'' and so_flag=''F'' and seq='+IntToStr(all_seq));
              DM.QryTemp.Open;
              while not DM.QryTemp.Eof do
              begin
                Paramter.Clear;
                PType.Clear;
                RType.Clear;
                PData.Clear;
                SpName   := getSpSql(0,Paramter,PType,RType);

                PData.Add(getFeeNo);//fee_no
                PData.Add(DM.QryTemp.fieldbyname('fee_code').AsString);//fee_code
                PData.Add(DM.QryTemp.fieldbyname('order_date').AsString);//opd_date
                PData.Add(DM.QryTemp.fieldbyname('order_seq').AsString);//seq_no
                stats := 11;
                ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
                if ReturnID(ExeSPResult) = 'N' then
                begin
                  sql_time_log('�W���i��B���i�M��W�ǥ���('+SpName+')���D:',ReturnName(ExeSPResult));
                  MessageDlg('�W���i��B���i�M��W�ǥ���('+SpName+')���D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
                end;
                dm.QryTemp.Next;
              end;
            end;
          end;
        end;
        Paramter.Free;
        RType.Free;
        PType.Free;
        PData.Free;
      end
      ELSE
      BEGIN
        BtnTempSave.Enabled := True;
        btnSave.Enabled     := True;
        ShowMessage('epd_allorder�s�ɥ���');
        Exit;
      END;
    end
    else
    begin
      if trim(messg) <> '' then
        ShowMessage(messg);
      BtnTempSave.Enabled := True;
      btnSave.Enabled     := True;
      Exit;
    end;
  except
    on E: Exception do
    begin
      case stats of
        1: messg := '�s���ˮ֥��ѡF';
        2: messg := 'Trauma blue �������ˮ֥��ѡF';
        3: messg := '���|��]�}�ҥ��ѡF';
        4: messg := 'epd_allorder�s�ɥ��ѡF';
        5: messg := 'Pk_Opd_All_Order���ɥ��Ѱ��D�F';
        6: messg := '���|�E�_���Ѱ��D�F';
        7: messg := '�魫��s�n�D����';
        8: messg := '�T�{�˶˯ż�';
        9: messg := '�T�{�������';
       10: messg := '�g�J�@�z�i�ĥ���;';
       11: messg := '�W���i��B���i�M��W�ǥ���;';
      end;
      ShowMessage(messg+E.Message);
      sql_time_log(messg,E.Message);
      BtnTempSave.Enabled := True;
      btnSave.Enabled     := True;
      exit;
    end;
  end;
  //�C�L�{��====================================================== START
  //�¾K�ި��ī~�C�L�ި��
  Mgmtctrl;
  
  if TBitBtn(Sender).Name = btnSave.Name then  //���E
  begin
    //���E�ɶ�����
    times_log('EXITER',GetVsCode,getUserId,'');

    //�C�L�f�{
    if NOT DONOT_PRINT_PAPER then
      N9Click(Self);

    //�C�����E�W�ǧ���q�l�f��
    IF NOT EMRPrint_EVERY_TIME THEN
      F_EMRRecord(edtAge.Text,'EDR');

    //���M�ǬV�f�ñг�C�L
    //Checkdisease;

    //�C�L�ñг�
    myStr :=SetSys.ReadString('SYSTEM','INSTRUCTIONS','');
    IF myStr ='True' THEN
    for i := 1 to 10 do
    begin
      if trim(SGIcd.Cells[0,i])<> '' then
        Patient_Instructions(trim(SGIcd.Cells[0,i]));
    end;

    //�C�L����
    if opd_ba1printflag('Q') = 'N' then
      if not DONOT_PRINT_PAPER then
        ToolButton15Click(ToolButton15);

    //�����C�L
    myStr := '';
    myStr :=Setsys.ReadString('OTHERSYSTEMLINK',trim(TBitBtn(Sender).Caption),'');
    myParamter := Setsys.ReadString('PARAMTER',trim(TBitBtn(Sender).Caption),'');
    comStrRep(mystr);
    comstrRep(myParamter);
  end
  else if TBitBtn(Sender).Name = BtnTempSave.Name then  //�Ȧs
  begin
    //�Ȧs�ɶ�����
    times_log('TEMPORARY',GetVsCode,getUserId,'');

    //�����C�L
    myStr :=Setsys.ReadString('OTHERSYSTEMLINK',trim(TBitBtn(Sender).Caption),'');
    myParamter := Setsys.ReadString('PARAMTER',trim(TBitBtn(Sender).Caption),'');
    comStrRep(mystr);
    comstrRep(myParamter);
  end;

  //�C���s�ɤW�ǹq�l�f��
  IF EMRPrint_EVERY_TIME THEN
    Temp_EMRRecord(edtAge.Text,IntToStr(all_seq),'N');

  //CALL PRINT
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    //if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
    ShowMessage('�I�s�C�L�{�����ѡA�ШϥθɦL�覡�C�L');
  end;
  //�C�L�{��======================================================  END
  Self.Close;
end;


function TFrmOrder.checkdata(var messg:string):Boolean;

  function checkins:string;
  var
    tempsg: TStringGrid;
    sgi,ins,rowi: integer;
    mstr,sgname : string;
  begin
    mstr := '';
    feeorder := '';
    For sgi := 0 to 5 do
    begin
      case sgi of
        0:
        begin
          tempsg := SGMed;
          sgname := '�ī~';
          ins := M_INS;
        end;
        1:
        begin
          tempsg := SGLab;
          sgname := '����';
          ins := C_INS;
        end;
        2:
        begin
          tempsg := SGXRay;
          sgname := '��g';
          ins := C_INS;
        end;
        3:
        begin
          tempsg := SGChk;
          sgname := '�ˬd';
          ins := C_INS;
        end;
        4:
        begin
          tempsg := SGFee;
          sgname := '�B�m';
          ins := F_Ins;
        end;
        5:
        begin
          tempsg := SGMtrl;
          sgname := '�ç�';
          ins := L_Ins;
        end;
      end;
      for rowi := 0 to tempsg.RowCount-1 do
      begin
        if (trim(tempsg.Cells[ins,rowi]) <> 'Y') and (trim(tempsg.Cells[ins,rowi]) <> 'N') and
           (trim(tempsg.Cells[ins,rowi]) <> 'H') and (trim(tempsg.Cells[ins,rowi]) <> 'G') and
           (trim(tempsg.Cells[3,rowi]) <> '') then
        begin
          mstr := mstr + #10#13 +sgname+'�N�X:'+CharAdd(trim(tempsg.Cells[3,rowi]),' ',15)+'�W��:'+trim(tempsg.Cells[4,rowi])+'�۶O�O���~�A�Эץ� ';
        end;

        // �}�߰��O�X62001C-88054B���ݤ�N�������˪���N�P�N��2013/09/28
        if tempsg.Name= SGFee.Name then
        begin
          if trim(tempsg.Cells[F_code,rowi]) <> '' then
            feeorder := feeorder +';'+ trim(tempsg.Cells[F_code,rowi]);
        end;
      end;//for
    end;
    if mstr <> '' then
      Result := mstr;
  end;
var
  i,age : integer;
  medqtychk,medchkicdA10,medchkicdCO, eCcrchr :Boolean;
  sqstr,msstr,hight,tempstr,Newmed,Oldmed, meddayov3, mes, prnmed, eCcrms :string;
  sub, hist, obj, plan, icdtoint :integer;
  ICD10_diag_string,icd10fee : string;
begin
  Result := True;
  medqtychk := False;
  medchkicdA10 := False;
  medchkicdCO := False;
  icdtoint := 0;
  msstr := '';
  hight := '';
  age := 0;
  prnmed := '';
  eCcrms := '';
  eCcrchr:= True;
  ICD10_diag_string := '';
  icd10fee := '';

  try
    strReplace(rheSub);
    strReplace(rheObj);
    strReplace(rheHist);
    strReplace(rhePlan);

    age := StrToInt(GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select b.chr_no As chr_no,b.body_high as high,max(b.upd_date||b.upd_time) As upd_date_time ');
    DM.QryTemp.SQL.Add('from bio_information_log b where DEL_FLAG=''N'' and NA_FLAG=''N'' and chr_no='+Qt(GetChrNo));
    DM.QryTemp.SQL.Add(' Group By b.chr_no,b.body_high');
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
      hight := DM.QryTemp.fieldbyname('high').AsString;
    DM.QryTemp.Close;

    sub  := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','SUB',''),'1024'));
    hist := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','HIST',''),'1024'));
    obj  := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','OBJ',''),'1024'));
    plan := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','PLAN',''),'1024'));

    if length(rheSub.Lines.Text)>= sub then
    begin
      Result := False;
      messg := messg + 'Subject('+IntToStr(length(rheSub.Lines.Text))+') �̤jByte��:'+IntToStr(sub);
    end;

    if length(rheHist.Lines.Text)>= hist then
    begin
      Result := False;
      messg := messg + 'Assessment('+IntToStr(length(rheHist.Lines.Text))+') �̤jByte��:'+IntToStr(hist);
    end;

    if length(rheObj.Lines.Text)>= obj then
    begin
      Result := False;
      messg := messg + 'Object('+IntToStr(length(rheObj.Lines.Text))+') �̤jByte��:'+IntToStr(obj);
    end;

    if length(rhePlan.Lines.Text)>= plan then
    begin
      Result := False;
      messg := messg + 'Plan('+IntToStr(length(rhePlan.Lines.Text))+') �̤jByte��:'+IntToStr(plan);
    end;
    if not result then
      exit;

    //�M�����~�� icd9
    for i := 1 to 10 do
    begin
      if (Trim(SGIcd.Cells[0,i])= '') or (Trim(SGIcd.Cells[1,i])= '') then
      begin
        SGIcd.Rows[i].Clear;
        StringGridSort(SGICd);
      end;
      if trim(SGIcd.Cells[0,i]) <> '' then
      begin
        if not checkicd9(trim(SGIcd.Cells[0,i])) then
        begin
          messg := '�� �E�_�X:'+trim(SGIcd.Cells[0,i])+' ���L�Ī�icd9';
          Result := False;
          Exit;
        end
        else
        begin
          //�}�߭���}�ī~�A�ݦ��}���f�����E�_��i�ϥ�(medchkicdA10)1021001
          if Pos('.', SGIcd.Cells[0,i]) > 0 then
            sqstr := copy(SGIcd.Cells[0,i],1,Pos('.', SGIcd.Cells[0,i])-1)
          else
            sqstr := SGIcd.Cells[0,i];
          if TryStrToInt(trim(sqstr),icdtoint) then
             if icdtoint = 249 then
                medchkicdA10 := True;
          if ((trim(SGIcd.Cells[0,i])='250') or
             (trim(SGIcd.Cells[0,i])='648') or (trim(SGIcd.Cells[0,i])='775.1')) then
            medchkicdA10 := True;

          //�}�ߤ����ī~�A�ݦ����g�����E�_��i�ϥ�(medchkicdCO) 1021001
          if Pos('.', SGIcd.Cells[0,i]) > 0 then
            sqstr := copy(SGIcd.Cells[0,i],1,Pos('.', SGIcd.Cells[0,i])-1)
          else
            sqstr := SGIcd.Cells[0,i];
          if TryStrToInt(trim(sqstr),icdtoint) then
            if icdtoint in[140..239] then
              medchkicdCO := True;
        end;
      end;
    end;

    if icdchangea <> 'N' then
    begin
      if (Trim(SGIcd10.Cells[0,1])= '') or (Trim(SGIcd10.Cells[1,1])= '') then
      begin
        messg := '�� �п�JICD10�E�_�X'+#10#13;
        Result := False;
      end;
    end
    else
    begin
      if (Trim(SGIcd.Cells[0,1])= '') and (Trim(SGIcd.Cells[1,1])= '') then
      begin
        messg := '�� �п�J�E�_�X'+#10#13;
        Result := False;
      end;
    end;
    IF (CBtriage.ItemIndex = -1) OR (Trim(CBtriage.Text) = '') THEN
    BEGIN
      messg := messg + '�� �нT�{�˶˯ż�'+#10#13;
      Result := False;
    END;


    if ((UpperCase(copy(trim(SGIcd10.Cells[0,1]),1,1)) = 'V') or
        (UpperCase(copy(trim(SGIcd10.Cells[0,1]),1,1)) = 'W') or
        (UpperCase(copy(trim(SGIcd10.Cells[0,1]),1,1)) = 'X') or
        (UpperCase(copy(trim(SGIcd10.Cells[0,1]),1,1)) = 'Y')) then
    begin
      messg := messg + '���X���~�]�X���ର�D�E�_!';
      Result := False;
      exit;
    end;

    //�M�����~��ICD10
    for i := 1 to 10 do
    begin
      if trim(SGIcd10.Cells[0,i]) <> '' then
        if not checkicd10(SGIcd10.Cells[0,i]) then
        begin
          messg := messg + '�� �E�_�X:'+trim(SGIcd10.Cells[0,i])+' ���L�Ī�icd code';
          Result := False;
          Exit;
        end;
    end;

    //�۶O�O�ˮ�
    sqstr := '';
    sqstr := checkins;
    if sqstr <> '' then
    BEGIN
      messg := messg + sqstr;
      Result := False;
    END;

    //�}�߰��O�X62001C-88054B���ݤ�N�������˪���N�P�N��2013/09/28
    if trim(feeorder) <> '' then
    begin
      feeorder := copy(feeorder,2,length(feeorder));
      sqstr := sql_str(24);
      SetParamter(sqstr,'$FEECODE$',Qts(feeorder));
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Text := sqstr;
      DM.QryTemp.Open;
      if not DM.QryTemp.IsEmpty then
      begin
        while not DM.QryTemp.Eof do
        begin
          feeorder := feeorder + trim(DM.QryTemp.fieldbyname('fee_desc').AsString)+#10#13;
          DM.QryTemp.Next;
        end;
        messg := messg + #10#13 +'�� �̰��O�W�w['+ feeorder +']�A���ݤ�N���ءA��v����������N�����O���A�ýЯf�Hñ�ݤ�N�P�N�ѡA�_�h���O���N������I�����O�ΡC';
      end;
      DM.QryTemp.Close;
    end;

    //���j��O
    for i := 0 to SGXRay.RowCount-1 do
    begin
      if (trim(SGXRay.Cells[C_code,i])<>'') and (trim(SGXRay.Cells[C_Order,i])<>'') and
         ((trim(SGXRay.Cells[C_Kind,i])='X3') or (trim(SGXRay.Cells[C_Kind,i])='X2')) then
          if not CheckCTMRI then
            Exit;
    end;

    Newmed := '';
    Oldmed := '';
    //�����ݶE�Ҧ�����
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    sqstr := sql_str(20);
    SetParamter(sqstr,'$FEE_NO$',Qt(GetFeeNo));
    SetParamter(sqstr,'$ORDER_DATE$',Qt(GetEpdDate));
    SetParamter(sqstr,'$SO_FLAG$',Qt('M'));
    DM.QryTemp.SQL.Text := sqstr;
    DM.QryTemp.Open;
    sqstr := '';
    while not DM.QryTemp.Eof do
    begin
      Oldmed := Oldmed +';'+ trim(DM.QryTemp.fieldbyname('fee_code').AsString);
      DM.QryTemp.Next;
    end;
    DM.QryTemp.Close;

    meddayov3 := '';
    if (SGMed.Cells[M_Code,0]<> '') and (SGMed.RowCount>1) then
    begin
      //���ƥ���pk_drug_warning.p_med_dup_message_opd
      IF SetSys.ReadString('SYSTEM','MED_DUP','')='True' THEN
        if not CheckDupMed then
        begin
          Result := False;
          exit;
        end;

      for i := 0 to SGMed.RowCount-1 do //�Ȧs�B���E�e���ī~�ī~�ˮ�
      begin
        if (SGMed.Cells[M_Code,i]<> '') and (SGMed.Cells[M_Name,i]<> '') and (SGMed.Cells[Del,i]<> 'X') then
        BEGIN
          Newmed := Newmed +';'+ SGMed.Cells[M_Code,i];
          Oldmed := Oldmed +';'+ SGMed.Cells[M_Code,i];

          //20150423�ī~�����}���W�v(PRN)
          if Pos('PRN',SGMed.Cells[M_Cir,i]) > 0 then
            prnmed := prnmed +';'+ SGMed.Cells[M_Code,i];

          //20150618�ǥ����ˮ� ()
          //13258638 Age: integer;MED_LIST,UD_DOSE,CIR_CODE,PATH_CODE,MED_TOTAL,MED_DAYS: STRING;Var flag
          eCcrms := eCcr(StrToInt(GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear)),SGMed.Cells[M_Code,i],SGMed.Cells[M_Qty,i],SGMed.Cells[M_Cir,i],SGMed.Cells[M_path,i],SGMed.Cells[M_ttl_qty,i],SGMed.Cells[M_days,i],eCcrchr);
          if trim(eCcrms) <> '' then
          begin
            messg  := messg +';'+ trim(eCcrms);
            //Result := eCcrchr; //false=���_
          end;



          //�w���ī~�Ѽƺި�u��}��1�� 20140320�T�|��E���@��
          IF UpperCase(Setsys.ReadString('SYSTEM','INJECTIOCTRL','')) = 'TRUE' THEN
            if (COPY(Trim(SGMed.Cells[M_CODE,i]),1,1) = 'I') and (StrToFloat(NullStrTo(Trim(SGMed.Cells[M_days,i]),'0')) > 1) then
            begin
              messg := messg + #10#13+'�� ��'+IntToStr(i+1)+'���w�� '+Trim(SGMed.Cells[M_Name,i])+' �ī~�Ѽƺި�u��}��1��(20140320�T�|��E���@��)';
              Result := False;
            end;

          //�S���ī~�}���v���ˮ�
          IF UpperCase(SetSys.ReadString('SYSTEM','MED_USE_CTRL','')) = 'TRUE' THEN
            if MedUseCtrl(i, mes) = False then
            begin
              messg := messg + #10#13+'�� '+ mes;
              Result := False;
            end;

          //�Ī����q���i���s�ˮ�
          if (StrToFloat(NullStrTo(trim(SGMed.Cells[M_Qty,i]),'0')) = 0) or (StrToFloat(NullStrTo(trim(SGMed.Cells[M_days,i]),'0')) = 0) then
          begin
            messg := messg + #10#13+'�� ��'+IntToStr(i+1)+'���Ī����q���i���s�Ϊ�';
            Result := False;
          end;
          
          //���q�ˮ�
          DM.QryTemp.Close;
          DM.QryTemp.SQL.Clear;
          DM.QryTemp.SQL.Add('select unit_qty_limit,qty_max_dose from orderitem_basic where fee_code ='+Qt(Trim(SGMed.Cells[M_Code,i]))+' and order_type=''M''');
          DM.QryTemp.Open;
          if not DM.QryTemp.IsEmpty then
          begin
            {if (DM.QryTemp.FieldByName('unit_qty_limit').AsString <>'999999') then
              if StrToFloat(NullStrTo(SGMed.Cells[M_ttl_qty,i],'0'))> DM.QryTemp.FieldByName('unit_qty_limit').AsFloat then
              begin
                medqtychk := True;
                messg := messg + #10#13 +SGMed.Cells[M_Name,i]+':�`���q�W�X�ħ��]�w��';
              end; }
            IF NullStrTo(TRIM(DM.QryTemp.FieldByName('qty_max_dose').AsString),'0') <> '0' THEN
              if StrToFloat(NullStrTo(SGMed.Cells[M_qty,i],'0')) > DM.QryTemp.FieldByName('qty_max_dose').AsFloat then
              begin
                medqtychk := True;
                messg := messg + #10#13 +'�� '+SGMed.Cells[M_Name,i]+':���q�W�X�ħ��]�w���X�z��';
              end;
          end;

          //�Ī��ˮ� sp check_medicines_limit
          IF NOT MEDCHK(SGMed.Cells[M_Code,i],SGMed.Cells[M_Cir,i],msstr) THEN
          BEGIN
            Result := False;
            messg := messg + #10#13 + '�� ' + msstr;
            Exit;
          END
          else
          begin
            if msstr <> '' then
             messg := messg + '�� ' + msstr;
          end;

          //�p���Ī����q�ˮ�
          if age < 19 then
            IF SetSys.ReadString('SYSTEM','CHILD_DOSE_LIMIT','')='True' THEN
            BEGIN
              if not childPDC(msstr,trim(edtwdt.Text),hight,SGMed.Cells[M_Code,i],SGMed.Cells[M_Cir,i],SGMed.Cells[M_qty,i],SGMed.Cells[M_days,i]) then
              begin
                messg := messg + #10#13 + '�� ' + msstr;
                Result := False;
              end;
            END;

          //���O�ĤѼƳ̰���3��
          if (SGMed.Cells[M_INS,i] = 'Y') and (StrToFloat(NullStrTo(SGMed.Cells[M_days,i],'0')) > 3) then
          begin
            //�ե��ĶW�L�T�Ѫ�
            meddayov3 := meddayov3 +';'+ SGMed.Cells[M_Code,i];
            messg := messg + #10#13 + '�� ' + SGMed.Cells[M_Name,i]+':���O���ġA�ѼƳ̰���3��';
          end;

          //stat�ī~�ѼƬ�1��
          if (SGMed.Cells[M_Cir,i] = 'STAT') and (StrToFloat(NullStrTo(SGMed.Cells[M_days,i],'0')) > 1) then
          begin
            Result := False;
            messg := messg + #10#13 + '�� ' + SGMed.Cells[M_Name,i]+':�W�v��STAT�A�ѼƳ̰���1��';
          end;

          //�ި��ī~�ݨ�;
          if (SGMed.Cells[M_INS,i] = 'Y') then
            if not CheckMedCtrl(SGMed.Cells[M_Code,i], I) then
            begin
              { epd_adv�{���w�q�T�����B���A���q
              if MessageDlg(SGMed.Cells[M_Name,i]+' �Ī��w��ק令�۶O?'+#10#13+'�}��: Yes'+#10#13+'����: No', mtConfirmation, [mbYes, mbNo],0) = mrNo then
              begin
                Result := False;
                Exit;
              end;}
            end;

          //�������ī~;
          if not CheckMedURGPurchase(SGMed.Cells[M_Code,i], I) then
          begin
            { epd_adv�{���w�q�T�����B���A���q
            if MessageDlg(SGMed.Cells[M_Name,i]+' �Ī��w��ק令�۶O?'+#10#13+'�}��: Yes'+#10#13+'����: No', mtConfirmation, [mbYes, mbNo],0) = mrNo then
            begin
              Result := False;
              Exit;
            end;}
          end;

          //�Ƽf�����ˮ�;
          if SetSys.ReadString('SYSTEM','F_HIA_MED','')='True' THEN
          begin
            tempstr := '';
            tempstr := CheckMedprog(SGMed.Cells[M_Code,i],SGMed.Cells[M_INS,i],SGMed.Cells[M_ttl_qty,i]);
            if tempstr <> '' then
              case MessageDlg(tempstr+#10#13+ '�� ' + '�אּ�۶O: Yes'+#10#13+'�����}��: No' ,mtConfirmation, [mbYes, mbNo], 0) of
                6:
                  begin
                    SGMed.Cells[M_INS,i] := 'N';//�אּ�۶O
                  end ;
                7:
                  begin
                    Result := False;
                    SGMed.Col := Del;
                    SGMed.Row := i;
                    SGMedDblClick(SGMed);
                    exit;
                  end;
              end;
          end;

        END;
      end;//for

      //20150423�ī~�����}���W�v(PRN)
      if prnmed <> '' then
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select med_code,med_desc from med_basic where med_code in ('+Qts(prnmed)+') and prn_lock=''Y'' ';
        DM.QryTemp.Open;
        if not DM.QryTemp.IsEmpty then
        begin
          prnmed := '';
          while not DM.QryTemp.Eof do
          begin
            if trim(DM.QryTemp.fieldbyname('med_desc').AsString) <> '' then
              prnmed := prnmed + trim(DM.QryTemp.fieldbyname('med_desc').AsString) + #13;
            DM.QryTemp.Next;
          end;
          messg := messg + #10#13 + '�� ' +'���ī~('+prnmed+')���ħ��W�d�ī~�W�v���ରPRN�C';
          Result := False;
        end;
      end;
      //�}��ATC_CODE: A04AD1�����O�B��A�Ѽƶȭ�3��20140801-A018_20150402
      if length(meddayov3) > 0 then
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select med_code from med_basic where med_code in ('+Qts(copy(meddayov3,2,length(meddayov3)))+') and atc_code=''A04AD1'' ';
        DM.QryTemp.Open;
        if not DM.QryTemp.IsEmpty then
        begin
          messg := messg + #10#13 + '�� ' +'���ī~('+copy(meddayov3,2,length(meddayov3))+')���O�B��A�̳W�w�Ѽƶȭ�3�ѡB�C�魭��1���C';
          Result := False;
        end;
        DM.QryTemp.Close;
      end;

      //�ī~�j�p���X �}�߭���}�ī~�A�ݦ��}���f�����E�_��i�ϥ�(medchkicdA10)1021001
      if not medchkicdA10 then//�S�������E�_
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select * from med_basic where atc_code like ''A10%'' and atc_code not in(''A10BA02'') '+
                               'and med_code in('+Qts(copy(Newmed,2,length(Newmed)))+')';
        DM.QryTemp.Open;
        if not DM.QryTemp.IsEmpty then
        begin
          messg := messg + #10#13 + '�� ' +'�}�߭���}�ī~�A�ݦ��}���f�����E�_��i�ϥ�';
          //Result := False;
        end;
        DM.QryTemp.Close;
      end;

      //�}�ߤ����ī~�A�ݦ����g�����E�_��i�ϥ�(medchkicdCO) 1021001
      if not medchkicdCO then//�S�������E�_
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select * from med_basic where CLASS_CODE =''CO'' '+
                               'and med_code in('+Qts(copy(Newmed,2,length(Newmed)))+')';
        DM.QryTemp.Open;
        if not DM.QryTemp.IsEmpty then
        begin
          messg := messg + #10#13 + '�� ' +'�}�ߤ����ī~�A�ݦ����g�����E�_��i�ϥ�';
          //Result := False;
        end;
        DM.QryTemp.Close;
      end;
    end; //�����ˮ�

    //ICD10�ˮ�
    {aSOURCE_TYPE            varchar2  --�ӷ�(��O/��E/��I)
     ,aSEX_TYPE               varchar2  --�ʧO(0�k/1�k)
     ,abirth_date             varchar2  --�X�ͦ~���(EX:104/01/01)
     ,athis_date              varchar2  --�E�_���
     ,ahia_item               varchar2  --�ץ����
     ,aICD10_diag_string      varchar2  --ICD10�N�X_CM 1;2;3;4;5
     ,aICD10_op_string        varchar2  --ICD10�N�X_PCS 1;2;3;4;5
     ,afee_code_string        varchar2  --�p���N�X  1;2;3;4;5....
     ,amed_code_string        varchar2  --�ī~�N�X  1;2;3;4;5....}
    if icdchangea <> 'N' then
    begin
      {for i := 1 to SGIcd10.RowCount-1 do
        if trim(SGIcd10.Cells[0,i])<> '' then
          ICD10_diag_string := ICD10_diag_string + trim(SGIcd10.Cells[0,i])+';';
      for i := 0 to SGFee.RowCount-1 do
        if Trim(SGFee.Cells[0,i])<> '' then
          icd10fee := icd10fee + Trim(SGFee.Cells[F_code,i]);
      sqstr := 'select F_ICD10_CHECK(''E'','+Qt(Getsex01)+','+qt(ROCDate(ROCToDate(GetBirth),'/'))+','+qt(GetEpdDate)+','+
                qt(ReturnId(CbbCase.Text))+','+qt(ICD10_diag_string)+','';'','+qt(icd10fee)+','+qt(Newmed)+') as icd10chk from dual';
      DM.QryTemp.SQL.Text := sqstr;
      //DM.QryTemp.SaveToFile('F_ICD10_CHECKpar.txt');
      DM.QryTemp.Open;
      if trim(dm.qryTemp.fieldbyname('icd10chk').asstring) <> '' then
      begin
        if copy(trim(dm.qryTemp.fieldbyname('icd10chk').asstring),1,1)= 'N' then
        begin
          messg := messg + #10#13 + '�� ' + copy(trim(dm.qryTemp.fieldbyname('icd10chk').asstring),3,length(trim(dm.qryTemp.fieldbyname('icd10chk').asstring))-2);
          Result := False;
        end
        else if copy(trim(dm.qryTemp.fieldbyname('icd10chk').asstring),1,1)= 'C' then
          messg := messg + #10#13 + '�� ' + copy(trim(dm.qryTemp.fieldbyname('icd10chk').asstring),3,length(trim(dm.qryTemp.fieldbyname('icd10chk').asstring))-2);
      end;}
    end;

    if Result then
      if medqtychk then
      begin
        if MessageDlg(messg + #10#13 + '�� ' + '�Ī����q�W�X�O�_�^�h�ק�?', mtConfirmation, [mbYes, mbNo], 0,) = mrYes then
        begin
          Result := False;
        end
      end;

    if Newmed <> '' then//�����s�ɬO�_���}��
      if Oldmed <> '' then//�����ݶE���Ī����X(ddi�ˮ�)
      begin
        Oldmed := copy(Oldmed,2,length(Oldmed));
        if not CheckDDI(Oldmed) then
          Result := False;
      end;
  except on E: Exception  do
    begin
      sql_time_log('����ˮ֥���:',e.Message);
      ShowMessage('����ˮ֥���:'+e.Message);
      Result := False;
    end;
  end;
end;

procedure TFrmOrder.SGMedDblClick(Sender: TObject);
var
  i, J, irow: Integer;
  myDel: TStringGrid;
  conf, medcode: string;
begin
  inherited;
  conf := 'N';
  Case TStringGrid(Sender).Col of
    Del,M_CODE,M_NAME :
    begin
      irow := 2;
      if TStringGrid(Sender).Name= 'SGMtrl' then //�R���s�a
        irow   := L_Join
      else if TStringGrid(Sender).Name= 'SGMed' then
      begin
        irow   := M_Join;
        medcode := TStringGrid(Sender).Cells[M_code,TStringGrid(Sender).Row];
      end
      else if TStringGrid(Sender).Name= 'SGFee' then
        irow   := F_Join
      else
        irow   := C_Join;

      if NullStrTo(TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row],'N')='N'  then
      begin
        if TStringGrid(Sender).RowCount = 1 then
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
        if TStringGrid(Sender).row >= 0 then
        begin
          if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
             (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
            deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
          delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a�l��
          for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
            TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
          if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).RowCount-1] <>'' then
            TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1;
        end;
      end
      else
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options -[goEditing];
        if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row] = 'O' then
        begin
          if TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] = 'X' then
            conf := 'Y'
          else if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            conf := 'Y'
          else
            conf :='N';
          if conf ='Y' then
          begin
            if (TStringGrid(Sender).Cells[C_CONFSTATUS,TStringGrid(Sender).Row] = 'Y') and ((TStringGrid(Sender).Name<>'SGFee') and (TStringGrid(Sender).Name<>'SGMtrl')) then
            begin
              ShowMessage2('�wñ�����椣��R��',['�T�w'],msinfor);
              Exit;
            end
            else
            begin
              if TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] = '' then
              BEGIN
                if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
                   (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
                  deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
                TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := 'X';  
                delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a��
              END
              else
              begin
                if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
                   (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
                  deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
                TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := '';
                InsertChild(TStringGrid(Sender).Cells[3,TStringGrid(Sender).Row],TStringGrid(Sender).Row);//�[�^�l��
              end;
            end;
          end
          else
          begin
            if TStringGrid(Sender).RowCount = 1 then
              TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
            if TStringGrid(Sender).row >= 0 then
            begin
              if (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> '') and
                 (TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]<> 'X') then
                deljoinitem(TStringGrid(Sender).Cells[irow,TStringGrid(Sender).row]);
              delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a��
              for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
                TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
              TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
              if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).RowCount-1] <>'' then
                TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1;
            end;
          end;
        end;
      end;
      if TStringGrid(Sender) = SGXRay then
        Radionum  ;
      TStringGrid(Sender).Refresh;

      if TStringGrid(Sender).Name= 'SGMed' then
        AllMedChk(medcode ,'','Del'); //�R���ī~�a��r����
    end;
  end;
end;

procedure TFrmOrder.Radionum;
var
  i : Integer;
  myRisk,MyRad : Double;
begin
  if UpperCase(setSys.ReadString('SYSTEM','��g���q','FALSE')) <> 'TRUE' then
    Exit;
  myRisk := 0;
  MyRad := 0;
  for i := 0 to SGXRay.RowCount -1 do
  begin
    if (nullStrTo(SGXRay.Cells[modifytype,i],'N') = 'N') and (Trim(SGXRay.Cells[C_Code,i])<>'') then
    begin
      With DM.QryTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT  X.X_AVG_RADIATION, X.X_RISK ');
        SQL.Add('FROM X_RAY_RADIATION X, ORDERITEM_BASIC O ');
        SQL.Add('WHERE O.ORDER_TYPE LIKE ''X%'' ');
        SQL.Add('  AND X.KIND_NO = SUBSTR(O.ORDER_TYPE,2,1)');
        SQL.Add('  AND X.CODE_NO = O.SEND_CD_1 ');
        SQL.Add('  AND X.ITEM_NO = O.SEND_CD_2 ');
        SQL.Add('  AND O.SEND_CD_2='+Qt(SGXRay.Cells[C_Send,i]));
        SQL.Add('  AND O.SEND_CD_1='+Qt(SGXRay.Cells[C_Path,i]));
        SQL.Add('  AND O.FEE_CODE='+Qt(SGXRay.Cells[C_Code,i]));
        Open;
        If not Eof then
        begin
          myRisk := myRisk+FieldByName('X_RISK').AsFloat;
          MyRad := MyRad + FieldByName('X_AVG_RADIATION').AsFloat;
        end;
        Close;
      end;
    end;
  end;
  EdtAllmsv.Text := FloatToStr(MyRad);
  EdtAllRisk.Text := FloatToStr(myRisk);
end;

procedure TFrmOrder.SGLabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if pnlHintGrid.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText9Click(self);
        key :=0;
      end;
      Sendmessage(DBCLab.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.SGLabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (PanelLab.Visible) then
    exit;
  if TStringGrid(Sender).Cells[modifytype,TStringGrid(Sender).row] <>'' then
    Exit;
  if TStringGrid(Sender).Col = C_Order then
  begin
    if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
    begin
      //������W��
      with DM.QrySearch do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''L1'' and RTrim(Code_one) = RTrim(Send_Cd_1)) "�էO",');
        SQL.Add('(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and RTrim(Code_one) = RTrim(Send_Cd_2)) "����"');
        SQL.Add(' from OrderItem_basic where RTrim(order_type)=''L'' and Use_STATUS=''1'' '); //USE_STATUS_O
        SQL.Add(' and  INSTR(UPPER(FEE_NAME), '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') > 0 Order by   USE_STATUS,Fee_code,Fee_Desc,Fee_Name');
        sql_Waiting_log('open',SQL.Text);                                                                                                                       //USE_STATUS_O
        open;
        sql_Waiting_log('close','');
        if not IsEmpty then
        begin
          SetPanel(true,pnlHintGrid);
          SetPanel(true,PanelLab);
        end;
      end;
    end
    else
      if PanelLab.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelLab);
      end;
  end
  else if  SGLab.Col = C_Code then
  begin
    if Trim(SGLab.Cells[SGLab.Col,SGLab.Row]) <>'' then
    begin
      //������N�X
      with DM.QrySearch do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''L1'' and RTrim(Code_one) = RTrim(Send_Cd_1)) "�էO",');
        SQL.Add('(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and RTrim(Code_one) = RTrim(Send_Cd_2)) "����"');
        SQL.Add('from OrderItem_basic where RTRIM(order_type)=''L'' and UPPER(fee_code) like '+Qt(AnsiUpperCase(SGLab.Cells[SGLab.Col,SGLab.Row])+'%')+' and Use_STATUS=''1''  Order by  USE_STATUS,Fee_code,Fee_Desc,Fee_Name');
        sql_Waiting_log('open',SQL.Text);                                                                                                                    //USE_STATUS_O
        open;
        sql_Waiting_log('close','');
        First;
        if not IsEmpty then
        begin
          SetPanel(true,pnlHintGrid);
          SetPanel(true,PanelLab);
        end;
      end;
    end
    else
      if PanelLab.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelLab);
      end;
  end;
end;

procedure TFrmOrder.SGLabSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  if Trim(TStringGrid(Sender).Cells[modifyType,Arow]) ='O' then
    exit;
  SGLab.Options := SGLab.Options - [goEditing];
  EdtLmemo.Hide;
  Case ACol of
    C_Cir :
    begin
      if (NullStrTo(Trim(SGLab.Cells[C_Code,Arow]),Trim(SGLab.Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;

      SGLab.perform(WM_CANCELMODE,0,0);
      MyRec:=SGLab.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdtLCir.Tag := C_Cir;
      LBCir.Tag := ARow;
      EdtLCir.SetBounds(Mypoint.x+1, Mypoint.y+1+SGLab.Top,MyRec.right-MyRec.left,SGLab.DefaultRowHeight );
      EdtLCir.Show;
      EdtLCir.BringTofront;
      EdtLCir.Text := Trim(SGLab.cells[Acol,Arow]);
      LBCir.Items.Text := gsCir.Text;
      SetListWidth1(LBCir,3);
      if (MyRec.Bottom +EdtLCir.Height) <=(ceil(SGLab.Height/3)*2) then
        LBCir.SetBounds(min(EdtLCir.Left,Screen.ActiveForm.Width-LBCir.Width-30) ,MyRec.Bottom +EdtLCir.Height +2 ,LBCir.Width,
                          SGLab.Height-(MyRec.Bottom +EdtLCir.Height))
      else
        LBCir.SetBounds(min(EdtLCir.Left,Screen.ActiveForm.Width-LBCir.Width-30),25  ,LBCir.Width
                          ,MyRec.Top-2);
      LBCir.Visible := True;
      try
        LBCir.ItemIndex := LBCir.Items.IndexOf(EdtLCir.Text);
      except
      end ;
      EdtLCir.SetFocus;
      SGLab.Options := SGLab.Options - [goEditing];
    end;
    C_Ins,C_EMG:
    begin
      if (NullStrTo(Trim(SGLab.Cells[C_Code,Arow]),Trim(SGLab.Cells[C_order,Arow])) ='') and (SGLab.Cells[modifyType,Arow] <> 'N') then
        Exit;
      if ACol= C_EMG then
      begin
        CbbLOrderYN.Items.Clear;
        CbbLOrderYN.Items.Add('Y');
        CbbLOrderYN.Items.Add('N');
        if Setsys.ReadString('SYSTEM','EXPERURGFLAG','')<> 'False' then
        begin
          With DM.QrySearch3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('Select count(*) as a from ORDERITEM_BASIC where fee_code='+Qt(SGLab.Cells[C_Code,Arow])+' and order_type=''L'' and URG_FLAG=''Y'' and Send_cd_1='+Qt(SGLab.Cells[C_SEND,Arow]));
            open;
            if FieldByName('a').AsInteger = 0 then
            begin
              ShowMessage('�����ؤ��i����@');
              Close;
              Exit;
            end;
            Close;
          end;
        end;
      end
      else
      begin
        CbbLOrderYN.Items.Clear;
        CbbLOrderYN.Items.Add('Y_���O');
        CbbLOrderYN.Items.Add('N_�۶O');
        CbbLOrderYN.Items.Add('G_��(�t)');
        CbbLOrderYN.Items.Add('H_��(�t)');
      end;
      SGLab.perform(WM_CANCELMODE,0,0);
      MyRec:=SGLab.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CbbLOrderYN.SetBounds(Mypoint.x+1, Mypoint.y+1+SGLab.Top,MyRec.right-MyRec.left,SGLab.DefaultRowHeight );
      CbbLOrderYN.Show;
      CbbLOrderYN.BringTofront;
      CbbLOrderYN.Text := SGLab.cells[Acol,Arow];
      CbbLOrderYN.DroppedDown := True;
      CbbLOrderYN.SetFocus;
      SGLab.Options := SGLab.Options - [goEditing];
    end;
    C_Order,C_Code :
    begin
      if NullStrTo(SGLab.Cells[modifyType,Arow],'N')<> 'N' then
        exit;
      if (SGLab.Cells[modifyType,Arow] ='N') and (Trim(SGLab.Cells[C_CODE,Arow])<>'') then
      begin
        SGLab.Options := SGLab.Options - [goEditing];
        Exit;
      end;
      SGLab.Options := SGLab.Options + [goEditing];
    end;
    C_MEMO :
    begin
      if (NullStrTo(Trim(SGLab.Cells[C_Code,Arow]),Trim(SGLab.Cells[C_order,Arow])) ='') and (SGLab.Cells[modifyType,Arow] <> 'N') then
        Exit;
      SGLab.perform(WM_CANCELMODE,0,0);
      SGLab.Options := SGLab.Options - [goEditing];
      if not Assigned(Frmshift_note) then
        Frmshift_note := TFrmshift_note.Create(Self);
      Frmshift_note.RichEdit1.Lines.Text := SGLab.cells[Acol,Arow];//Trim(EdtLmemo.Text);
      Frmshift_note.note_kind := TStringGrid(Sender).name;
      Frmshift_note.ShowModal;
      TStringGrid(Sender).Cells[C_MEMO,ARow] := trim(Frmshift_note.RichEdit1.Lines.Text);
    end;
  end;
end;

procedure TFrmOrder.DBText9Click(Sender: TObject);
begin
  inherited;
  if DM.QrySearch.FieldByName('JOIN_CODE').AsString = '' then
  begin
    if InsertLab(DM.QrySearch.fieldByName('Fee_CODE').AsString,Trim(DM.QrySearch.FieldByName('UNIT_QTY').AsString)
             ,Trim(DM.QrySearch.FieldByName('INS_FLAG').AsString),Trim(DM.QrySearch.FieldByName('Send_cd_1').AsString)
             ,Trim(DM.QrySearch.FieldByName('Send_cd_2').AsString),Trim(DM.QrySearch.FieldByName('Send_cd_3').AsString),'') then
      SGLab.Row := SGLab.Row +1;
  end
  else
  begin//�s�a
    with DM.SPjoinno do
    begin
      Close;
      Parameters.Clear;
      ProcedureName := 'pk_get_seq_no.p_get_seq_no';
      Parameters.CreateParameter('as_seq_type',ftString,pdInput,4000,Null); // �ǤJ��
      Parameters.CreateParameter('as_date',ftString,pdInput,4000,Null);
      Parameters.CreateParameter('as_get_no',ftString,pdReturnValue,4000,Null); // �^�ǭ�

      Parameters.parambyname('as_seq_type').Value := 'Z2';
      Parameters.parambyname('as_date').Value := Rocdate(now,'');
      try
        ExecProc;
      except
        ShowMessage('"�s�a���ب����{��"�o�Ϳ��~!!');
      end;
      JoinNo := NullStrTo(Parameters.parambyname('as_get_no').Value,'');
    end;

    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from JOIN_BASIC where join_code = '+ Qt(Trim(DM.QrySearch.FieldByName('JOIN_CODE').AsString)) );
      open;
      if FieldByName('Show_Major_flag').AsString = 'Y' then
      begin
        SGLab.Cells[modifyType,SGLab.Rowcount -1] := 'N';
        SGLab.Cells[Seq,SGLab.Rowcount -1]     := '';
        SGLab.Cells[Del,SGLab.Rowcount -1]     := '';
        SGLab.Cells[C_Code,SGLab.Rowcount -1]  := Trim(DM.QrySearch.fieldByName('Fee_CODE').AsString);
        SGLab.Cells[C_Order,SGLab.Rowcount -1] := Trim(DM.QrySearch.fieldByName('Fee_NAME').AsString);
        SGLab.Cells[C_Qty,SGLab.Rowcount -1]   := Trim(DM.QrySearch.FieldByName('UNIT_QTY').AsString);
        SGLab.Cells[C_Unit,SGLab.Rowcount -1]  := Trim(DM.QrySearch.FieldByName('UNIT').AsString);
        SGLab.Cells[C_Cir,SGLab.Rowcount -1]   := Trim(DM.QrySearch.FieldByName('CIR_CODE').AsString);
        SGLab.Cells[C_path,SGLab.Rowcount -1]  := Trim(DM.QrySearch.FieldByName('Send_cd_2').AsString); //��g���� �������� send_cd_2
        SGLab.Cells[C_INS,SGLab.Rowcount -1]   := Trim(DM.QrySearch.FieldByName('INS_FLAG').AsString);
        SGLab.Cells[C_EMG,SGLab.Rowcount -1]   := Trim(DM.QrySearch.FieldByName('URG_FLAG').AsString);
        SGLab.Cells[C_MEMO,SGLab.Rowcount -1]  := '';
        SGLab.Cells[C_Send,SGLab.Rowcount -1]  := Trim(DM.QrySearch.FieldByName('send_cd_1').AsString); //send_cd_1
        SGLab.Cells[C_Kind,SGLab.Rowcount -1]  := 'L';                                     // ���綵��
        SGLab.Cells[C_2Send,SGLab.Rowcount -1] := Trim(DM.QrySearch.FieldByName('send_cd_3').AsString);
        SGLab.Cells[C_no,SGLab.Rowcount -1]    := Trim(DM.QrySearch.FieldByName('send_cd_3').AsString);
        SGLab.Cells[C_Join,SGLab.Rowcount -1]  := Joinno;

        SGLab.RowCount := SGLab.RowCount +1 ;
        SGLab.Row := SGLab.Row +1;

        ExecJoin(Trim(DM.QrySearch.FieldByName('JOIN_CODE').AsString));
      end
      else
        ExecJoin(Trim(DM.QrySearch.FieldByName('JOIN_CODE').AsString));
    end;
  end;
  SetPanel(False,PanelLab);
  SetPanel(False,pnlHintGrid);
  SGLab.SetFocus;
end;

procedure TFrmOrder.LBCirDblClick(Sender: TObject);
begin
  inherited;
  EdtLCir.Text := Trim(ReTurnId(LBCIR.Items.Strings[LBCIR.itemindex]));
  LBCIR.Visible := False;
  SGLab.Cells[EdtLCir.Tag,LBCIR.Tag]:= EdtLCir.Text;
  EdtLCir.Text := '';
  EdtLCir.Visible := False;
  SGLab.Refresh;
end;

procedure TFrmOrder.EdtLCirChange(Sender: TObject);
begin
  inherited;
  LBCir.ItemIndex := -1;
  With LBCir Do
    itemindex := Perform( LB_FINDSTRING, ItemIndex,Longint(PChar(Tedit(Sender).Text)));
end;

procedure TFrmOrder.EdtLCirExit(Sender: TObject);
begin
  inherited;
  if FrmOrder.ActiveControl <> TWincontrol(LBCir) then
  begin
    LBCirDblClick(self);
  end;
end;

procedure TFrmOrder.EdtLCirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : Integer;
begin
  inherited;
  if key in [vk_up,vk_down,vk_return] then
  begin
    if Key = vk_return then
    begin
      try
        SetCbbitem(LBCir,UPPERCASE(EdtLCir.Text));
        if LBCir.ItemIndex = -1 then
          LBCir.ItemIndex := i;
      except
        LBCir.ItemIndex := i;
      end;
      LBCirDblClick(self);
      key :=0;
    end;
    Sendmessage(LBCir.Handle,WM_KEYDOWN,key,0);
    key :=0;
  end;
end;

procedure TFrmOrder.LBCCirDblClick(Sender: TObject);
begin
  inherited;
  EdtCCir.Text := Trim(ReTurnId(LBCCir.Items.Strings[LBCCir.itemindex]));
  LBCCir.Visible := False;
  SGChk.Cells[EdtCCir.Tag,LBCCir.Tag]:= EdtCCir.Text;
  EdtCCir.Text := '';
  EdtCCir.Visible := False;
end;

procedure TFrmOrder.EdtCCirChange(Sender: TObject);
begin
  inherited;
  LBCCir.ItemIndex := -1;
  With LBCCir Do
    itemindex := Perform( LB_FINDSTRING, ItemIndex,Longint(PChar(Tedit(Sender).Text)));
end;

procedure TFrmOrder.EdtCCirExit(Sender: TObject);
begin
  inherited;
  if FrmOrder.ActiveControl <> TWincontrol(LBCCir) then
  begin
    LBCCirDblClick(self);
  end;
end;

procedure TFrmOrder.EdtCCirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : Integer;
begin
  inherited;
  if key in [vk_up,vk_down,vk_return] then
  begin
    if Key = vk_return then
    begin
      try
        SetCbbitem(LBCCir,UPPERCASE(EdtCCir.Text));
        if LBCCir.ItemIndex = -1 then
          LBCCir.ItemIndex := i;
      except
        LBCCir.ItemIndex := i;
      end;
      LBCCirDblClick(self);
      key :=0;
    end;
    Sendmessage(LBCCir.Handle,WM_KEYDOWN,key,0);
    key :=0;
  end;

end;

procedure TFrmOrder.SGChkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if pnlHintGrid.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText15Click(self);
        key :=0;
      end;
      Sendmessage(DBCCHK.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.SGChkKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (PanelCHK.Visible) then
    exit;
  if TStringGrid(Sender).Cells[modifytype,TStringGrid(Sender).row] <>'' then
    Exit;
  if TStringGrid(Sender).Col = C_Order then
  begin
    if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
    begin
      //���ˬd�W��
      with DM.QrySearch do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and RTrim(Code_one) = RTrim(Send_Cd_1)) "�ˬd��"');
        SQL.Add(',CASE WHEN (SELECT URG_FLAG FROM FEE_SCHE B WHERE OrderItem_basic.FEE_CODE=B.FEE_CODE)=''Y'' then ''Y'' ELSE URG_FLAG END AS "URG_FLAG_SCHE" ');
        SQL.Add(' from OrderItem_basic where RTrim(order_type)=''E'' and  UPPER(FEE_NAME) LIKE  '+Qt('%'+AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%')+' and Use_STATUS_O=''1'' Order by  SEND_CD_1,Fee_code,Fee_Desc,Fee_Name');
        sql_Waiting_log('open',SQL.Text);                                                                                                                                                                     //USE_STATUS_O
        Open;
        sql_Waiting_log('close','');
        if not IsEmpty then
        begin
          SetPanel(True,pnlHintGrid);
          SetPanel(true,PanelCHK);
        end;
      end;
    end
    else
      if PanelCHK.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelCHK);
      end;
  end
  else if  TStringGrid(Sender).Col = C_Code then
  begin
    if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
    begin
      //���˹�N�X
      with DM.QrySearch do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and RTrim(Code_one) = RTrim(Send_Cd_1)) "�ˬd��"');
        SQL.Add(',CASE WHEN (SELECT URG_FLAG FROM FEE_SCHE B WHERE OrderItem_basic.FEE_CODE=B.FEE_CODE)=''Y'' then ''Y'' ELSE URG_FLAG END AS "URG_FLAG_SCHE" ');
        SQL.Add('from OrderItem_basic where RTRIM(order_type)=''E'' and UPPER(fee_code) like '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%')+' and Use_STATUS_O=''1'' Order by  SEND_CD_1,Fee_code,Fee_Desc,Fee_Name');
        sql_Waiting_log('open',SQL.Text);                                                                                                                                                              //USE_STATUS_O
        Open;
        sql_Waiting_log('close','');
        First;
        if not IsEmpty then
        begin
          SetPanel(True,pnlHintGrid);
          SetPanel(true,PanelCHK);
        end;
      end;
    end
    else
      if PanelCHK.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelCHK);
      end;
  end;
end;

procedure TFrmOrder.DBText15Click(Sender: TObject);
begin
  inherited;
  if InsertChk(Trim(DM.QrySearch.fieldByName('Fee_CODE').AsString),
            Trim(DM.QrySearch.FieldByName('Send_cd_1').AsString),
            Trim(DM.QrySearch.FieldByName('UNIT_QTY').AsString),
            Trim(DM.QrySearch.FieldByName('INS_FLAG').AsString),
            '') then
  begin
    SGChk.Row := SGChk.Row +1;
    SGChk.SetFocus;
  end;
  SetPanel(False,PanelCHK);
  SetPanel(False,pnlHintGrid);

end;

procedure TFrmOrder.SGChkSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  if Trim(TStringGrid(Sender).Cells[modifyType,Arow]) ='O' then
    exit;  
  SGChk.Options := SGChk.Options -[goEditing];
  Case ACol of
    C_Cir :
    begin
      if (NullStrTo(Trim(SGChk.Cells[C_Code,Arow]),Trim(SGChk.Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      SGChk.perform(WM_CANCELMODE,0,0);
      MyRec:=SGChk.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdtCCir.Tag := C_Cir;
      LBCCir.Tag := ARow;
      EdtCCir.SetBounds(Mypoint.x+1, Mypoint.y+1+SGChk.Top,MyRec.right-MyRec.left,SGChk.DefaultRowHeight );
      EdtCCir.Show;
      EdtCCir.BringTofront;
      EdtCCir.Text := Trim(SGChk.cells[Acol,Arow]);
      LBCCir.Items.Text := gsCir.Text;
      SetListWidth1(LBCCir,3);
      if (MyRec.Bottom +EdtCCir.Height) <=(ceil(SGChk.Height/3)*2) then
        LBCCir.SetBounds(min(EdtCCir.Left,Screen.ActiveForm.Width-LBCir.Width-30) ,MyRec.Bottom +EdtCCir.Height +2 ,LBCCir.Width,
                          SGChk.Height-(MyRec.Bottom +EdtLCir.Height))
      else
        LBCCir.SetBounds(min(EdtCCir.Left,Screen.ActiveForm.Width-LBCCir.Width-30),25  ,LBCCir.Width
                          ,MyRec.Top-2);
      LBCCir.Visible := True;
      try
        LBCCir.ItemIndex := LBCCir.Items.IndexOf(EdtCCir.Text);
      except
      end ;
      EdtCCir.SetFocus;
      SGChk.Options := SGChk.Options - [goEditing];
    end;
    C_Ins,C_EMG:
    begin
      if (NullStrTo(Trim(SGChk.Cells[C_Code,Arow]),Trim(SGChk.Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      if ACol= C_EMG then
      begin
        CbbCOrderYN.Items.Clear;
        CbbCOrderYN.Items.Add('Y');
        CbbCOrderYN.Items.Add('N');
      end
      else
      begin
        CbbCOrderYN.Items.Clear;
        CbbCOrderYN.Items.Add('Y_���O');
        CbbCOrderYN.Items.Add('N_�۶O');
        CbbCOrderYN.Items.Add('G_��(�t)');
        CbbCOrderYN.Items.Add('H_��(�t)');
      end;
      SGChk.perform(WM_CANCELMODE,0,0);
      MyRec:=SGChk.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CbbCOrderYN.SetBounds(Mypoint.x+1, Mypoint.y+1+SGChk.Top,MyRec.right-MyRec.left,SGChk.DefaultRowHeight );
      CbbCOrderYN.Show;
      CbbCOrderYN.BringTofront;
      CbbCOrderYN.Text := SGChk.cells[Acol,Arow];
      CbbCOrderYN.DroppedDown :=true;
      CbbCOrderYN.SetFocus;
      SGChk.Options := SGChk.Options - [goEditing];
    end;
    C_Order,C_Code :
    begin
      if NullStrTo(SGChk.Cells[modifyType,Arow],'N')<> 'N' then
        exit;
      if (SGChk.Cells[modifyType,Arow] ='N') and (Trim(SGChk.Cells[C_CODE,Arow])<>'') then
      begin
        SGChk.Options := SGChk.Options - [goEditing];
        Exit;
      end;
      SGChk.Options := SGChk.Options + [goEditing];
    end;
    C_MEMO :
    begin
      if (NullStrTo(Trim(SGChk.Cells[C_Code,Arow]),Trim(SGChk.Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      SGChk.perform(WM_CANCELMODE,0,0);
      if not Assigned(Frmshift_note) then
        Frmshift_note := TFrmshift_note.Create(Self);
      Frmshift_note.RichEdit1.Lines.Text := SGChk.cells[C_MEMO,Arow];//Trim(EdtCmemo.Text);
      Frmshift_note.note_kind := TStringGrid(Sender).name;
      Frmshift_note.ShowModal;
      SGChk.cells[C_MEMO,Arow] := trim(Frmshift_note.RichEdit1.Lines.Text);
    end;
  end;
end;

procedure TFrmOrder.EdtRCirChange(Sender: TObject);
begin
  inherited;
  LBRCir.ItemIndex := -1;
  With LBRCir Do
    itemindex := Perform( LB_FINDSTRING, ItemIndex,Longint(PChar(Tedit(Sender).Text)));
end;

procedure TFrmOrder.EdtRCirExit(Sender: TObject);
begin
  inherited;
  if FrmOrder.ActiveControl <> TWincontrol(LBRCir) then
  begin
    LBRCirDblClick(self);
  end;
end;

procedure TFrmOrder.EdtRCirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : Integer;
begin
  inherited;
  if key in [vk_up,vk_down,vk_return] then
  begin
    if Key = vk_return then
    begin
      try
        SetCbbitem(LBCCir,UPPERCASE(EdtRCir.Text));
        if LBRCir.ItemIndex = -1 then
          LBRCir.ItemIndex := i;
      except
        LBRCir.ItemIndex := i;
      end;
      LBRCirDblClick(self);
      key :=0;
    end;
    Sendmessage(LBCCir.Handle,WM_KEYDOWN,key,0);
    key :=0;
  end;
end;

procedure TFrmOrder.LBRCirDblClick(Sender: TObject);
begin
  inherited;
  if LBRCir.ItemIndex > 0 then
  begin
    EdtRCir.Text := Trim(ReTurnId(LBRCir.Items.Strings[LBRCir.itemindex]));
    LBRCir.Visible := False;
    SGLab.Cells[EdtRCir.Tag,LBRCir.Tag]:= EdtRCir.Text;
    EdtRCir.Text := '';
    EdtRCir.Visible := False;
  end
  else
  begin
    LBRCir.Visible := False;
    EdtRCir.Text := '';
    EdtRCir.Visible := False;
  end;
  SGLab.Refresh;
end;

procedure TFrmOrder.SGXRayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if pnlHintGrid.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText25Click(self);
        key :=0;
      end;
      Sendmessage(DBCRay.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.SGXRayKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (PanelRay.Visible) then
    exit;
  if TStringGrid(Sender).Cells[modifytype,TStringGrid(Sender).row] <>'' then
    Exit;
  if TStringGrid(Sender).Col = C_Order then
  begin
    if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
    begin
      icd9orXray := False;
      Timer1.Enabled := True;
    end
    else
      if PanelRay.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelRay);
      end; 
  end
  else if  TStringGrid(Sender).Col = C_Code then
  begin
    if Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'' then
    begin
      //���g�N�X
      with DM.QrySearch do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''R1'' and RTrim(Code_one) = RTrim(ORDER_TYPE)) "���O",');
        SQL.Add('(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' and RTrim(Code_one) = RTrim(Send_Cd_1) and RTrim(Code_Two) = RTrim(Order_type) ) "����"');
        SQL.Add('from OrderItem_basic where RTrim(ORDER_TYPE) IN (SELECT RTrim(CODE_ONE) FROM COMPARE_CODE_BASIC WHERE IPD_RELATED=''R1'') and UPPER(fee_code) like '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%')+' and USE_STATUS=''1'' Order by  send_cd_2,USE_STATUS,Fee_code,Fee_Desc,Fee_Name');
        DM.QrySearch.sql.Text;                                                                                                                                                                                                                                                //USE_STATUS_O
        sql_Waiting_log('open',SQL.Text);
        open;
        sql_Waiting_log('close','');
        First;
        if not IsEmpty then
        begin
          SetPanel(true,pnlHintGrid);
          SetPanel(true,PanelRay);
        end;
      end;
    end
    else
      if PanelRay.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelRay);
      end;
  end
end;

procedure TFrmOrder.DBText25Click(Sender: TObject);
begin
  inherited;
  if InsertXRay(Trim(DM.QrySearch.fieldByName('Fee_CODE').AsString),
                Trim(DM.QrySearch.FieldByName('order_type').AsString),
                Trim(DM.QrySearch.FieldByName('INS_FLAG').AsString),
                Trim(DM.QrySearch.FieldByName('UNIT_QTY').AsString),
                Trim(DM.QrySearch.FieldByName('position_o').AsString),
                Trim(DM.QrySearch.FieldByName('Send_cd_2').AsString),
                '',
                Trim(DM.QrySearch.FieldByName('Send_cd_1').AsString)) then
  begin
    SGXRay.Row := SGXRay.Row +1;
    SGXRay.SetFocus;
    Radionum;
  end;
  SetPanel(False,PanelRay);
  SetPanel(False,pnlHintGrid);

end;

procedure TFrmOrder.SGXRaySelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  TStringGrid(Sender).Options :=  TStringGrid(Sender).Options -[goEditing] ;
  if Trim(TStringGrid(Sender).Cells[modifyType,Arow]) ='O' then
    exit;
  Case ACol of
    C_Cir :
    begin
      if (NullStrTo(Trim(TStringGrid(Sender).Cells[C_Code,Arow]),Trim(TStringGrid(Sender).Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      SGXRay.perform(WM_CANCELMODE,0,0);
      MyRec:=SGXRay.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdtRCir.Tag := C_Cir;
      LBRCir.Tag := ARow;
      EdtRCir.SetBounds(Mypoint.x+1, Mypoint.y+1+SGXRay.Top,MyRec.right-MyRec.left,SGXRay.DefaultRowHeight );
      EdtRCir.Show;
      EdtRCir.BringTofront;
      EdtRCir.Text := Trim(SGXRay.cells[Acol,Arow]);
      LBRCir.Items.Text := gsCir.Text;
      SetListWidth1(LBRCir,3);
      if (MyRec.Bottom +EdtRCir.Height) <=(ceil(SGXRay.Height/3)*2) then
        LBRCir.SetBounds(min(EdtRCir.Left,Screen.ActiveForm.Width-LBRCir.Width-30) ,MyRec.Bottom +EdtRCir.Height +2 ,LBRCir.Width,
                          SGXRay.Height-(MyRec.Bottom +EdtRCir.Height))
      else
        LBRCir.SetBounds(min(EdtRCir.Left,Screen.ActiveForm.Width-LBRCir.Width-30),25  ,LBRCir.Width
                          ,MyRec.Top-2);
      LBRCir.Visible := True;
      try
        LBRCir.ItemIndex := LBRCir.Items.IndexOf(EdtRCir.Text);
      except
      end ;
      EdtRCir.SetFocus;
      SGXRay.Options := SGXRay.Options - [goEditing];
    end;
    C_Ins,C_EMG:
    begin
      if (NullStrTo(Trim(TStringGrid(Sender).Cells[C_Code,Arow]),Trim(TStringGrid(Sender).Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      if ACol= C_EMG then
      begin
        CbbROrderYN.Items.Clear;
        CbbROrderYN.Items.Add('Y');
        CbbROrderYN.Items.Add('N');
      end
      else
      begin
        CbbROrderYN.Items.Clear;
        CbbROrderYN.Items.Add('Y_���O');
        CbbROrderYN.Items.Add('N_�۶O');
        CbbROrderYN.Items.Add('G_��(�t)');
        CbbROrderYN.Items.Add('H_��(�t)');
      end;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CbbROrderYN.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      CbbROrderYN.Show;
      CbbROrderYN.BringTofront;
      CbbROrderYN.Text := TStringGrid(Sender).cells[Acol,Arow];
      CbbROrderYN.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    end;
    C_Order,C_Code :
    begin
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,Arow],'N')<> 'N' then
        exit;
      if (TStringGrid(Sender).Cells[modifyType,Arow] ='N') and (Trim(TStringGrid(Sender).Cells[C_CODE,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    end;
    C_MEMO:
    begin
      if (NullStrTo(Trim(SGXRay.Cells[C_Code,Arow]),Trim(SGXRay.Cells[C_order,Arow])) ='') and (TStringGrid(Sender).Cells[modifyType,Arow] <> 'N') then
        Exit;
      SGXRay.perform(WM_CANCELMODE,0,0);
      if not Assigned(Frmshift_note) then
        Frmshift_note := TFrmshift_note.Create(Self);
      Frmshift_note.RichEdit1.Lines.Text := SGXRay.cells[C_MEMO,Arow];//Trim(EdtRmemo.Text);
      Frmshift_note.note_kind := TStringGrid(Sender).name;
      Frmshift_note.ShowModal;
      SGXRay.cells[C_MEMO,Arow] := trim(Frmshift_note.RichEdit1.Lines.Text);
    end;
    c_qty:
    begin
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    end;
  end;
end;

procedure TFrmOrder.SGFeeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_ESCAPE) then
  begin
    pnlHintGrid.Visible := false;
  end;

  if pnlHintGrid.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText19Click(self);
        key :=0;
      end;
      Sendmessage(DBCFee.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.SGFeeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  q_str : string;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (pnlHintGrid.Visible) then
  exit;
  if (TStringGrid(Sender).Col = F_code) then
  begin
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      DM.QrySearch.Close;
      q_str := getPreOrderSql(12);
      q_str := q_str + ' AND Upper(Fee_CODE) like '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%');
      dm.QrySearch.SQL.Text := q_str + ' order by fee_code,fee_name';
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');
      if not DM.QrySearch.IsEmpty then
      begin
        SetPanel(true,pnlHintGrid);
        SetPanel(true,pnlfee);
      end;
    end
    else
      if pnlHintGrid.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,pnlfee);
      end;
  end
  else  if TStringGrid(Sender).Col = F_Name then
  begin
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      DM.QrySearch.Close;
      q_str := getPreOrderSql(12);
      q_str := q_str + ' And Upper(FEE_NAME||FEE_DESC) LIKE '+Qt('%'+AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%');
      dm.QrySearch.SQL.Text := q_str + ' order by fee_code,fee_name';
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');
      if not DM.QrySearch.IsEmpty then
      begin
        SetPanel(true,pnlHintGrid);
        SetPanel(true,pnlfee);
      end;
    end
    else
      if pnlHintGrid.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,pnlfee);
      end;
  end;

end;

procedure TFrmOrder.SGFeeSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  case ACol of
    F_Ins:
    begin
      if SGFee.Cells[F_code,Arow] ='' then
        Exit;
      SGFee.perform(WM_CANCELMODE,0,0);
      MyRec:=SGFee.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CbbFeeYN.SetBounds(Mypoint.x+1, Mypoint.y+1+SGFee.Top,MyRec.right-MyRec.left,SGFee.DefaultRowHeight );
      CbbFeeYN.Show;
      CbbFeeYN.BringTofront;
      CbbFeeYN.Text := SGFee.cells[Acol,Arow];
      CbbFeeYN.SetFocus;
      SGFee.Options := SGFee.Options - [goEditing];
    end;
    F_code,F_NAME:
    BEGIN
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,Arow],'N')<> 'N' then
      begin
        SetPanel(False,pnlfee);
        SetPanel(False,pnlHintGrid);
        exit;
      end;
      if (TStringGrid(Sender).Cells[modifyType,Arow] ='N') and (Trim(TStringGrid(Sender).Cells[F_code,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    END;
    F_Qty,F_Part:
    BEGIN
      if (Trim(TStringGrid(Sender).Cells[F_code,Arow]) = '' ) or (Trim(TStringGrid(Sender).Cells[F_NAME,Arow])='') then
        Exit;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdTSGFEE.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      EdTSGFEE.Show;
      EdTSGFEE.BringTofront;
      EdTSGFEE.Text := TStringGrid(Sender).cells[Acol,Arow];
      EdTSGFEE.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    END;
  end;
end;

procedure TFrmOrder.DBText19Click(Sender: TObject);
var
  tmpGrd : string;
begin
  inherited;
  if RepeatInGrid(DBCFee.DataSource.DataSet.FieldByName('FEE_CODE').AsString,'0', 3, SGFEE) then
  begin
    ShowMessage(DBCFee.DataSource.DataSet.FieldByName('FEE_NAME').AsString + ' ���ƶ}��');
    SGFee.Rows[SGFee.Row].Clear;
  end
  else if Trim(DBCFee.DataSource.DataSet.FieldByName('FEE_CODE').AsString) <> '' then
  begin
    pkgdtl := true;
    InsertFee(Trim(DBCFee.DataSource.DataSet.FieldByName('FEE_CODE').AsString),'');
    pkgdtl := False;
  end
  else
    SGFee.Rows[SGFee.Row].Clear;
  SetPanel(False,pnlfee);
  SetPanel(False,pnlHintGrid);

end;

procedure TFrmOrder.SGMtrlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_ESCAPE) then
  begin
    pnlHintGrid.Visible := false;
  end;

  if pnlHintGrid.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText4Click(self);
        key :=0;
      end;
      Sendmessage(DBCMtrl.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;
end;

procedure TFrmOrder.SGMtrlKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  q_str : string;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (pnlHintGrid.Visible) then
  exit;
  if (TStringGrid(Sender).Col = 3) then
  begin
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      DM.QrySearch.Close;
      q_str := getPreOrderSql(13);
      q_str := q_str + ' AND Upper(Fee_CODE) like '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%');
      dm.QrySearch.SQL.Text := q_str;
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');

      if not DM.QrySearch.IsEmpty then
      begin
        SetPanel(true,pnlHintGrid);
        SetPanel(True,pnlmtrl);
      end;
    end
    else
      if pnlHintGrid.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,pnlmtrl);
      end;
  end
  else  if TStringGrid(Sender).Col = 4 then
  begin
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      q_str := getPreOrderSql(13);
      q_str := q_str + ' And Upper(FEE_NAME||FEE_DESC) LIKE '+Qt('%'+AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%');
      dm.QrySearch.SQL.Text := q_str;
      sql_Waiting_log('open',q_str);
      dm.QrySearch.Open;
      sql_Waiting_log('close','');
      if not DM.QrySearch.IsEmpty then
      begin
        SetPanel(true,pnlHintGrid);
        SetPanel(True,pnlmtrl);
      end;
    end
    else
      if pnlHintGrid.Visible then
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,pnlmtrl);
      end;
  end;
end;

procedure TFrmOrder.SGMtrlSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  case ACol of
    L_Ins:
    begin
      if SGMtrl.Cells[L_code,Arow] ='' then
        Exit;
      SGMtrl.perform(WM_CANCELMODE,0,0);
      MyRec:=SGMtrl.CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      CBBMtrlYN.SetBounds(Mypoint.x+1, Mypoint.y+1+SGMtrl.Top,MyRec.right-MyRec.left,SGMtrl.DefaultRowHeight );
      CBBMtrlYN.Show;
      CBBMtrlYN.BringTofront;
      CBBMtrlYN.Text := SGMtrl.cells[Acol,Arow];
      CBBMtrlYN.SetFocus;
      SGMtrl.Options := SGMtrl.Options - [goEditing];
    end;
    L_code,L_Name:
    BEGIN
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,Arow],'N')<> 'N' then
      begin
        SetPanel(False,pnlmtrl);
        SetPanel(False,pnlHintGrid);
        exit;
      end;
      if (TStringGrid(Sender).Cells[modifyType,Arow] ='N') and (Trim(TStringGrid(Sender).Cells[L_code,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    END;
    L_Qty,L_Patr:
    BEGIN
      if (Trim(TStringGrid(Sender).Cells[L_code,Arow]) = '' ) or (Trim(TStringGrid(Sender).Cells[L_Name,Arow])='') then
        Exit;
      TStringGrid(Sender).perform(WM_CANCELMODE,0,0);
      MyRec:=TStringGrid(Sender).CellRect(Acol,Arow);
      Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
      EdTSGMTRL.SetBounds(Mypoint.x+1, Mypoint.y+1+TStringGrid(Sender).Top,MyRec.right-MyRec.left,TStringGrid(Sender).DefaultRowHeight );
      EdTSGMTRL.Show;
      EdTSGMTRL.BringTofront;
      EdTSGMTRL.Text := TStringGrid(Sender).cells[Acol,Arow];
      EdTSGMTRL.SetFocus;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
    END;
  end;
end;

procedure TFrmOrder.DBText4Click(Sender: TObject);
begin
  inherited;
  if RepeatInGrid(DBCMtrl.DataSource.DataSet.FieldByName('FEE_CODE').AsString,'0', 3, SGFEE) then
  begin
    ShowMessage(DBCMtrl.DataSource.DataSet.FieldByName('FEE_NAME').AsString + ' ���ƶ}��');
    SGMtrl.Rows[SGMtrl.Row].Clear;
  end
  else if Trim(DBCMtrl.DataSource.DataSet.FieldByName('FEE_CODE').AsString) <> '' then
  begin
    SGMtrl.Cells[modifytype, SGMtrl.Row] := 'N';
    SGMtrl.Cells[3, SGMtrl.Row] := DBCMtrl.DataSource.DataSet.FieldByName('fee_code').AsString; //  �O�ΥN�X
    SGMtrl.Cells[4, SGMtrl.Row] := DBCMtrl.DataSource.DataSet.FieldByName('fee_name').AsString; //  �O�ΦW��
    SGMtrl.Cells[5, SGMtrl.Row] := ''; //  ���O
    SGMtrl.Cells[6, SGMtrl.Row] := '1'; //  �ƶq
    SGMtrl.Cells[7, SGMtrl.Row] := DBCMtrl.DataSource.DataSet.FieldByName('ins_flag').AsString;//SelfPay(Hint_Grid.DataSource.DataSet.FieldByName('ins_flag').AsString);// �P�_�۶O/���O
    if SGMtrl.Row = (SGMtrl.RowCount - 1) then
    begin
      SGMtrl.RowCount := SGMtrl.RowCount + 1;
    end;
    SGMtrl.Row := SGMtrl.Row+1;
  end
  else
    SGMtrl.Rows[SGMtrl.Row].Clear;
  SetPanel(False,pnlMtrl);
  SetPanel(False,pnlHintGrid);
end;

{procedure TFrmOrder.ToolButton47Click(Sender: TObject);
begin
  inherited;
  OutList.Clear;
  myDate := Date;
  myTime := Time;
  if not assigned(FrmLabOrder) then
    FrmLabOrder := TFrmLabOrder.Create(Self);
  FrmLabOrder.ShowModal;
  InsertLab('','','','','','','');
end;}

procedure TFrmOrder.ToolButton80Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not Assigned(FrmUsePkg) then
    FrmUsePkg := TFrmUsePkg.Create(self);
  try
    FrmUsePkg.theDept := GetUserDept;
    FrmUsePkg.TheDoc := getUserId;
    FrmUsePkg.ShowModal;
    if FrmUsePkg.UseFlag then
    begin
      UseThePkg(FrmUsePKG);
    end;
  finally
    FreeAndNil(FrmUsePkg);
  end;
end;

function TFrmOrder.UseThePkg(usefrm: TForm): Boolean;
var
  i : Integer;
  TSg,MSg,LSg,CSg,Mtr,Mchk,mins,mx: TStringGrid;
  str: string;
begin
  TSg := TStringGrid.Create(FrmOrder);
  MSg := TStringGrid.Create(FrmOrder);
  LSg  := TStringGrid.Create(FrmOrder);
  CSg := TStringGrid.Create(FrmOrder);
  Mtr := TStringGrid.Create(FrmOrder);
  Mchk := TStringGrid.Create(FrmOrder);
  mins := TStringGrid.Create(FrmOrder);
  mx  := TStringGrid.Create(FrmOrder);

  if usefrm.Name= 'FrmUsePkg' then
  begin
    TSg.RowCount := FrmUsePkg.StringGrid1.RowCount;
    TSg.ColCount := FrmUsePkg.StringGrid1.ColCount;
    MSg.RowCount := FrmUsePkg.StringGrid2.RowCount;
    MSg.ColCount := FrmUsePkg.StringGrid2.ColCount;
    LSg.RowCount := FrmUsePkg.StringGrid3.RowCount;
    LSg.ColCount := FrmUsePkg.StringGrid3.ColCount;
    CSg.RowCount := FrmUsePkg.StringGrid4.RowCount;
    CSg.ColCount := FrmUsePkg.StringGrid4.ColCount;
    Mtr.RowCount := FrmUsePkg.StringGrid8.RowCount;
    Mtr.ColCount := FrmUsePkg.StringGrid8.ColCount;
    Mchk.RowCount := FrmUsePkg.StringGrid7.RowCount;
    Mchk.ColCount := FrmUsePkg.StringGrid7.ColCount;
    mins.RowCount := FrmUsePkg.StringGrid6.RowCount;
    mins.ColCount := FrmUsePkg.StringGrid6.ColCount;
    mx.RowCount := FrmUsePkg.StringGrid5.RowCount;
    mx.ColCount := FrmUsePkg.StringGrid5.ColCount;
    for i := 0 to FrmUsePkg.StringGrid1.RowCount -1 do
      TSg.Rows[i].Text :=  FrmUsePkg.StringGrid1.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid2.RowCount -1 do
      MSg.Rows[i].Text :=  FrmUsePkg.StringGrid2.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid3.RowCount -1 do
      LSg.Rows[i].Text :=  FrmUsePkg.StringGrid3.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid4.RowCount -1 do
      CSg.Rows[i].Text :=  FrmUsePkg.StringGrid4.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid8.RowCount -1 do
      Mtr.Rows[i].Text :=  FrmUsePkg.StringGrid8.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid7.RowCount -1 do
      Mchk.Rows[i].Text :=  FrmUsePkg.StringGrid7.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid6.RowCount -1 do
      mins.Rows[i].Text :=  FrmUsePkg.StringGrid6.Rows[i].Text;
    for i := 0 to FrmUsePkg.StringGrid5.RowCount -1 do
      mx.Rows[i].Text :=  FrmUsePkg.StringGrid5.Rows[i].Text;
  end
  else
  begin
    TSg.RowCount := Frmoften.StringGrid1.RowCount;
    TSg.ColCount := Frmoften.StringGrid1.ColCount;
    MSg.RowCount := Frmoften.StringGrid2.RowCount;
    MSg.ColCount := Frmoften.StringGrid2.ColCount;
    LSg.RowCount := Frmoften.StringGrid3.RowCount;
    LSg.ColCount := Frmoften.StringGrid3.ColCount;
    CSg.RowCount := Frmoften.StringGrid4.RowCount;
    CSg.ColCount := Frmoften.StringGrid4.ColCount;
    Mtr.RowCount := Frmoften.StringGrid8.RowCount;
    Mtr.ColCount := Frmoften.StringGrid8.ColCount;
    Mchk.RowCount := Frmoften.StringGrid7.RowCount;
    Mchk.ColCount := Frmoften.StringGrid7.ColCount;
    mins.RowCount := Frmoften.StringGrid6.RowCount;
    mins.ColCount := Frmoften.StringGrid6.ColCount;
    mx.RowCount := Frmoften.StringGrid5.RowCount;
    mx.ColCount := Frmoften.StringGrid5.ColCount;
    for i := 0 to Frmoften.StringGrid1.RowCount -1 do
      TSg.Rows[i].Text :=  Frmoften.StringGrid1.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid2.RowCount -1 do
      MSg.Rows[i].Text :=  Frmoften.StringGrid2.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid3.RowCount -1 do
      LSg.Rows[i].Text :=  Frmoften.StringGrid3.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid4.RowCount -1 do
      CSg.Rows[i].Text :=  Frmoften.StringGrid4.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid8.RowCount -1 do
      Mtr.Rows[i].Text :=  Frmoften.StringGrid8.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid7.RowCount -1 do
      Mchk.Rows[i].Text :=  Frmoften.StringGrid7.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid6.RowCount -1 do
      mins.Rows[i].Text :=  Frmoften.StringGrid6.Rows[i].Text;
    for i := 0 to Frmoften.StringGrid5.RowCount -1 do
      mx.Rows[i].Text :=  Frmoften.StringGrid5.Rows[i].Text;
  end;

  for i := 1 to TSg.RowCount -1 do
  begin
    if TSg.Cells[0,i]='V' then
    begin
      if Trim(TSg.Cells[3,i])= 'O' then
        rheObj.Lines.Add(Trim(TSg.Cells[2,i]));
      if Trim(TSg.Cells[3,i])= 'S' then
        rheSub.Lines.Add(Trim(TSg.Cells[2,i]));
      if Trim(TSg.Cells[3,i])= 'P' then
        rhePlan.Lines.Add(Trim(TSg.Cells[2,i]));
      if Trim(TSg.Cells[3,i])= 'A' then
        rheHist.Lines.Add(Trim(TSg.Cells[2,i]));
      if Trim(TSg.Cells[3,i])= 'R' then //��rorder
        insertordertxt(TSg.Cells[1,i],TSg.Cells[2,i]);
    end;
  end;

  //�ī~
  if SGMed.RowCount > 0 then
    SGMed.Row := SGMed.RowCount-1
  else
    SGMed.Row := 0;
  for i := 1 to MSg.RowCount -1 do
  begin
    if MSg.Cells[0,i]='V' then
    begin
      if InsertMed(MSg.Cells[1,i],MSg.Cells[4,i],MSg.Cells[3,i],'','',MSg.Cells[6,i],MSg.Cells[8,i],MSg.Cells[5,i]) = True then
      begin        //Med_code,     aCir,            aQty,     DcDate,DcTime, aPath, aMemo,  adays:
        //�ī~�s�a�l��
        InsertChild(MSg.Cells[1,i],SGMed.Row);
      end;
    end;
  end;

  //�B�m
  if SGFee.RowCount > 0 then
    SGFee.Row := SGFee.RowCount-1
  else
    SGFee.Row := 0;
  for i := 1 to LSg.RowCount -1 do
    if LSg.Cells[0,i]='V' then
      InsertFee(Trim(LSg.Cells[1,i]), 'pkg', Trim(LSg.Cells[3,i]), Trim(LSg.Cells[4,i]), Trim(LSg.Cells[5,i]));


  //�E�_
  if icdchangea <> 'N' then
  begin
    for i := 1 to CSg.RowCount -1 do
    begin
      if CSg.Cells[0,i]='V' then
      begin
        DM.QrySearch.Close;
        DM.QrySearch.SQL.Clear;
        DM.QrySearch.SQL.Add('select icd_code from icd9_trans_icd10 where icd9_code='+qt(Trim(CSg.Cells[1,i])));
        DM.QrySearch.Open;
        if not DM.QrySearch.IsEmpty then
          InsertIcd10(Trim(DM.QrySearch.FieldByName('icd_code').AsString))
        else
          InsertIcd10(Trim(CSg.Cells[1,i]));
      end;
    end;
  end
  else
  begin
    for i := 1 to CSg.RowCount -1 do
      if CSg.Cells[0,i]='V' then
        InsertIcd(Trim(CSg.Cells[1,i]),'Y');
  end;
  //��g Select ''V'' "��",Fee_code "�N�X",Fee_Name "�W��",Unit_Qty "���q",item_no "����",PATH_CODE "�~�|",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "��",ORDER_DESC "����",self_pay_flag
  if SGXRay.RowCount > 0 then
    SGXRay.Row := SGXRay.RowCount-1
  else
    SGXRay.Row := 0;
  for i := 1 to mx.RowCount -1 do
    if mx.Cells[0,i]='V' then//feecode,ordertpye,sefins,qty,POSITION,sendcd2,memo,sendcd1
      InsertXRay(mx.Cells[1,i],mx.Cells[11,i],mx.Cells[13,i],mx.Cells[3,i],mx.Cells[5,i],mx.Cells[8,i],mx.Cells[12,i],mx.Cells[7,i]);

  //���� V'' "��",Fee_code "�N�X",Fee_Name "�W��",Unit_Qty "���q",item_no "����",PATH_CODE "�~�|",item_no,Send_cd_1,Send_cd_2,Send_cd_3,Order_type,TEXT_KIND "��",ORDER_DESC "����",self_pay_flag
  if SGLab.RowCount > 0 then
    SGLab.Row := SGLab.RowCount-1
  else
    SGLab.Row := 0;
  for i := 1 to mins.RowCount -1 do
    if mins.Cells[0,i]='V' then
      InsertLab(mins.Cells[1,i],mins.Cells[3,i],mins.Cells[13,i],mins.Cells[7,i],mins.Cells[8,i],mins.Cells[9,i],'');
                        //�N�X         �ƶq            �۶O           sendcd1        sendcd2        sendcd3

  //�ˬd
  if SGChk.RowCount > 0 then
    SGChk.Row := SGChk.RowCount-1
  else
    SGChk.Row := 0;
  for i := 1 to Mchk.RowCount -1 do
    if Mchk.Cells[0,i]='V' then //feecode,sendcd1,qty,sefins,memo
      InsertChk(Mchk.Cells[1,i],Mchk.Cells[7,i],Mchk.Cells[3,i],Mchk.Cells[13,i],Mchk.Cells[11,i]);

  //�ç�
  if SGMtrl.RowCount > 0 then
    SGMtrl.Row := SGMtrl.RowCount-1
  else
    SGMtrl.Row := 0;
  for i := 1 to Mtr.RowCount -1 do
    if Mtr.Cells[0,i]='V' then//fee_code,qty,selfpay
      InsertMrtl(Mtr.Cells[1,i],Mtr.Cells[3,i],Mtr.Cells[13,i]);


  OutList.Clear;
  FreeAndNil(TSg);
  FreeAndNil(MSg);
  FreeAndNil(CSg);
  FreeAndNil(LSg);
  FreeAndNil(Mtr);
  FreeAndNil(Mchk);
  FreeAndNil(mins);
  FreeAndNil(mx);
end;

procedure TFrmOrder.SGOrderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  q_str: string;
begin
  inherited;
{  if (TStringGrid(Sender).Col = m_name) then
  begin
    TStringGrid(Sender).Options := TStringGrid(Sender).Options +[goEditing];
    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      q_str := sql_str(1);
      q_str := q_str +' And INSTR(UPPER(Fee_DESC)||UPPER(Fee_Name),'+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]))+') = 1'+
                      ' Order by  USE_STATUS_O,Fee_code,Fee_Desc,Fee_Name';
      dm.QrySearch.SQL.Text := q_str;
      dm.QrySearch.Open;
      IF DM.QrySearch.Eof THEN
      BEGIN
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelMed);
      END
      ELSE
      BEGIN
        SetPanel(true,pnlHintGrid);
        SetPanel(True,PanelMed);
      END;
      DBText32.Hint :=  TStringGrid(Sender).Name;
    end
    ELSE
    BEGIN
      TStringGrid(Sender).Options := TStringGrid(Sender).Options +[goEditing];
      SetPanel(False,pnlHintGrid);
      SetPanel(False,PanelMed);
    END;
  end;
  if TStringGrid(Sender).Col = M_code then
  begin

    if (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <> '') then
    begin
      q_str := sql_str(1);
      q_str := q_str + ' and (UPPER(fee_code) like '+Qt(AnsiUpperCase(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row])+'%')+
                       ' ) Order by  USE_STATUS_O,Fee_code,Fee_Desc,Fee_Name';
      dm.QrySearch.SQL.Text := q_str;
      dm.QrySearch.Open;
      IF DM.QrySearch.Eof THEN
      BEGIN
        SetPanel(False,pnlHintGrid);
        SetPanel(False,PanelMed);
      END
      ELSE
      BEGIN
        SetPanel(true,pnlHintGrid);
        SetPanel(True,PanelMed);
      END;
      DBText32.Hint :=  TStringGrid(Sender).Name;
    end
    ELSE
    BEGIN
      SetPanel(False,pnlHintGrid);
      SetPanel(False,PanelMed);
    end
  END;}
end;

function TFrmOrder.SaveOrder(Sender: TObject): Boolean;
var
  msg, med_days, Med_No, oldseq, oldsheetno, oldlabno, STROLDSEQNO: string;
  isRePeat: Boolean;
  SQLs, SQLs1: TStrings;
  SQLo: TObjectList;
  tmpSql, QuerySql, OrderType, q_str: String;
  i,j,leve: integer;
  tmpSG: TStringGrid;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult,DD,DTIM,ICD9,order_types : STRING;
  //����opd_basic1����
  printcount,pro_type,fasdoc : STRING;
  QryList : TStringList;
  savelisr : TStringList;
  newLine : boolean;
begin
  //use_opd_log('�s��');
  try
    QryList:=TStringList.Create;
    savelisr:=TStringList.Create;
    isRePeat := False;
    SQLo := TObjectList.Create;
    Result:=false;
    leve := 0;
    if getFeeNo = '' then
    begin
      ShowMessage('�L�k���o����Ǹ�');
      BtnTempSave.Enabled := true;
      Exit;
    end;
    if GetEpdDate = '' then
    begin
      ShowMessage('�L�k���o�N����');
      BtnTempSave.Enabled := true;
      Exit;
    end;
    //20140402���server����P�ɶ�
    IF 'SERVER' = UpperCase(TRIM(SetSys.ReadString('SYSTEM','GETDATEFROM',''))) THEN
    BEGIN
      DM.QrySearch.Close;
      DM.QrySearch.SQL.Text := 'select to_char(sysdate,''YYYYMMDD'')-19110000 as dd,to_char(sysdate,''HH24MISS'') as tt from dual';
      DM.QrySearch.Open;
      DD := DM.QrySearch.fieldbyname('dd').AsString;
      DTIM:= DM.QrySearch.fieldbyname('tt').AsString;
    END
    ELSE
    BEGIN
      DD := ROCDate(Now,'');
      DTIM:= ROCTimes(Now,'');
    END;

    q_str := '';
    DM.QrySearch.Close;
    q_str := sql_str(4);
    SetParamter(q_str,'$fee_no$',qt(getFeeNo));
    DM.QrySearch.SQL.Text := q_str;
    DM.QrySearch.Open;

    //24�p�ɦ^�E�[��20140206 add
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := 'select seq_no from epdexitbk_log where chr_no='+qt(GetChrNo)+' and old_feeno='+qt(GetFeeNo);
    sql_Waiting_log('open',DM.QryTemp.SQL.Text);
    DM.QryTemp.Open;
    sql_Waiting_log('close','');
    if not DM.QryTemp.IsEmpty then
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Text := 'select log_date, log_time from epd_timelog where fee_no ='+qt(GetFeeNo)+' and time_type = ''71'' and cncl_flag = ''N'' AND LOG_DATE >= '+qt(GetEpdDate);
      sql_Waiting_log('open',DM.QryTemp.SQL.Text);
      DM.QryTemp.Open;
      sql_Waiting_log('close','');
      if DM.QryTemp.IsEmpty then
        times_log('BKFIRSRORDERDOC',GetVsCode,getorderdoc,'�^�E�Ĥ@���s����v');
    end;

    //����opd_basic1
    printcount := NullStrTo(trim(DM.QrySearch.fieldbyname('PRINT_FLAG').AsString),'1');
    pro_type := NullStrTo(trim(DM.QrySearch.fieldbyname('PROJECT_TYPE').AsString),'N');
    if NullStrTo(trim(DM.QrySearch.fieldbyname('feat_doc').AsString),'') = '' then
    begin//�����Ĥ@��VS�Border doc 20140206 edit
      setvsfeatcode(GetVsCode);
      times_log('FIRSRORDERDOC',GetVsCode,getorderdoc,'�Ĥ@���s����v');
    end
    else
      setvsfeatcode(trim(DM.QrySearch.fieldbyname('feat_doc').AsString));
    DM.QryTemp.Close;

    QuerySql:='';
    if not GetMaxNo then
    begin
      ShowMessage('���Ǹ�����');
      exit;
    end;
    inc(all_seq);
    SetSheet(GetFeeNo+AddChar(IntToStr(all_seq),'0',4));
    //�˶�
    DM.QrySubSearch.Close;
    q_str := GETEPDRECORD(1);
    q_str := q_str +' where id_no=$ID_NO$ and arrival_date=$DATE_TIME3$';
    SetParamter(q_str,'$ID_NO$',qt(GetIdNo));
    SetParamter(q_str,'$DATE_TIME3$',qt(FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))));//qt(IntToStr(StrToInt64(Trim(GetEpdDate))+19110000)+IntToStr(StrToInt64(COPY(Trim(GetEpdTime),1,3)))));
    DM.QrySubSearch.SQL.Text := q_str;
    sql_Waiting_log('open',q_str);
    DM.QrySubSearch.Open;
    sql_Waiting_log('close','');
    if DM.QrySubSearch.IsEmpty then
    begin
      DM.QrySubSearch.Close;
      q_str := GETEPDRECORD(1);
      q_str := q_str +' where id_no=''*'' and arrival_date=$DATE_TIME3$ and arrival_time LIKE $TIME$';
      SetParamter(q_str,'$TIME$',qt(COPY(Trim(GetEpdTime),1,3)+'%'));
      SetParamter(q_str,'$DATE_TIME3$',qt(FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))));//qt(IntToStr(StrToInt64(Trim(GetEpdDate))+19110000)+IntToStr(StrToInt64(COPY(Trim(GetEpdTime),1,3)))));
      DM.QrySubSearch.SQL.Text := q_str;
      sql_Waiting_log('open',q_str);
      DM.QrySubSearch.Open;
      sql_Waiting_log('close','');
    end;

    IF (all_seq = 1) or (Trim(DM.QrySubSearch.FieldByName('triage_level').AsString) <> Trim(SGtriage.Cells[2,1])) THEN
    begin
      QryList.Add('#P#�˶˯ż� : '+SGtriage.Cells[2,1]);
      QryList.Add(charadd('��� :'+Trim(SGtriage.Cells[7,1])+'��C',' ',14)+charadd('�I�l :'+Trim(SGtriage.Cells[10,1])+'��',' ',14)+
                  CharAdd('�߷i :'+Trim(SGtriage.Cells[9,1])+'��',' ',14)+CharAdd('�αi��/���Y�� :'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[12,1])+'mmHg',' ',40));
      QryList.Add(charadd('�N�Ѫ��A : E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1]),' ',28)+
                  charadd('�魫 :'+textstrReplace(Trim(SGtriage.Cells[6,1]))+'kg',' ',20)+charadd('���@�� : '+Trim(SGtriage.Cells[10,1])+'%',' ',16)   );
      QryList.Add('�D�D:'+textstrReplace(Trim(SGtriage.Cells[28,1])));
      //108.08.30 shh ITe 11138 add �˶�119��J
      if (Trim(SGtriage.Cells[31,1]) = '1') then
      begin
        QryList.Add('���Ӱ|�覡��119��J');
      end;

      for i := 0 to QryList.Count-1 do
      begin
        SQLs := TStringList.Create;
        SQLs.Add(insertepdrecordorder('T_TRIAGE',QryList.Strings[i],'N',DD,DTIM,'N'));
        SQLo.Add(SQLs);
      end;
    end;
    //S
    if rheSub.Tag <> Length(Trim(rheSub.Lines.Text)) then
    begin
      isRePeat := True;
      FOR I := 0 TO rheSub.Lines.Count-1 DO
      BEGIN
        IF Trim(rheSub.Lines.Strings[I])<> '' THEN
        BEGIN
          SQLs := TStringList.Create;
          if i = 0 then
            SQLs.Add(insertepdrecordorder('O_SUBJECT','Subject�i'+Trim(rheSub.Lines.Strings[I]),'N',DD,DTIM,'N'))
          else
            SQLs.Add(insertepdrecordorder('O_SUBJECT',' �i'+Trim(rheSub.Lines.Strings[I]),'N',DD,DTIM,'N'));
          SQLo.Add(SQLs);
        END;
      END;
    end;
    //O
    if rheObj.Tag <> Length(Trim(rheObj.Lines.Text)) then
    begin
      isRePeat := True;
      FOR I := 0 TO rheObj.Lines.Count-1 DO
      BEGIN
        IF Trim(rheObj.Lines.Strings[I])<> '' THEN
        BEGIN
          SQLs := TStringList.Create;
          if i = 0 then
            SQLs.Add(insertepdrecordorder('O_OJECT','Object�i'+Trim(rheObj.Lines.Strings[I]),'N',DD,DTIM,'N'))
          else
            SQLs.Add(insertepdrecordorder('O_OJECT',' �i'+Trim(rheObj.Lines.Strings[I]),'N',DD,DTIM,'N'));
          SQLo.Add(SQLs);
        END;
      end;
    end;
    //A
    if rheHist.Tag <> Length(Trim(rheHist.Lines.Text)) then
    begin
      isRePeat := True;
      FOR I := 0 TO rheHist.Lines.Count-1 DO
      BEGIN
        IF Trim(rheHist.Lines.Strings[I])<> '' THEN
        BEGIN
          SQLs := TStringList.Create;
          if i = 0 then
            SQLs.Add(insertepdrecordorder('O_HISTORY','Assessment�i'+Trim(rheHist.Lines.Strings[I]),'N',DD,DTIM,'N'))
          else
            SQLs.Add(insertepdrecordorder('O_HISTORY',' �i'+Trim(rheHist.Lines.Strings[I]),'N',DD,DTIM,'N'));
          SQLo.Add(SQLs);
        END;
      end;
    end;
    //P
    if rhePlan.Tag <> Length(Trim(rhePlan.Lines.Text)) then
    begin
      isRePeat := True;
      FOR I := 0 TO rhePlan.Lines.Count-1 DO
      BEGIN
        IF Trim(rhePlan.Lines.Strings[I])<> '' THEN
        BEGIN
          SQLs := TStringList.Create;
          if i = 0 then
            SQLs.Add(insertepdrecordorder('O_PLAN','Plan�i'+Trim(rhePlan.Lines.Strings[I]),'N',DD,DTIM,'N'))
          else
            SQLs.Add(insertepdrecordorder('O_PLAN',' �i'+Trim(rhePlan.Lines.Strings[I]),'N',DD,DTIM,'N'));
          SQLo.Add(SQLs);
        END;
      end;
    end;

    //ICD9-10
    if (icdchangea <> 'N') and (copy(GetEpdDate,1,5) >= '10501' ) then
    begin
      //icd10  20151222
      DM.QrySubSearch.Close;
      DM.QrySubSearch.SQL.Clear;
      DM.QrySubSearch.SQL.Add('select icd_code,(select eng_full_desc from icd_code_basic where icd_code=order_icd_code.icd_code and rownum = 1) as icd_desc ');
      DM.QrySubSearch.SQL.Add('from order_icd_code where order_kind=''EPD'' and order_type=''N'' and fee_no= '+qt(GetFeeNo));
      DM.QrySubSearch.Open;
      while not DM.QrySubSearch.Eof do
      //for i := 1 to 10 do
      begin
        //old icd
        if (TRIM(DM.QrySubSearch.FieldByName('icd_code').AsString)<>'') then
        begin
          ICD9 := 'D';
          for j := 1 to 10 do
          begin
            if (TRIM(DM.QrySubSearch.FieldByName('icd_code').AsString) = Trim(SGIcd10.Cells[0,J])) THEN
            begin //��ICD10�٦s�b
              ICD9 := 'O';
              Break; 
            end;
          end;
          if ICD9 ='D' then
          begin
            //�s�W�@���R������
            SQLs := TStringList.Create;
            SQLs.Add(insertepdrecordorder('A_ASSESSMENT',CharAdd(TRIM(DM.QrySubSearch.FieldByName('icd_code').AsString),' ',12)+Trim(FulltoHalf(TRIM(DM.QrySubSearch.FieldByName('icd_desc').AsString))),ICD9,DD,DTIM,'Y'));
            SQLo.Add(SQLs);
            //�R��
            SQLs := TStringList.Create;
            SQLs.Add('UPDATE epd_record SET DEL_FLAG=''Y'',DEL_DATE='+Qt(DD)+',DEL_TIME='+Qt(DTIM)+' WHERE FEE_NO='+Qt(GetFeeNo)+' AND KIND=''A_ASSESSMENT'' AND order_date= '+Qt(GetEpdDate)+' AND SUBSTR(TEXT,1,12)='+QT(CharAdd(TRIM(DM.QrySubSearch.FieldByName('icd_code').AsString),' ',12)));
            SQLo.Add(SQLs);
          end;
        end;
        DM.QrySubSearch.Next;
      end;
      //new icd
      for i := 1 to 10 do
      begin
        if Trim(SGIcd10.Cells[0,i]) <> '' then
        begin
          ICD9 := 'N';
          DM.QrySubSearch.First;
          while not DM.QrySubSearch.Eof do
          begin
              if (TRIM(DM.QrySubSearch.FieldByName('icd_code').AsString) = Trim(SGIcd10.Cells[0,i])) THEN
              begin
                ICD9 := 'O';
                Break; //�ۦP
              end;
            DM.QrySubSearch.Next;
          end;
          
          if ICD9 ='N' then
          begin
            SQLs := TStringList.Create;
            SQLs.Add(insertepdrecordorder('A_ASSESSMENT',CharAdd(Trim(SGIcd10.Cells[0,I]),' ',12)+Trim(FulltoHalf(SGIcd10.Cells[1,I])),ICD9,DD,DTIM,'N'));
            SQLo.Add(SQLs);
          end;
        end;
      end;
    end
    else
    begin
      //icd9
      for i := 1 to 10 do
      begin
        //old icd
        if (TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString)<>'') then
        begin
          ICD9 := 'D';
          for j := 1 to 10 do
          begin
            if (TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString) = Trim(SGIcd.Cells[0,J])) THEN
            begin
              ICD9 := 'O';
              Break; //�ۦP
            end;
          end;
          if ICD9 ='D' then
          begin
            //�s�W�@���R������
            SQLs := TStringList.Create;
            SQLs.Add(insertepdrecordorder('A_ASSESSMENT',CharAdd(TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString),' ',12)+Trim(FulltoHalf(TRIM(DM.QrySearch.FieldByName('ICD9_DESC'+IntToStr(I)).AsString))),ICD9,DD,DTIM,'Y'));
            SQLo.Add(SQLs);
            //�R��
            SQLs := TStringList.Create;
            SQLs.Add('UPDATE epd_record SET DEL_FLAG=''Y'',DEL_DATE='+Qt(DD)+',DEL_TIME='+Qt(DTIM)+' WHERE FEE_NO='+Qt(GetFeeNo)+' AND KIND=''A_ASSESSMENT'' AND order_date= '+Qt(GetEpdDate)+' AND SUBSTR(TEXT,1,12)='+QT(CharAdd(TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString),' ',12)));
            SQLo.Add(SQLs);
          end;
        end;
        //new icd
        if Trim(SGIcd.Cells[0,i]) <> '' then
        begin
          ICD9 := 'N';
          for j := 1 to 10 do
          begin
            if (TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(j)).AsString) = Trim(SGIcd.Cells[0,i])) THEN
            begin
              ICD9 := 'O';
              Break; //�ۦP
            end;
          end;
          if ICD9 ='N' then
          begin
            SQLs := TStringList.Create;
            SQLs.Add(insertepdrecordorder('A_ASSESSMENT',CharAdd(Trim(SGIcd.Cells[0,I]),' ',12)+Trim(FulltoHalf(SGIcd.Cells[1,I])),ICD9,DD,DTIM,'N'));
            SQLo.Add(SQLs);
          end;
        end;
      end;
    end;

    try
      DM.ADOLink.BeginTrans;
      DM.QryUpdate.Close;
      DM.QryUpdate.SQL.Clear;
      DM.QryUpdate.SQL.Add('delete opd_basic1 where fee_no='+Qt(GetFeeNo)+' AND OPD_DATE='+Qt(GetEpdDate));
      dm.QryUpdate.ExecSQL;
      if  TBitBtn(Sender).Name = btnSave.Name  then //���E�M���ɦ���O�B�ϰ�
      begin
        with DM.QryUpdate do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Update OPD_BASIC set EPD_BED='''' Where fee_no='+Qt(GetFeeNo));
          execsql;
          Close;
          SQL.Clear;
          SQL.Add('Update OPD_BASIC1 set EPD_BED='''',EPD_AREA='''' Where fee_no='+Qt(GetFeeNo));
          Execsql;
          Close;
          SQL.Clear;
          SQL.Add('Update BED_AREA set FEE_NO='''',INAREA='''' Where fee_no='+Qt(GetFeeNo));
          Execsql;
          Close;
          SQL.Clear;
          SQL.Add('UPDATE epd_vcb_basic SET CNCL_FLAG=''Y'' Where FEE_NO='+Qt(GetFeeNo));
          Execsql;
        end;
      END
      ELSE
      BEGIN
        with DM.QryUpdate do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE epd_vcb_basic SET CNCL_FLAG=''N'' Where FEE_NO='+Qt(GetFeeNo));
          Execsql;
        end;
      END;
      DM.ADOLink.CommitTrans;
    except
      DM.ADOLink.RollbackTrans;
    end;



    q_str := sql_str(5);
    SetParamter(q_str,':OPD_KIND',qt('E'));
    SetParamter(q_str,':OPD_DATE',qt(GetEpdDate));
    SetParamter(q_str,':DEPT_CODE',qt(GetPatDept));
    SetParamter(q_str,':SHIFT_NO',qt(Getshiftno));
    SetParamter(q_str,':DEPT_ROOM',qt(GetdeptRoom));
    SetParamter(q_str,':DOC_CODE',qt(getorderdoc));
    SetParamter(q_str,':SEQ_NO',qt(GetPatId));
    SetParamter(q_str,':CHR_NO',qt(GetChrNo));
    SetParamter(q_str,':FEE_NO',qt(GetFeeNo));
    SetParamter(q_str,':PAT_ID',Qt(Getpartid));
    SetParamter(q_str,':INS_SEQ_NO',Qt(''));
    SetParamter(q_str,':PROG_FLAG',qt('N'));
    if Trim(SGIcd.Cells[0,1]) = '' then
      SetParamter(q_str,':ICD9_CODEa',qt(' '))
    else
      SetParamter(q_str,':ICD9_CODEa',qt(Trim(SGIcd.Cells[0,1])));
    SetParamter(q_str,':ICD9_CODE1',qt(Trim(SGIcd.Cells[0,2])));
    SetParamter(q_str,':ICD9_CODE2',qt(Trim(SGIcd.Cells[0,3])));
    SetParamter(q_str,':ICD9_CODE3',qt(Trim(SGIcd.Cells[0,4])));
    SetParamter(q_str,':ICD9_CODE4',qt(Trim(SGIcd.Cells[0,5])));
    SetParamter(q_str,':ICD9_DESCa',qt(Trim(SGIcd.Cells[2,1])));
    SetParamter(q_str,':ICD9_DESC1',qt(Trim(SGIcd.Cells[2,2])));
    SetParamter(q_str,':ICD9_DESC2',qt(Trim(SGIcd.Cells[2,3])));
    SetParamter(q_str,':ICD9_DESC3',qt(Trim(SGIcd.Cells[2,4])));
    SetParamter(q_str,':ICD9_DESC4',qt(Trim(SGIcd.Cells[2,5])));
    SetParamter(q_str,':PROJECT_TYPE',Qt(pro_type));
    SetParamter(q_str,':CASE_TYPE',qt(ReturnId(CbbCase.Text)));
    SetParamter(q_str,':MED_DAYS',IntToStr(MaxMedDays('',SGMed,M_days)));
    SetParamter(q_str,':first_date',qt(''));
    SetParamter(q_str,':first_ins_seq_no',qt(''));
    SetParamter(q_str,':DIAG_FLAG',qt('N'));
    SetParamter(q_str,':PAT_NAME',qt(getPatName));
    SetParamter(q_str,':NOTE1',qt(trim(rheSub.Lines.Text)));
    SetParamter(q_str,':NOTE2',qt(Trim(rheObj.Lines.Text)));
    SetParamter(q_str,':UPD_OPER',qt(getUserId));
    SetParamter(q_str,':UPD_DATE',qt(DD));
    SetParamter(q_str,':UPD_TIME',qt(copy(DTIM,1,4)));
    SetParamter(q_str,':UPD_IP',Qt(''));
    SetParamter(q_str,':DISC_CODE',qt(getpatdisccode));
    SetParamter(q_str,':PART_CODE',Qt(ReturnId(CbbPart.Text)));
    SetParamter(q_str,':MED_TYPE',qt('1'));
    SetParamter(q_str,':MED_NO',Qt(''));
    SetParamter(q_str,':ORDER_FLAG',Qt(''));
    SetParamter(q_str,':LAB_FLAG',Qt(''));
    SetParamter(q_str,':PRINT_FLAG',Qt(printcount));
    SetParamter(q_str,':VOTE_TYPE',Qt(''));
    SetParamter(q_str,':EXE_DOC',qt(getorderdoc));
    SetParamter(q_str,':INS_DOC',qt(GetVsCode));
    SetParamter(q_str,':FEAT_DOC',qt(Getvsfeatcode));
    SetParamter(q_str,':FEE_CONTEN',qt(Trim(rhePlan.Lines.Text)));
    SetParamter(q_str,':ICD9_CODE5',qt(Trim(SGIcd.Cells[0,6])));
    SetParamter(q_str,':ICD9_CODE6',qt(Trim(SGIcd.Cells[0,7])));
    SetParamter(q_str,':ICD9_CODE7',qt(Trim(SGIcd.Cells[0,8])));
    SetParamter(q_str,':ICD9_CODE8',qt(Trim(SGIcd.Cells[0,9])));
    SetParamter(q_str,':ICD9_CODE9',qt(Trim(SGIcd.Cells[0,10])));
    SetParamter(q_str,':ICD10_CODE1',qt(SGIcd10.Cells[0, 1]));
    SetParamter(q_str,':ICD10_CODE2',qt(SGIcd10.Cells[0, 2]));
    SetParamter(q_str,':ICD10_CODE3',qt(SGIcd10.Cells[0, 3]));
    SetParamter(q_str,':ICD10_CODE4',qt(SGIcd10.Cells[0, 4]));
    SetParamter(q_str,':ICD10_CODE5',qt(SGIcd10.Cells[0, 5]));

    SetParamter(q_str,':ICD9_DESC5',qt(Trim(SGIcd.Cells[2,6])));
    SetParamter(q_str,':ICD9_DESC6',qt(Trim(SGIcd.Cells[2,7])));
    SetParamter(q_str,':ICD9_DESC7',qt(Trim(SGIcd.Cells[2,8])));
    SetParamter(q_str,':ICD9_DESC8',qt(Trim(SGIcd.Cells[2,9])));
    SetParamter(q_str,':ICD9_DESC9',qt(Trim(SGIcd.Cells[2,10])));
    SetParamter(q_str,':Hx',qt(Trim(trim(rheHist.Lines.Text))));
    SetParamter(q_str,':PE',Qt(''));
    SetParamter(q_str,':PAIN_SCORE',Qt(''));
    SetParamter(q_str,':PAY_TYPE',Qt('4'));
    SetParamter(q_str,':TRIAGE_LEVEL',Qt(IntToStr(CBtriage.ItemIndex+1)));

    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Clear;
    DM.QryUpdate.SQL.Text := q_str;

    DM.ADOLink.BeginTrans;
    sql_Waiting_log('open',q_str);
    dm.QryUpdate.ExecSQL;
    sql_Waiting_log('close','');
    DM.ADOLink.CommitTrans;

    q_str := '';
    DM.QrySearch.Close;
    q_str := sql_str(4);
    SetParamter(q_str,'$fee_no$',qt(getFeeNo));
    DM.QrySearch.SQL.Text := q_str;
    sql_Waiting_log('open',q_str);
    DM.QrySearch.Open;
    sql_Waiting_log('close','');

    //�R��ICD10
    tmpSql := sqlstr(31);
    SetParamter(tmpSql, '$FEE_NO$', qt(getFeeNo));
    SetParamter(tmpSql, '$OPD_DATE$', 'opd_date= '+ qt(GetEpdDate)+' AND order_type='+Qt('N'));
    SQLs := TStringList.Create;
    SQLs.Add(tmpSql);
    SQLo.Add(SQLs);
    //�g�JICD10
    for i := 1 to SGIcd10.RowCount -1 do
    begin
      if SGIcd10.Cells[0,i]<> '' then
      begin
        tmpSql := sqlstr(2);
        SetParamter(tmpSql, '$ORDER_KIND$', qt('EPD'));
        SetParamter(tmpSql, '$ORDER_TYPE$', qt('N'));
        SetParamter(tmpSql, '$FEE_NO$', qt(GetFeeNo));
        SetParamter(tmpSql, '$SEQ_NO$', IntToStr(i));
        SetParamter(tmpSql, '$ICD_CODE$', qt(trim(SGIcd10.Cells[0,i])) );
        SetParamter(tmpSql, '$ICD_SYSTEM$', qt('CM'));
        SetParamter(tmpSql, '$UPD_OPER$', qt(getUserId));
        SetParamter(tmpSql, '$UPD_DATE$', qt(DD));
        SetParamter(tmpSql, '$UPD_TIME$', qt(copy(DTIM,1,4)));
        SetParamter(tmpSql, '$ICD_TRANS_CODE$', qt(trim(SGIcd10.Cells[7,i])) );
        SetParamter(tmpSql, '$OPD_DATE$', qt(GetEpdDate));
        SQLs := TStringList.Create;
        SQLs.Add(tmpSql);
        SQLo.Add(SQLs);
      end;
    end;

    for j := 1 to 8 do
    begin
      case j of
        1:
        begin// L ����
          tmpSG:=SGLab;
          OrderType:='L';
        end;
        2:
        begin // X ��g
          tmpSG:=SGXRay;
          OrderType:='X';
        end;
        3:
        begin // C �ˬd
          tmpSG:=SGChk;
          OrderType:='C';
        end;
        4:
        begin // M �Ī�
          tmpSG:=SGMed;
          OrderType:='M';
        end;
        5:
        begin // F �@��������
          tmpSG:=SGFee;
          OrderType:='F';
        end;
        6:
        begin // O �ç�
          tmpSG:=SGMtrl;
          OrderType:='O';
        end;
        7:
        begin // T ��r����
          tmpSG:=SGOrder;
          OrderType:='T';
        end;
        8:
        begin // P �f�z����
          tmpSG:=SGPath;
          OrderType:='F';
        end;
      end;
      if tmpSG = SGOrder then // T ��r����
      begin
        if (tmpSG.RowCount >= 1) and (Trim(tmpSG.Cells[O_Name,0])<> '') then
        begin
          times_log('TEXTORDER','',getUserId,'');
          for i := 0 to tmpSG.RowCount-1 do
          begin
            if (Trim(tmpSG.Cells[O_Name,i])<> '') then
            begin
              if (tmpSG.Cells[Del,i]='X') and (tmpSG.Cells[modifyType,i] = 'O') then
              begin //�R��
                q_str := sql_str(8);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$DC_DATE$',Qt(DD));
                SetParamter(q_str,'$DC_TIME$',Qt(copy(DTIM,1,4)));
                SetParamter(q_str,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[O_name,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                SQLs := TStringList.Create;
                SQLs.Add(q_str);
                SQLo.Add(SQLs);

                //���¸��
                DM.QrySubSearch.Close;
                q_str:=sql_str(9);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$SO_FLAG$',Qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(tmpSG.Cells[O_code,i]));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                DM.QrySubSearch.SQL.Text := q_str;
                sql_Waiting_log('open',q_str);
                DM.QrySubSearch.Open;
                sql_Waiting_log('close','');
                if not DM.QrySubSearch.IsEmpty then
                begin
                  oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                  oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                  STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                  oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
                end
                else
                begin
                  oldseq := '';
                  oldsheetno := '';
                  STROLDSEQNO := '';
                  oldlabno := '';
                end;
              end;
              DM.QrySubSearch.Close;
              //�s�W���
              q_str := sql_str(10);
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
              SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));//�}�榸��
              SetParamter(q_str,'$ORDER_TEXT$',Qt(textstrReplace(FulltoHalf(trim(tmpSG.Cells[O_name,i])))));
              SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
              SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
              SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
              if (Trim(tmpSG.Cells[O_code,i])<> '') then //Narrative
                SetParamter(q_str,'$FEE_CODE$',qt('NTE'+Trim(tmpSG.Cells[O_code,i])))
              else
                SetParamter(q_str,'$FEE_CODE$',qt('NTE'+IntToStr(RECORD_SEQ_no)));
              SetParamter(q_str,'$FEE_NAME$',qt(IntToStr(RECORD_SEQ_no)));
              SetParamter(q_str,'$ORDER_DOC$',qt(getorderdoc));

              SetParamter(q_str,'$ORDER_TYPE$',Qt(order_types));//��������
              SetParamter(q_str,'$ORDER_DAYS$','0');//�Ѽ�
              SetParamter(q_str,'$QTY_NUM$','0');//�ƶq
              SetParamter(q_str,'$UNIT_DESC$',Qt(' '));//���
              SetParamter(q_str,'$CIR_CODE$',Qt(' '));//�W�v
              SetParamter(q_str,'$PATH_CODE$',Qt(' '));//�~�|
              SetParamter(q_str,'$SELF_PAY_FLAG$',qt(' '));//�۶O���A
              SetParamter(q_str,'$URG_FLAG$',qt('N'));//��@
              if (tmpSG.Cells[Del,i]='X')  then
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('Y'));
                SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('N'));
                SetParamter(q_str,'$DEL_FLAG$',qt('N'));
              end;
              SetParamter(q_str,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(q_str,'$UPD_DATE$',qt(DD));
              SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
              SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));//�渹
              SetParamter(q_str,'$MEMO_DESC$',Qt(''));//����
              SetParamter(q_str,'$KEYIN_USER$',Qt(''));//KEY IN �H��
              SetParamter(q_str,'$PROG_FLAG$',Qt(''));//�M��
              SetParamter(q_str,'$PRINT_FLAG$',qt('Y')); //�O�_�C�LY:�C�L N:�L�C�L
              SetParamter(q_str,'$ARRG_FLAG$',Qt(''));//Y:�Ƶ{�� N:�D�Ƶ{��
              SetParamter(q_str,'$Exper_type$',Qt(''));//����էO
              SetParamter(q_str,'$Exper_class$',Qt(''));//����O
              SetParamter(q_str,'$Part_code$',qt('')); //����
              SetParamter(q_str,'$GRIND_FLAG$',Qt(''));//�i��
              SetParamter(q_str,'$PAY_FLAG$',qt(''));//�۶O���O
              SetParamter(q_str,'$TTL_QTY$','0');//�`�q
              //SetParamter(q_str'$TRANS_FLAG',qt());//���ɦ��\�_
              //SetParamter(q_str,'$PRINT_FLAG_2',qt());
              SetParamter(q_str,'$FEE_UNIT$',Qt(''));//�]�˳��
              //SetParamter(q_str,'$ORDER_STATUS',qt());
              SetParamter(q_str,'$FEE_CODE1$',qt(''));
              SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
              IF TRIM(oldseq)<> '' THEN
                SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq))
              ELSE                                 // IntToStr(RECORD_SEQ_no)
                SetParamter(q_str,'$ORDER_SEQ$',qt(''));
              SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
              SetParamter(q_str,'$NUS_OPER$',qt(''));
              SetParamter(q_str,'$VS_DOC$',qt(GetVsCode));
              SetParamter(q_str,'$JOIN_NO$',qt(''));
              if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
                SetParamter(q_str,'$IPD_FLAG$',qt('R'))
              else
                SetParamter(q_str,'$IPD_FLAG$',qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);
            end;
          end;
        end;
      end;

      if tmpSG = SGPath then // F �@�������دf�z
      begin
        if (tmpSG.RowCount > 1) and (Trim(tmpSG.Cells[Pth_code,0])<> '') and (Trim(tmpSG.Cells[Pth_Order,0])<> '') then  //�B�m
        begin
          for i := 0 to tmpSG.RowCount-1 do
          begin
            if (TRim(tmpSG.Cells[Pth_code,i])<>'' ) and (Trim(tmpSG.Cells[Pth_Order,i])<> '') then
            begin
              if (tmpSG.Cells[Del,i]='X') then
              begin //�R��
                q_str := sql_str(8);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$DC_DATE$',Qt(DD));
                SetParamter(q_str,'$DC_TIME$',Qt(copy(DTIM,1,4)));
                SetParamter(q_str,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[Pth_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Pth_seqno2,i])));
                SQLs := TStringList.Create;
                SQLs.Add(q_str);
                SQLo.Add(SQLs);
              end;
              //���¸��
              DM.QrySubSearch.Close;
              q_str:=sql_str(9);
              SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
              SetParamter(q_str,'$SO_FLAG$',Qt('F'));
              SetParamter(q_str,'$FEE_CODE$',Qt(tmpSG.Cells[Pth_code,i]));
              SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Pth_seqno2,i])));
              DM.QrySubSearch.SQL.Text := q_str;
              sql_Waiting_log('open',q_str);
              DM.QrySubSearch.Open;
              sql_Waiting_log('close','');
              if not DM.QrySubSearch.IsEmpty then
              begin
                oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
              end
              else
              begin
                oldseq := '';
                oldsheetno := '';
                STROLDSEQNO := '';
                oldlabno := '';
              end;
              DM.QrySubSearch.Close;
              //�s�W���
              q_str := sql_str(10);
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
              SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));//�}�榸��
              SetParamter(q_str,'$ORDER_TEXT$',Qt(' '));
              SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
              SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
              SetParamter(q_str,'$SO_FLAG$',qt(OrderType));//M �Ī� P �Ƶ{ L ���� C �ˬd X ��g O �ç� F �@��������
              SetParamter(q_str,'$FEE_CODE$',qt(trim(tmpSG.Cells[Pth_code,i])));
              SetParamter(q_str,'$FEE_NAME$',qt(trim(tmpSG.Cells[Pth_order,i])));
              SetParamter(q_str,'$ORDER_DOC$',qt(getorderdoc));
              SetParamter(q_str,'$ORDER_TYPE$',Qt('PA'));//��������
              SetParamter(q_str,'$ORDER_DAYS$','0');//�Ѽ�
              SetParamter(q_str,'$QTY_NUM$',trim(tmpSG.Cells[Pth_Qty,i]));//�ƶq
              SetParamter(q_str,'$UNIT_DESC$',Qt(''));//���
              SetParamter(q_str,'$CIR_CODE$',Qt(''));//�W�v
              SetParamter(q_str,'$PATH_CODE$',Qt(''));//�~�|
              SetParamter(q_str,'$SELF_PAY_FLAG$',qt(tmpSG.Cells[Pth_Ins,i]));//�۶O���A
              SetParamter(q_str,'$URG_FLAG$',qt('N'));//��@
              if (tmpSG.Cells[Del,i]='X')  then
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('Y'));
                SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('N'));
                SetParamter(q_str,'$DEL_FLAG$',qt('N'));
              end;
              SetParamter(q_str,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(q_str,'$UPD_DATE$',qt(DD));
              SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
              SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));//�渹
              SetParamter(q_str,'$MEMO_DESC$',Qt(''));//����
              SetParamter(q_str,'$KEYIN_USER$',Qt(''));//KEY IN �H��
              SetParamter(q_str,'$PROG_FLAG$',Qt(''));//�M��
              SetParamter(q_str,'$PRINT_FLAG$',qt('Y')); //�O�_�C�LY:�C�L N:�L�C�L
              SetParamter(q_str,'$ARRG_FLAG$',Qt(''));//Y:�Ƶ{�� N:�D�Ƶ{��
              SetParamter(q_str,'$Exper_type$',Qt(''));//����էO
              SetParamter(q_str,'$Exper_class$',Qt(''));//����O
              SetParamter(q_str,'$Part_code$',qt('')); //����
              SetParamter(q_str,'$GRIND_FLAG$',Qt(''));//�i��
              SetParamter(q_str,'$PAY_FLAG$',qt(trim(tmpSG.Cells[pth_Ins,i])));//�۶O���O
              SetParamter(q_str,'$TTL_QTY$',trim(tmpSG.Cells[Pth_Qty,i]));//�`�q
              //SetParamter(q_str'$TRANS_FLAG',qt());//���ɦ��\�_
              //SetParamter(q_str,'$PRINT_FLAG_2',qt());
              SetParamter(q_str,'$FEE_UNIT$',Qt(''));//�]�˳��
              //SetParamter(q_str,'$ORDER_STATUS',qt());
              SetParamter(q_str,'$FEE_CODE1$',qt(trim(tmpSG.Cells[pth_code,i])));
              SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
              IF TRIM(oldseq)<> '' THEN
                SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq))
              ELSE                                // IntToStr(RECORD_SEQ_no)
                SetParamter(q_str,'$ORDER_SEQ$',qt(''));
              SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
              SetParamter(q_str,'$NUS_OPER$',qt(''));
              SetParamter(q_str,'$VS_DOC$',qt(GetVsCode));
              if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
                SetParamter(q_str,'$IPD_FLAG$',qt('PA'))
              else
                SetParamter(q_str,'$IPD_FLAG$',qt(''));
              SetParamter(q_str,'$JOIN_NO$',qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);

              //update opd_path seq_no2
              if (tmpSG.Cells[Del,i]<>'X') then
                q_str := 'update opd_path set SHEET_NO='+Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3))+
                       ' ,SEQ='+qt(IntToStr(RECORD_SEQ_no))+' where fee_no='+qt(getFeeNo)+' and path_no='+qt(trim(tmpSG.Cells[pth_no,i]))+' and seq_no='+qt(trim(tmpSG.Cells[Pth_seqno,i]))
              else
                q_str := 'update opd_path set dc_sheet_no='+Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3))+
                       ' ,SEQ='+qt(IntToStr(RECORD_SEQ_no))+' where fee_no='+qt(getFeeNo)+' and path_no='+qt(trim(tmpSG.Cells[pth_no,i]))+' and seq_no='+qt(trim(tmpSG.Cells[Pth_seqno,i]));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);
            end;
          end;
        end;
      end;
      if tmpSG = SGFee then // F �@��������
      begin
        if (tmpSG.RowCount > 1) and (Trim(tmpSG.Cells[F_code,0])<> '') and (Trim(tmpSG.Cells[F_Name,0])<> '') then  //�B�m
        begin
          for i := 0 to tmpSG.RowCount-1 do
          begin
            if (TRim(tmpSG.Cells[F_CODE,i])<>'' ) and (Trim(tmpSG.Cells[F_Name,i])<> '') then
            begin
              if (tmpSG.Cells[Del,i]='X') or (tmpSG.Cells[modifyType,i] = 'O') then
              begin //�R��
                q_str := sql_str(8);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$DC_DATE$',Qt(DD));
                SetParamter(q_str,'$DC_TIME$',Qt(copy(DTIM,1,4)));
                SetParamter(q_str,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[F_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                SQLs := TStringList.Create;
                SQLs.Add(q_str);
                SQLo.Add(SQLs);
              end;
              //���¸��
              DM.QrySubSearch.Close;
              q_str:=sql_str(9);
              SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
              SetParamter(q_str,'$SO_FLAG$',Qt('F'));
              SetParamter(q_str,'$FEE_CODE$',Qt(tmpSG.Cells[F_code,i]));
              SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
              DM.QrySubSearch.SQL.Text := q_str;
              sql_Waiting_log('open',q_str);
              DM.QrySubSearch.Open;
              sql_Waiting_log('close','');
              if not DM.QrySubSearch.IsEmpty then
              begin
                oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
              end
              else
              begin
                oldseq := '';
                oldsheetno := '';
                STROLDSEQNO := '';
                oldlabno := '';
              end;
              DM.QrySubSearch.Close;
              //�s�W���
              q_str := sql_str(10);
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
              SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));//�}�榸��
              SetParamter(q_str,'$ORDER_TEXT$',Qt(' '));
              SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
              SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
              SetParamter(q_str,'$SO_FLAG$',qt(OrderType));//M �Ī� P �Ƶ{ L ���� C �ˬd X ��g O �ç� F �@��������
              SetParamter(q_str,'$FEE_CODE$',qt(trim(tmpSG.Cells[F_code,i])));
              SetParamter(q_str,'$FEE_NAME$',qt(trim(tmpSG.Cells[F_name,i])));
              SetParamter(q_str,'$ORDER_DOC$',qt(getorderdoc));
              SetParamter(q_str,'$ORDER_TYPE$',Qt(order_types));//��������
              SetParamter(q_str,'$ORDER_DAYS$','0');//�Ѽ�
              SetParamter(q_str,'$QTY_NUM$',trim(tmpSG.Cells[F_Qty,i]));//�ƶq
              SetParamter(q_str,'$UNIT_DESC$',Qt(''));//���
              SetParamter(q_str,'$CIR_CODE$',Qt(''));//�W�v
              SetParamter(q_str,'$PATH_CODE$',Qt(''));//�~�|
              SetParamter(q_str,'$SELF_PAY_FLAG$',qt(tmpSG.Cells[F_Ins,i]));//�۶O���A
              SetParamter(q_str,'$URG_FLAG$',qt('N'));//��@
              if (tmpSG.Cells[Del,i]='X')  then
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('Y'));
                SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('N'));
                SetParamter(q_str,'$DEL_FLAG$',qt('N'));
              end;
              SetParamter(q_str,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(q_str,'$UPD_DATE$',qt(DD));
              SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
              SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));//�渹
              SetParamter(q_str,'$MEMO_DESC$',Qt(''));//����
              SetParamter(q_str,'$KEYIN_USER$',Qt(''));//KEY IN �H��
              SetParamter(q_str,'$PROG_FLAG$',Qt(''));//�M��
              SetParamter(q_str,'$PRINT_FLAG$',qt('Y')); //�O�_�C�LY:�C�L N:�L�C�L
              SetParamter(q_str,'$ARRG_FLAG$',Qt(''));//Y:�Ƶ{�� N:�D�Ƶ{��
              SetParamter(q_str,'$Exper_type$',Qt(''));//����էO
              SetParamter(q_str,'$Exper_class$',Qt(''));//����O
              SetParamter(q_str,'$Part_code$',qt(trim(tmpSG.Cells[F_Part,i]))); //����
              SetParamter(q_str,'$GRIND_FLAG$',Qt(''));//�i��
              SetParamter(q_str,'$PAY_FLAG$',qt(trim(tmpSG.Cells[F_Ins,i])));//�۶O���O
              SetParamter(q_str,'$TTL_QTY$',trim(tmpSG.Cells[F_Qty,i]));//�`�q
              //SetParamter(q_str'$TRANS_FLAG',qt());//���ɦ��\�_
              //SetParamter(q_str,'$PRINT_FLAG_2',qt());
              SetParamter(q_str,'$FEE_UNIT$',Qt(''));//�]�˳��
              //SetParamter(q_str,'$ORDER_STATUS',qt());
              SetParamter(q_str,'$FEE_CODE1$',qt(trim(tmpSG.Cells[F_code,i])));
              SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
              IF TRIM(oldseq)<> '' THEN
                SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq))
              ELSE                                // IntToStr(RECORD_SEQ_no)
                SetParamter(q_str,'$ORDER_SEQ$',qt(''));
              SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
              SetParamter(q_str,'$NUS_OPER$',qt(''));
              SetParamter(q_str,'$VS_DOC$',qt(GetVsCode));
              if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
                SetParamter(q_str,'$IPD_FLAG$',qt('R'))
              else
                SetParamter(q_str,'$IPD_FLAG$',qt(''));
              SetParamter(q_str,'$JOIN_NO$',qt(trim(tmpSG.Cells[F_Join,i])));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);
            end;
          end;
        end;
      end;
      if tmpSG = SGMtrl then// O �ç�
      begin
        if (tmpSG.RowCount > 1) and (tmpSG.Cells[L_code,0]<> '') then  //�ç�
        begin
          for i := 0 to tmpSG.RowCount-1 do
          begin
            if (TRim(tmpSG.Cells[L_CODE,i])<>'' ) and (TRim(tmpSG.Cells[L_name,i])<>'' ) then
            begin
              if (trim(tmpSG.Cells[Del,i])='X') or (tmpSG.Cells[modifyType,i] = 'O') then
              begin //�R��
                q_str := sql_str(8);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$DC_DATE$',Qt(DD));
                SetParamter(q_str,'$DC_TIME$',Qt(copy(DTIM,1,4)));
                SetParamter(q_str,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[F_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                SQLs := TStringList.Create;
                SQLs.Add(q_str);
                SQLo.Add(SQLs);

                //���¸��
                DM.QrySubSearch.Close;
                q_str:=sql_str(9);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$SO_FLAG$',Qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[F_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                DM.QrySubSearch.SQL.Text := q_str;
                sql_Waiting_log('open',q_str);
                DM.QrySubSearch.Open;
                sql_Waiting_log('close','');
                if not DM.QrySubSearch.IsEmpty then
                begin
                  oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                  oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                  STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SEQ_NO').AsString);
                  oldlabno :=  Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
                end
                else
                begin
                  oldseq := '';
                  oldsheetno := '';
                  STROLDSEQNO := '';
                  oldlabno := '';
                end;
              end;
              DM.QrySubSearch.Close;
              //�s�W���
              q_str := sql_str(10);
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
              SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));//�}�榸��
              SetParamter(q_str,'$ORDER_TEXT$',Qt(' '));
              SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
              SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
              SetParamter(q_str,'$SO_FLAG$',qt(OrderType));//M �Ī� P�Ƶ{ L���� C�ˬd X��g O�ç� F �@��������
              SetParamter(q_str,'$FEE_CODE$',qt(trim(tmpSG.Cells[L_code,i])));
              SetParamter(q_str,'$FEE_NAME$',qt(trim(tmpSG.Cells[L_name,i])));
              SetParamter(q_str,'$ORDER_DOC$',qt(getorderdoc));
              SetParamter(q_str,'$ORDER_TYPE$',Qt(order_types));//��������
              SetParamter(q_str,'$ORDER_DAYS$','0');//�Ѽ�
              SetParamter(q_str,'$QTY_NUM$',trim(tmpSG.Cells[L_Qty,i]));//�ƶq
              SetParamter(q_str,'$UNIT_DESC$',Qt(''));//���
              SetParamter(q_str,'$CIR_CODE$',Qt(''));//�W�v
              SetParamter(q_str,'$PATH_CODE$',Qt(''));//�~�|
              SetParamter(q_str,'$SELF_PAY_FLAG$',qt(trim(tmpSG.Cells[L_Ins,i])));//�۶O���A
              SetParamter(q_str,'$URG_FLAG$',qt('N'));//��@
              if (trim(tmpSG.Cells[Del,i])='X') then
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('Y'));
                SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('N'));
                SetParamter(q_str,'$DEL_FLAG$',qt('N'));
              end;
              SetParamter(q_str,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(q_str,'$UPD_DATE$',qt(DD));
              SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
              SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));//�渹
              SetParamter(q_str,'$MEMO_DESC$',Qt(''));//����
              SetParamter(q_str,'$KEYIN_USER$',Qt(''));//KEY IN �H��
              SetParamter(q_str,'$PROG_FLAG$',Qt(''));//�M��
              SetParamter(q_str,'$PRINT_FLAG$',qt('Y')); //�O�_�C�LY:�C�L N:�L�C�L
              SetParamter(q_str,'$ARRG_FLAG$',Qt(''));//Y:�Ƶ{�� N:�D�Ƶ{��
              SetParamter(q_str,'$Exper_type$',Qt(''));//����էO
              SetParamter(q_str,'$Exper_class$',Qt(''));//����O
              SetParamter(q_str,'$Part_code$',qt(trim(tmpSG.Cells[L_Patr,i])));//����
              SetParamter(q_str,'$GRIND_FLAG$',Qt(''));//�i��
              SetParamter(q_str,'$PAY_FLAG$',qt(trim(tmpSG.Cells[L_Ins,i])));//�۶O���O
              SetParamter(q_str,'$TTL_QTY$',trim(tmpSG.Cells[L_Qty,i]));//�`�q
              //SetParamter(q_str'$TRANS_FLAG$',qt());//���ɦ��\�_
              //SetParamter(q_str,'$PRINT_FLAG_2$',qt());
              SetParamter(q_str,'$FEE_UNIT$',Qt(''));//�]�˳��
              //SetParamter(q_str,'$ORDER_STATUS',qt());
              SetParamter(q_str,'$FEE_CODE1$',qt(trim(tmpSG.Cells[F_code,i])));
              SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
              IF TRIM(oldseq)<> '' THEN
                SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq))
              ELSE                                // IntToStr(RECORD_SEQ_no)
                SetParamter(q_str,'$ORDER_SEQ$',qt(''));
              SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
              SetParamter(q_str,'$NUS_OPER$',qt(''));
              SetParamter(q_str,'$VS_DOC$',qt(GetVsCode));
              SetParamter(q_str,'$JOIN_NO$',qt(trim(tmpSG.Cells[L_Join,i])));
              if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
                SetParamter(q_str,'$IPD_FLAG$',qt('R'))
              else
                SetParamter(q_str,'$IPD_FLAG$',qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);
            end;
          end;
        end;
      end;
      if tmpSG = SGMed then //M����
      begin
        if (tmpSG.RowCount > 1) and (Trim(tmpSG.Cells[M_Code,0])<> '') then
        begin
          for i := 0 to tmpSG.RowCount-1 do
          begin
            if (TRim(tmpSG.Cells[M_CODE,i])<>'' ) and (Trim(tmpSG.Cells[M_Name,i])<> '')  then
            begin
              if (tmpSG.Cells[Del,i] = 'X') and (tmpSG.Cells[modifyType,i] = 'O') then //dc�R��
              begin
                q_str := sql_str(8);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$DC_DATE$',Qt(DD));
                SetParamter(q_str,'$DC_TIME$',Qt(copy(DTIM,1,4)));
                SetParamter(q_str,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(q_str,'$SO_FLAG$',qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[M_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                SQLs := TStringList.Create;
                SQLs.Add(q_str);
                SQLo.Add(SQLs);

                //���¸��
                DM.QrySubSearch.Close;
                q_str:=sql_str(9);
                SetParamter(q_str,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(q_str,'$SO_FLAG$',Qt(OrderType));
                SetParamter(q_str,'$FEE_CODE$',Qt(trim(tmpSG.Cells[M_code,i])));
                SetParamter(q_str,'$SEQ_NO$',Qt(trim(tmpSG.Cells[Seq,i])));
                DM.QrySubSearch.SQL.Text := q_str;
                sql_Waiting_log('open',q_str);
                DM.QrySubSearch.Open;
                sql_Waiting_log('close','');
                if not DM.QrySubSearch.IsEmpty then
                begin
                  oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                  oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                  STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SEQ_NO').AsString);
                  oldlabno :=  Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
                end
                else
                begin
                  oldseq := '';
                  oldsheetno := '';
                  STROLDSEQNO := '';
                  oldlabno := '';
                end;
              end;
              DM.QrySubSearch.Close;
              //�s�W
              q_str := sql_str(10);
              SQLs := TStringList.Create;
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(q_str,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//����[3�X�y����
              SetParamter(q_str,'$SEQ$',qt(IntToStr(all_seq)));//�}�榸��
              SetParamter(q_str,'$ORDER_TEXT$',Qt(' '));
              SetParamter(q_str,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000�_��
              SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
              SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(q_str,'$ORDER_TIME$',qt(DTIM));
              SetParamter(q_str,'$SO_FLAG$',qt(OrderType));//M �Ī� P�Ƶ{ L���� C�ˬd X��g O�ç� F �@��������
              SetParamter(q_str,'$FEE_CODE$',qt(trim(tmpSG.Cells[M_code,i])));
              SetParamter(q_str,'$FEE_NAME$',qt(trim(tmpSG.Cells[M_name,i])));
              SetParamter(q_str,'$ORDER_DOC$',qt(getorderdoc));
              SetParamter(q_str,'$ORDER_TYPE$',Qt(trim(tmpSG.Cells[M_outmed,i])));//��������
              SetParamter(q_str,'$ORDER_DAYS$',qt(trim(tmpSG.Cells[M_days,i])));//�Ѽ�
              SetParamter(q_str,'$QTY_NUM$',Qt(trim(tmpSG.Cells[M_Qty,i])));//�ƶq
              SetParamter(q_str,'$UNIT_DESC$',Qt(trim(tmpSG.Cells[M_Unit,i])));//���
              SetParamter(q_str,'$CIR_CODE$',Qt(trim(tmpSG.Cells[M_Cir,i])));//�W�v
              SetParamter(q_str,'$PATH_CODE$',Qt(trim(tmpSG.Cells[M_path,i])));//�~�|
              SetParamter(q_str,'$SELF_PAY_FLAG$',qt(trim(tmpSG.Cells[M_INS,i])));//�۶O���A
              SetParamter(q_str,'$URG_FLAG$',qt('N'));//��@
              if (tmpSG.Cells[Del,i]='X') then
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('Y'));
                SetParamter(q_str,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin
                SetParamter(q_str,'$DC_FLAG$',Qt('N'));
                SetParamter(q_str,'$DEL_FLAG$',qt('N'));
              end;
              SetParamter(q_str,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(q_str,'$UPD_DATE$',qt(DD));
              SetParamter(q_str,'$UPD_TIME$',qt(DTIM));
              SetParamter(q_str,'$LAB_NO$',Qt(oldlabno));//�渹
              SetParamter(q_str,'$MEMO_DESC$',Qt(textstrReplace(trim(tmpSG.Cells[M_Memo,i]))));//����
              SetParamter(q_str,'$KEYIN_USER$',Qt(''));//KEY IN �H��
              SetParamter(q_str,'$PROG_FLAG$',Qt(''));//�M��
              SetParamter(q_str,'$PRINT_FLAG$',qt('Y')); //�O�_�C�LY:�C�L N:�L�C�L
              SetParamter(q_str,'$ARRG_FLAG$',Qt(''));//Y:�Ƶ{�� N:�D�Ƶ{��
              SetParamter(q_str,'$Exper_type$',Qt(''));//�C�龯�q
              SetParamter(q_str,'$Exper_class$',Qt(trim(tmpSG.Cells[M_pkg,i])));//�]�˶q
              SetParamter(q_str,'$Part_code$',qt(''));//����
              SetParamter(q_str,'$GRIND_FLAG$',Qt(trim(tmpSG.Cells[M_GRI,i])));//�i��
              SetParamter(q_str,'$PAY_FLAG$',qt(trim(tmpSG.Cells[M_Ins,i])));//�۶O���O
              SetParamter(q_str,'$TTL_QTY$',trim(tmpSG.Cells[M_ttl_qty,i]));//�`�q
              SetParamter(q_str,'$FEE_UNIT$',Qt(trim(tmpSG.Cells[M_FeeUnit,i])));//�p�����
              SetParamter(q_str,'$FEE_CODE1$',qt(trim(tmpSG.Cells[M_code,i])));
              SetParamter(q_str,'$FEE_NO1$',qt(getFeeNo));
              IF TRIM(oldseq)<> '' THEN
                SetParamter(q_str,'$ORDER_SEQ$',qt(oldseq))
              ELSE                                // IntToStr(RECORD_SEQ_no)
                SetParamter(q_str,'$ORDER_SEQ$',qt(''));
              SetParamter(q_str,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(q_str,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(q_str,'$REPRT_STATUS$',qt('N'));
              SetParamter(q_str,'$NUS_OPER$',qt(''));
              SetParamter(q_str,'$VS_DOC$',qt(GetVsCode));
              SetParamter(q_str,'$JOIN_NO$',qt(trim(tmpSG.Cells[M_Join,i])));
              if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
                SetParamter(q_str,'$IPD_FLAG$',qt('R'))
              else
                SetParamter(q_str,'$IPD_FLAG$',qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(q_str);
              SQLo.Add(SQLs);
            end;
          end;
        end;
      end;
      if (tmpSG = SGLab) or (tmpSG = SGXRay) or (tmpSG = SGChk) then //�ˬd�B����B��g
      begin
        for i:=0 to tmpSG.RowCount - 1 do
        begin
          if (Trim(tmpSG.Cells[C_Code,i]) <> '') and ((Trim(tmpSG.Cells[C_Order,i]) <> '')) then
          begin
            tmpSql:='';
            //�R�����
            if (tmpSG.Cells[Del,i] = 'X') and (tmpSG.Cells[modifyType,i] = 'O') then
            begin
              SQLs:=TStringList.Create;
              tmpSql:='';
              tmpSql:=sql_str(8);
              SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
              SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
              SetParamter(tmpSql,'$DC_DATE$',Qt(DD));
              SetParamter(tmpSql,'$DC_TIME$',Qt(copy(DTIM,1,4)));
              SetParamter(tmpSql,'$DC_OPER$',Qt(getorderdoc));
              SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
              SetParamter(tmpSql,'$FEE_CODE$',Qt(tmpSG.Cells[C_Code,i]));
              SetParamter(tmpSql,'$SEQ_NO$',Qt(tmpSG.Cells[Seq,i]));
              SQLs.Text:=tmpSql;
              SQLo.Add(SQLs);

              //���¸��
              DM.QrySubSearch.Close;
              tmpSql:='';
              tmpSql:=sql_str(9);
              SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
              SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
              SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
              SetParamter(tmpSql,'$FEE_CODE$',Qt(tmpSG.Cells[C_Code,i]));
              SetParamter(tmpSql,'$SEQ_NO$',Qt(tmpSG.Cells[Seq,i]));
              DM.QrySubSearch.SQL.Text := tmpSql;
              sql_Waiting_log('open',q_str);
              DM.QrySubSearch.Open;
              sql_Waiting_log('close','');
              if not DM.QrySubSearch.IsEmpty then
              begin
                oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SEQ_NO').AsString);
                oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
              end
              else
              begin
                oldseq := '';
                oldsheetno := '';
                STROLDSEQNO := '';
                oldlabno := '';
              end;
            end;
            //�s�W
            Inc(all_sheet_no);
            Inc(RECORD_SEQ_no);
            SQLs:=TStringList.Create;
            tmpSql:=sql_str(10);
            SetParamter(tmpSql,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));
            SetParamter(tmpSql,'$SEQ$',qt(IntToStr(all_seq)));
            SetParamter(tmpSql,'$ORDER_TEXT$',Qt(' '));
            SetParamter(tmpSql,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));
            SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
            SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
            SetParamter(tmpSql,'$ORDER_TIME$',Qt(DTIM));
            SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
            SetParamter(tmpSql,'$FEE_CODE$',Qt(trim(tmpSG.Cells[C_Code,i])));
            SetParamter(tmpSql,'$FEE_NAME$',Qt(trim(tmpSG.Cells[C_Order,i])));
            SetParamter(tmpSql,'$ORDER_DOC$',Qt(getorderdoc));
            SetParamter(tmpSql,'$ORDER_TYPE$',Qt(trim(tmpSG.Cells[C_Kind,i])));
            SetParamter(tmpSql,'$ORDER_DAYS$',Qt(''));
            SetParamter(tmpSql,'$QTY_NUM$',Qt(trim(tmpSG.Cells[C_Qty,i])));
            SetParamter(tmpSql,'$UNIT_DESC$',Qt(trim(tmpSG.Cells[C_Unit,i])));
            SetParamter(tmpSql,'$CIR_CODE$',Qt(trim(tmpSG.Cells[C_Cir,i])));
            SetParamter(tmpSql,'$PATH_CODE$',Qt(trim(tmpSG.Cells[C_path,i])));//�s(x:��g����position_O; L:���鶵��send_cd_2; C:�ˬd��Send_cd_1)
            SetParamter(tmpSql,'$SELF_PAY_FLAG$',Qt(trim(tmpSG.Cells[C_INS,i])));
            SetParamter(tmpSql,'$URG_FLAG$',Qt(trim(tmpSG.Cells[C_EMG,i])));
            if tmpSG.Cells[Del,i] = 'X' then
            begin
              SetParamter(tmpSql,'$DC_FLAG$',Qt('Y'));
              SetParamter(tmpSql,'$DEL_FLAG$',Qt('Y'));
            end
            else
            begin
              SetParamter(tmpSql,'$DC_FLAG$',Qt('N'));
              SetParamter(tmpSql,'$DEL_FLAG$',Qt('N'));
            end;
            SetParamter(tmpSql,'$UPD_OPER$',Qt(getorderdoc));
            SetParamter(tmpSql,'$UPD_DATE$',Qt(DD));
            SetParamter(tmpSql,'$UPD_TIME$',Qt(DTIM));
            SetParamter(tmpSql,'$LAB_NO$',Qt(oldlabno));
            SetParamter(tmpSql,'$MEMO_DESC$',Qt(textstrReplace(trim(tmpSG.Cells[C_MEMO,i]))));
            SetParamter(tmpSql,'$PROG_FLAG$',Qt('N'));
            SetParamter(tmpSql,'$PRINT_FLAG$',Qt('Y'));
            if tmpSG =SGChk then
              SetParamter(tmpSql,'$ARRG_FLAG$',Qt('Y'))
            else
              SetParamter(tmpSql,'$ARRG_FLAG$',Qt('N'));
            SetParamter(tmpSql,'$Exper_type$',Qt(trim(tmpSG.Cells[C_Send,i])));//�s(L:����էOSend_cd_1; X:��gSend_cd_2)
            SetParamter(tmpSql,'$Exper_class$',Qt(trim(tmpSG.Cells[C_NO,i])));//�s(L:����էOSend_cd_3; X:��gSend_cd_3)
            SetParamter(tmpSql,'$Part_code$',Qt(trim(tmpSG.Cells[C_path,i]))); //EXPER_TPYE==ITME_NO;EXPER_CLASS==CODE_NO;ORDER_TYPE==KIND_NO
            SetParamter(tmpSql,'$GRIND_FLAG$',Qt('N'));
            SetParamter(tmpSql,'$PAY_FLAG$',Qt(tmpSG.Cells[C_INS,i]));
            SetParamter(tmpSql,'$TTL_QTY$',Qt(tmpSG.Cells[C_Qty,i]));
            SetParamter(tmpSql,'$FEE_CODE1$',qt(trim(tmpSG.Cells[C_Code,i])));
            SetParamter(tmpSql,'$FEE_NO1$',qt(getFeeNo));
            IF TRIM(oldseq)<> '' THEN
              SetParamter(tmpSql,'$ORDER_SEQ$',qt(oldseq))
            ELSE                                 // IntToStr(RECORD_SEQ_no)
              SetParamter(tmpSql,'$ORDER_SEQ$',qt(''));
            SetParamter(tmpSql,'$DC_SHEET_NO$',Qt(oldsheetno));
            SetParamter(tmpSql,'$oldSEQ_NO$',qt(STROLDSEQNO));
            SetParamter(tmpSql,'$FEE_UNIT$',qt(''));
            SetParamter(tmpSql,'$REPRT_STATUS$',qt('N'));
            SetParamter(tmpSql,'$NUS_OPER$',qt(''));
            SetParamter(tmpSql,'$VS_DOC$',qt(GetVsCode));
            SetParamter(tmpSql,'$JOIN_NO$',qt(trim(tmpSG.Cells[C_Join,i])));
            if tmpSG.Cells[modifyType,i] = 'R' then //�ק�
              SetParamter(tmpSql,'$IPD_FLAG$',qt('R'))
            else
              SetParamter(tmpSql,'$IPD_FLAG$',qt(''));
            SQLs.Text:=tmpSql;
            SQLo.Add(SQLs);
          end;
        end;//for i
      end;
    end;//for j

    if  TBitBtn(Sender).Name = BtnTempSave.Name  then
    begin
      //reg_basic
      tmpSql:=sql_str(17);
      SetParamter(tmpSql,'$OPD_STATUS$',Qt('0'));
      //SetParamter(tmpSql,'$opd_date$',Qt(GetEpdDate));
      SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
      SQLs:=TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end
    else
    begin
      tmpSql:=sql_str(17);
      SetParamter(tmpSql,'$OPD_STATUS$',Qt('3'));
      SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
      SQLs:=TStringList.Create;
      SQLs.Text:=tmpSql;
      SQLo.Add(SQLs);
    end;
    //opd_his
    SQLs:=TStringList.Create;
    if  TBitBtn(Sender).Name = BtnTempSave.Name  then
      SQLs.Text:= saveepd_his('N',ChengeEndDate,DD,copy(DTIM,1,4))
    else
      SQLs.Text:= saveepd_his('Y',ChengeEndDate,DD,copy(DTIM,1,4));
    SQLo.Add(SQLs);
    if not DM.ExecSQL(SQLo) then
    begin
      msg := '�g�J��Ʈw����';
      Result := False;
    end
    else
      Result := True;
  except
    on E: Exception do
    BEGIN
      sql_time_log('�g�J��Ʈw:',e.Message);
      Result:=false;
      SQLo.Free;
    END;
  end;
  SQLo.Free;
end;



procedure TFrmOrder.SGOrderSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  inherited;
  Case ACol of
    O_code,O_Name:
    BEGIN
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,Arow],'N')<> 'N' then
      begin
        SetPanel(False,pnlmtrl);
        SetPanel(False,pnlHintGrid);
        exit;
      end;
      if (TStringGrid(Sender).Cells[modifyType,Arow] ='N') and (Trim(TStringGrid(Sender).Cells[L_code,Arow])<>'') then
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing];
        Exit;
      end;
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
    END;
  end;
end;

procedure TFrmOrder.SGOrderKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    if trim(SGOrder.Cells[O_Name,SGOrder.Row]) <> '' then
    begin
      SGOrder.Cells[modifyType,SGOrder.row] := 'N';
      SGOrder.RowCount:= SGOrder.RowCount+1;
      key := vk_down;
      sendMessage(SGOrder.Handle,wm_keydown,key,0);
    end;
  end;
end;

procedure TFrmOrder.RGPatIdClick(Sender: TObject);
begin
  inherited;
  setpartid(IntToStr(rgpatid.ItemIndex+1));
end;

procedure TFrmOrder.cbbvscodeChange(Sender: TObject);
begin
  inherited;
  setvscode(ReturnId(cbbvscode.Text));
end;

procedure TFrmOrder.InitCbb;
begin
  SetComboDropDownWidth(CbbOrderYN);
  SetComboDropDownWidth(CbbLOrderYN);
  SetComboDropDownWidth(CbbCOrderYN);
  SetComboDropDownWidth(CbbROrderYN);
  SetComboDropDownWidth(CbbFeeYN);
  SetComboDropDownWidth(CBBMtrlYN);
end;

procedure TFrmOrder.SetComboDropDownWidth(Sender: TObject);
var
  i:Integer;
  iMaxWidth:Integer;
begin
  iMaxWidth :=TComboBox(Sender).Width;
  for i := 0 to TComboBox(Sender).Items.Count  - 1 do
    iMaxWidth:= Max(iMaxWidth,Length(TComboBox(Sender).Items[i])*10 );
  TComboBox(Sender).Perform(CB_SETDROPPEDWIDTH,iMaxWidth,0);
end;

procedure TFrmOrder.BtnDelmedClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGMed.Col := del;
  FOR J := SGMed.RowCount -1 downTO 0 DO
    if SGMed.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGMed.RowCount -1 downTO 0 DO
  begin
    SGMed.Row := j;
    dbsgcncl(SGMed,seldel);
  end;
end;

procedure TFrmOrder.DBCGMedPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
  var
   R: TRect;
begin
  inherited;
  with DBCtrlGrid do //20140402�̾�1030220�T�|��E�@�ѳq�L����ī~�Կ�M��̾����O�ܦ�
  begin
    R:= Rect(0, 0, PanelWidth-2, PanelHeight-2);

    if copy(DBCtrlGrid.DataSource.DataSet.FieldByName('fee_code').AsString,1,1)='I' then
      Canvas.Brush.Color:= clYellow
    else if copy(DBCtrlGrid.DataSource.DataSet.FieldByName('fee_code').AsString,1,1)='T' then
      Canvas.Brush.Color:= clActiveCaption
    else if copy(DBCtrlGrid.DataSource.DataSet.FieldByName('fee_code').AsString,1,1)='O' then
      Canvas.Brush.Color:= clWhite
    else
      Canvas.Brush.Color:= clWindow;
    Canvas.FillRect(R);
    if PanelIndex = Index then
      Canvas.DrawFocusRect(R);

  end;

  Label52.Font.Color := clred;
  if Trim(DBCtrlGrid.DataSource.DataSet.FieldByName('USE_STATUS_O').AsString) ='1' then
  begin
    Label52.Caption := '��';
    Label52.Font.Color := clBlue;
  end
  else if Trim(DBCtrlGrid.DataSource.DataSet.FieldByName('USE_STATUS_O').AsString) ='2' then
    Label52.Caption := '��'
  else
    Label52.Caption := '��';
end;

procedure TFrmOrder.BtnLDelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGLab.Col := del;
  FOR J := SGLab.RowCount -1 downTO 0 DO
    if SGLab.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGLab.RowCount -1 downTO 0 DO
  begin
    SGLab.Row := j;
    dbsgcncl(SGLab,seldel);
  end;
end;

procedure TFrmOrder.BtnCDelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  sgchk.Col := del;
  FOR J := sgchk.RowCount -1 downTO 0 DO
    if sgchk.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := sgchk.RowCount -1 downTO 0 DO
  begin
    sgchk.Row := j;
    dbsgcncl(sgchk,seldel);
  end;
end;

procedure TFrmOrder.BtnRDelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGXRay.Col := del;
  FOR J := SGXRay.RowCount -1 downTO 0 DO
    if SGXRay.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGXRay.RowCount -1 downTO 0 DO
  begin
    SGXRay.Row := j;
    dbsgcncl(SGXRay,seldel);
  end;
end;

procedure TFrmOrder.BtnFDelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGFee.Col := del;
  FOR J := SGFee.RowCount -1 downTO 0 DO
    if SGFee.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGFee.RowCount -1 downTO 0 DO
  begin
    SGFee.Row := j;
    dbsgcncl(SGFee,seldel);
  end;
end;

procedure TFrmOrder.BtnODelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGMtrl.Col := del;
  FOR J := SGMtrl.RowCount -1 downTO 0 DO
    if SGMtrl.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGMtrl.RowCount -1 downTO 0 DO
  begin
    SGMtrl.Row := j;
    dbsgcncl(SGMtrl,seldel);
  end;
end;

function TFrmOrder.insertepdrecordorder(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,cnclflag: string): string;
var
  q_str : string;
begin
  q_str := GETEPDRECORD(0);
  Inc(RECORD_SEQ_no);
  SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
  SetParamter(q_str,'$KIND$',qt(kind));
  SetParamter(q_str,'$SEQ_NO$',IntToStr(RECORD_SEQ_no));
  SetParamter(q_str,'$TEXT$',qt(TEXT));
  SetParamter(q_str,'$ORDER_SORT$',qt(STATUS));
  SetParamter(q_str,'$ALLORDER_NO$',IntToStr(all_seq));
  SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
  SetParamter(q_str,'$UPD_DATE$',qt(UPD_DATE));
  SetParamter(q_str,'$UPD_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$VS_CODE$',qt(GetVsCode));
  SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
  SetParamter(q_str,'$ORDER_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$DEL_FLAG$',qt(cnclflag));

  Result := q_str;
end;

procedure TFrmOrder.SGIcdDblClick(Sender: TObject);
var
  delrow :integer;
  delicd9: string;
begin
  inherited;
  if TStringGrid(Sender).Row > 0 then
  begin
    delicd9 := trim(TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row]);
    TStringGrid(Sender).Rows[TStringGrid(Sender).Row].Clear;
    oldicd9 := '';
    StringGridSort(TStringGrid(Sender));
    //�s�ʧRIDC10
    if Sender = SGIcd then
    begin
      try
        SGIcd10.Row := 1;
        delrow := SGIcd10.Cols[7].IndexOf(delicd9);
        if delrow = -1 then
          exit
        else
          SGIcd10.Row := delrow;
      except on e:  Exception do
        if e is EInvalidGridOperation then
         exit;
      end;
      SGIcd10.Rows[SGIcd10.Row].Clear;
      StringGridSort(SGIcd10);
    end;
  end;
end;

procedure TFrmOrder.StringGridSort(Sender: TObject);
var
  i ,j: Integer;
begin
  for i := 0 to TStringGrid(Sender).RowCount -1 do
  begin
    if Trim(TStringGrid(Sender).Cells[0,i]) = '' then
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

procedure TFrmOrder.count_s_h_o;
var
  sub, hist, obj, plan :integer;
begin
  sub  := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','SUB',''),'1024'));
  hist := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','HIST',''),'1024'));
  obj  := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','OBJ',''),'1024'));
  plan := StrToInt(NullStrTo(SetSys.ReadString('SYSTEM','PLAN',''),'1024'));

  if length(rheSub.Lines.Text)>= sub then
  begin
    GroupBox2.Font.Color := clRed;
    GroupBox2.Caption := 'Subject('+IntToStr(length(rheSub.Lines.Text))+') �̤jByte��:'+IntToStr(sub);
  end
  else
  begin
    GroupBox2.Font.Color := clBlack;
    GroupBox2.Caption := 'Subject('+IntToStr(length(rheSub.Lines.Text))+')';
  end;
  if length(rheHist.Lines.Text)>= hist then
  begin
    GroupBox4.Font.Color := clRed;
    GroupBox4.Caption := 'Assessment('+IntToStr(length(rheHist.Lines.Text))+') �̤jByte��:'+IntToStr(hist);
  end
  else
  begin
    GroupBox4.Font.Color := clBlack;
    GroupBox4.Caption := 'Assessment('+IntToStr(length(rheHist.Lines.Text))+')';
  end;
  if length(rheObj.Lines.Text)>= obj then
  begin
    GroupBox3.Font.Color := clRed;
    GroupBox3.Caption := 'Object('+IntToStr(length(rheObj.Lines.Text))+') �̤jByte��:'+IntToStr(obj);
  end
  else
  begin
    GroupBox3.Font.Color := clBlack;
    GroupBox3.Caption := 'Object('+IntToStr(length(rheObj.Lines.Text))+')';
  end;
  if length(rhePlan.Lines.Text)>= plan then
  begin
    GroupBox5.Font.Color := clRed;
    GroupBox5.Caption := 'Plan('+IntToStr(length(rhePlan.Lines.Text))+') �̤jByte��:'+IntToStr(plan);
  end
  else
  begin
    GroupBox5.Font.Color := clBlack;
    GroupBox5.Caption := 'Plan('+IntToStr(length(rhePlan.Lines.Text))+')';
  end;
end;

procedure TFrmOrder.ToolButton61Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  if not assigned(FrmWarning) then
    FrmWarning := TFrmWarning.Create(self);
  FrmWarning.ShowModal;
end;

procedure TFrmOrder.ToolButton78Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not assigned(FrmDitto) then
    FrmDitto := TFrmDitto.Create(Self);
  try
    frmDitto.CBqrykind := false;
    FrmDitto.ShowModal;
    ditofeeno := '';
    if FrmDitto.UseFlag then
    begin
      ditofeeno := FrmDitto.ditto_feeno;
      UseTheditto;
    end;
  finally
    freeandnil(FrmDitto);
  end;
end;

function TFrmOrder.UseTheditto: Boolean;
var
  i : Integer;
  TSg,MSg,Morder,Mtr,Mchk,mins,mx,Fsg: TStringGrid;
  str: string;
begin
  if FrmDitto.CheckBox2.Checked then
  begin
    rheSub.Lines.Add('');
    rheSub.Lines.Strings[0] := FrmDitto.RichEdit1.Lines.Text;
  end;
  if FrmDitto.CheckBox3.Checked then
  begin
    rheObj.Lines.Add('');
    rheObj.Lines.Strings[0] := FrmDitto.RichEdit2.Lines.Text;
  end;
  if FrmDitto.CheckBox4.Checked then
  begin
    rhePlan.Lines.Add('');
    rhePlan.Lines.Strings[0] := FrmDitto.RichEdit3.Lines.Text;
  end;
  if FrmDitto.CheckBox5.Checked then
  begin
    rheHist.Lines.Add('');
    rheHist.Lines.Strings[0] := FrmDitto.RichEdit4.Lines.Text;
  end;
  TSg   := TStringGrid.Create(FrmOrder);
  MSg   := TStringGrid.Create(FrmOrder);
  Mtr   := TStringGrid.Create(FrmOrder);
  Mchk  := TStringGrid.Create(FrmOrder);
  Fsg   := TStringGrid.Create(FrmOrder);
  mins  := TStringGrid.Create(FrmOrder);
  mx    := TStringGrid.Create(FrmOrder);
  Fsg   := TStringGrid.Create(FrmOrder);
  Morder := TStringGrid.Create(FrmOrder);
  TSg.RowCount := FrmDitto.StringGrid1.RowCount;
  TSg.ColCount := FrmDitto.StringGrid1.ColCount;
  MSg.RowCount := FrmDitto.StringGrid2.RowCount;
  MSg.ColCount := FrmDitto.StringGrid2.ColCount;
  Mtr.RowCount := FrmDitto.StringGrid3.RowCount;
  Mtr.ColCount := FrmDitto.StringGrid3.ColCount;
  Morder.RowCount := FrmDitto.StringGrid4.RowCount;
  Morder.ColCount := FrmDitto.StringGrid4.ColCount;
  Fsg.RowCount  :=  FrmDitto.StringGrid5.RowCount;
  Fsg.ColCount  :=  FrmDitto.StringGrid5.ColCount;
  mins.RowCount :=  FrmDitto.StringGrid6.RowCount;
  mins.ColCount :=  FrmDitto.StringGrid6.ColCount;
  Mchk.RowCount :=  FrmDitto.StringGrid7.RowCount;
  Mchk.ColCount :=  FrmDitto.StringGrid7.ColCount;
  mx.RowCount   :=  FrmDitto.StringGrid8.RowCount;
  mx.ColCount   :=  FrmDitto.StringGrid8.ColCount;
  for i := 0 to FrmDitto.StringGrid1.RowCount -1 do
    TSg.Rows[i].Text  :=  FrmDitto.StringGrid1.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid2.RowCount -1 do
    MSg.Rows[i].Text  :=  FrmDitto.StringGrid2.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid3.RowCount -1 do
    Mtr.Rows[i].Text  :=  FrmDitto.StringGrid3.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid4.RowCount -1 do
    Morder.Rows[i].Text :=  FrmDitto.StringGrid4.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid5.RowCount -1 do
    Fsg.Rows[i].Text  :=  FrmDitto.StringGrid5.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid6.RowCount -1 do
    mins.Rows[i].Text :=  FrmDitto.StringGrid6.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid7.RowCount -1 do
    Mchk.Rows[i].Text :=  FrmDitto.StringGrid7.Rows[i].Text;
  for i := 0 to FrmDitto.StringGrid8.RowCount -1 do
    mx.Rows[i].Text   :=  FrmDitto.StringGrid8.Rows[i].Text;
  //�E�_
  if icdchangea <> 'N' then
  begin
    for i := 1 to TSg.RowCount -1 do
    begin
      if TSg.Cells[0,i]='V' then
        InsertIcd10(Trim(TSg.Cells[1,i]));
    end;
  end
  else
    for i := 1 to TSg.RowCount -1 do
    begin
      if TSg.Cells[0,i]='V' then
        InsertIcd(Trim(TSg.Cells[1,i]),'Y');
    end;

  //�ī~
  if SGMed.RowCount > 0 then
    SGMed.Row := SGMed.RowCount-1
  else
    SGMed.Row := 0;
  for i := 1 to MSg.RowCount -1 do
    if MSg.Cells[0,i]='V' then        // �W�v          ���q                �~�|         �Ƶ�            �Ѽ�
      if InsertMed(MSg.Cells[1,i],MSg.Cells[4,i],MSg.Cells[3,i],'','',MSg.Cells[7,i],MSg.Cells[13,i],MSg.Cells[6,i]) then
      begin        //Med_code,     aCir,            aQty,     DcDate,DcTime, aPath,         aMemo,    adays:
        SGMed.Cells[ordertype,SGMed.Row-1] := MSg.Cells[5,i];//���
        SGMed.Cells[M_INS,SGMed.Row-1]     := MSg.Cells[10,i];
        SGMed.Cells[SEQ,SGMed.Row-1]       := MSg.Cells[14,i];//SEQ
        SGMed.Cells[M_join,SGMed.Row-1]    := MSg.Cells[15,i];
        if ditofeeno = GetFeeNo then
          SGMed.Cells[modifyType,SGMed.Row-1] := 'O';
      end;
  //�ç�
  if SGMtrl.RowCount > 0 then
    SGMtrl.Row := SGMtrl.RowCount-1
  else
    SGMtrl.Row := 0;
  for i := 1 to Mtr.RowCount -1 do
    if Mtr.Cells[0,i]='V' then
      if InsertMrtl(Mtr.Cells[1,i],Mtr.Cells[3,i],Mtr.Cells[4,i]) then
      begin
        SGMtrl.Cells[SEQ,SGMtrl.Row] := Mtr.Cells[6,i];//SEQ
        if ditofeeno = GetFeeNo then
          SGMtrl.Cells[modifyType,SGMtrl.Row] := 'O';
        SGMtrl.Cells[l_join,SGMtrl.Row] := Mtr.Cells[8,i];
      end;
  //��r����
  if SGOrder.RowCount > 0 then
    SGOrder.Row := SGOrder.RowCount-1
  else
    SGOrder.Row := 0;
  for i := 1 to Morder.RowCount -1 do
    if Morder.Cells[0,i]='V' then
      if insertordertxt(Morder.Cells[1,i],Morder.Cells[2,i]) then
      begin
        if ditofeeno = GetFeeNo then
          SGOrder.Cells[modifyType,SGOrder.Row-1] := 'O';
      end;
  //�B�m
  if SGFee.RowCount > 0 then
    SGFee.Row := SGFee.RowCount-1
  else
    SGFee.Row := 0;
  for i := 1 to fsg.RowCount -1 do
    if Fsg.Cells[0,i]='V' then
      if InsertFee(Trim(fSg.Cells[1,i]), 'pkg', Trim(fSg.Cells[3,i]), Trim(fSg.Cells[4,i]), Trim(fSg.Cells[5,i])) then
      begin
        SGFee.Cells[SEQ,SGFee.Row-1] := Trim(fSg.Cells[7,i]);//SEQ
        if ditofeeno = GetFeeNo then
          SGFee.Cells[modifyType,SGFee.Row-1] := Trim(fSg.Cells[8,i]);//order_seq
        SGFee.Cells[f_join,SGFee.Row-1]       := Trim(fSg.Cells[9,i]);
      end;
  //����
  if SGLab.RowCount > 0 then
    SGLab.Row := SGLab.RowCount-1
  else
    SGLab.Row := 0;
  for i := 1 to mins.RowCount -1 do
    if mins.Cells[0,i]='V' then                                    //exper_type     item_no          exper_class
      if InsertLab(mins.Cells[1,i],mins.Cells[3,i],mins.Cells[5,i],mins.Cells[8,i],mins.Cells[7,i],mins.Cells[9,i],'') then
      begin            //�N�X         �ƶq            �۶O           sendcd1        sendcd2          sendcd3       Joinno
        SGLab.Cells[SEQ,SGLab.Row] := mins.Cells[11,i];//SEQ
        if ditofeeno = GetFeeNo then
          SGLab.Cells[modifyType,SGLab.Row] := 'O';
        SGLab.Cells[C_CONFSTATUS,SGLab.Row] := mins.Cells[12,i];
        SGLab.Cells[C_join,SGLab.Row]       := mins.Cells[13,i];
        SGLab.Row := SGLab.Row +1;
      end;
  //�ˬd
  if SGChk.RowCount > 0 then
    SGChk.Row := SGChk.RowCount-1
  else
    SGChk.Row := 0;
  for i := 1 to Mchk.RowCount -1 do
    if Mchk.Cells[0,i]='V' then
      if InsertChk(Mchk.Cells[1,i],Mchk.Cells[4,i],Mchk.Cells[3,i],Mchk.Cells[5,i],Mchk.Cells[11,i]) then
      begin
        SGChk.Cells[SEQ,SGChk.Row] := Mchk.Cells[12,i];//SEQ
        if ditofeeno = GetFeeNo then
          SGChk.Cells[modifyType,SGChk.Row] := 'O';
        SGChk.Cells[C_CONFSTATUS,SGChk.Row] := Mchk.Cells[12,i];
        SGChk.Cells[C_join,SGChk.Row]       := Mchk.Cells[14,i];
        SGChk.Row := SGChk.Row +1;
      end;
  //��g
  if SGXRay.RowCount > 0 then
    SGXRay.Row := SGXRay.RowCount-1
  else
    SGXRay.Row := 0;
  for i := 1 to mx.RowCount -1 do
    if mx.Cells[0,i]='V' then//feecode,ordertpye,sefins,qty,position,sendcd2,memo,sendcd1
      if InsertXRay(mx.Cells[1,i],mx.Cells[10,i],mx.Cells[5,i],mx.Cells[3,i],mx.Cells[4,i],mx.Cells[8,i],mx.Cells[11,i],mx.Cells[7,i]) then
      begin
        SGXRay.Cells[SEQ,SGXRay.Row] := mx.Cells[12,i];//SEQ
        if ditofeeno = GetFeeNo then
          SGXRay.Cells[modifyType,SGXRay.Row] := 'O';
        SGXRay.Cells[C_CONFSTATUS,SGXRay.Row] := mx.Cells[13,i];
        SGXRay.Cells[C_join,SGXRay.Row]       := mx.Cells[14,i];
        SGXRay.Row := SGXRay.Row +1;
      end;
  OutList.Clear;
  FreeAndNil(TSg);
  FreeAndNil(MSg);
  FreeAndNil(Morder);
  FreeAndNil(Mtr);
  FreeAndNil(Mchk);
  FreeAndNil(mins);
  FreeAndNil(mx);
  FreeAndNil(Fsg);
end;

function TFrmOrder.insertordertxt(seqno, otxt: string): Boolean;
var
  i : integer;
  chorder: Boolean;
begin
  Result := True;
  chorder := True;
  //���w��Ū�row
  for i := 0 to SGOrder.RowCount -1 do
  begin
    //�P�_�O�_�H�}�߹L
    if (pos('�}�ߦ�|�\�i��',trim(sgorder.Cells[O_Name,i])) > 0) and chorder then
    begin
      if MessageDlg('�w�}�߹L�O�_�n���ƶ}��!!', mtconfirmation, [mbYes, mbNo], 0) = mrNo then
        exit;
      chorder := False;
    end;
    
    if trim(SGOrder.Cells[O_Name, i]) = '' then
    begin
      SGOrder.Row := i;
      Break;
    end;
  end;
  //
  SGOrder.Cells[modifytype, SGOrder.Row] := 'N';
  SGOrder.Cells[O_code, SGOrder.Row] := seqno;
  SGOrder.Cells[O_Name, SGOrder.Row] := otxt;
  if SGOrder.Row = (SGOrder.RowCount - 1) then
  begin
    SGOrder.RowCount := SGOrder.RowCount + 1;
  end;
  SGOrder.Row := SGOrder.Row+1;
end;

procedure TFrmOrder.BtnCirClick(Sender: TObject);
var
  i, cole : integer;
  temprow,tempCol : integer;
begin
  inherited;
  if (TBitBtn(Sender).Name = BtnDose.Name) then
    cole := M_Qty;
  if  (TBitBtn(Sender).Name = BtnCir.Name) then
    cole := M_Cir;
  if (TBitBtn(Sender).Name = Btndays.Name) then
    cole := M_days;
  if (TBitBtn(Sender).Name = BtnPath.Name) then
    cole := M_path;
  if (TBitBtn(Sender).Name = BtnIns.Name) then
    cole := M_INS;
  temprow :=  SGMed.Row ;
  tempCol :=  SGMed.Col ;
  for i := temprow to SGMed.RowCount -1 do
  begin
    if nullStrTo(Trim(SGMed.Cells[modifytype,i]),'N') = 'N' then
      if SGMed.Cells[cole,i] <>'' then
      begin
        //20140114
        if (TBitBtn(Sender).Name = BtnIns.Name) then
        begin
          IF UpperCase(ins_ctrl) = 'TRUE' THEN
            if trim(SGMed.Cells[M_Choose,i])='Y' then
              SGMed.Cells[cole,i] := SGMed.Cells[cole,SGMed.Row];
        end
        else
          SGMed.Cells[cole,i] := SGMed.Cells[cole,SGMed.Row];
        SGMed.Cells[M_TTL_QTY,i] := CalTotal(Trim(SGMed.Cells[M_code,i]),
                   Trim(SGMed.Cells[M_ins,i]),
                   Trim(SGMed.Cells[M_Cir,i]),
                   StrToInt(NullStrTo(Trim(SGMed.Cells[M_pkg,i]),'0')),
                   StrToInt(NullStrTo(Trim(SGMed.Cells[M_days,i]),'0')),
                   StrToFloat(NullStrTo(Trim(SGMed.Cells[M_Qty,i]),'0')) );
      end;
  end;

end;

procedure TFrmOrder.BitBtn8Click(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if not Assigned(FrmGetICD9) then
    FrmGetICD9 := TFrmGetICD9.Create(Self);
  FrmGetICD9.send_father := UpperCase(FrmOrder.Name);
  FrmGetICD9.icd9_record := TStringList.Create;
  FrmGetICD9.icd10_record := TStringList.Create;
  FrmGetICD9.ShowModal;
  if FrmGetICD9.icd9_record.Count > 0 then
  begin
    FrmOrder.PageControl2.ActivePageIndex := 1;
    for i := 0 to FrmGetICD9.icd9_record.Count-1 do
      InsertIcd(FrmGetICD9.icd9_record.Strings[i],'Y');
  end;
  //icd10
  if FrmGetICD9.icd10_record.Count > 0 then
  begin
    for i := 0 to FrmGetICD9.icd10_record.Count-1 do
      InsertIcd10(FrmGetICD9.icd10_record.Strings[i]);
  end;
  FreeAndNil(FrmGetICD9);

end;

procedure TFrmOrder.btnSaveClick(Sender: TObject);
var
  vh : integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  vh := 0;
  if rdonly then
  begin
    ShowMessage('���f�H����w�Ѩ�L��v�}�Ҥ��A�ثe�Ȧ��s���\��');
    exit;
  end;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select * from epd_his where fee_no='+qt(GetFeeNo)+' and epd_date='+qt(GetEpdDate)+' and epd_status=''3'' ');
  DM.QryTemp.Open;
  if not DM.QryTemp.IsEmpty then
  begin
    Case MessageDlg('�O�_�\���W�����E���ɶ��I?'+#10#13+'�������E: Cancel',mtWarning, [mbYes, mbNo, mbCancel], 0) of
    2: begin//cancel
         Exit;
       end;
    7: begin//no
         ChengeEndDate := 'N';
       end;
    6: begin //yes
         ChengeEndDate := 'Y';
         vh :=(MinutesBetween(now,ROCToDate(GetEpdDate)+ROCToTime(GetEpdTime))) div 60;
         if vh > 6 then
           times_log('OVER_TIME','',getUserId,IntToStr(vh)); //�N�E�W�L6�p��
       end;
    end;
  end
  else
  BEGIN
    ChengeEndDate := 'Y';
    vh :=(MinutesBetween(now,ROCToDate(GetEpdDate)+ROCToTime(GetEpdTime))) div 60;
    if vh > 6 then
      times_log('OVER_TIME','',getUserId,IntToStr(vh)); //�N�E�W�L6�p��
  END;
  BtnTempSaveClick(btnSave);
end;

procedure TFrmOrder.BtbnMAJORClick(Sender: TObject);
var
  sqlstr,kindtype,TYPENAME,mar1,mar2,mar3 : string;
  SQLs,s,n,majorname : TStringList;
  SQLo : TObjectList;
  i: integer;
begin
  inherited;
  if rdonly then
  begin
    ShowMessage('���f�H����w�Ѩ�L��v�}�Ҥ��A�ثe�Ȧ��s���\��');
    exit;
  end;
  SQLo := TObjectList.Create;
  //���ثe�w�Ұʪ����g
  TYPENAME := '';
  s := TStringList.Create;
  n := TStringList.Create;
  majorname := TStringList.Create;
  majorname := getmajtime(GetFeeNo,s,n);
  try
    for i := 0 to majorname.Count-1 do
    case i of
      0: mar1 := majorname.Strings[i];
      1: mar2 := majorname.Strings[i];
      2: mar3 := majorname.Strings[i];
    end;
    if (mar1<>'') and (mar2<>'') and (mar3<>'') then
    begin
      case ShowMessage('�п�ܭ��g����',[mar1,mar2,mar3,'ALL','Cancel'],1) of
        0: TYPENAME := mar1;
        1: TYPENAME := mar2;
        2: TYPENAME := mar3;
        3: TYPENAME := 'ALL';
        4: EXIT;
      end;
    end
    else if (mar1<>'') and (mar2<>'') then
    begin
      case ShowMessage('�п�ܭ��g����',[mar1,mar2,'ALL','Cancel'],1) of
        0: TYPENAME := mar1;
        1: TYPENAME := mar2;
        2: TYPENAME := 'ALL';
        3: EXIT;
      end;
    end
    else if (mar1<>'') then
      case ShowMessage('�п�ܭ��g����',['ALL','Cancel'],1) of
        0: TYPENAME := 'ALL';
        1: EXIT;
      end;

    //delete re_status
    sqlstr := getlog_sql(13);
    SetParamter(sqlstr,'$fee_no$',Qt(GetFeeNo));
    if TYPENAME ='ALL' then
      sqlstr := sqlstr + ' and CNCL_FLAG=''N'''
    else
      sqlstr := sqlstr + ' and CNCL_FLAG=''N'' and ill_name='+qt(TYPENAME);
    SQLs := TStringList.Create;
    SQLs.Add(sqlstr);
    SQLo.Add(SQLs);

    //DELETE major_injuries_dtl
    sqlstr := 'DELETE major_injuries_dtl WHERE FEE_NO='+Qt(GetFeeNo)+' AND MAJOR_NAME='+qt(TYPENAME);
    SQLs := TStringList.Create;
    SQLs.Add(sqlstr);
    SQLo.Add(SQLs);

    //get time_log_basic item
    sqlstr := getlog_sql(15);
    if TYPENAME ='ALL' then
      SetParamter(sqlstr,'$TYPE_NAME$','''AMI'',''CVA'',''Trauma''')
    else
      SetParamter(sqlstr,'$TYPE_NAME$',qt(TYPENAME));
    DM.QryTemp.Close;
    dm.QryTemp.SQL.Text:= sqlstr;
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      kindtype := kindtype + DM.QryTemp.fieldbyname('time_type').AsString+';';
      DM.QryTemp.Next;
    end;
    DM.QryTemp.Close;
    sqlstr := getlog_sql(14);//delete time_log
    SetParamter(sqlstr,'$LOG_OPER$',Qt(getUserId));
    SetParamter(sqlstr,'$LOG_DATE$',Qt(ROCDate(Now,'')));
    SetParamter(sqlstr,'$LOG_TIME$',Qt(ROCTime(Now,'')));
    SetParamter(sqlstr,'$fee_no$',Qt(GetFeeNo));
    SetParamter(sqlstr,'$TIME_TYPE$',Qts(kindtype));
    SQLs := TStringList.Create;
    SQLs.Add(sqlstr);
    SQLo.Add(SQLs);
    if not DM.ExecSQL(SQLo) then
    begin
      ShowMessage('���g��������');
    end
    else
    begin
      If (mar1 = 'AMI') or (mar2 = 'AMI') or (mar3 = 'AMI') then
        Image_AMI.Picture.Assign(nil);
      times_log(TYPENAME,'',getUserId,'');
      s.Clear;
      n.Clear;
      majorname.Clear;
      majorname := getmajtime(GetFeeNo,s,n);
      BtnAMI.Font.Color := clBlack;
      BtnCVA.Font.Color := clBlack;
      BtnTrauma.Font.Color := clBlack;
      for i := 0 to majorname.Count-1 do
      begin
        if majorname.Strings[i] ='AMI' then
          BtnAMI.Font.Color := clRed;
        if majorname.Strings[i] ='CVA' then
          BtnCVA.Font.Color := clRed;
        if majorname.Strings[i] ='Trauma' then
          BtnTrauma.Font.Color := clRed;
      end;
    end;
  finally
    FreeAndNil(n);
    FreeAndNil(s);
    FreeAndNil(majorname);
    FreeAndNil(SQLo);
  end;
end;

procedure TFrmOrder.PageControl2Change(Sender: TObject);
var
  mycode,qty,ins,i,row,j,send1,send2,send3 : integer;
  self_pay: Extended;
  q_str : string;
  sgrd : TStringGrid;
  lstr : TStrings;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);

  PageControl2.ActivePage.Caption := ReturnId(PageControl2.ActivePage.Hint);
  if PageControl2.ActivePageIndex = 10 then
  begin
    self_pay := 0;
    lstr := TStringList.Create;
    //��g
    q_str := 'select a.fee_code as "�N�X",'+
             '        trim(a.fee_name) as "�W��",'+
             '        decode(trim(a.self_pay_flag), ''Y'', ''��'', ''N'', ''��'') as "��",'+
             '        a.ttl_qty as "�ƶq",'+
             '        b.self_pay_uamt as "�۶O",'+
             '        (b.self_pay_uamt * a.ttl_qty) as "�۶O�p�p",'+
             '        b.ins_pay_uamt as "���O",'+
             '        (b.ins_pay_uamt * a.ttl_qty) as "���O�p�p",'+
             '        a.exper_type,'+
             '        a.exper_class,'+
             '        a.part_code,'+
             '        a.so_flag'+
             '   from epd_all_order a,orderitem_basic b'+
             '  where a.fee_no = '+Qt(GetFeeNo)+
             '    and trim(b.send_cd_1)=trim(a.exper_class)'+
             '    and trim(b.send_cd_2)=trim(a.exper_type)'+
             '    and a.del_flag = ''N'''+
             '    and a.SO_Flag=''X'''+
             ' union all '+
             //����
             'select a.fee_code as "�N�X",'+
             '        trim(a.fee_name) as "�W��",'+
             '        decode(trim(a.self_pay_flag), ''Y'', ''��'', ''N'', ''��'') as "��",'+
             '        a.ttl_qty as "�ƶq",'+
             '        b.self_pay_uamt as "�۶O",'+
             '        (b.self_pay_uamt * a.ttl_qty) as "�۶O�p�p",'+
             '        b.ins_pay_uamt as "���O",'+
             '        (b.ins_pay_uamt * a.ttl_qty) as "���O�p�p",'+
             '        a.exper_type,'+
             '        a.exper_class,'+
             '        a.part_code,'+
             '        a.so_flag'+
             '   from epd_all_order a,orderitem_basic b'+
             '  where a.fee_no = '+Qt(GetFeeNo)+
             '    and trim(b.send_cd_1)=trim(a.exper_type)'+
             '    and trim(b.send_cd_2)=trim(a.exper_class)'+
             '    and a.del_flag = ''N'''+
             '    and a.SO_Flag=''L'''+
             ' union all '+
             //��L
             ' select a.fee_code as "�N�X",'+
             '        trim(a.fee_name) as "�W��",'+
             '        decode(trim(a.self_pay_flag), ''Y'', ''��'', ''N'', ''��'') as "��",'+
             '        a.ttl_qty as "�ƶq",'+
             '        b.self_pay_uamt as "�۶O",'+
             '        (b.self_pay_uamt * a.ttl_qty) as "�۶O�p�p",'+
             '        b.ins_pay_uamt as "���O",'+
             '        (b.ins_pay_uamt * a.ttl_qty) as "���O�p�p",'+
             '        a.exper_type,'+
             '        a.exper_class,'+
             '        a.part_code,'+
             '        a.so_flag'+
             '   from epd_all_order a,orderitem_basic b'+
             '  where a.fee_no = '+Qt(GetFeeNo)+
             '    and a.fee_code=b.FEE_CODE'+
             '    and a.so_flag not in (''T'',''X'',''L'')'+
             '    and decode(trim(a.so_flag),''C'',''E'',''O'',''S'',trim(a.so_flag))=trim(b.order_type)'+
             '    and a.del_flag = ''N'''+
             ' order by so_flag';
    lstr.add(q_str);
    DM.OpenSQL(lstr,sgfeepay);

    for i := 1 to SGfeepay.RowCount-1 do
    begin
      if SGfeepay.Cells[2,i] = '��' then
        self_pay := self_pay + StrToFloat(NullStrTo(Trim(SGfeepay.Cells[5,i]),'0'));
    end;
    SGfeepay.ColWidths[0] := 70;
    SGfeepay.ColWidths[1] := 400;
    SGfeepay.ColWidths[2] := 30;
    SGfeepay.ColWidths[3] := 60;
    SGfeepay.ColWidths[4] := 60;
    SGfeepay.ColWidths[5] := 90;
    SGfeepay.ColWidths[6] := 60;
    SGfeepay.ColWidths[7] := 90;
    SGfeepay.ColWidths[8] := 0;//exper_type
    SGfeepay.ColWidths[9] := 0;//exper_class
    SGfeepay.ColWidths[10] := 0;//part_code
    SGfeepay.ColWidths[11] := 0;//so_flag
    SGfeepay.Repaint;
    Label61.Caption := '�۶O�`�� :'+ FloatToStr(self_pay)+' ��';
    lstr.Free;
  end;
  if PageControl2.ActivePageIndex = 0 then
  begin
   showalldata;
  end;

end;

procedure TFrmOrder.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  str :string;
begin
  inherited;
  if ARow <> 0 then
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  TStringGrid(Sender).Canvas.Font.Color :=  ClBLACK;
  str := TStringGrid(Sender).Cells[acol,arow];
  if (TStringGrid(Sender).Name ='StringGrid3') and (ARow > 0) and (ACol =2) then
    if StrToFloat(NullStrTo(Trim(TStringGrid(Sender).Cells[2,ARow]),'1')) < 1 then
      TStringGrid(Sender).Canvas.Font.Style := [fsBold,fsItalic];
  TStringGrid(Sender).Canvas.FillRect(Rect);                                            // DT_CENTER
  DrawText(TStringGrid(Sender).Canvas.Handle,pchar(' '+Str),Length(Str)+1,Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );
end;

procedure TFrmOrder.StringGrid1DblClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 1;
end;

procedure TFrmOrder.StringGrid3DblClick(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 2;
end;

procedure TFrmOrder.StringGrid2DblClick(Sender: TObject);
begin
  inherited;
  if StringGrid2.Cells[0,StringGrid2.Row]='����' then
    PageControl2.ActivePageIndex := 6;
  if StringGrid2.Cells[0,StringGrid2.Row]= '�ˬd' then
    PageControl2.ActivePageIndex := 4;
  if StringGrid2.Cells[0,StringGrid2.Row]= '��g' then
    PageControl2.ActivePageIndex := 4;
end;

procedure TFrmOrder.StringGrid4DblClick(Sender: TObject);
begin
  inherited;
  if StringGrid4.Cells[0,StringGrid4.Row]='�B�m' then
    PageControl2.ActivePageIndex := 5;
  if StringGrid4.Cells[0,StringGrid4.Row]= '�ç�' then
    PageControl2.ActivePageIndex := 7;
  if StringGrid4.Cells[0,StringGrid4.Row]= '�ԭz' then
    PageControl2.ActivePageIndex := 8;
end;

procedure TFrmOrder.CbbBedNoChange(Sender: TObject);
VAR
  SQLs: TStrings;
  q_str: String;
  SQLo : TObjectList;
begin
  inherited;
  if trim(GetFeeNo)<> '' then
  begin
    IF MessageDlg('�T�w�n���w���ɦ�?',mtWarning, [mbYes, mbNo], 0) = mrYes then
    BEGIN
      try
        DM.ADOLink.BeginTrans;
        With DM.QryUpdate do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE BED_AREA SET FEE_NO='''',INAREA='''' where fee_no='+Qt(GetFeeNo));
          Execsql;

          Close;
          SQL.Clear;
          SQL.Add('Update OPD_BASIC set EPD_BED='+qt(ReturnId(Trim(CbbBedNo.Text)))+' Where fee_no='+Qt(GetFeeNo));
          Execsql;

          Close;
          SQL.Clear;
          SQL.Add('UPDATE BED_AREA SET FEE_NO='+Qt(GetFeeNo)+',INAREA='+ReturnName(Trim(CbbBedNo.Text))+' Where BED_NO= '+qt(ReturnId(Trim(CbbBedNo.Text))));
          Execsql;
        end;
        DM.ADOLink.CommitTrans;

      except
        DM.ADOLink.RollbackTrans;
        ShowMessage('���w���ɦ쥢��');
      end;
      STXTBED.Caption := ReturnId(Trim(CbbBedNo.Text));
      Bednotuse;
      CbbBedNo.Items.AddStrings(GetccbBed(ReturnName(trim(CbbArea.Text))));
    END;
  end;
end;

procedure TFrmOrder.CbbAreaChange(Sender: TObject);
begin
  inherited;
  CbbBedNo.Items.Clear;
  CbbBedNo.Items.AddStrings(GetccbBed(ReturnName(trim(CbbArea.Text))));
end;

procedure TFrmOrder.N1Click(Sender: TObject);
begin
  inherited;
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not Assigned(FrmAreaBed) then
    FrmAreaBed := TFrmAreaBed.Create(Self);
  FrmAreaBed.ShowModal;

end;

procedure TFrmOrder.N2Click(Sender: TObject);
var
  Path : String;
begin
  inherited;
  Path := SetSys.ReadString('OTHERSYSTEMLINK','�B�趰','');
  ComStrRepParam(path,SGMed.Cells[M_CODE,SGMed.row]);
  ShellExecute(Handle, 'open',PChar(Path),nil,nil,SW_SHOWNORMAL);
end;

procedure TFrmOrder.N3Click(Sender: TObject);
begin
  inherited;
  if Trim(SGMed.Cells[M_CODE,SGMed.row])<>'' then
  begin
    With DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from orderitem_basic where order_type=''M'' and FEE_CODE='+Qt(SGMed.Cells[M_CODE,SGMed.row]));
      open;
      ShowMessage('�ī~ :['+FieldByName('Fee_DESC').AsString+']'+#13+'���O�W�w : '+FieldByName('INS_RULE').asString);
      Close;
    end;
  end;
end;

procedure TFrmOrder.N4Click(Sender: TObject);
begin
  inherited;
  if Trim(SGMed.Cells[M_CODE,SGMed.row])<>'' then
  begin
    With DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select ANTICONTROL_TYPE,PREG_CATE,Trim(Fee_Desc)||'';;''||''�ܥͯ����� : ''||ANTICONTROL_TYPE||'';;''||''�h�����Ĥ��� : ''||PREG_CATE||'';;'' as aa from orderItem_basic where order_type=''M'' and FEE_CODE='+Qt(SGMed.Cells[M_CODE,SGMed.row]));
      open;
      if (trim(FieldByName('PREG_CATE').asString)<> '') and (trim(FieldByName('ANTICONTROL_TYPE').asString)<> '') then
        ShowMessage(FieldByName('aa').asString);
      Close;
    end;
  end;
end;

function TFrmOrder.GETPKGdtl(grpcode: string): Boolean;
var
  tmpqry : TADOQuery;
begin
  Result := True;
  try
    tmpqry := TADOQuery.Create(Self);
    tmpqry.Connection := DM.ADOLink;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_dtl where group_code='+qt(UpperCase(grpcode))+'order by order_type' );
    tmpqry.Open;
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='M' then//M=MED;
      begin
        InsertMed(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('cir_code').AsString),
                  Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('ORDER_DESC').AsString));
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='F' then//F=FEE;
      Begin
        InsertFee(Trim(tmpqry.FieldByName('fee_code').AsString),'',Trim(tmpqry.FieldByName('send_cd_1').AsString),
                  Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='I' then//I=ICD9;
      Begin
        InsertIcd(Trim(tmpqry.FieldByName('fee_code').AsString),'Y');
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='X' then//X=XRAY;
      Begin //feecode,ordertpye,sefins,qty,position,sendcd2,memo,sendcd1
        InsertXRay(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('TEXT_KIND').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                   Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('path_code').AsString),Trim(tmpqry.FieldByName('send_cd_2').AsString),
                   Trim(tmpqry.FieldByName('ORDER_DESC').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='C' then//C=�ˬd;
      Begin
        InsertChk(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),
                  Trim(tmpqry.FieldByName('self_pay_flag').AsString),Trim(tmpqry.FieldByName('ORDER_DESC').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='L' then//L=����;
      Begin
        InsertLab(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                  Trim(tmpqry.FieldByName('send_cd_2').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('send_cd_3').AsString),'');
      End;                                                                                                                                                    //Joinno
      if Trim(tmpqry.FieldByName('order_type').AsString)='T' then// T=�ç�
      Begin
        InsertMrtl(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString));
      End;
      tmpqry.Next;
    End;
    //S=sub;O=obj;P=plan;R=ORDER
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_text where group_code='+qt(UpperCase(grpcode))+' order by order_type,seq_no');
    tmpqry.Open;
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='S' then
      Begin
        rheSub.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='O' then
      Begin
        rheObj.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='P' then
      Begin
        rhePlan.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='R' then
      Begin
        insertordertxt('',Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      tmpqry.Next;
    End;
    FreeAndNil(tmpqry);
  except
    Result := False;
  end;
end;

procedure TFrmOrder.SpecMedCheck(Med:String);
var
  index,FT_R,FT_G,FT_B : integer;
begin
  FT_R := 0;
  FT_G := 0;
  FT_B := 0;
  for index := 0 to SpecMed.Count -1 do
  begin
    if Med = ReturnId(SpecMed[index])   then
    begin
      FT_R := strtoint(ReturnId(ReturnName(SpecMed[index])));
      FT_G := strtoint(ReturnId(ReturnName(ReturnName(SpecMed[index]))));
      FT_B := strtoint(ReturnId(ReturnName(ReturnName(ReturnName(SpecMed[index])))));
      SGMed.Canvas.Font.Color := RGB(FT_R,FT_G,FT_B);
      Break;
    end;
  end;
end;

procedure TFrmOrder.SpecMedbgCheck(Med:String);
var
  index,FT_R,FT_G,FT_B : integer;
begin
  FT_R := 0;
  FT_G := 0;
  FT_B := 0;
  for index := 0 to SpecbgMed.Count -1 do
  begin
    if Med = ReturnId(SpecbgMed[index])   then
    begin
      FT_R := strtoint(ReturnId(ReturnName(SpecbgMed[index])));
      FT_G := strtoint(ReturnId(ReturnName(ReturnName(SpecbgMed[index]))));
      FT_B := strtoint(ReturnId(ReturnName(ReturnName(ReturnName(SpecbgMed[index])))));
      SGMed.Canvas.Brush.Color := RGB(FT_R,FT_G,FT_B);
      Break;
    end;
  end;
end;

procedure TFrmOrder.FormActivate(Sender: TObject);
var
  i,j : Integer;
  newQuery : TAdoQuery;
  noper,s_qty,a : string;
begin
  inherited;
  if frmshw = 'Y' then
  begin
    frmshw := 'N';
    noper := 'N';
    if re72h <> '' then
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Text := 'select * from epdexitbk_log where fee_no='+qt(GetFeeNo)+' and type_m=''02''';
      sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
      DM.QryTemp.Open;
      sql_Waiting_log('CLOSE','');
      if DM.QryTemp.IsEmpty then
      begin
        if not Assigned(FrmExitHosp) then
          FrmExitHosp := TFrmExitHosp.Create(Self);
        FrmExitHosp.clas := 'comback';
        FrmExitHosp.ShowModal;
        FreeAndNil(FrmExitHosp);
      end;
      DM.QryTemp.Close;
    end;
    
    with DM.QryTemp do
    begin
      //CJD �w���g
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) as aa FROM CHR_SPEC WHERE CHR_NO=' + Qt(GetChrNo) + ' and kind=''22'' ');
      Open;
      if FieldbyName('aa').AsInteger <> 0 then
        Showmessage('���f�H�ݯS��P�����I�A�ХߧY�s���P����!!');
      Close;
    end;

    firstrecodechange := False;
    if chtrm ='Y' then
    begin
      noper := 'Y';
      if not ChkTraumaPapeOk(a,GetFeeNo) then
        N10Click(Self)
      else
        chtrm := 'N';
    end;
    IF (After_price = 'Y') and (noper = 'N') THEN
    begin //�ݶE���A�i�J��E��O
      if (Getopdstatus = stas('A')) or (Getopdstatus = stas('B')) or (Getopdstatus = stas('F'))  then
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select *'+
                         ' from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+' and del_flag=''N'' and allorder_no='+
                         '(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+')';
        sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
        DM.QryTemp.Open;
        sql_Waiting_log('CLOSE','');
        if DM.QryTemp.IsEmpty then
          ToolButton15Click(ToolButton15);
        DM.QryTemp.Close;
      end
      else
        PageControl2.ActivePageIndex := 0;
    end
    ELSE
    begin
      if ((Getopdstatus = stas('A')) or (Getopdstatus = stas('B'))) and (noper = 'N') then
      begin
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := 'select *'+
                         ' from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+' and allorder_no='+
                         '(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+')';
        sql_Waiting_log('OPEN',DM.QryTemp.SQL.Text);
        DM.QryTemp.Open;
        sql_Waiting_log('CLOSE','');
        if DM.QryTemp.IsEmpty then
          ToolButton15Click(ToolButton15);
        DM.QryTemp.Close;
      end
      else
        PageControl2.ActivePageIndex := 0;
    end;
  end;
end;

procedure TFrmOrder.Timer1Timer(Sender: TObject);
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
  q_str,STR : string;
  i : integer;
  myKeyWord : TStringList;
begin
  inherited;
  if icd9orXray then
  begin
    if Sender = SGIcd then
    begin
      if Trim(SGIcd.Cells[SGIcd.Col,SGIcd.Row]) <>'' then
      begin
        STR := AnsiUpperCase(Trim(SGIcd.Cells[SGIcd.Col,SGIcd.Row]));

        q_str := sql_str(2);

        myKeyWord:=StrToList(STR);
        for i := 0 to myKeyWord.Count -1 do
          q_str := q_str +' And INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 ';
        q_str := q_str +' and rownum <= 50 order by ENG_FULL_DESC';
        dm.qryicd9.SQL.Text := q_str;
        sql_Waiting_log('open',q_str);
        dm.qryicd9.Open;
        sql_Waiting_log('close','');
        if not DM.qryicd9.IsEmpty then
        begin
          SetPanel(True,pnlHintGrid);
          SetPanel(True,pnlIcd);
        end
        else
        begin
          SetPanel(False,pnlHintGrid);
          SetPanel(False,pnlIcd);
        end;
      end
      else
      begin
        SetPanel(False,pnlHintGrid);
        SetPanel(False,pnlIcd);
      end;
    end
    else if Sender = SGIcd10 then
    begin//icd10
      if Trim(SGIcd10.Cells[SGIcd10.Col,SGIcd10.Row]) <>'' then
      begin
        STR := AnsiUpperCase(Trim(SGIcd10.Cells[SGIcd10.Col,SGIcd10.Row]));

        q_str := sqlstr(0);

        myKeyWord:=StrToList(STR);
        for i := 0 to myKeyWord.Count -1 do
          if i =0 then
            q_str := q_str +' (INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 '
          else
            q_str := q_str +' And INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 ';
        q_str := q_str + ' or icd_code in(select icd_code from icd10_diag_desc where INSTR(UPPER(icd_DESC), '+Qt(STR)+') > 0))';
        q_str := q_str + ' and eff_flag=''Y'' and icd_system = ''C'' and rownum <= 50';

        //ShowMessage('col:'+IntToStr(SGIcd10.Colwidths[0])+' col1:'+IntToStr(SGIcd10.Colwidths[1]));
        PnlICD10.Height := 165;
        PnlICD10.Align := alBottom;
        DBCICD10.RowCount := 5;
        DM.qryICD10.SQL.Text := q_str;
        sql_Waiting_log('open',q_str);
        DM.qryICD10.Open;
        sql_Waiting_log('close','');
        IF NOT DM.qryICD10.IsEmpty THEN
        begin
          DSICD10.DataSet := DM.qryICD10;
          SetPanel(True, PnlICD10);
        end
        else
          SetPanel(False, PnlICD10);
      end;
    end;
  end
  else
  begin
    //���g�W��
    with DM.QrySearch do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''R1'' and RTrim(Code_one) = RTrim(ORDER_TYPE)) "���O",');
      SQL.Add('(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' and RTrim(Code_one) = RTrim(Send_Cd_1) and RTrim(Code_Two) = RTrim(Order_type) ) "����"');
      SQL.Add(' from OrderItem_basic where ORDER_TYPE IN (SELECT RTrim(CODE_ONE) FROM COMPARE_CODE_BASIC WHERE IPD_RELATED=''R1'') and  INSTR(UPPER(FEE_NAME),  '+Qt(AnsiUpperCase(SGXRay.Cells[SGXRay.Col,SGXRay.Row])));
      SQL.Add(') > 0 and USE_STATUS=''1'' and rownum <= 50 Order by   send_cd_2,USE_STATUS,Fee_code,Fee_Desc,Fee_Name');
      DM.QrySearch.sql.Text;                                                                                                                                                                                                        //USE_STATUS_O                         //USE_STATUS_O
      sql_Waiting_log('open',SQL.Text);
      open;
      sql_Waiting_log('close','');
      if not IsEmpty then
      begin
        SetPanel(true,pnlHintGrid);
        SetPanel(true,PanelRay);
      end;
    end;
  end;
  Timer1.Enabled := False;
end;

procedure TFrmOrder.BitBtn11Click(Sender: TObject);
begin
  inherited;
  OutList.Clear;
  myDate := Date;
  myTime := Time;
  if not assigned(FrmLabOrder) then
    FrmLabOrder := TFrmLabOrder.Create(Self);
  FrmLabOrder.ShowModal;
  InsertLab('','','','','','','');
end;

procedure TFrmOrder.BitBtn12Click(Sender: TObject);
begin
  inherited;
  OutList.Clear;
  myDate := Date;
  myTime := Time;
  if not assigned(FrmChkOrder) then
    FrmChkOrder := TFrmChkOrder.Create(Self);
  FrmChkOrder.ShowModal;
  rheObj.Lines.Add(trim(FrmChkOrder.Memo2.Text));
  rheSub.Lines.Add(trim(FrmChkOrder.Memo1.Text));
  InsertChk('','','','','');
end;

procedure TFrmOrder.BitBtn13Click(Sender: TObject);
begin
  inherited;
  OutList.Clear;
  if not assigned(FrmXRayOrder) then
    FrmXRayOrder := TFrmXRayOrder.Create(Self);
  myDate := Date;
  myTime := Time;
  FrmXRayOrder.ShowModal;
  rheSub.Lines.Add(trim(FrmXRayOrder.Memo1.Text));
  rheObj.Lines.Add(trim(FrmXRayOrder.mymemo.Text));
  InsertXRay('','','','','','','','');
  OutList.Clear;
  Radionum;
end;

procedure TFrmOrder.MyItemsForRepClick(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter,msgstr : String;
  i : Integer;
  //��L���i
begin
  msgstr := '';
  myStr :=Setsys.ReadString('��L���i',TMenuItem(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTERREPROT',TMenuItem(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  SetParamter(myParamter,'$+SEXTYPE+$',Getsex01);
  SetParamter(myParamter,'$+BIRTHDATE+$',GetBirth);
  SetParamter(myParamter,'$+TEL+$',TEL);
  SetParamter(myParamter,'$+REGDATETIME+$',GetEpdDate+GetEpdTime);
  SetParamter(myParamter,'$+ICD94+$',Trim(SGIcd.Cells[0,4]));
  SetParamter(myParamter,'$+ICD95+$',Trim(SGIcd.Cells[0,5]));
  SetParamter(myParamter,'$+ADDRESS+$',PATARSS);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    //109.12.24 shh ITe 11138 add ��E��^�g�B�m
    if TMenuItem(sender).Caption = '��X��E��(�úֳ�)' then
    Begin
      WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);

      OutList.Clear;
      if FileExists(ExtractFileDir(Application.ExeName)+'\epd_trans.txt') then
      begin
        OutList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\epd_trans.txt');
        for i := 0 to OutList.Count -1 do
        begin
          InsertFee(ReturnID(OutList.Strings[i]), 'epd_trans', ' ', '1', 'G');
          //rheHist.Lines.Add(dateformat(3,Now)+''+ReturnID(OutList.Strings[i]))
        end;
      end;
      OutList.Clear;
      DELETEFILE(ExtractFileDir(Application.ExeName)+'\epd_trans.txt');
    end
    else
    //END 109.12.24 shh ITe 11138 add ��E��^�g�B�m
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
  end;
  if TMenuItem(sender).Caption = 'UniReport' then
    msgstr :=  trim(InsertLabLog('U'));
  if TMenuItem(sender).Caption = '�氵����' then
    msgstr :=  trim(InsertLabLog('L'));
  if msgstr <> '' then
    ShowMessage(msgstr);


end;

procedure TFrmOrder.MyItemsForSubSysClick(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  subItems : String;
  mysubItems : TMenuItem;
  i : Integer;
  //SubMenu
begin
  myStr :=Setsys.ReadString(TMenuItem(sender).Hint,TMenuItem(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTERSYSTEM',TMenuItem(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.MyItemsForSysClick(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  //��L���i
begin
  myStr :=Setsys.ReadString('��L',trim(TMenuItem(sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTERSYSTEM',TMenuItem(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N11Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N12Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';      
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.PACS1Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';      
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.CDFile1Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  try
    SetPCHRNOTOINT(IntToStr(StrToInt64(GetChrNo)));
  except
  end;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N22Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
  tempQuery : TADOQuery;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
  //109.03.28 shh ITe �{�ɤu�@�����y
    if (TMenuItem(sender).Caption = '����') or
       (TMenuItem(sender).Caption = '�v��') or
       (TMenuItem(sender).Caption = '������')  then
    begin

//    end;
      try
        tempQuery := TADOQuery.Create(self);
        tempQuery.ConnectionString := DM.ADOLink.ConnectionString;

        if (TMenuItem(sender).Caption = '����') then
          myStr := 'select f_get_lab_system_links(''$+PATCHRNO+$'', ''$+USERID+$'' , ''LIS'') as remsg from dual'
        else if (TMenuItem(sender).Caption = '�v��') then
          myStr := 'select f_get_lab_system_links(''$+PATCHRNO+$'', ''$+USERID+$'' , ''IMG'') as remsg from dual'
        else if (TMenuItem(sender).Caption = '������') then
          myStr := 'select f_get_lab_system_links(''$+PATCHRNO+$'', ''$+USERID+$'' , ''ENDO'') as remsg from dual'
        else
          myStr := 'select f_get_lab_system_links(''$+PATCHRNO+$'', ''$+USERID+$'' , ''LIS'') as remsg from dual';

        comStrRep(mystr);
        tempQuery.SQL.Add(mystr);
        tempQuery.Open;

        if (tempQuery.FieldByName('ReMsg').Value <> '') then
          myStr := tempQuery.FieldByName('ReMsg').Value;

        tempQuery.Close;
      finally
        FreeAndNil(tempQuery);
      end;
    end
    else
    begin
       showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
       Exit;
    end;
  end;
  try
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
  except
  end;
  InsertLabLog('L');
end;

procedure TFrmOrder.N23Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N24Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N25Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N16Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';     
  if not Assigned(FrmSMSsend) then
    FrmSMSsend := TFrmSMSsend.Create(Self);
  FrmSMSsend.send_str := '';
  FrmSMSsend.ShowModal;
  FreeAndNil(FrmSMSsend);
end;

procedure TFrmOrder.DNR1Click(Sender: TObject);
var
  Bmp : TBitmap;
  SQLs : TStrings;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  ImgSex.Picture.Assign(nil);
  ImgSex.Picture := nil;
  ImgSex.ShowHint := False;
  if not assigned(FrmPubDNRList) then
    FrmPubDNRList := TFrmPubDNRList.Create(Self);
  FrmPubDNRList._DB := DM.ADOLink;
  FrmPubDNRList.Chr_no := GetChrNo;
  FrmPubDNRList.ModifyKind := '1';
  FrmPubDNRList.ShowModal;

  FrmPubDNRList.Free;
  FrmPubDNRList := nil;
  bmp := TBitmap.Create;
  SQLs := TStringList.Create;

  bmp.FreeImage();
  SQLs.Clear;
  SQLs.Add('Select * from hospice_basic where CHR_NO='+Qt(GetChrNo)+' and can_cd=''N'' ');
  if DM.OpenSQL(SQLs) then
  begin
    ImageListforPat.GetBitmap(7,bmp);
    ImgSex.Picture.Assign(bmp);
    ImgSex.Hint := '�w��f�H';
    ImgSex.ShowHint := True;
  end
  else
  begin
    SQLs.Clear;
    SQLs.Add('select * from DNR_BASIC where Chr_no='+qt(GetChrno()))  ;
    SQLs.Add(' and CAN_CD =''N'' ');
    if DM.OpenSQL(SQLs) then
    begin
      ImageListforPat.GetBitmap(6,bmp);
      ImgSex.Picture.Assign(bmp);
      ImgSex.Hint := '[DNR�f�H]';
      ImgSex.ShowHint := True;
    end
    else
    begin
      ImgSex.Picture.Assign(nil);
      ImgSex.Picture := nil;
      ImgSex.ShowHint := False;
    end;
  end;
  SQLs.Free;
  SQLs := nil;
  Bmp.Free;
end;

procedure TFrmOrder.N17Click(Sender: TObject);
var
  Bmp : TBitmap;
  SQLs : TStrings;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  //if HavePat then
  //begin
    ImgSex.Picture.Assign(nil);
    ImgSex.Picture := nil;
    ImgSex.ShowHint := False;
    if not Assigned(FrmHosPiceList) then
      FrmHosPiceList := TFrmHosPiceList.Create(Self);
    FrmHosPiceList.Fee_no := Getfeeno;
    FrmHosPiceList.Chr_no := Getchrno;
    FrmHosPiceList.ModifyKind := '1';
    FrmHosPiceList.oper_id := getUserId;
    FrmHosPiceList.ShowModal;
    bmp := TBitmap.Create;
    SQLs := TStringList.Create;

    bmp.FreeImage();
    //DNR
    SQLs.Clear;
    SQLs.Add('Select * from hospice_basic where CHR_NO='+Qt(GetChrNo)+' and can_cd=''N'' ');
    if DM.OpenSQL(SQLs) then
    begin
      ImageListforPat.GetBitmap(7,bmp);
      ImgSex.Picture.Assign(bmp);
      ImgSex.Hint := '�w��f�H';
      ImgSex.ShowHint := True;
    end
    else
    begin
      SQLs.Clear;
      SQLs.Add('select * from DNR_BASIC where Chr_no='+qt(GetChrno()))  ;
      SQLs.Add(' and CAN_CD =''N'' ');
      if DM.OpenSQL(SQLs) then
      begin
        ImageListforPat.GetBitmap(6,bmp);
        ImgSex.Picture.Assign(bmp);
        ImgSex.Hint := '[DNR�f�H]';
        ImgSex.ShowHint := True;
      end
      else
      begin
        ImgSex.Picture.Assign(nil);
        ImgSex.Picture := nil;
        ImgSex.ShowHint := False;
      end;
    end;
    SQLs.Free;
    SQLs := nil;
    Bmp.Free;
end;

procedure TFrmOrder.N18Click(Sender: TObject);
var
  i,c : integer;
  diastr,datestr:string;
begin
  inherited;
  datestr := '';
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if trim(GetVsCode) ='' then
    ShowMessage('�п�D�v��v�_�h�L�k�}�߶E�_��');

  c := 0;
  if not Assigned(FrmIPDCertificate) then
    FrmIPDCertificate := TFrmIPDCertificate.Create(Self);
  FrmIPDCertificate.ShowKind := 'C';
  diastr := '';
  FrmIPDCertificate.Dia.Clear;
  if icdchangea <> 'N' then
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd10.Cells[0,i]) <>'') and (trim(SGIcd10.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd10.Cells[2,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end
  else
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd.Cells[0,i]) <>'') and (trim(SGIcd.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd.Cells[2,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end;
  FrmIPDCertificate.classkind := '�A';
  FrmIPDCertificate.ShowModal;
  c := FrmIPDCertificate.cont;
  datestr := FrmIPDCertificate.orderdate;

  if datestr <> '' then
    case c of
      0: ;
      1:
        begin
          InsertFee(SetSys.ReadString('SYSTEM','����A�E�_�ѭp��',''),'ceart','','1','N');
          insertordertxt('','��'+datestr+'�}�ߤ���A�E1��');
        end;
      else
        begin
          InsertFee(SetSys.ReadString('SYSTEM','����A�E�_�ѭp��',''),'ceart','','1','N');
          InsertFee(SetSys.ReadString('SYSTEM','����A�E�_�ѭp��','')+'1','ceart','',IntToStr(c-1),'N');
          insertordertxt('','��'+datestr+'�}�ߤ���A�E'+IntToStr(c)+'��');
        end;
    end;
  if FrmIPDCertificate <> nil then
    FrmIPDCertificate := nil;
end;


procedure TFrmOrder.N19Click(Sender: TObject);
var
  i,c : integer;
  diastr,datestr :string;
begin
  inherited;
  datestr := '';
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  diastr := '';
  if trim(GetVsCode) ='' then
    ShowMessage('�п�D�v��v�_�h�L�k�}�߶E�_��');
  c := 0;
  if not Assigned(FrmIPDCertificate) then
    FrmIPDCertificate := TFrmIPDCertificate.Create(Self);
  FrmIPDCertificate.ShowKind := 'E';
  FrmIPDCertificate.Dia.Clear;
  if icdchangea <> 'N' then
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd10.Cells[0,i]) <>'') and (trim(SGIcd10.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd10.Cells[1,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end
  else
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd.Cells[0,i]) <>'') and (trim(SGIcd.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd.Cells[1,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end;
  FrmIPDCertificate.classkind := '�A';
  FrmIPDCertificate.ShowModal;
  c := FrmIPDCertificate.cont;
  datestr := FrmIPDCertificate.orderdate;

  if datestr <> '' then
    case c of
      0: ;
      1:
        begin
          InsertFee(SetSys.ReadString('SYSTEM','�^��A�E�_�ѭp��',''),'ceart','','1','N');
          insertordertxt('','��'+datestr+'�}�߭^��A�E1��');
        end;
      else
        begin
          InsertFee(SetSys.ReadString('SYSTEM','�^��A�E�_�ѭp��',''),'ceart','','1','N');
          InsertFee(SetSys.ReadString('SYSTEM','�^��A�E�_�ѭp��','')+'1','ceart','',IntToStr(c-1),'N');
          insertordertxt('','��'+datestr+'�}�߭^��A�E'+IntToStr(c)+'��');
        end;
    end;

  if FrmIPDCertificate <> nil then
    FrmIPDCertificate := nil;
end;


procedure TFrmOrder.N36Click(Sender: TObject);
var
  i,c : integer;
  diastr, datestr :string;
begin
  inherited;
  datestr := '';
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  diastr := '';
  if trim(GetVsCode) ='' then
    ShowMessage('�п�D�v��v�_�h�L�k�}�߶E�_��');
  c := 0;
  if not Assigned(FrmIPDCertificate) then
    FrmIPDCertificate := TFrmIPDCertificate.Create(Self);
  FrmIPDCertificate.ShowKind := 'C';
  FrmIPDCertificate.Dia.Clear;
  if icdchangea <> 'N' then
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd10.Cells[0,i]) <>'') and (trim(SGIcd10.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd10.Cells[2,i])+';'
      else
        diastr := diastr + trim(SGIcd10.Cells[1,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end
  else
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd.Cells[0,i]) <>'') and (trim(SGIcd.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd.Cells[2,i])+';'
      else
        diastr := diastr + trim(SGIcd.Cells[1,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end;
  FrmIPDCertificate.classkind := '��';
  FrmIPDCertificate.ShowModal;
  c := FrmIPDCertificate.cont;
  datestr := FrmIPDCertificate.orderdate;

  if datestr <> '' then
    case c of
      0: ;
      1:
        begin
          InsertFee(SetSys.ReadString('SYSTEM','����ҶE�_�ѭp��',''),'ceart','','1','N');
          insertordertxt('','��'+datestr+'�}�ߤ���ҶE1��');
        end;
      else
        begin
          InsertFee(SetSys.ReadString('SYSTEM','����ҶE�_�ѭp��',''),'ceart','','1','N');
          InsertFee(SetSys.ReadString('SYSTEM','����ҶE�_�ѭp��','')+'1','ceart','',IntToStr(c-1),'N');
          insertordertxt('','��'+datestr+'�}�ߤ���ҶE'+IntToStr(c)+'��');
        end;
    end;

  if FrmIPDCertificate <> nil then
    FrmIPDCertificate := nil;
end;


procedure TFrmOrder.N40Click(Sender: TObject);
var
  i,c : integer;
  diastr, datestr :string;
begin
  inherited;
  datestr := '';
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  diastr := '';
  if trim(GetVsCode) ='' then
    ShowMessage('�п�D�v��v�_�h�L�k�}�߶E�_��');  
  c := 0;
  if not Assigned(FrmIPDCertificate) then
    FrmIPDCertificate := TFrmIPDCertificate.Create(Self);
  FrmIPDCertificate.ShowKind := 'E';
  if icdchangea <> 'N' then
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd10.Cells[0,i]) <>'') and (trim(SGIcd10.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd10.Cells[1,i])+';'
      else
        diastr := diastr + trim(SGIcd10.Cells[2,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end
  else
  begin
    for i:= 1 to 5 do
      if (trim(SGIcd.Cells[0,i]) <>'') and (trim(SGIcd.Cells[1,i]) <>'') then
        diastr := diastr + trim(SGIcd.Cells[1,i])+';'
      else
        diastr := diastr + trim(SGIcd.Cells[2,i])+';';
    if diastr <> '' then
    begin
      diastr := copy(diastr,1,length(diastr)-1)+'�C';
      FrmIPDCertificate.Dia.Add(diastr);
    end;
  end;
  FrmIPDCertificate.classkind := '��';
  FrmIPDCertificate.ShowModal;
  c := FrmIPDCertificate.cont;
  datestr := FrmIPDCertificate.orderdate;

  if datestr <> '' then
    case c of
      0: ;
      1:
        begin
          InsertFee(SetSys.ReadString('SYSTEM','�^��ҶE�_�ѭp��',''),'ceart','','1','N');
          insertordertxt('','��'+datestr+'�}�߭^��ҶE1��');
        end;
      else
        begin
          InsertFee(SetSys.ReadString('SYSTEM','�^��ҶE�_�ѭp��',''),'ceart','','1','N');
          InsertFee(SetSys.ReadString('SYSTEM','�^��ҶE�_�ѭp��','')+'1','ceart','',IntToStr(c-1),'N');
          insertordertxt('','��'+datestr+'�}�߭^��ҶE'+IntToStr(c)+'��');
        end;
    end;

  if FrmIPDCertificate <> nil then
    FrmIPDCertificate := nil;
end;


procedure TFrmOrder.N27Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  if not Assigned(FrmSetPhrase) then
    FrmSetPhrase := TFrmSetPhrase.Create(Self);
  FrmSetPhrase._DB := DM.ADOLink;
  FrmSetPhrase.ShowModal;
  DM.QryTemp.Close;
  FreeAndNil(FrmSetPhrase)
end;

procedure TFrmOrder.N28Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not Assigned(FrmPkgSet) then
    FrmPkgSet := TFrmPkgSet.Create(Self);
  FrmPkgSet.ShowModal;
  DM.QryTemp.Close;
  FrmPkgSet.DataSource1.DataSet := nil;
  FreeAndNil(FrmPkgSet)
end;

procedure TFrmOrder.N9Click(Sender: TObject);
VAR
  Q_STR,seq, so_flag,sft,spc,stemp,pretime,arrival_date :STRING;
  myFlag,flagname,name_val,MEMO_lev : TStringList;
  i,memoqty,memonew,j: integer;
  bfdate,bfdoc,bfvsdoc : string;
  reg : TRegistry;
  DefPrint : String;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';      
  spc := '  ';
  name_val := TStringList.Create;
  MEMO_lev := TStringList.Create;
  myFlag := TstringList.Create;
  myFlag.Clear;
  myFlag.Add('T_TRIAGE');
  myFlag.Add('A_ASSESSMENT');
  myFlag.Add('O_SUBJECT');
  myFlag.Add('O_OJECT');
  myFlag.Add('O_HISTORY');
  myFlag.Add('O_PLAN');
  myFlag.Add('P_M');
  myFlag.Add('P_L');
  myFlag.Add('P_C');
  myFlag.Add('P_X');
  myFlag.Add('P_F');
  myFlag.Add('P_O');
  myFlag.Add('P_T');
  flagname := TstringList.Create;
  flagname.Clear;
  flagname.Add('');
  flagname.Add('���˶�');
  flagname.Add('���E�_');
  flagname.Add('��Subject');
  flagname.Add('��Object');
  flagname.Add('��PLAN');
  flagname.Add('��HISTORY');
  flagname.Add('������');
  flagname.Add('������');
  flagname.Add('���ˬd');
  flagname.Add('����g');
  flagname.Add('���B�m');
  flagname.Add('���ç�');
  flagname.Add('���ԭz����');

  Q_STR := sql_str(25);
  SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
  SetParamter(q_str,'$OPD_DATE$',qt(GetEpdDate));
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Text := Q_STR;
  DM.QrySubSearch.Open;
  SEQ := '0';
  if not dm.QrySubSearch.IsEmpty then
  begin
    if not assigned(FrmPrintPatData) then
      FrmPrintPatData := TFrmPrintPatData.Create(Self);

    FrmPrintPatData.QRLbchrno.Caption := TRIM(DM.QrySubSearch.FieldByName('chr_no').AsString);
    FrmPrintPatData.QRLbpatname.Caption := trim(DM.QrySubSearch.FieldByName('pat_name').AsString);
    FrmPrintPatData.QRLbage.Caption := Trim(edtAge.Text) ;
    //FrmPrintPatData.QRLbbedno.Caption := TRIM(DM.QrySubSearch.FieldByName('epd_bed').AsString);
    FrmPrintPatData.QRLBIdNo.Caption := GetIdNo;
    if SetSys.ReadString('SYSTEM','REGDRETRMA','') = 'TRUE' then
    begin
      if trim(SGtriage.Cells[0,1]) <> '' then
        stemp := Trim(SGtriage.Cells[0,1])+'_'+Trim(SGtriage.Cells[1,1]);
    end
    else
      stemp := TRIM(DM.QrySubSearch.FieldByName('arrival_date').AsString);

    if stemp <> '' then
      FrmPrintPatData.QRLbArrival.Caption := RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'/')+' '+RocTimes(RocToTime(ReTurnName(stemp)),':')
    else
      FrmPrintPatData.QRLbArrival.Caption := '';
    FrmPrintPatData.QRLbBirthday.Caption := '���� '+IntToStr(strToInt(getyear(GetBirth)))+ '�~ '+getmonth(GetBirth)+'�� '+getdays(GetBirth) +'��';
    FrmPrintPatData.QRLbSex.Caption := SexType(Getsex01);
    FrmPrintPatData.QRLbtalheatcir.Caption := TRIM(DM.QrySubSearch.FieldByName('heat').AsString);

    Q_STR := GETEPDRECORD(3);
    SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := Q_STR;
    DM.QryTemp.Open;
    if not dm.QryTemp.IsEmpty then
    begin
      while not dm.QryTemp.Eof DO
      begin
        if Trim(dm.QryTemp.FieldByName('del_flag').AsString) = 'Y' then
        begin
          spc := '�R ';
          //DM.QryTemp.Next;
          //Continue;
        end
        else
          spc := '  ';
        if  (SEQ <> '0') and ((Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)) <> pretime )  then
        begin //  (Trim(dm.QryTemp.FieldByName('seq').AsString) <> seq) AND
          FrmPrintPatData.mymemo.Add(CharAdd('_','_',80));
          FrmPrintPatData.mymemo.Add('�ɶ�:'+bfdate+ '  �}��:'+GETDOCNAME(bfdoc)+'/�D�v:'+GETDOCNAME(bfvsdoc));
          //'  �}��:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString))+'/�D�v:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('VS_DOC').AsString)));
          FrmPrintPatData.mymemo.Add('');
          so_flag := '';
        end;
        if ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) <> sft then
        begin
          sft :=  ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString));
          if sft <>'T' then
          begin
            stemp := '';
            FrmPrintPatData.mymemo.Add(stemp);
          end;
        end;

        case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
        //0,2..5:
        2..5:
          begin
            //FrmPrintPatData.mymemo.Add(dm.QryTemp.FieldByName('ORDER_TEXT').AsString); //�˶˸�� sohp
            name_val := SliptStr(80,FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if ((pos('Subject',name_val.Strings[i]) > 0) or
                 (pos('Object',name_val.Strings[i]) > 0) or
                 (pos('Assessment',name_val.Strings[i]) > 0) or
                 (pos('Plan',name_val.Strings[i]) > 0)) then
                 FrmPrintPatData.mymemo.Add(spc+name_val.Strings[i])
              else
                case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
                  2: FrmPrintPatData.mymemo.Add('         '+name_val.Strings[i]);//s
                  3: FrmPrintPatData.mymemo.Add('        '+name_val.Strings[i]);//o
                  4: FrmPrintPatData.mymemo.Add('            '+name_val.Strings[i]);//a
                  5: FrmPrintPatData.mymemo.Add('      '+name_val.Strings[i]);//p
                end;
            end;
          end;
        1 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
              FrmPrintPatData.mymemo.Add('��'+CharAdd('�E�_�X',' ',12)+'�E�_�W��');
            FrmPrintPatData.mymemo.Add(spc+dm.QryTemp.FieldByName('ORDER_TEXT').AsString); //�E�_
          end;
        6 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
            begin
              FrmPrintPatData.mymemo.Add('��'+CharAdd('�ī~�W��',' ',40)+CharAdd('���q',' ',5)+CharAdd('���',' ',6)+CharAdd('��',' ',3)+CharAdd('�~�|',' ',5)+CharAdd('�`��',' ',5)+'��'+CharAdd('�W�v',' ',6));
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('QTY_NUM').AsString,' ',5)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('UNIT_DESC').AsString),' ',6)+
                                               CharAdd(dm.QryTemp.FieldByName('ORDER_DAYS').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',5)+
                                               CharAdd(dm.QryTemp.FieldByName('TTL_QTY').AsString,' ',5)+
                                               charadd(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('CIR_CODE').AsString,' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmPrintPatData.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin//�W�ٲĤG��
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(30,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+'����:'+charadd(MEMO_lev.Strings[memoqty],' ',30))
                  else
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                  inc(memoqty);
                end
                else
                begin
                  FrmPrintPatData.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //�h�檺����
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                inc(memoqty);
              end;
            end;
          end;
        7 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
            begin
              FrmPrintPatData.mymemo.Add('��'+CharAdd('����N�X',' ',12)+CharAdd('����W��',' ',40)+CharAdd('����',' ',7)+CharAdd('�ƶq',' ',6)+'��');
              name_val.Clear;
            end;
            MEMO_lev.clear;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));

            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(trim(FulltoHalf(getLabSamplename(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)))),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString),' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmPrintPatData.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'����:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //�h�檺����
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',18));
                inc(memoqty);
              end;
            end;
          end;
        8 : //�ˬd
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
            begin
              FrmPrintPatData.mymemo.Add('��'+CharAdd('�ˬd�N�X',' ',12)+CharAdd('�ˬd�W��',' ',40)+CharAdd('�ˬd��',' ',7)+CharAdd('�ƶq',' ',6)+'��');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(getchkRoomName(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmPrintPatData.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'����:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //�h�檺����
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        9 : //��g
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
            begin                                                                                 // +CharAdd('����',' ',7)
              FrmPrintPatData.mymemo.Add('��'+CharAdd('��g�N�X',' ',12)+CharAdd('��g�W��',' ',47)+CharAdd('�ƶq',' ',6)+'��');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',47)+
                                               //CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmPrintPatData.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmPrintPatData.mymemo.Add(spc+'����:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'����:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //�h�檺����
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        10: //�B�m
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
            begin
              FrmPrintPatData.mymemo.Add('��'+CharAdd('�B�m�N�X',' ',12)+CharAdd('�B�m�W��',' ',40)+CharAdd('����',' ',7)+CharAdd('�ƶq',' ',7)+'��');
              name_val.Clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
                FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('part_code').AsString,' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString))
              else
                FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
            end;
          end;
        11: //�ç�
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
              FrmPrintPatData.mymemo.Add('��'+CharAdd('�ç��W��',' ',60)+CharAdd('�ƶq',' ',6)+'��');
            FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_NAME').AsString),' ',60)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                           trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
          end;
        12: //��r����
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //����:mbSingleByte �^��:�ť�
            begin
              FrmPrintPatData.mymemo.Add('��'+'��r����');
              name_val.Clear;
            end;
            name_val := SliptStr(70,trim(FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              //if i = 0 then                 // CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                FrmPrintPatData.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',70));
              //else
              //  FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+dm.QryTemp.FieldByName('ORDER_TEXT').AsString);
            end;
          end;
        end;
        so_flag := Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString);
        seq     := Trim(dm.QryTemp.FieldByName('SEQ').AsString);
        pretime := Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString);
        bfdate  := ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':');
        bfdoc   := Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString);
        bfvsdoc := Trim(dm.QryTemp.FieldByName('VS_DOC').AsString);
        dm.QryTemp.Next;
      end;

      //�����|�E�_
      FrmPrintPatData.mymemo.Add(CharAdd('-','-',40));
      spc := '  ';
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      {DM.QrySearch3.SQL.Add('select upd_date||upd_time,icd_code,(select eng_full_desc from icd_code_basic a where a.icd_code=order_icd_code.icd_code)as text_desc,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code where order_kind=''EPD'' and order_type=''CPD'' and opd_date>='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo));
      DM.QrySearch3.SQL.Add(' union all ');
      DM.QrySearch3.SQL.Add('select upd_date||upd_time,'''' as icd_code,text_desc as icd_code,kind_no from leave_diag where kind_no <> ''0'' and fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' order by 4');
      //20160201 for ICD10 Edit
      //DM.QrySearch3.SQL.Add('select text_desc,kind_no from leave_diag where fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' order by seq_no');
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
        FrmPrintPatData.mymemo.Add('��'+CharAdd('���|�E�_�X',' ',12)+'�E�_�W��');
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
          FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QrySearch3.FieldByName('icd_code').AsString),' ',12)+ trim(dm.QrySearch3.FieldByName('text_desc').AsString)) //�E�_
        else
          FrmPrintPatData.mymemo.Add(spc+trim(dm.QrySearch3.FieldByName('text_desc').AsString));
        DM.QrySearch3.Next;
      END;}

      DM.QrySearch3.SQL.Add('select a.opd_date,a.fee_no,a.seq_no,trim(a.icd_code)||''_''||b.eng_full_desc icd_code,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code a ');
      DM.QrySearch3.SQL.Add('left join icd_code_basic b on b.icd_code=a.icd_code ');
      DM.QrySearch3.SQL.Add('where order_kind=''EPD'' and opd_date='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo)+' and order_type=''CPD'' ');
      DM.QrySearch3.SQL.Add('union all ');
      DM.QrySearch3.SQL.Add('select order_date,fee_no,seq_no,text_desc,kind_no from leave_diag where cncl_flag=''N'' and kind_no=''2'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        FrmPrintPatData.mymemo.Add('��'+CharAdd('���|�E�_�X',' ',12)+'�E�_�W��');
        name_val.Clear;
      end;
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
        begin
          name_val := SliptStr(54,trim(FulltoHalf(ReturnName(trim(dm.QrySearch3.FieldByName('icd_code').AsString)))));
          for i := 0 to name_val.Count-1 do
          begin
            if i = 0 then
              FrmPrintPatData.mymemo.Add(spc+CharAdd(ReturnId(trim(dm.QrySearch3.FieldByName('icd_code').AsString)),' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //�E�_
            else
              FrmPrintPatData.mymemo.Add(spc+CharAdd(' ',' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //�E�_
          end;
        end
        else
          FrmPrintPatData.mymemo.Add(trim(dm.QrySearch3.FieldByName('icd_code').AsString));
        DM.QrySearch3.Next;
      END;



      //���E(�f�H�ʦV)
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      DM.QrySearch3.SQL.Add('select care from epd_his where fee_no='+Qt(GetFeeNo)+' and epd_date='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        if trim(getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)))<> '' then
          FrmPrintPatData.MYMEMO.Add('�����|�覡 :'+getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)));
      end;
      FrmPrintPatData.mymemo.Add(CharAdd('-','-',40));
      FrmPrintPatData.mymemo.Add(CharAdd('-','-',80));
      FrmPrintPatData.mymemo.Add('���ɶ�:'+ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':')+
                            ' �}��:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString))+'/�D�v:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('VS_DOC').AsString))+'��v');
      //�f�H������i���
      spc := '  ';
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select (Select Trim(Code_oneName) from COMPARE_CODE_BASIC b where b.code_one=a.exper_class and ipd_related=''L1'') as TME,');
      DM.QryTemp.SQL.Add('Trim(a.r_item_name) as ITEM,Trim(a.result_date_t) as DATAT,Trim(a.result_data_q) as DATAQ,a.result_flag ');
      DM.QryTemp.SQL.Add('from lab_data a where a.LAB_no IN(select  sp_no  from Lab_list where fee_no='+Qt(GetFeeNo)+') ORDER BY 1');
      DM.QryTemp.Open;
      IF NOT DM.QryTemp.IsEmpty THEN
      BEGIN
        FrmPrintPatData.mymemo.Add('��'+'������i');
        FrmPrintPatData.mymemo.Add(spc+CharAdd('�էO',' ',10)+CharAdd('����',' ',32)+CharAdd('�w��',' ',15)+CharAdd('�w�q',' ',15)+'���G');
        FrmPrintPatData.mymemo.Add(spc+'-----------------------------------------------------------------------------');
        WHILE NOT DM.QryTemp.Eof DO
        BEGIN
          FrmPrintPatData.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('TME').AsString),' ',10)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('ITEM').AsString),' ',32)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAT').AsString),' ',15)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAQ').AsString),' ',15)+
                                         trim(dm.QryTemp.FieldByName('result_flag').AsString));
          DM.QryTemp.Next;
        END;
      END;
      //�C�L��v
      FrmPrintPatData.QRLabel17.Caption := '�C�L��v : '+ GETDOCNAME(getUserId);

      //��L���
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
      FrmPrintPatData.PrepareSQL;
      if assigned(FrmPrintPatData) then
        FrmPrintPatData := nil;
      reg.DeleteKey('Device');
      reg.WriteString('Device',DefPrint);
      Reg.CloseKey;
      Reg.Free;
    end
    else
      ShowMessage('�L�f�{���');
  end;
end;

procedure TFrmOrder.N10Click(Sender: TObject);
var
  i :integer;
  s_qty : string;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  if not Assigned(FrmTrauma) then
    FrmTrauma := TFrmTrauma.Create(Self);
  for i := FrmTrauma.ComponentCount-1 downto  0 do
  begin
    if (FrmTrauma.Components[i] is TEdit) then
      TEdit(FrmTrauma.Components[i]).Text := '';
  end;
  s_qty := getMAJOR_sql(0);
  SetParamter(s_qty,'$FEE_NO$',Qt(Trim(GetFeeNo)));
  SetParamter(s_qty,'$STATRDATE$',Qt(Minus_six_months_date));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add(s_qty);
  DM.QryTemp.Open;
  IF not DM.QryTemp.IsEmpty THEN
    if DM.QryTemp.FieldByName('START_FLAG').AsString ='Y' then
    begin
       FrmTrauma.A_02_01_3_1.Text := Trim(DM.QryTemp.FieldByName('NOTE').AsString);
       FrmTrauma.A_03_03_3_0.Text := Trim(DM.QryTemp.FieldByName('time_sum').AsString);
    end;
  FrmTrauma.A_01_01_3_0.Text := GetPatName;
  FrmTrauma.A_01_02_3_0.Text := GetChrNo;
  FrmTrauma.A_01_03_3_0.Text := edtAge.Text;
  FrmTrauma.A_01_04_3_0.Text := SexType(Getsex01);
  FrmTrauma.A_01_05_3_1.Text := ROCDate(Now,'');
  FrmTrauma.B_06_02_3_0.Text := 'E'+ Trim(SGtriage.Cells[3,1])+'V'+Trim(SGtriage.Cells[4,1])+'M'+Trim(SGtriage.Cells[5,1]);
  FrmTrauma.B_05_04_3_1.Text := Trim(SGtriage.Cells[12,1]);//�t��q
  FrmTrauma.B_05_03_3_1.Text := Trim(SGtriage.Cells[11,1])+'/'+ Trim(SGtriage.Cells[10,1]);//����
  FrmTrauma.B_05_02_3_0.Text := Trim(SGtriage.Cells[8,1]);//�߷i
  FrmTrauma.D_04_02_3_1.Text := Trim(SGIcd.Cells[1,1]);//ICD9_1
  FrmTrauma.D_04_03_3_1.Text := Trim(SGIcd.Cells[1,2]);//ICD9_2
  FrmTrauma.D_04_04_3_1.Text := Trim(SGIcd.Cells[1,3]);//ICD9_3
  FrmTrauma.D_04_05_3_1.Text := Trim(SGIcd.Cells[1,4]);//ICD9_4
  FrmTrauma.D_04_06_3_1.Text := Trim(SGIcd.Cells[1,5]);//ICD9_5
  FrmTrauma.ShowModal;
  //FreeAndNil(FrmTrauma);
end;
//�f������
procedure TFrmOrder.Memo3Enter(Sender: TObject);
var
  lbl : TLabel;
  i : integer;
begin
  inherited;
  if DBCtrlGrid1.Hint <> TRichEdit(Sender).Name then
  begin
    if TRichEdit(Sender).Name = Memo3.Name then
      DBCtrlGrid1.Tag := 0
    else if TRichEdit(Sender).Name = Memo5.Name then
      DBCtrlGrid1.Tag := 1
    else
      DBCtrlGrid1.Tag := 4;
    DBCtrlGrid1.Hint := TRichEdit(Sender).Name;
    for i := FrmOrder.pnlcap.ControlCount-1 downto  0 do
    begin
      if (FrmOrder.pnlcap.Controls[i] is TLabel) then
      begin
        lbl := TLabel(FrmOrder.pnlcap.Controls[i]);
        FrmOrder.pnlcap.RemoveControl(lbl);
        lbl.Free;
      end;
    end;
    lt := 0;
    tag := 0;
    FetchPhrase('000000000000','000000000000',STRKEY);
  end;
end;

function TFrmOrder.FetchPhrase(prat, key: string;
  var Keystr: string): Boolean;
var
  i, j: Integer;
  tmplab : TLabel;
  tmpsql: string;
  top : integer;
begin
  Result := False;
    tmpsql:= phrase(0);
    SetParamter(tmpsql,'$PHRASE_FATHER$',qt(key));
    SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(DBCtrlGrid1.Tag+5)));
    SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
    SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
    Erftqry := TADOQuery.Create(Self);
    Erftqry.Connection := DM.ADOLink;
    DataSource1.DataSet := Erftqry;
    Erftqry.Close;
    Erftqry.SQL.Text := tmpSql;
    //Erftqry.SQL.SaveToFile('d:\test.txt');
    Erftqry.Open;
    if Erftqry.IsEmpty then
    begin
      tmpsql:= phrase(0);
      SetParamter(tmpsql,'$PHRASE_FATHER$',qt(prat));
      SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(DBCtrlGrid1.Tag+5)));
      SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
      SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
      Erftqry.Close;
      Erftqry.SQL.Text := tmpSql;
      Erftqry.Open;
    end
    else
    begin
      Result := true;
      if (Trim(Erftqry.FieldByName('PHRASE_FATHER').AsString)='000000000000') and (tag= 0) then
      begin
        tmplab :=  TLabel.Create(Self);
        tmplab.Parent := pnlcap;
        tmplab.Font.Size := 11;
        tmplab.Font.Color := clmaroon;
        tmplab.Font.Name := '�з���';
        tmplab.Font.Style := [fsBold];
        tmplab.Cursor := crHandPoint;
        tmplab.Caption := TRichEdit(FrmOrder.FindComponent(DBCtrlGrid1.Hint)).Hint;
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
      keyStr := KeyStr +Trim(Erftqry.FieldByName('PHRASE_Name').AsString) + '>>'
    end;
end;

procedure TFrmOrder.myLblClick(Sender: TObject);
var
  id,fath:string;
  lbl : TLabel;
  i : integer;
begin
  inherited;
  id := ReturnName(TLabel(Sender).Name);
  fath := TLabel(Sender).Hint;
  for i := FrmOrder.pnlcap.ControlCount-1 downto  0 do
  begin
    if (FrmOrder.pnlcap.Controls[i] is TLabel) then
      if FrmOrder.pnlcap.Controls[i].Tag > TLabel(Sender).Tag then
      begin
        lt := lt - (TLabel(FrmOrder.pnlcap.Controls[i]).Width+5);
        lbl := TLabel(FrmOrder.pnlcap.Controls[i]);
        FrmOrder.pnlcap.RemoveControl(lbl);
        lbl.Free;
      end;
  end;
  FetchPhrase(fath,id,Strkey);
end;

procedure TFrmOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(phrasestl);
  FreeAndNil(firsticd9);
  FreeAndNil(Erftqry);
  FreeAndNil(FCheck);
  FreeAndNil(FNoCheck);
  if trim(GetFeeNo)= '' then
    er_look('OUT',trim(MySBar.Panels[0].Text),trim(btnRePrint.Hint),'ED')
  else
    er_look('OUT',GetFeeNo,getUserId,'ED');
  Action := Cafree;
end;

procedure TFrmOrder.DBText37Click(Sender: TObject);
var
  tmplab : TLabel;
  pname,pid,pfa,tmpsql :string;
  i : Integer;
begin
  inherited;
  pname := Trim(Erftqry.FieldByName('PHRASE_name').AsString);
  pid := '_'+Trim(Erftqry.FieldByName('phrase_id').AsString);
  pfa := Trim(Erftqry.FieldByName('PHRASE_Father').AsString);

  tmpsql:= phrase(0);
  SetParamter(tmpsql,'$PHRASE_FATHER$',qt(Trim(Erftqry.FieldByName('phrase_id').AsString)));
  SetParamter(tmpsql,'$phrase_kind$',qt(IntToStr(DBCtrlGrid1.Tag+5)));
  SetParamter(tmpsql,'$DEPT$',qt(GetUserDept));
  SetParamter(tmpsql,'$DOCCODE$',qt(getUserId));
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Text := tmpsql;

  DM.QrySearch.Open;
  if not DM.QrySearch.IsEmpty then
  begin
    if FetchPhrase(pfa,Trim(Erftqry.FieldByName('phrase_id').AsString),STRKEY) then
    begin
      if pfa ='000000000000' then
      begin
        if DBCtrlGrid1.Hint = Memo3.name then
        begin
          if memo3.Lines.Strings[memo3.Lines.Count- 1] <> '  ��'+pname then
            Memo3.Lines.Add('  ��'+Pname);
        end
        else if DBCtrlGrid1.Hint = Memo5.name then
        begin
          if memo5.Lines.Strings[memo5.Lines.Count- 1] <> '  ��'+pname then
            Memo5.Lines.Add('  ��'+Pname);
        end;
        StrKey := '';
      end;
      tmplab :=  TLabel.Create(Self);
      tmplab.Parent := pnlcap;
      tmplab.Cursor := crHandPoint;
      tmplab.Font.Size := 11;
      tmplab.Font.Color := clmaroon;
      tmplab.Font.Name := '�з���';
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
      if DBCtrlGrid1.Hint = Memo3.name then
      begin
        if memo3.Lines.Strings[memo3.Lines.Count- 1] <> '  ��'+pname then
          Memo3.Lines.Add('  ��'+Pname);
      end
      else if DBCtrlGrid1.Hint = Memo5.name then
      begin
        if memo5.Lines.Strings[memo5.Lines.Count- 1] <> '  ��'+pname then
          Memo5.Lines.Add('  ��'+Pname);
      end;
      StrKey := '';
    end
    else
    begin
      if DBCtrlGrid1.Hint = Memo3.name then
      begin
        Memo3.Lines.Add('        '+GetMyStr(pfa)+'  ' +Pname);
        StrKey := '';
      end
      else if DBCtrlGrid1.Hint = Memo5.name then
      begin
        Memo5.Lines.Add('        '+GetMyStr(pfa)+'  ' +Pname);
        StrKey := '';
      end
      else
      begin
        if InsertIcd2(SGEmgicd,ReturnName(pname)) then
        begin
           SGEmgicd.RowCount := SGEmgicd.RowCount + 1;
           SGEmgicd.Row := SGEmgicd.Row+1;
        end;
      end;
    end;
    TRichEdit(FrmOrder.FindComponent(DBCtrlGrid1.Hint)).Perform(WM_VSCROLL,SB_LINEDOWN ,0);
  end;
end;

function TFrmOrder.GetMyStr(id: String): String;
var
  TempQ : TAdoQuery;
begin
  TempQ := TAdoQuery.Create(self);
  TempQ.Connection := Dm.ADOLink;
  try
    with TempQ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from tmu_phrase_main where Phrase_id = '+Qt(id)+' and Phrase_father <> ''000000000000''');
      open;
      if not Eof then
        GetMyStr:=GetMyStr(FieldByName('Phrase_father').AsString) +' '+FieldByName('Phrase_name').AsString;
    end;
  finally
    FreeAndNil(TempQ);
  end;
end;

procedure TFrmOrder.CheckListBox2Click(Sender: TObject);
var
  i:integer;
  str,fcode :string;
begin
  inherited;
  if TCheckListBox(Sender).Checked[TCheckListBox(Sender).ItemIndex] then
  begin
    TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.Text := TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.Text+TCheckListBox(Sender).Items[TCheckListBox(Sender).ItemIndex]+', ';
    if TCheckListBox(Sender).Name= CheckListBox7.Name then
    begin
      pkgdtl:= True;
      if frmshw = 'N' then
        if pkgdtl then
          if GETPKG(trim(TCheckListBox(Sender).Items[TCheckListBox(Sender).ItemIndex]),fcode) then
            if MessageDlg('���ﶵ���]�w�M�\�Ӷ��O�_�a�X?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              GETPKGdtl(fcode);
      pkgdtl:= False;
    end;
  end
  else
  begin
    i:=TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).ItemIndex]+', ');
    if i <> -1 then
      TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.Delete(i);
  end;
end;

procedure TFrmOrder.CheckListBox2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  inherited;
  try
    i:=TCheckListBox(Sender).ItemAtPos(point(x,y),True); //���o�I�蠟item
    if i>=0 then
      if x > TTempCheck(TCheckListBox(Sender)).GetCheckWidth  then
          TCheckListBox(Sender).Checked[i] := not TCheckListBox(Sender).Checked[i];

    if not TCheckListBox(Sender).Checked[i] then
      i:=TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.IndexOf(TCheckListBox(Sender).Items.Strings[TCheckListBox(Sender).ItemIndex])
    else
      i := -1;
    if i <>-1 then
      TRichEdit(FrmOrder.FindComponent(TCheckListBox(Sender).Hint)).Lines.Delete(i);
  except
  end;
end;

procedure TFrmOrder.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmOrder.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmOrder.btnFirstsaveClick(Sender: TObject);
var
  TempQ : TAdoQuery;
  ALLNO,Q_STR,stemp,date,time,tmpSql : string;
  seqno1,i : integer;
  SQLo1: TObjectList;
  SQLs1: TStrings;
  chek,havedata: Boolean;
begin
  inherited;
  havedata := False;
  chek := False;
  try
    //�s��
    strReplace(Memo1);
    strReplace(Memo2);
    strReplace(Memo3);
    strReplace(Memo4);
    strReplace(Memo5);
    strReplace(Memo6);
    strReplace(Memo7);

    SQLo1:=TObjectList.Create;
    date := ROCDate(Now,'');
    time :=  ROCTimes(Now,'');
    TempQ := TAdoQuery.Create(self);
    TempQ.Connection := Dm.ADOLink;
    tmpSql := sql_str(4);
    SetParamter(tmpSql,'$fee_no$',qt(getFeeNo));
    DM.QrySearch.SQL.Text := tmpSql;
    dm.QrySearch.Open;
    if DM.QrySearch.IsEmpty then //opd_basic1
    begin
      //use_opd_log('�f������');
      tmpSql:= 'insert into opd_basic1(OPD_KIND,OPD_DATE,DEPT_CODE,SHIFT_NO,PRINT_FLAG,DEPT_ROOM,DOC_CODE,SEQ_NO,CHR_NO,FEE_NO,PAT_ID,INS_SEQ_NO,PROG_FLAG,ICD9_CODE1,UPD_DATE,UPD_TIME,UPD_OPER)'+
               ' VALUES ($OPD_KIND$,$OPD_DATE$,$DEPT_CODE$,$SHIFT_NO$,$PRINT_FLAG$,$DEPT_ROOM$,$DOC_CODE$,$SEQ_NO$,$CHR_NO$,$FEE_NO$,$PAT_ID$,$INS_SEQ_NO$,$PROG_FLAG$,$ICD9_CODE$,$UPD_DATE$,$UPD_TIME$,$UPD_OPER$)';
      SetParamter(tmpSql,'$OPD_KIND$',qt('E'));
      SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
      SetParamter(tmpSql,'$DEPT_CODE$',qt(GetPatDept));
      SetParamter(tmpSql,'$SHIFT_NO$',qt(Getshiftno));
      SetParamter(tmpSql,'$PRINT_FLAG$',Qt('1'));
      SetParamter(tmpSql,'$DEPT_ROOM$',qt(GetdeptRoom));
      SetParamter(tmpSql,'$DOC_CODE$',qt(getUserId));
      SetParamter(tmpSql,'$SEQ_NO$',qt(GetPatId));
      SetParamter(tmpSql,'$CHR_NO$',qt(GetChrNo));
      SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
      SetParamter(tmpSql,'$PAT_ID$',Qt(Getpartid));
      SetParamter(tmpSql,'$INS_SEQ_NO$',Qt(''));
      SetParamter(tmpSql,'$PROG_FLAG$',qt('N'));
      SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(Now,'')));
      SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTime(Now,'')));
      SetParamter(tmpSql,'$UPD_OPER$',Qt(getUserId));
      if (Trim(SGEmgicd.Cells[1,1]) = '') or (Trim(SGEmgicd.Cells[0,1]) = '') then
        SetParamter(tmpSql,'$ICD9_CODE$',qt(' '))
      else
        SetParamter(tmpSql,'$ICD9_CODE$',qt(Trim(SGEmgicd.Cells[1,1])));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    IF NOT GetMaxNo THEN
    BEGIN
      ShowMessage('������Ǹ�,�s�ɥ���');
      Exit;
    END;

    Inc(RECORD_no);
    
    if (Memo1.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Chief Complaint:','01',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo1.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo1.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo1.Lines.Strings[i]),'01',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','01',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
     //�{�f�v            // and (chek)
    if (Memo2.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Present Illness:','02',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo2.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo2.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo2.Lines.Strings[i]),'02',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','02',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //�L�h�f�v           // and (chek)
    if (Memo4.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Past History:','03',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo4.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo4.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo4.Lines.Strings[i]),'03',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','03',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //�L�Ӹ��           // and (chek)
    if (Memo7.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Allergy History:','04',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo7.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo7.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo7.Lines.Strings[i]),'04',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;                 // and (chek)
    if (Memo6.Text <> '')  then
    begin
      if not havedata then
      begin
        inc(RECORD_SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','��Allergy History:','05',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to Memo6.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo6.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo6.Lines.Strings[i]),'05',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','05',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //�L�h���ĥv
    havedata := False;   // and (chek)
    if (Memo8.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Medication History:','06',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo8.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo8.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo8.Lines.Strings[i]),'06',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;                 // and (chek)
    if (Memo9.Text <> '')  then
    begin
      if not havedata then
      begin
        inc(RECORD_SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','��Medication History:','07',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to Memo9.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo9.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo9.Lines.Strings[i]),'07',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','07',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //�z���ˬd           // and (chek)
    if (Memo3.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Physical Examination:','08',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo3.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo3.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Memo3.Lines.Strings[i],'08',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','08',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //Trauma              // and (chek)
    if (Memo5.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Trauma Sheet:','09',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo5.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo5.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Memo5.Lines.Strings[i],'09',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    //Plan �v���p�e        and (chek)
    if (Memo11.Text <> '')  then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Plan(s):','12',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Memo11.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo11.Lines.Strings[i])<> '' then
        begin
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Memo11.Lines.Strings[i],'12',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','12',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //impression�E�_
    havedata := False;
    if Trim(SGEmgicd.Cells[0,1])<>'' then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','��Impression :','10',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 1 to 10 do
      begin
        tmpSql := '';
        if Trim(SGEmgicd.Cells[0,i])<> '' then
        begin
          havedata := True;
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Trim(SGEmgicd.Cells[0,i])+'_'+Trim(SGEmgicd.Cells[1,i]),'10',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;                   // and (chek)
    if (Memo10.Text <> '')  then
    begin
      if not havedata then
      begin
        inc(RECORD_SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','��Impression :','11',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to Memo10.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Memo10.Lines.Strings[i])<> '' then
        begin
          havedata := true;
          inc(RECORD_SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Memo10.Lines.Strings[i]),'11',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    if havedata then
    begin
      inc(RECORD_SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','11',date,time,IntToStr(RECORD_no),IntToStr(RECORD_SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    if SQLo1.Count > 0 then
      if not DM.ExecSQL(SQLo1) then
      begin
       ShowMessage('�g�J��Ʈw����');
       exit;
      end;
    SQLo1.Free;
    firstrecodechange := false;
     //�C�L
    if TButton(Sender).Name = btnFirstsave.Name then
      if MessageDlg('�O�_�C�L�f������',mtConfirmation, [mbYes, mbNo], 0) = 6 then
      begin
        //�򥻸��
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
          FrmPrintFirstRecord.QRLbArrival.Caption := format('��|�ɶ�:'+RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'%s')+'%s '+RocTimes(RocToTime(ReTurnName(stemp)),':'),['�~','��','��']);

          FrmPrintFirstRecord.QRLbBirthday.Caption := '���� '+IntToStr(strToInt(getyear(GetBirth)))+ '�~ '+getmonth(GetBirth)+'�� '+getdays(GetBirth) +'��';
          FrmPrintFirstRecord.QRLbSex.Caption := SexType(Getsex01);
          FrmPrintFirstRecord.MYMEMO.Clear;
          //�����˶�
          for i := 0 to phrasestl.Count-1 do
          begin
            FrmPrintFirstRecord.MYMEMO.Add(phrasestl[i]);
          end;
          DM.QryTemp.Close; //����
          DM.QryTemp.SQL.Text := 'select * from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' ) order by ORDER_SORT,SEQ_NO';
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
        // ShowMessage('�C�L����');
      end;
  except
    TempQ.Free;
  end;
  TempQ.Free;
  for i := 1 to 10 do
  if SGEmgicd.Cells[0,i]<> '' then
    SGIcd.Rows[i] := SGEmgicd.Rows[i];
end;

procedure TFrmOrder.Button2Click(Sender: TObject);
var
  Q_STR,stemp :string;
  i :integer;
begin
  inherited;
    //�򥻸��
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
    FrmPrintFirstRecord.QRLbArrival.Caption := format('��|�ɶ�:'+RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'%s')+'%s '+RocTimes(RocToTime(ReTurnName(stemp)),':'),['�~','��','��']);

    FrmPrintFirstRecord.QRLbBirthday.Caption := '���� '+IntToStr(strToInt(getyear(GetBirth)))+ '�~ '+getmonth(GetBirth)+'�� '+getdays(GetBirth) +'��';
    FrmPrintFirstRecord.QRLbSex.Caption := SexType(Getsex01);
    FrmPrintFirstRecord.MYMEMO.Clear;
    //�����˶�
    for i := 0 to phrasestl.Count-1 do
    begin
      FrmPrintFirstRecord.MYMEMO.Add(phrasestl[i]);
    end;
    DM.QryTemp.Close; //����
    DM.QryTemp.SQL.Text := 'select * from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from epd_record where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' ) order by ORDER_SORT,SEQ_NO';
    //DM.QryTemp.SQL.SaveToFile('D:\firstrecord.txt');
    DM.QryTemp.Open;
    while not DM.QryTemp.Eof do
    begin
      FrmPrintFirstRecord.MYMEMO.Add(DM.QryTemp.fieldbyname('text').AsString);
      dm.QryTemp.Next;
    end;
    FrmPrintFirstRecord.PrepareSQL('n');
    FreeAndNil(FrmPrintFirstRecord);
  end
  else
  begin
    DM.QrySubSearch.Close;
    ShowMessage('�S�����');
  end;
end;

function TFrmOrder.insertFirstRecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
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


procedure TFrmOrder.ToolButton5Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';      
  if not Assigned(Frmoften) then
    Frmoften := TFrmoften.Create(self);
  try
    Frmoften.theDept := GetUserDept;
    Frmoften.TheDoc := getUserId;
    Frmoften.ShowModal;
    if Frmoften.UseFlag then
    begin
      pkgdtl := true;
      UseThePkg(Frmoften);
      pkgdtl := false;
    end;
  finally
    FreeAndNil(Frmoften);
  end;
end;

procedure TFrmOrder.N21Click(Sender: TObject);
var
  TMPSG : TStringGrid;
  TMPSQL, THEDOC : string;
  SQLs: TStringList;
  SQLo : TObjectList;
  ftno,ftexno, i : integer;
begin
  inherited;
  IF oftendept = '86' THEN
    THEDOC := 'XXXXXX'
  else
    THEDOC := getUserId;
  if (PageControl2.ActivePageIndex>= 1) and (PageControl2.ActivePageIndex <= 8) then
  begin
    try
      ftno := 0;
      ftexno := 0;
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      DM.QrySearch3.SQL.Add('select MAX(SEQ_NO) as a from order_grp_dtl where dept_code='+Qt(oftendept)+' and group_code=''often'' and user_id='+qt(THEDOC));
      DM.QrySearch3.Open;
      ftno := DM.QrySearch3.fieldbyname('a').AsInteger;
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      DM.QrySearch3.SQL.Add('select MAX(SEQ_NO) as a from order_grp_text where dept_code='+Qt(oftendept)+' and group_code=''often'' and user_id='+qt(THEDOC));
      DM.QrySearch3.Open;
      ftexno := DM.QrySearch3.fieldbyname('a').AsInteger;
      DM.QrySearch3.Close;
      SQLo := TObjectList.Create;
      TMPSG := TStringGrid(FrmOrder.FindComponent(ReturnName(PageControl2.ActivePage.Hint)));
      if TMPSG.Name = 'SGIcd' then
      begin
        //s
        IF MessageDlg('�n�N"Subject","Object","Plan"�[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          FOR I := 0 TO FrmOrder.rheSub.Lines.Count-1 DO
            IF Trim(FrmOrder.rheSub.Lines.Strings[I]) <>'' THEN
            BEGIN
              Inc(ftexno);
              TMPSQL := getordergrp(2);
              SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
              SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
              SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
              SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftexno));
              SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheSub.Lines.Strings[I]))));
              SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('S'));
              SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(TMPSQL);
              SQLo.Add(SQLs);
            END
            else
            begin
              ShowMessage('�����������');
            end;
          //O
          FOR I := 0 TO FrmOrder.rheObj.Lines.Count-1 DO
            IF Trim(FrmOrder.rheObj.Lines.Strings[I]) <>'' THEN
            BEGIN
              Inc(ftno);
              TMPSQL := getordergrp(2);
              SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
              SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
              SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
              SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
              SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rheObj.Lines.Strings[I]))));
              SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('O'));
              SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(TMPSQL);
              SQLo.Add(SQLs);
            END
            else
            begin
              ShowMessage('�����������');
            end;
          //P
          FOR I := 0 TO FrmOrder.rhePlan.Lines.Count-1 DO
            IF Trim(FrmOrder.rhePlan.Lines.Strings[I]) <>'' THEN
            BEGIN
              Inc(ftno);
              TMPSQL := getordergrp(2);
              SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
              SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
              SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
              SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
              SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(Trim(FrmOrder.rhePlan.Lines.Strings[I]))));
              SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('P'));
              SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(TMPSQL);
              SQLo.Add(SQLs);
            END
            else
            begin
              ShowMessage('�����������');
            end;
        end;
        //icd9
        if (Trim(TMPSG.Cells[0,TMPSG.row]) <> '') and (Trim(TMPSG.Cells[1,TMPSG.row]) <> '') then
        begin
          Inc(ftno);
          TMPSQL := getordergrp(1);
          SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
          SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
          SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
          SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
          SetParamter(TMPSQL,'$FEE_CODE$',Qt(trim(TMPSG.Cells[0,TMPSG.row])));
          SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[1,TMPSG.row])));
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
        END
        else
        begin
          ShowMessage('�����������');
        end;
      end;
      if TMPSG.Name = 'SGMed' then //�ī~
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[M_Name,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          if Trim(TMPSG.Cells[M_CODE,TMPSG.row]) <>'' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(Trim(TMPSG.Cells[M_Code,TMPSG.row])));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(Trim(TMPSG.Cells[M_Name,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('M'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[M_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(Trim(TMPSG.Cells[M_Cir,TMPSG.row])));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(Trim(TMPSG.Cells[M_path,TMPSG.row])));
            SetParamter(TMPSQL,'$MED_DAYS$',Qt(TMPSG.Cells[M_days,TMPSG.row]));
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$',Qt(TMPSG.Cells[M_ttl_qty,TMPSG.row]));
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(TMPSG.Cells[M_INS,TMPSG.row]));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(' '));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(NullStrTo(TMPSG.Cells[M_MEMO,TMPSG.row],'')));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
          END
          else
          begin
            ShowMessage('�����������');
          end;
      end;
      if TMPSG.Name = 'SGLab' then //����
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[C_code,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if TMPSG.Cells[F_CODE,TMPSG.row] <> '' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(TMPSG.Cells[C_code,TMPSG.row]));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[C_Order,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('L'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[C_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(TMPSG.Cells[C_INS,TMPSG.row])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(TMPSG.Cells[C_EMG,TMPSG.row])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(TMPSG.Cells[C_Send,TMPSG.row]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(TMPSG.Cells[C_path,TMPSG.row]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(TMPSG.Cells[C_2Send,TMPSG.row]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(TMPSG.Cells[C_MEMO,TMPSG.row]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if TMPSG.Name = 'SGChk' then //�ˬd
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[M_Name,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if TMPSG.Cells[F_CODE,TMPSG.row] <> '' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(TMPSG.Cells[C_code,TMPSG.row]));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[C_Order,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('C'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[C_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(TMPSG.Cells[C_INS,TMPSG.row])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(TMPSG.Cells[C_EMG,TMPSG.row])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(TMPSG.Cells[C_path,TMPSG.row]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(TMPSG.Cells[C_Send,TMPSG.row]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(TMPSG.Cells[C_2Send,TMPSG.row]));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(TMPSG.Cells[C_MEMO,TMPSG.row]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if TMPSG.Name = 'SGXRay' then //��g
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[F_CODE,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if TMPSG.Cells[F_CODE,TMPSG.row] <> '' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(TMPSG.Cells[C_code,TMPSG.row]));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[C_Order,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('X'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[C_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(trim(TMPSG.Cells[C_path,TMPSG.row])));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(TMPSG.Cells[C_INS,TMPSG.row])));
            SetParamter(TMPSQL,'$URG_FLAG$',Qt(Trim(TMPSG.Cells[C_EMG,TMPSG.row])));
            SetParamter(TMPSQL,'$DR_NOTE$',Qt(''));
            SetParamter(TMPSQL,'$ITEM_NO$',Qt(''));
            SetParamter(TMPSQL,'$SEND_CD_1$',Qt(TMPSG.Cells[C_NO,TMPSG.row]));//�g�J����X
            SetParamter(TMPSQL,'$SEND_CD_2$',Qt(TMPSG.Cells[C_Send,TMPSG.row]));
            SetParamter(TMPSQL,'$SEND_CD_3$',Qt(''));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(TMPSG.Cells[C_Kind,TMPSG.row]));
            SetParamter(TMPSQL,'$ORDER_DESC$',Qt(TMPSG.Cells[C_MEMO,TMPSG.row]));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if TMPSG.Name = 'SGFee' then //�B�m
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[F_CODE,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if TMPSG.Cells[F_CODE,TMPSG.row] <> '' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(TMPSG.Cells[F_code,TMPSG.row]));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[F_Name,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('F'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[F_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(TMPSG.Cells[F_Part,TMPSG.row]));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(TMPSG.Cells[F_INS,TMPSG.row])));
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
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if TMPSG.Name = 'SGMtrl' then //�ç�
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[L_code,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if TMPSG.Cells[F_CODE,TMPSG.row] <> '' then
          begin
            Inc(ftno);
            TMPSQL := getordergrp(1);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftno));
            SetParamter(TMPSQL,'$FEE_CODE$',Qt(TMPSG.Cells[L_code,TMPSG.row]));
            SetParamter(TMPSQL,'$FEE_NAME$',Qt(trim(TMPSG.Cells[L_Name,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('T'));
            SetParamter(TMPSQL,'$UNIT_QTY$',Qt(TMPSG.Cells[L_Qty,TMPSG.row]));
            SetParamter(TMPSQL,'$CIR_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$PATH_CODE$',Qt(' '));
            SetParamter(TMPSQL,'$MED_DAYS$','0');
            SetParamter(TMPSQL,'$GRIND_FLAG$',Qt(''));
            SetParamter(TMPSQL,'$TTL_QTY$','0');
            SetParamter(TMPSQL,'$SELF_PAY_FLAG$',Qt(Trim(TMPSG.Cells[L_Ins,TMPSG.row])));
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
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if TMPSG.Name = 'SGOrder' then //��r����
      begin
        IF MessageDlg('�T�w�n�N "'+Trim(TMPSG.Cells[O_Name,TMPSG.row])+'" �[�J�`�ζ���ƶ�?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          IF Trim(TMPSG.Cells[O_Name,i]) <>'' THEN
          BEGIN
            Inc(ftexno);
            TMPSQL := getordergrp(2);
            SetParamter(TMPSQL,'$DEPT_CODE$',Qt(oftendept));
            SetParamter(TMPSQL,'$USER_ID$',Qt(THEDOC));
            SetParamter(TMPSQL,'$GROUP_CODE$',Qt('often'));
            SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(ftexno));
            SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(Trim(TMPSG.Cells[O_Name,TMPSG.row])));
            SetParamter(TMPSQL,'$ORDER_TYPE$',Qt('R'));
            SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
            SQLs := TStringList.Create;
            SQLs.Add(TMPSQL);
            SQLo.Add(SQLs);
          END
          else
          begin
            ShowMessage('�����������');
          end;
        end;
      end;
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('�g�J��Ʈw����');
        exit;
      end;
      SQLo.Free; 
    except
      SQLo.Free;
    end;
  end;
end;

procedure TFrmOrder.stattrendClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmExitHosp) then
    FrmExitHosp := TFrmExitHosp.Create(Self);
  FrmExitHosp.clas :='reback';
  FrmExitHosp.ShowModal;
  FreeAndNil(FrmExitHosp);
end;

procedure TFrmOrder.N26Click(Sender: TObject);
var
  SpName,ExeSPResult :String;
  Paramter,PType,RType,PData :TStrings;
begin
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if MessageDlg('�O�_�T�w�կf��?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Paramter:=TStringList.Create;
      PType:=TStringList.Create;
      RType:=TStringList.Create;
      PData:=TStringList.Create;
      SpName:='';
      SpName:=getSpSql(3,Paramter,PType,RType);
      PData.Add(getFeeNo);
      PData.Add(getChrNo);
      PData.Add(GetEpdDate);
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);

      if ReturnID(ExeSPResult) = 'N' then
      begin
        MessageDlg(ReturnName(ExeSPResult),mtWarning,[mbOk],0);
        sql_time_log('�կf��:',ReturnName(ExeSPResult));
      end
      else
        ShowMessage(ReturnName(ExeSPResult));
    finally
      Paramter.Free;
      PType.Free;
      RType.Free;
      PData.Free;
    end;
  end;
end;

procedure TFrmOrder.N29Click(Sender: TObject);
var
  pic : TBitmap;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  try
    if not assigned(FrmPatinf) then
      FrmPatinf := TFrmPatinf.Create(Self);
    FrmPatinf.myChrno := getChrNo;
    FrmPatInf.SOURCE_KIND := 'E';
    FrmPatInf.SOUR_AP := 'ER';
    FrmPatinf.HaveFever := 'N';
    FrmPatinf.TEMPERATURE := '';
    FrmPatinf.ShowModal;
    IF FrmPatinf.HaveFever = 'Y' THEN
    begin
      PIC := TBitmap.Create;
      ImageListforPat.GetBitmap(5,pic);
      ImgTemperature.Picture.Assign(PIC);
    end;
  finally
     FreeAndNil(pic);
     FreeAndNil(FrmPatInf);
  end;
end;

procedure TFrmOrder.ImgMedClick(Sender: TObject);
begin
  inherited;
    if not assigned(FrmWarning) then
      FrmWarning := TFrmWarning.Create(self);
    FrmWarning.ShowModal;
end;

procedure TFrmOrder.Button1Click(Sender: TObject);
begin
  inherited;
  if Sender = Button1 then
  begin
    if Button1.Caption ='�^��' then
    begin
      Button1.Caption :='����';
      SGIcd.ColWidths[1] := -1;
      SGIcd.ColWidths[2] := 370;
    end
    else
    begin
      Button1.Caption :='�^��';
      SGIcd.ColWidths[2] := -1;
      SGIcd.ColWidths[1] := 370;
    end;
    SGIcd.Repaint;
  end
  else
  begin
    if Button4.Caption ='�^��' then
    begin
      Button4.Caption :='����';
      SGIcd10.ColWidths[1] := -1;
      SGIcd10.ColWidths[2] := 370;
    end
    else
    begin
      Button4.Caption :='�^��';
      SGIcd10.ColWidths[2] := -1;
      SGIcd10.ColWidths[1] := 370;
    end;
    SGIcd10.Repaint;
  end;
end;

procedure TFrmOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmOrder := nil;
end;

procedure TFrmOrder.ToolButton7Click(Sender: TObject);
var
  s_qty :string;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not assigned(FrmPatInf) then
    FrmPatInf := TFrmPatInf.Create(self);

  FrmPatInf.SOURCE_KIND := 'E';
  FrmPatInf.SOUR_AP := 'ER';
  FrmPatInf.ShowModal;

  DM.QryTemp.Close;  //���̷s�魫
  s_qty := sql_str(11);
  SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
  DM.QryTemp.SQL.Text:=s_qty;
  DM.QryTemp.Open;
  if NOT DM.QryTemp.IsEmpty then
  begin
    Setpatweight(DM.QryTemp.FIELDBYNAME('weight').AsString);
    edtwdt.Text  := Trim(DM.QryTemp.FIELDBYNAME('weight').AsString);
  end;
  DM.QryTemp.Close;
end;

procedure TFrmOrder.N30Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  if not Assigned(FrmExitHosp) then
    FrmExitHosp := TFrmExitHosp.Create(Self);
  FrmExitHosp.clas :='EXIT';
  FrmExitHosp.ShowModal;
  FreeAndNil(FrmExitHosp);
end;


Function TFrmOrder.Quickpkginstorder(grpcode :string):Boolean;
var
  tmpqry : TADOQuery;
  dept : string;
begin
  Result := True;
  dept := '';
  dept := emergencydeptlis(GetUserDept,'N');
  if dept = 'Y' then
    dept := 'in('+emergencydeptlis(GetUserDept,'Y')+') '
  else
    dept := '='+Qt(GetUserDept);
  try
    tmpqry := TADOQuery.Create(nil);
    tmpqry.Connection := DM.ADOLink;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_dtl where group_code='+qt(grpcode)+' and ((dept_code=''ALL'' and user_id=''ALL'') or (dept_code '+dept+' and user_id=''XXXXXX'') or (dept_code=''XXXX'' and  user_id='+Qt(getUserId)+')) order by order_type' );
    sql_Waiting_log('open',tmpqry.SQL.Text);
    tmpqry.Open;
    sql_Waiting_log('close',tmpqry.SQL.Text);
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='I' then//I=ICD9;
        if not InsertIcd(Trim(tmpqry.FieldByName('fee_code').AsString),'Y') then
          Result := False;
      if Trim(tmpqry.FieldByName('order_type').AsString)='F' then//F=FEE�B�m;
      begin
        SGFee.Row := SGFee.RowCount-1;
        if not InsertFee(Trim(tmpqry.FieldByName('fee_code').AsString),'',Trim(tmpqry.FieldByName('send_cd_1').AsString),
                  Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString)) then
         Result := False;
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='T' then// T=�ç�
      begin
        SGMtrl.Row := SGMtrl.RowCount-1;
        if not InsertMrtl(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString)) then
          Result := False;
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='M' then
      begin
        SGMed.Row := SGMed.RowCount-1;
        if not InsertMed(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('cir_code').AsString),
                      Trim(tmpqry.FieldByName('unit_qty').AsString),'','','',Trim(tmpqry.FieldByName('ORDER_DESC').AsString)) then
                 //Med_code,     aCir,            aQty,     DcDate,DcTime, aPath, aMemo,  adays:
          Result := False;
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='L' then//L=����;
      begin
        SGLab.Row := SGLab.RowCount-1;
        if not InsertLab(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                      Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('send_cd_2').AsString),Trim(tmpqry.FieldByName('send_cd_3').AsString),'') then
           Result := False;
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='X' then//X=XRAY;
      begin
        SGXRay.Row := SGXRay.RowCount-1;
        if not InsertXRay(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('TEXT_KIND').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                       Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('path_code').AsString),Trim(tmpqry.FieldByName('send_cd_2').AsString),
                       Trim(tmpqry.FieldByName('ORDER_DESC').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString)) then
          Result := False;
      end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='C' then//C=�ˬd;
      begin
        SGChk.Row := SGChk.RowCount-1;
        if not InsertChk(Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),
                      Trim(tmpqry.FieldByName('self_pay_flag').AsString),Trim(tmpqry.FieldByName('ORDER_DESC').AsString)) then
           Result := False;
      end;
      tmpqry.Next;
    end;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_text where group_code='+qt(UpperCase(grpcode))+' and ((dept_code=''ALL'' and user_id=''ALL'') or (dept_code '+dept+' and user_id=''XXXXXX'') or (dept_code=''XXXX'' and  user_id='+Qt(getUserId)+')) order by order_type,seq_no');
    tmpqry.Open;
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='S' then
      Begin
        rheSub.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='O' then
      Begin
        rheObj.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='P' then
      Begin
        rhePlan.Lines.Add(Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='R' then
      Begin
        if Trim(tmpqry.FieldByName('order_text').AsString) <> '' then
          insertordertxt('',Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      tmpqry.Next;
    End;
    FreeAndNil(tmpqry);
  except
    FreeAndNil(tmpqry);
    Result := False;
  end;
end;

procedure TFrmOrder.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_ESCAPE) then
  begin
    pnlphrase.Visible := false;
  end;

  if pnlphrase.Visible then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        DBText38Click(self);
        key :=0;
      end;
      Sendmessage(DBCphrase.Handle,WM_KEYDOWN,key,0);
      key :=0;
    end;
  end;

end;

procedure TFrmOrder.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (pnlphrase.Visible) then
    exit;
  if Edit1.Text <> '' then
  begin
    pnlphrase.Hint := 'pkg';
    DM.QrySearch.Close;
    DM.QrySearch.SQL.Clear;
    DM.QrySearch.SQL.Add('SELECT group_name as str_desc,group_code FROM ORDER_GRP_BASIC where ((dept_code=''ALL'' and user_id=''ALL'') or (dept_code='+Qt(GetUserDept)+' and user_id=''XXXXXX'') or (dept_code=''XXXX'' and  user_id='+Qt(getUserId)+')) and upper(group_name) like '+Qt(UpperCase(Trim(Edit1.Text))+'%'));
    DM.QrySearch.SQL.Add(' and group_code not in(select group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9''))');
    dm.QrySearch.SQL.Text;
    DM.QrySearch.Open;
    if DM.QrySearch.IsEmpty then
    begin
      SetPanel(FALSE,pnlphrase);
    end
    else
    begin
      DSphrase.DataSet := DM.QrySearch;
      SetPanel(True,pnlphrase);
    end;
  end
  else
    SetPanel(FALSE,pnlphrase);
end;

procedure TFrmOrder.DBText38Click(Sender: TObject);
var
 str : string;
begin
  inherited;
  str := trim(DBCphrase.DataSource.DataSet.FieldByName('group_code').AsString);
  SetPanel(False,pnlphrase);
  Edit1.Text := '';
  Quickpkginstorder(str);
end;

procedure TFrmOrder.ToolButton13Click(Sender: TObject);
var
  mystr, myParamter : string;
begin
  inherited;
  //�T�{�D�v��v
  if not ckvscode2 then
  begin
    exit;
  end;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TToolButton(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TToolButton(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
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
  times_log('REGISTERED',GetVsCode,getUserId,'');
end;

procedure TFrmOrder.ToolButton11Click(Sender: TObject);
var
  mystr, myParamter, OpenTransfer : string;
  i : integer;
begin
  inherited;
  //�T�{�D�v��v
  if not ckvscode2 then
  begin
    exit;
  end;

  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if trim(GetVsCode)= '' then
  begin
    ShowMessage('�п�J�D�v��v���N�X');
    Exit;
  end;
  {
  if icdchangea <> 'N' then
  begin
    SetICD91(SGIcd10.Cells[0,1]);
    SetICD92(SGIcd10.Cells[0,2]);
    SetICD93(SGIcd10.Cells[0,3]);
  end
  else
  begin
    SetICD91(SGIcd.Cells[0,1]);
    SetICD92(SGIcd.Cells[0,2]);
    SetICD93(SGIcd.Cells[0,3]);
  end;
  }
  //110.02.04 shh ITe 11138 modify ������ICD10  �ݯण��צn��|�w���椣�a�E�_�X���D
  SetICD91(SGIcd10.Cells[0,1]);
  SetICD92(SGIcd10.Cells[0,2]);
  SetICD93(SGIcd10.Cells[0,3]);

  SetSheet(sqlsheetno);
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TToolButton(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TToolButton(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;

  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
    Exit;
  end;
  //20150130-A004 ��E1/30�T�|���T�|ĳ�Mĳ��g
  insertordertxt('',ROCDate(Now,'-')+' '+ROCTime(Now,':')+' �}�ߦ�|�\�i��');
  { 20150130-A004 ��E1/30�T�|���T�|ĳ�Mĳ�אּ���E�ɶ�g
  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
    OpenTransfer := UpperCase(SetSys.ReadString('SYSTEM','TRANSFSTART',''));
    if UpperCase(OpenTransfer) ='TRUE' then
    begin
      //��Z��
      if not Assigned(FrmTransfernote) then
        FrmTransfernote := TFrmTransfernote.Create(Self);
      FrmTransfernote.Lblage.Caption := Trim(edtAge.Text);
      FrmTransfernote.infrom := '';//��|�w��
      FOR I := 1 TO 10 DO
      BEGIN
        IF (TRIM(SGIcd.Cells[0,I]) <> '') AND (TRIM(SGIcd.Cells[1,I]) <> '') THEN
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + TRIM(SGIcd.Cells[0,I])+'_'+ TRIM(SGIcd.Cells[1,I])+';';
      END;

      //Assessment
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select text from epd_record where fee_no = '+qt(GetFeeNo)+' and kind=''O_HISTORY'' order by seq_no');
      DM.QryTemp.Open;
      while not DM.QryTemp.Eof do
      begin
        if trim(DM.QryTemp.FieldByName('text').AsString) <> '' then
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString));
        DM.QryTemp.Next;
      end;
      for i := 0 to rheHist.Lines.Count-1 do
      begin
        if trim(rheHist.Lines.Strings[i])<> '' then
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+ rheHist.Lines.Strings[i];
      end;

      FrmTransfernote.ShowModal;
      FreeAndNil(FrmTransfernote);
    end;
  except
  end; }
  times_log('INPATIENT',GetVsCode,getUserId,'');
end;

procedure TFrmOrder.ToolButton55Click(Sender: TObject);
begin
  inherited;
  //�T�{�D�v��v
  if not ckvscode2 then
  begin
    exit;
  end;
  PpMconst.Popup(ToolButton55.ClientOrigin.x ,ToolButton55.ClientOrigin.y+ToolButton55.Height);
end;

procedure TFrmOrder.ToolButton1Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  N22Click(N22);
end;

procedure TFrmOrder.ToolButton8Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  N12Click(N12);
end;

procedure TFrmOrder.ToolButton3Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  PACS1Click(PACS1);
end;


procedure TFrmOrder.ToolButton15Click(Sender: TObject);
var
  i, j : integer;
  have,have2 : Boolean;
  sqlstr : string;
  name_val,mySQLs : TStringList;
begin
  inherited;
  //�T�{�D�v��v
  if not ckvscode2 then
  begin
    exit;
  end;

  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not assigned(Frmfirstrecord2) then
    Frmfirstrecord2 := TFrmfirstrecord2.Create(Self);
  try
    //icd9
    if (icdchangea <> 'N') and (copy(GetEpdDate,1,5) >= '10501' ) then
    begin
      for i := 1 to SGIcd10.RowCount-1 do
        if trim(SGIcd10.Cells[0,i]) <> '' then
          Frmfirstrecord2.icd9FIRS.Add(SGIcd10.Cells[0,i]);
    end
    else
    begin
      for i := 1 to SGIcd.RowCount-1 do
        if trim(SGIcd.Cells[0,i]) <> '' then
          Frmfirstrecord2.icd9FIRS.Add(SGIcd.Cells[0,i]);
    end;
    Frmfirstrecord2.traumalis.Clear;
    Frmfirstrecord2.traumalis.Add('���˶�');
    Frmfirstrecord2.traumalis.Add('�˶˯ż� : '+SGtriage.Cells[2,1]);
    Frmfirstrecord2.traumalis.Add('    '+charadd('���:'+Trim(SGtriage.Cells[7,1])+'�J',' ',11)+charadd('�I�l:'+Trim(SGtriage.Cells[9,1])+'��',' ',11)+
                                  CharAdd('�߷i:'+Trim(SGtriage.Cells[8,1])+'��',' ',12)+charadd('�魫:'+Trim(SGtriage.Cells[6,1])+'kg',' ',12)+
                                  charadd('�N�Ѫ��A:E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1]),' ',19)+
                                  CharAdd('���Y��/�αi��:'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[10,1])+'mmHg',' ',26));
    Frmfirstrecord2.traumalis.Add('    '+charadd('���@��: '+Trim(SGtriage.Cells[12,1])+'%',' ',16));
    name_val := TStringList.Create;
    name_val := SliptStr(82,FulltoHalf(Trim(SGtriage.Cells[28,1])));
    for i := 0 to name_val.Count-1 do
    begin
      if i= 0 then
       Frmfirstrecord2.traumalis.Add('    '+'�D�D:'+Trim(name_val.Strings[i]))
      else
       Frmfirstrecord2.traumalis.Add('    '+'     '+Trim(name_val.Strings[i]));
    end;
    if (Trim(SGtriage.Cells[7,1])= '') and (Trim(SGtriage.Cells[8,1])= '') and (Trim(SGtriage.Cells[9,1])= '') and (Trim(SGtriage.Cells[10,1])= '') and (Trim(SGtriage.Cells[11,1])= '') and (Trim(SGtriage.Cells[12,1])= '') then
      Frmfirstrecord2.CheckBox306.Caption :='BT:'+Trim(SGtriage.Cells[7,1])+'�J,RR:'+Trim(SGtriage.Cells[9,1])+'/min,HR:'+Trim(SGtriage.Cells[8,1])+'/min,SpO2:'+Trim(SGtriage.Cells[12,1])+'%,BP:'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[10,1])+'mmHg'
    else                                    //Bt:���rr:�I�lhr:�߷i
      Frmfirstrecord2.CheckBox306.Caption :='BT:'+Trim(SGtriage.Cells[7,1])+'�J,RR:'+Trim(SGtriage.Cells[9,1])+'/min,HR:'+Trim(SGtriage.Cells[8,1])+'/min,SpO2:'+Trim(SGtriage.Cells[12,1])+'%,BP:'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[10,1])+'mmHg(�˶˱a�J) ';
    if (Trim(SGtriage.Cells[7,1])='') and (Trim(SGtriage.Cells[8,1])= '') and (Trim(SGtriage.Cells[9,1])= '') and (Trim(SGtriage.Cells[10,1])= '') and (Trim(SGtriage.Cells[11,1])='') and (Trim(SGtriage.Cells[12,1])='') then
      Frmfirstrecord2.CheckBox225.Caption :='BT:'+Trim(SGtriage.Cells[7,1])+' HR:'+Trim(SGtriage.Cells[8,1])+' RR:'+Trim(SGtriage.Cells[9,1])+' BP:'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[10,1])+' Spo2:'+Trim(SGtriage.Cells[12,1])+'%'
    else
      Frmfirstrecord2.CheckBox225.Caption :='BT:'+Trim(SGtriage.Cells[7,1])+' HR:'+Trim(SGtriage.Cells[8,1])+' RR:'+Trim(SGtriage.Cells[9,1])+' BP:'+Trim(SGtriage.Cells[11,1])+'/'+Trim(SGtriage.Cells[10,1])+' Spo2:'+Trim(SGtriage.Cells[12,1])+'%(�˶˱a�J)';
    if (Trim(SGtriage.Cells[3,1])= '') and (Trim(SGtriage.Cells[4,1])= '') and (Trim(SGtriage.Cells[5,1])='') then
    begin
      Frmfirstrecord2.CheckBox209.Caption :='GCS E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1]);
      Frmfirstrecord2.Edit4.Text :='E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1]);
    end
    else
    begin
      Frmfirstrecord2.CheckBox209.Caption :='GCS E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1])+'(�˶˱a�J)';
      Frmfirstrecord2.Edit4.Text :='E'+Trim(SGtriage.Cells[3,1])+' V'+Trim(SGtriage.Cells[4,1])+' M'+Trim(SGtriage.Cells[5,1])+'(�˶˱a�J)';
    end;

    Frmfirstrecord2.ShowModal;

    IF Frmfirstrecord2.HAVTRA THEN
    BEGIN
      PageControl2.ActivePageIndex := 1;
      if (icdchangea <> 'Y') then
      begin //icd9
        for i := 0 to Frmfirstrecord2.icd9FIRS.Count-1 do
        begin
          have := false;
          for j := 1 to 10 do
          BEGIN
            if Frmfirstrecord2.icd9FIRS.Strings[i]= SGIcd.Cells[0,j] then
              have := True;
          END;
          if not have then
            InsertIcd(Frmfirstrecord2.icd9FIRS.Strings[i],'Y');
        end;
      end;

      for i := 0 to 10 do
      begin
        //icd10
        have2 := false;
        for j := 1 to 10 do
          if Trim(Frmfirstrecord2.SGICD10.Cells[0,i]) = SGIcd10.Cells[0,j] then
            have2 := True;
        if not have2 then
          InsertIcd10(Frmfirstrecord2.SGICD10.Cells[0,i]);
      end;

      FOR I := 0 TO Frmfirstrecord2.CHIEF_S.Count -1 DO
      begin
        rheSub.Lines.Add('');
        rheSub.Lines.Strings[rheSub.Lines.Count-1]:= replace(Frmfirstrecord2.CHIEF_S.Strings[I]);
      end;
      FOR I := 0 TO Frmfirstrecord2.IMPRESS_A.Count -1 DO
      begin
        rheHist.Lines.Add('');
        rheHist.Lines.Strings[rheHist.Lines.Count-1]:= replace(Frmfirstrecord2.IMPRESS_A.Strings[I]);
      end;
      FOR I := 0 TO Frmfirstrecord2.PLAN_P.Count -1 DO
      begin
        rhePlan.Lines.Add('');
        rhePlan.Lines.Strings[rhePlan.Lines.Count-1]:= replace(Frmfirstrecord2.PLAN_P.Strings[I]);
      end;
      FOR I := 0 TO Frmfirstrecord2.PE_O.Count -1 DO
      begin
        rheObj.Lines.Add('');
        rheObj.Lines.Strings[rheObj.Lines.Count-1]:= replace(Frmfirstrecord2.PE_O.Strings[I]);
      end;
    END;
  finally
    FreeAndNil(Frmfirstrecord2);
  end;

end;

procedure TFrmOrder.BtnAMIClick(Sender: TObject);
var
  pkg,smsend,SpName,ExeSPResult,sno,qstrA: string;
  SQLs,s,n,majorname : TStringList;
  Paramter,PType,RType,PData,sqlst : TStrings;
  Consultation,doitA,doitT,doitC : Boolean;
  myStr,myParamter,TempStr,TempStr2,sdatetime,stime : String;
  i : Integer;
  SexBMP : TBitmap;
begin
  inherited;
  if rdonly then
  begin
    ShowMessage('�f�H����ثe���A�Ȧ��s���\��!!');
    //exit;
  end;
  sdatetime := '';
  doitA := False;
  doitT := False;
  doitC := False;
  qstrA := getlog_sql(0);//�O�_���L���g
  SetParamter(qstrA,'$fee_no$',Qt(Trim(GetFeeNo)));
  //SetParamter(qstrA,'$UPDDATE$',Qt(Trim(Minus_six_months_date)));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add(qstrA);
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    if trim(DM.QryTemp.FieldByName('ill_name').AsString) = 'AMI' then
      doitA := True;
    if trim(DM.QryTemp.FieldByName('ill_name').AsString) = 'CVA' then
      doitC := True;
    if trim(DM.QryTemp.FieldByName('ill_name').AsString) = 'Trauma' then
      doitT := True;
    DM.qrytemp.Next;
  end;
  Consultation := False;
  if TButton(Sender).Name = 'BtnAMI' then
  begin
    if doitA then
    begin
      if not Assigned(FrmAMI) then
          FrmAMI := TFrmAMI.Create(Self);
      if GetCPD_DATE <> '' then
        FrmAMI.incident_dt := trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1])
      else
        FrmAMI.incident_dt := VArrivaltime;
      FrmAMI.major_type := 'AMI';

      FrmAMI.ShowModal;
      FreeAndNil(FrmAMI);
      exit;
    end;

    //108.10.23 shh ITe 11138 add ���g�Ұʥ[�J�T�{��v by ��E���קK�~Ĳ
    if not ckvscode3 then
      exit;

    SetCONMAJOR('A');
    SetCONSTR1('AMI Patient Report');
    SetCONSTR2('�æ�AMI �f�H');
    //SetCONDEPT('0100');
    SetCONDEPT('AB');
    SetCONCLA('1');

    pkg := 'ED000003';
    smsend := 'AMI';
    sno := '1';
    sdatetime := dtl_log(copy(smsend,1,1),sno,smsend,SGtriage.Cells[0,1]+SGtriage.Cells[1,1]);
    Consultation := True;
    insertordertxt('',sdatetime+' �Ұ�AMI�p��');
    times_log('AMI','',getUserId,''); //epd_timelog
  end;
  if TButton(Sender).Name = 'BtnCVA' then
  begin

    if doitC then
    begin
      if not Assigned(FrmAMI) then
          FrmAMI := TFrmAMI.Create(Self);
      if GetCPD_DATE <> '' then
        FrmAMI.incident_dt := trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1])
      else
        FrmAMI.incident_dt := VArrivaltime;
      FrmAMI.major_type := 'CVA';

      FrmAMI.ShowModal;
      FreeAndNil(FrmAMI);
      exit;
    end;

    //108.10.23 shh ITe 11138 add ���g�Ұʥ[�J�T�{��v by ��E���קK�~Ĳ
    if not ckvscode3 then
      exit;

    SetCONMAJOR('S');
    SetCONSTR1('STROKE Patient Report');
    SetCONSTR2('�æ�STROKE�f�H');
    //SetCONDEPT('0400');
    SetCONDEPT('12');
    SetCONCLA('1');

    pkg := 'ED000002';
    smsend := 'CVA';
    sno := '2';
    sdatetime := dtl_log(copy(smsend,1,1),sno,smsend,trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1]));
    Consultation := True;
    insertordertxt('', sdatetime+' �Ұ�CVA�p��');
    times_log('CVA','',getUserId,'');
  end;
  if TButton(Sender).Name = 'BtnTrauma' then
  begin
    if doitT then
    begin
      if not Assigned(FrmAMI) then
          FrmAMI := TFrmAMI.Create(Self);
      if GetCPD_DATE <> '' then
        FrmAMI.incident_dt := trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1])
      else
        FrmAMI.incident_dt := VArrivaltime;
      FrmAMI.major_type := 'Trauma';

      FrmAMI.ShowModal;
      FreeAndNil(FrmAMI);
      exit;
    end;

    //108.10.23 shh ITe 11138 add ���g�Ұʥ[�J�T�{��v by ��E���קK�~Ĳ
    if not ckvscode3 then
      exit;
    
    if not Assigned(FrmMECHANISM) then
      FrmMECHANISM := TFrmMECHANISM.Create(Self);
    FrmMECHANISM.fee_no := GetFeeNo;
    if GetCPD_DATE <> '' then
      FrmMECHANISM.incident_dt := trim(SGtriage.Cells[0,1])+trim(SGtriage.Cells[1,1])
    else
      FrmMECHANISM.incident_dt := VArrivaltime;
    FrmMECHANISM.ShowModal;
    FreeAndNil(FrmMECHANISM);
    IF chtrm = 'N' THEN
      Exit;

    SetCONMAJOR('T');
    SetCONSTR1('Trauma Patient Report');
    SetCONSTR2('�æ�Trauma�f�H');
    //SetCONDEPT('1100');
    SetCONDEPT('BD');
    SetCONCLA('1');

    //108.10.23 shh ITe 11138 add by ��E���~�ˤp�դ]�n�[�}�|�E
    Consultation := True;
    //END�[�}�|�E=========
    
    pkg := 'ED000004';
    smsend := 'Trauma';
    sno := '3';
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select start_date,start_time from major_injuries_dtl where start_flag=''Y'' and fee_no='+qt(GetFeeNo)+' and major_name=''Trauma'' order by fee_no');
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      sdatetime := dateformat(1,ROCToDate(trim(DM.QryTemp.fieldbyname('start_date').AsString)));
      sdatetime := sdatetime +copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),1,2)+'��'+
                              copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),3,2)+'��'+
                              copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),5,2)+'��';
      insertordertxt('',sdatetime+' �Ұ�Trauma�p��');
    end;
    times_log('Trauma','',getUserId,'');
  end;
  //�}�M�\
  Quickpkginstorder(pkg);
  //�����Ұʮɶ�
  wratmajortime('START_'+GetCONMAJOR);
  //�������g���A
  setstatus(GetFeeNo,'9','1_0_0_'+copy(smsend,1,1)+'_N_'+smsend+'_10');
  times_log(smsend,'',getUserId,'');
  s := TStringList.Create;
  n := TStringList.Create;
  majorname := TStringList.Create;
  majorname := getmajtime(GetFeeNo,s,n);
  try
    for i := 0 to majorname.Count-1 do
    begin
      if majorname.Strings[i] ='AMI' then
      begin
        BtnAMI.Font.Color := clRed;
        SexBMP := TBitmap.Create;
        ImageListforPat.GetBitmap(11,SexBMP);
        Image_AMI.Picture.Graphic := SexBMp;
        SexBMP.FreeImage;
        freeandnil(SexBMP);
      end;
      if majorname.Strings[i] ='CVA' then
        BtnCVA.Font.Color := clRed;
      if majorname.Strings[i] ='Trauma' then
        BtnTrauma.Font.Color := clRed;

    end;
  finally
    FreeAndNil(n);
    FreeAndNil(s);
    FreeAndNil(majorname);
  end;

  //�Ұʷ|�E
  if Consultation then
  begin
    myStr :=Setsys.ReadString('OTHERSYSTEMLINK',couslutname,'');
    myParamter := Setsys.ReadString('PARAMTER',couslutname,'');
    comStrRep(mystr);
    comstrRep(myParamter);
   // sql_time_log('�|�E�s�W',myParamter);
    if myStr ='' then
    begin
      //showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
      //Exit;
    end
    ELSE
      WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
    OutList.Clear;
    if FileExists(ExtractFileDir(Application.ExeName)+'\epd_consult.txt') then
    begin
      OutList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
      for i := 0 to OutList.Count -1 do
      begin
        rheHist.Lines.Add(dateformat(3,Now)+''+ReturnID(OutList.Strings[i]))
      end;
    end;
    OutList.Clear;
    DELETEFILE(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
  end;

  //�o�e²�T
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','���g�p��²�T','');
  myParamter := Setsys.ReadString('PARAMTER','���g�p��²�T','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    //'AMI','CVA','TPA','Trauma'
    try
      Paramter:=TStringList.Create;
      PType:=TStringList.Create;
      RType:=TStringList.Create;
      PData:=TStringList.Create;
      SpName:=getSpSql(6,Paramter,PType,RType);
      PData.Add(smsend);
      PData.Add(GetChrNo);
      PData.Add(getUserId);
      //ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
    finally
      Paramter.Free;
      PType.Free;
      RType.Free;
      PData.Free;
    end;
  end
  ELSE if UpperCase(myStr)= 'NONE' then
  begin
    //�S���]�m���\��
  end
  else
  BEGIN
    if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL)
  END;
  
end;

function TFrmOrder.CheckDDI(sg: string): Boolean;
var
  Mes,DDIStr,medcode1_2:String;
  i : Integer;
  COUNTR : Integer;
  BDDI,CheckLevelOne,haveddilog : Boolean;
  //B2 :array of String;
begin
  Result := True;
  CheckLevelOne := False;
  COUNTR := 0;
  medcode1_2 := '';
  CheckLevelOne := uppercase(SetSys.ReadString('SYSTEM','DDIONE',''))<>'FALSE';
  //if CheckLevelOne then
  //begin
    With DM.QrySubSearch do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM drug_inter ');
      //SQL.Add(' WHERE DEGREE =''1'' ');//2013/07/18
      SQL.Add(' WHERE MED_CODE1 IN ('+QtS(sg)+') ');
      SQL.Add('   AND MED_CODE2 IN ('+QtS(sg)+') ');
      SQL.Add('   AND stop_flag =''Y'' ');
      open;
      While not Eof do
      begin
        Mes := mes+Trim(FieldByName('RESULT').AsString)+ #13#10+'�ī~ : '+Trim(FieldByName('Med_code1').AsString) +' �P ' +Trim(FieldByName('Med_code2').AsString) +#13#10
             + '�@�� : '+Trim(FieldByName('MECHANISM').AsString)+#13#10
             + '�Ƨ@�� : '+Trim(FieldByName('ACTION_TAKEN').AsString);
        Next;
      end;
      Close;
    end;
    if mes <>'' then
    begin
      ShowMessage(mes+#13#10+'�H�W���Ī��椬�@�κި�Ĥ@��,�g��ȳ��Mĳ�T��}��');
      Result := False;
      Exit;
    end;
 // END;

  With DM.QrySubSearch do
  begin
    //���w���O�LDDI�����
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select distinct fee_no, med_code1, med_code2, doc_code');
    DM.QryTemp.SQL.Add('  from psi_ddi_dr_action');
    DM.QryTemp.SQL.Add(' where fee_no = '+Qt(GetFeeNo)+' and opd_date between'+Qt(GetEpdDate)+' and '+Qt(RocDate(now,'')));
    DM.QryTemp.SQL.Add('   and med_code1 in ('+QtS(sg)+')');
    DM.QryTemp.SQL.Add('   and med_code2 in ('+QtS(sg)+') AND DR_ACTION NOT IN(''01'',''02'')');
    DM.QryTemp.Open;

    //�������}�Ħ��椬�@��
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT A.FEE_desc as aa,b.FEE_desc as bb,A.FEE_CODE AS ACODE,B.FEE_CODE AS BCODE,med_code1,med_code2,DOCUMENTATION,DEGREE,');
    SQL.Add('SEVERITY ,MECHANISM,ACTION_TAKEN FROM drug_inter D,OrderItem_basic a,OrderItem_basic b ');
    SQL.Add(' WHERE trim(MED_CODE1) IN ('+QtS(sg)+') ');
    SQL.Add('   AND trim(MED_CODE2) IN ('+QtS(sg)+') ');
    SQL.Add('   AND D.MED_CODE1 = A.Fee_code');
    SQL.Add('   AND D.MED_CODE2 = B.Fee_code');
    SQL.Add('   AND A.ORDER_TYPE=''M'' and B.ORDER_TYPE=''M''');
    SQL.Add('   AND STOP_FLAG = ''N''');
    Open;
    {IF NOT DM.QrySubSearch.IsEmpty THEN
    BEGIN
      SetLength(B2,DM.QrySubSearch.RecordCount);
    END;}
    While not Eof do
    begin
      haveddilog := False;
      DM.QryTemp.First;
      while not DM.QryTemp.Eof do
      begin
        if (trim(DM.QryTemp.FieldByName('med_code1').AsString) = Trim(FieldByName('med_code1').AsString)) and
           (trim(DM.QryTemp.FieldByName('med_code2').AsString) = Trim(FieldByName('med_code2').AsString)) and
           (trim(DM.QryTemp.FieldByName('doc_code').AsString)  = getUserId)   then
            haveddilog := true;
        DM.QryTemp.Next;
      end;
      if not haveddilog then
      begin
        if Trim(FieldByName('DOCUMENTATION').AsString) = 'Established' then
          DDIStr := '    5/5  '
        else if Trim(FieldByName('DOCUMENTATION').AsString) = 'Probable' then
          DDIStr := '    4/5  '
        else if Trim(FieldByName('DOCUMENTATION').AsString) = 'Suspected' then
          DDIStr := '    3/5  '
        else if Trim(FieldByName('DOCUMENTATION').AsString) = 'Possible' then
          DDIStr := '    2/5  '
        else
        DDIStr := '    1/5  ';
        Mes := Mes+'�ī~ : '+Trim(FieldByName('aa').AsString) +' �P ' +Trim(FieldByName('bb').AsString) +'       �|���ͥ椬�@��'+#13
             + '�Y���� : '+Trim(FieldByName('SEVERITY').AsString)+'    '+Trim(FieldByName('DEGREE').AsString) +'/3'+#13
             + '���m�Ҿک� : '+Trim(FieldByName('DOCUMENTATION').AsString)+DDIStr+#13
             + '�椬�@�� : '+Trim(FieldByName('MECHANISM').AsString)+#13
             + '�v�T : '+Trim(FieldByName('ACTION_TAKEN').AsString)+#13;
         if COUNTR = 0 then//���Ĥ@�� 20140128
           medcode1_2 := trim(DM.QrySubSearch.FieldByName('ACODE').AsString)+'_'+trim(DM.QrySubSearch.FieldByName('BCODE').AsString);
        Inc(COUNTR);
      end;
      Next;
    end;
    DM.QryTemp.Close;
  end;
  if Mes <> '' then
  begin
    if not Assigned(FrmDDI) then
      FrmDDI := TFrmDDI.Create(self);
    with FrmDDI do
    begin
      //SetLength(B2OVRT,COUNTR);
      iPSI_WaitTime :=0 ;
      FFeeNo:=GetFeeNo;
      FOpdDate:=DBDate(RocDate(now,''));
      FChrNo:= GetChrNo;
      FDocNo:= getUserId;
      FDocName := getDocName(getUserId);
      FPatName := getPatName;
      FDeptDesc := GetDeptName(GetUserDept);
      Richedit1.Lines.Text := Mes;
      if trim(medcode1_2)<> '' then
      FMed_code1 := ReturnId(medcode1_2);
      FMed_Code2 := ReturnName(medcode1_2);
    end;
    FrmDDI.ShowModal;
    BDDI := FrmDDI.DDI;
    if FrmDDI <> nil then
      FrmDDI := nil;
    if not BDDI then
    begin
      Result := False;
    end;
  end;
  DM.QrySubSearch.Close;
end;

procedure TFrmOrder.Edit1Exit(Sender: TObject);
begin
  if TControl(ActiveControl) is TDBCtrlGrid then
   //ShowMessage('a')
  else
    if pnlphrase.Visible then
    begin
      SetPanel(FALSE,pnlphrase);
      Edit1.Text := '';
    end;
  inherited;

end;

procedure TFrmOrder.bmpjpg1Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not Assigned(Frmpic) then
    Frmpic := TFrmpic.Create(self);
  Frmpic.ShowModal;
end;

procedure TFrmOrder.N31Click(Sender: TObject);
var
  mystr, myParamter : string;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';    
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
  //sql_time_log('���`�ҩ���',myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except

  end;
end;

procedure TFrmOrder.SGIcdExit(Sender: TObject);
begin
  if TControl(ActiveControl) is TDBCtrlGrid then
  //SS
  else
  BEGIN
    if pnlHintGrid.Visible then
    begin
      if (Trim(SGIcd.Cells[0,SGIcd.Row])= '') or (Trim(SGIcd.Cells[1,SGIcd.Row]) = '' ) then
      begin
        SGIcd.Rows[SGIcd.Row].Clear;
        StringGridSort(SGIcd);
      end;
      SetPanel(False,pnlHintGrid);
    end;
    if pnlIcd10.Visible then
    begin
      if (Trim(SGICD10.Cells[0,SGICD10.Row])= '') or (Trim(SGICD10.Cells[1,SGICD10.Row]) = '' ) then
      begin
        SGICD10.Rows[SGICD10.Row].Clear;
        StringGridSort(SGICD10);
      end;
      SetPanel(False,PnlICD10);
    end;    
  END;
   inherited;
end;

procedure TFrmOrder.AERS1Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N34Click(Sender: TObject);
begin
  inherited;
  N1Click(Self);
end;

procedure TFrmOrder.BtnStDelClick(Sender: TObject);
var
  j : integer;
  seldel :string;
begin
  inherited;
  seldel := 'N';
  SGOrder.Col := del;
  FOR J := SGOrder.RowCount -1 downTO 0 DO
    if SGOrder.Cells[del,j] = 'X' then
       seldel := 'Y';
  if seldel= 'N' then
    if MessageDlg('�R���������:[Yes]'+#10#13+'�����������:[No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      seldel := 'Y'
    else
      seldel := 'N';
  FOR J := SGOrder.RowCount -1 downTO 0 DO
  begin
    SGOrder.Row := j;
    dbsgcncl(SGOrder,seldel);
  end;
end;

procedure TFrmOrder.Checkdisease;
var
  postils : array of string;
  pathname,filename,icd,p_filename : String;
  savedocfile,emptypara : olevariant;
  ptotal : integer;

  procedure wordini(template: olevariant);
  var
    newtemplate,itemindex:olevariant;
  begin
    newtemplate:=false;
    itemindex:=1;

    try
      WordApplication1.Connect;
    except
      wordapplication1.Disconnect;
      messagedlg('�|���w��Word',mterror,[mbok],0);
      exit;
    end;
    wordapplication1.Visible:=true;
    wordapplication1.Documents.Add(template,newtemplate,emptyparam,emptyparam);
    worddocument1.ConnectTo(wordapplication1.Documents.Item(itemindex));

    ptotal:=worddocument1.Comments.count;
  end;

  procedure deletepostils;
  var
    total:integer;
  begin
    total:=ptotal;
    while total<>0 do
    begin
      worddocument1.comments.Item(total).Delete;
      total:=worddocument1.Comments.Count;
    end;
  end;

  procedure substpostils(postils: array of string);
  var
    i:integer;
  begin

    for i:=1 to ptotal do
    begin
      worddocument1.Comments.Item(i).Scope.Text:=postils[i-1];
    end;
  end;

begin
  if UpperCase(SetSys.ReadString('SYSTEM','�ǬV�f���@����',''))='TRUE' then
  begin
    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.* from INFECT_ICD9_PRN a,Opd_basic1 b');
      SQL.Add(' where a.icd9_code in (b.ICD9_CODE1,b.ICD9_CODE2,b.ICD9_CODE3,b.ICD9_CODE4,b.ICD9_CODE5,');
      SQL.Add('        b.ICD9_CODE6,b.ICD9_CODE7,b.ICD9_CODE8,b.ICD9_CODE9,b.ICD9_CODE10)');
      SQL.Add(' and b.fee_no = '+ Qt(getfeeno));
      SQL.Add(' and (fee_no,icd9_code) not in (select fee_no,icd9_code from INFECT_RPT_PRINT_LOG where print_type=''1'')');

      Open;

      p_filename := '';
      while not Eof do
      begin
        icd := FieldbyName('ICD9_CODE').AsString;
        //pathname:= '';
        filename:= '';

        //pathname:=extractfilepath(FieldbyName('File_name').AsString);
        filename:=extractfilename(FieldbyName('File_name').AsString);

        {wordini(pathname+filename);
        setlength(postils,ptotal);
        postils[0]:= getBedNo();
        postils[1]:= GetPatName();

        substpostils(postils);
        deletepostils;

        savedocfile:=FieldbyName('File_name').AsString;
        emptypara:=emptyparam;

        worddocument1.SaveAs(savedocfile,emptypara);}

        if p_filename = filename then
        else
        begin
          showmessage('�ǬV�f�j�����@���޳�'+filename+'�C�L,�Щ�mA4�ȱi�I');
          ShellExecute(Application.Handle,PChar('Print'),PChar(FieldbyName('File_name').AsString),nil,nil,SW_SHOWNORMAL);
          p_filename := filename;
        end;

        //wordapplication1.Disconnect;
        //wordapplication1.Quit;



        Try
          if DM.ADOLink.InTransaction then
            DM.ADOLink.CommitTrans;
          DM.ADOLink.BeginTrans;
          With DM.QryInsert do
          begin
            Close;
            SQL.Clear;
            SQL.Add('insert into INFECT_RPT_PRINT_LOG (print_type,fee_no,chr_no,icd9_code,print_date,print_time,oper_id)');
            SQL.Add('  Values (''1'','+ Qt(getfeeno) +','+ Qt(getchrno) +','+Qt(icd) +','+Qt(DBDate(RocDate(now,'')))+','+Qt(RocTime(now,''))+','+Qt(getuserid)+')');
            execsql;
          end;
          DM.ADOLink.CommitTrans;
        except
          DM.ADOLink.RollbackTrans;
          ShowMessage('�ǬV�f���@���ެ����g�J����!!');
        end;
        DM.QryInsert.Close;

        Next;
      end;
    end;
  end;
end;

procedure TFrmOrder.StringGrid2Click(Sender: TObject);
begin
  inherited;
{
  if TStringGrid(sender).Hint <> '' then
  begin
    SGridSort(1,TStringGrid(sender).Col,Sender);
    TStringGrid(sender).Hint := '';
  end
  else
  begin
    SGridSort(0,TStringGrid(sender).Col,Sender);
    TStringGrid(sender).Hint :='X';
  end; }
end;

procedure TFrmOrder.GroupBox7Click(Sender: TObject);
begin
  inherited;
  GroupBox9.Align := alBottom;
  GroupBox9.Height :=23;
  GroupBox8.Align := alBottom;
  GroupBox8.Height :=23;
  
  GroupBox7.Align := alClient;
  StringGrid2.Align := alClient;
end;

procedure TFrmOrder.GroupBox9Click(Sender: TObject);
begin
  inherited;
  GroupBox8.Align := alBottom;
  GroupBox8.Height :=23;
  GroupBox7.Align := alTop;
  GroupBox7.Height :=23;
  
  GroupBox9.Align := alClient;
  StringGrid3.Align := alClient;
end;

procedure TFrmOrder.GroupBox8Click(Sender: TObject);
begin
  inherited;
  GroupBox7.Align := alTop;
  GroupBox7.Height :=23;
  GroupBox9.Align := alTop;
  GroupBox9.Height :=23;
  
  GroupBox8.Align := alClient;
  StringGrid4.Align := alClient;
end;

procedure TFrmOrder.GroupBox7DblClick(Sender: TObject);
begin
  inherited;
  GroupBox8.Align := alBottom;
  GroupBox8.Height := 154;
  GroupBox9.Align := alBottom;
  GroupBox9.Height := 136;
  GroupBox7.Align := alClient;
end;

procedure TFrmOrder.ToolButton19Click(Sender: TObject);
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  if not assigned(FrmDitto) then
    FrmDitto := TFrmDitto.Create(Self);
  frmDitto.CBqrykind := True;
  FrmDitto.ShowModal;
  if FrmDitto.UseFlag then
  begin
    ditofeeno := FrmDitto.ditto_feeno;
    UseTheditto;
  end;
  freeandnil(FrmDitto);
end;

procedure TFrmOrder.BtnLDoseClick(Sender: TObject);
var
  i, cole : integer;
  temprow,tempCol : integer;
begin
  inherited;
  if (TBitBtn(Sender).Name = BtnLDose.Name) then
    cole := C_Qty;
  if (TBitBtn(Sender).Name = BtnLEMG.Name) then
    cole := C_EMG;
  if (TBitBtn(Sender).Name = btnLIns.Name) then
    cole := C_INS;
  temprow :=  SGLab.Row ;
  tempCol :=  SGLab.Col ;
  for i := temprow to SGLab.RowCount -1 do
  begin
    if nullStrTo(Trim(SGLab.Cells[modifytype,i]),'N') = 'N' then
      if SGLab.Cells[cole,i] <>'' then
      begin
        SGLab.Cells[cole,i] := SGLab.Cells[cole,SGLab.Row];
      end;
  end;
end;

procedure TFrmOrder.BtnRDoseClick(Sender: TObject);
var
  i, cole : integer;
  temprow,tempCol : integer;
begin
  inherited;
  if (TBitBtn(Sender).Name = BtnRDose.Name) then
    cole := C_Qty;
  if (TBitBtn(Sender).Name = BtnREMG.Name) then
    cole := C_EMG;
  if (TBitBtn(Sender).Name = btnRIns.Name) then
    cole := C_INS;
  temprow :=  SGXRay.Row ;
  tempCol :=  SGXRay.Col ;
  for i := temprow to SGXRay.RowCount -1 do
  begin
    if nullStrTo(Trim(SGXRay.Cells[modifytype,i]),'N') = 'N' then
      if SGXRay.Cells[cole,i] <>'' then
      begin
        SGXRay.Cells[cole,i] := SGXRay.Cells[cole,SGXRay.Row];
      end;
  end;
end;

procedure TFrmOrder.BtnCDoseClick(Sender: TObject);
var
  i, cole : integer;
  temprow,tempCol : integer;
begin
  inherited;
  if (TBitBtn(Sender).Name = BtnCDose.Name) then
    cole := C_Qty;
  if (TBitBtn(Sender).Name = BtnCEMG.Name) then
    cole := C_EMG;
  if (TBitBtn(Sender).Name = btnCIns.Name) then
    cole := C_INS;
  temprow :=  SGChk.Row ;
  tempCol :=  SGChk.Col ;
  for i := temprow to SGChk.RowCount -1 do
  begin
    if nullStrTo(Trim(SGChk.Cells[modifytype,i]),'N') = 'N' then
      if SGChk.Cells[cole,i] <>'' then
      begin
        SGChk.Cells[cole,i] := SGChk.Cells[cole,SGChk.Row];
      end;
  end;
end;

procedure TFrmOrder.N38Click(Sender: TObject);
var
  ag :string;
begin
  inherited;
  if not assigned(FrmPain) then
    Application.CreateForm(TFrmPain, FrmPain);
  try
    FrmPain.opd_date := GetEpdDate;
    FrmPain.chr_no   := GetChrNo;
    FrmPain.fee_no   := GetFeeNo;
    FrmPain.doc_Code := getUserId;
    FrmPain._DB      := DM.ADOLink;
    FrmPain.dept_code:= GetUserDept;
    ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(ag,1,1)<>'0' then
      FrmPain.age := copy(ag,1,length(ag)-2)
    else
      FrmPain.age := copy(ag,2,2);
    FrmPain.m_age    := copy(ag,4,2);
    FrmPain.ShowModal;
    if FrmPain.vstrorder <> '' then
      insertordertxt('',FrmPain.vstrorder);
  finally
    FreeAndNil(FrmPain);
  end;


  
end;

procedure TFrmOrder.N37Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N39Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : Integer;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
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

procedure TFrmOrder.N35Click(Sender: TObject);
VAR
  SQLSTR,YEAR,MONTH,DAY,defPrint : STRING;
  reg : TRegistry;
  I : INTEGER;
begin
  inherited;
//Medical treatment proved
  //��L���
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
  YEAR := copy(GetEpdDate,1,length(GetEpdDate)-4);
  MONTH := copy(GetEpdDate,length(GetEpdDate)-3,2);
  DAY :=  copy(GetEpdDate,length(GetEpdDate)-1,2);
  if not assigned(FrmMedProved) then
    Application.CreateForm(TFrmMedProved, FrmMedProved);
  FrmMedProved.QRLpatname.Caption := GetPatName;
  FrmMedProved.QRLpatname2.Caption := GetPatName;
  FrmMedProved.QRLchrno.Caption := GetChrNo;
  FrmMedProved.QRLchrno2.Caption := GetChrNo;
  FrmMedProved.QRLPatId.Caption := GetIdNo;
  FrmMedProved.QRLPatId2.Caption := GetIdNo;
  FrmMedProved.QRLdeptName.Caption := GetDeptName(GetUserDept);
  FrmMedProved.QRLdeptName2.Caption := GetDeptName(GetUserDept);
  FrmMedProved.QRLYear.Caption := YEAR;
  FrmMedProved.QRLYear2.Caption := YEAR;
  FrmMedProved.QRLmonth.Caption := MONTH;
  FrmMedProved.QRLmonth2.Caption := MONTH;
  FrmMedProved.QRLDay.Caption := DAY;
  FrmMedProved.QRLDay2.Caption := DAY;
  FrmMedProved.QRLHosptname.Caption := SetSys.ReadString('SYSTEM','HOSPTAILNAME','');
  FrmMedProved.QRLHosptname2.Caption := SetSys.ReadString('SYSTEM','HOSPTAILNAME','');
  FrmMedProved.QRLBigYear.Caption := YEAR;
  FrmMedProved.QRLBigYear2.Caption := YEAR;
  FrmMedProved.QRLBigMonth.Caption := MONTH;
  FrmMedProved.QRLBigMonth2.Caption := MONTH;
  FrmMedProved.QRLBigDay.Caption := DAY;
  FrmMedProved.QRLBigDay2.Caption := DAY;
  HasPrint := False;
  FrmMedProved.QuickRep1.Preview;
  reg.DeleteKey('Device');
  reg.WriteString('Device',DefPrint);
  Reg.CloseKey;
  Reg.Free;
  if HasPrint then
  begin
    try
      if DM.ADOLink.InTransaction then
        DM.ADOLink.CommitTrans;
      DM.ADOLink.BeginTrans;
      DM.QryUpdate.Close;
      SQLSTR := getlog_sql(25);
      SetParamter(SQLSTR,'$CHR_NO$',Qt(getChrNo));
      SetParamter(SQLSTR,'$OPD_DATE$',Qt(GetEpdDate));
      SetParamter(SQLSTR,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(SQLSTR,'$UPD_OPER$',Qt(getUserId));
      SetParamter(SQLSTR,'$UPD_DATE$',Qt(ROCDate(Now,'')));
      SetParamter(SQLSTR,'$UPD_TIME$',Qt(ROCTimes(Now,'')));
      DM.QryUpdate.SQL.Text:=SQLSTR;
      DM.QryUpdate.ExecSQL;
      DM.ADOLink.CommitTrans
    except on E: Exception do
      begin
        sql_time_log('ExecSQL:',E.Message+' SQL:'+SQLSTR);
        DM.ADOLink.RollbackTrans;
        ShowMessage('�s�ɥ���!!');
        FreeAndNil(FrmMedProved);
      end;
    end;
  end;
  FreeAndNil(FrmMedProved);
end;


procedure TFrmOrder.BtnorderShiftClick(Sender: TObject);
var
  mystr, myParamter, OpenTransfer : string;
  i : integer;
begin
  inherited;
  OpenTransfer := UpperCase(Setsys.ReadString('SYSTEM','TRANSFSTART',''));
  insertordertxt('','���E�d�[�� DATE:'+ROCDate(Now,'/')+' '+ROCTime(Now,':'));
  PageControl2.ActivePageIndex := 8;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TButton(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TButton(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    if UpperCase(OpenTransfer) = 'TRUE' then
    begin
      OpenTransfer := UpperCase(SetSys.ReadString('SYSTEM','TRANSFEROPEN',''));
      if UpperCase(OpenTransfer) ='TRUE' then
      begin
        //��Z��
        if not Assigned(FrmTransfernote) then
          FrmTransfernote := TFrmTransfernote.Create(Self);
        FrmTransfernote.Lblage.Caption := Trim(edtAge.Text);
        //�d�[-------------
        FrmTransfernote.infrom := 'OBS';
        FrmTransfernote.Edit3.Text := STXTBED.Caption;
        FOR I := 1 TO 10 DO
        BEGIN
          IF (TRIM(SGIcd.Cells[0,I]) <> '') AND (TRIM(SGIcd.Cells[1,I]) <> '') THEN
            FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + TRIM(SGIcd.Cells[0,I])+'_'+ TRIM(SGIcd.Cells[1,I])+';';
        END;

        //Assessment
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add('select text from epd_record where fee_no = '+qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and kind=''O_HISTORY'' order by seq_no');
        DM.QryTemp.Open;
        while not DM.QryTemp.Eof do
        begin
          if trim(DM.QryTemp.FieldByName('text').AsString) <> '' then
            FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString)) + ';';
          DM.QryTemp.Next;
        end;
        for i := 0 to rheHist.Lines.Count-1 do
        begin
          if trim(rheHist.Lines.Strings[i])<> '' then
            FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + rheHist.Lines.Strings[i] + ';';
        end;
        
        FrmTransfernote.ShowModal;
        FreeAndNil(FrmTransfernote);
      end;
    end;
  end
  else
  begin
    try
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    except
    end;
  end;
  times_log('stay_start',GetVsCode,getUserId,'');
  setstatus(GetFeeNo,'8','');
end;

procedure TFrmOrder.btnRePrintClick(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
  i : integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
        {if not Assigned(FrmTransfernote) then
          FrmTransfernote := TFrmTransfernote.Create(Self);
        FrmTransfernote.Lblage.Caption := Trim(edtAge.Text);
        //�d�[-------------
        FrmTransfernote.infrom := 'OBS';
        FrmTransfernote.Edit3.Text := STXTBED.Caption;
        //��|�w��------------------
        FrmTransfernote.infrom := '';
        FOR I := 1 TO 10 DO
        BEGIN
          IF (TRIM(SGIcd.Cells[0,I]) <> '') AND (TRIM(SGIcd.Cells[1,I]) <> '') THEN
            FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + TRIM(SGIcd.Cells[0,I])+'_'+ TRIM(SGIcd.Cells[1,I])+';';
        END;
        FrmTransfernote.ShowModal;
        FreeAndNil(FrmTransfernote);}
        exit;

  SetSheet(GetFeeNo+AddChar('1','0',4));
  mystr := '';
  myParamter := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TBitBtn(Sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TBitBtn(Sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);

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

procedure TFrmOrder.showalldata;
var
  i,k,j,e,pageheight : integer;
  tmpstr,AAqstr,st,ot,pt,at :string;
  name_val,sublist,ojlist,plalist : TStringList;
  tmpgr: TStringGrid;
  tmhre: TRichEdit;
  hav :Boolean;
  str : TStrings;
begin
  //Epd_All_order
  //��
  str := TStringList.Create;
  name_val := TStringList.Create;
  sublist := TStringList.Create;
  ojlist := TStringList.Create;;
  plalist := TStringList.Create;
  str.Clear;
  AAqstr := getDitto(21);
  SetParamter(AAqstr,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(AAqstr,'$FEE_NO$',Qt(GetFeeNo));
  str.Add(AAqstr);
  if DM.OpenSQL(str,StringGrid3) then
  begin
    StringGrid3.ColWidths[0] := 90;
    StringGrid3.ColWidths[1] := 290;
    StringGrid3.ColWidths[2] := 30;
    StringGrid3.ColWidths[3] := 50;
    StringGrid3.ColWidths[4] := 50;
    StringGrid3.ColWidths[5] := 30;
    StringGrid3.ColWidths[6] := 50;
    StringGrid3.ColWidths[7] := 50;
    StringGrid3.ColWidths[8] := 50;
    StringGrid3.ColWidths[9] := 30;
    StringGrid3.ColWidths[10] := 70;
    StringGrid3.ColWidths[11] := 70;
    StringGrid3.ColWidths[12] := 70;
    StringGrid3.Repaint;
  END;
  //����B�ˬd�B��g
  str.Clear;
  AAqstr := getDitto(22);
  SetParamter(AAqstr,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(AAqstr,'$FEE_NO$',Qt(GetFeeNo));
  str.Add(AAqstr);
  if DM.OpenSQL(str,StringGrid2) then
  begin
    StringGrid2.ColWidths[0] := 60;
    StringGrid2.ColWidths[1] := 90;
    StringGrid2.ColWidths[2] := 290;
    StringGrid2.ColWidths[3] := 50;
    StringGrid2.ColWidths[4] := 50;
    StringGrid2.ColWidths[5] := 30;
    StringGrid2.ColWidths[6] := 50;
    StringGrid2.ColWidths[7] := 50;
    StringGrid2.ColWidths[8] := 70;
    StringGrid2.Repaint;
  END;
 //�B�m�B�ç��B�ԭz����
  str.Clear;
  AAqstr := getDitto(23);
  SetParamter(AAqstr,'$OPD_DATE$',Qt(GetEpdDate));
  SetParamter(AAqstr,'$FEE_NO$',Qt(GetFeeNo));
  str.Add(AAqstr);
  if DM.OpenSQL(str,StringGrid4) then
  begin
    StringGrid4.ColWidths[0] := 60;
    StringGrid4.ColWidths[1] := 90;
    StringGrid4.ColWidths[2] := 290;
    StringGrid4.ColWidths[3] := 50;
    StringGrid4.ColWidths[4] := 50;
    StringGrid4.ColWidths[5] := 70;
    StringGrid4.Repaint;
  END;
  //new now data
  name_val.clear;
  tmpstr := '';
  REdt_Triageman.Clear;
  //insert icd9
  if icdchangea <> 'N' then
  begin
    for i := 1 to SGIcd10.RowCount-1 do
    begin
      StringGrid1.Cells[0,i] := trim(SGIcd10.Cells[0,i]);
      StringGrid1.Cells[1,i] := trim(SGIcd10.Cells[1,i]);
    end;
    SetICD91(SGIcd10.Cells[0,1]);
    SetICD92(SGIcd10.Cells[0,2]);
    SetICD93(SGIcd10.Cells[0,3]);
  end
  else
  begin
    for i := 1 to SGIcd.RowCount-1 do
    begin
      StringGrid1.Cells[0,i] := trim(SGIcd.Cells[0,i]);
      StringGrid1.Cells[1,i] := trim(SGIcd.Cells[1,i]);
    end;
    SetICD91(SGIcd.Cells[0,1]);
    SetICD92(SGIcd.Cells[0,2]);
    SetICD93(SGIcd.Cells[0,3]);
  end;
  //�˶�
  REdt_Triageman.Lines.Add('��|�ɶ�: '+ Trim(SGtriage.Cells[0,1])+' '+Trim(SGtriage.Cells[1,1]));
  REdt_Triageman.Lines.Add('�˶˯ż�: '+ Trim(SGtriage.Cells[2,1]));
  REdt_Triageman.Lines.Add('�N�Ѫ��A:E'+ Trim(SGtriage.Cells[3,1])+'_V'+Trim(SGtriage.Cells[4,1])+'_M'+Trim(SGtriage.Cells[5,1]));
  REdt_Triageman.Lines.Add('�魫: '+ Trim(SGtriage.Cells[6,1])+'Kg ���:'+ Trim(SGtriage.Cells[7,1])+'�J');
  REdt_Triageman.Lines.Add('�߷i: '+ Trim(SGtriage.Cells[8,1])+' �I�l����: '+ Trim(SGtriage.Cells[9,1]));
  REdt_Triageman.Lines.Add('����: '+ Trim(SGtriage.Cells[11,1])+'/'+ Trim(SGtriage.Cells[10,1]));
  REdt_Triageman.Lines.Add('SPO2: '+ Trim(SGtriage.Cells[12,1]));
  if Trim(SGtriage.Cells[13,1]) = '1' then
  begin
    REdt_Triageman.Lines.Add('�L�ӥv: �L');
  end
  else
  begin
    if Trim(SGtriage.Cells[14,1]) = '1' then
      REdt_Triageman.Lines.Add('�L�ӷ�: ���M��')
    else
    begin
      if Trim(SGtriage.Cells[15,1]) = '1' then
        tmpstr := Trim(SGtriage.Cells[15,0]);
      if Trim(SGtriage.Cells[16,1]) = '1' then
        tmpstr := tmpstr+';'+Trim(SGtriage.Cells[16,0]);
      if Trim(SGtriage.Cells[17,1]) = '1' then
        tmpstr := tmpstr+';'+Trim(SGtriage.Cells[17,0]);
      if Trim(SGtriage.Cells[18,1]) <> '' then
        tmpstr := tmpstr+';'+Trim(SGtriage.Cells[18,0])+':'+Trim(SGtriage.Cells[30,1]);
      REdt_Triageman.Lines.Add('�L�ӷ�: '+tmpstr);
      tmpstr := '';
    end;
  end;
  if Trim(SGtriage.Cells[19,1]) = '1' then
    REdt_Triageman.Lines.Add('�h��: �L');
  if Trim(SGtriage.Cells[19,1]) = '2' then
    REdt_Triageman.Lines.Add('�h��: ���M��');
  if Trim(SGtriage.Cells[19,1]) = '3' then
    REdt_Triageman.Lines.Add('�h��: ��');

  if Trim(SGtriage.Cells[20,1]) = '1' then
    tmpstr := Trim(SGtriage.Cells[20,0]);
  if Trim(SGtriage.Cells[21,1]) = '1' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[21,0]);
  if Trim(SGtriage.Cells[22,1]) = '1' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[22,0]);
  if Trim(SGtriage.Cells[23,1]) = '1' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[23,0]);
  if Trim(SGtriage.Cells[24,1]) = '1' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[24,0]);
  if Trim(SGtriage.Cells[25,1]) <> '' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[25,0])+':'+Trim(SGtriage.Cells[25,1]);
  if Trim(SGtriage.Cells[26,1]) <> '' then
    tmpstr := tmpstr+';'+Trim(SGtriage.Cells[26,0])+':'+Trim(SGtriage.Cells[26,1]);
  if Trim(tmpstr) <> '' then
  begin
    tmpstr := '�L�h�f�v:'+tmpstr;
    REdt_Triageman.Lines.Add(tmpstr);
    tmpstr := '';
  end;

  if Trim(SGtriage.Cells[27,1]) <> '' then
    REdt_Triageman.Lines.Add('�k�h�j��: '+ Trim(SGtriage.Cells[27,1]));
  if Trim(SGtriage.Cells[28,1]) <> '' then
  begin
    name_val := SliptStr(25,FulltoHalf(Trim(SGtriage.Cells[28,1])));
    for i := 0 to name_val.Count-1 do
    begin
      if i = 0 then
        REdt_Triageman.Lines.Add('�D�z: '+ name_val[i])
      else
        REdt_Triageman.Lines.Add('      '+ name_val[i]);
    end;
  end;
  //108.08.30 shh ITe 11138 add �˶�119��J
  if Trim(SGtriage.Cells[31,1]) <> '' then
  begin
    if (Trim(SGtriage.Cells[31,1]) = '1') then
       REdt_Triageman.Lines.Add('���Ӱ|�覡��119��J');
  end;

  //soap
  st := '';
  ot := '';
  pt := '';
  at := '';
  REdtSOP.Lines.Clear;
  tmpstr:='select * from epd_record where fee_no=$FEE_NO$ AND order_date= '+Qt(GetEpdDate)+' and del_flag=''N'' order by allorder_no,seq_no';
  SetParamter(tmpstr,'$FEE_NO$',Qt(GetFeeNo));
  DM.QrySearch.SQL.Text:=tmpstr;
  DM.QrySearch.Open;
  while not DM.QrySearch.Eof do
  begin                                                 
    if trim(DM.QrySearch.FieldByName('kind').AsString)='O_SUBJECT' then
      st := st + soapstrReplace(DM.QrySearch.FieldByName('text').AsString) + #10;

    if trim(DM.QrySearch.FieldByName('kind').AsString)='O_OJECT' then
      ot := ot + soapstrReplace(DM.QrySearch.FieldByName('text').AsString) + #10;

    if trim(DM.QrySearch.FieldByName('kind').AsString)='O_PLAN' then
      ot := pt + soapstrReplace(DM.QrySearch.FieldByName('text').AsString) + #10;

    if trim(DM.QrySearch.FieldByName('kind').AsString)='O_HISTORY' then
      at := at + soapstrReplace(DM.QrySearch.FieldByName('text').AsString) + #10;
    dm.QrySearch.Next;
  end;
  DM.QrySearch.Close;
  REdtSOP.Lines.Add('');
  REdtSOP.Lines.Strings[0] := 'SUBJECT:';
  REdtSOP.Lines.Add(st);
  if trim(st)<> '' then
    REdtSOP.Lines.Add('');

  REdtSOP.Lines.Add('OJECT:');
  REdtSOP.Lines.Add(ot);
  if trim(ot)<> '' then
    REdtSOP.Lines.Add('');

  REdtSOP.Lines.Add('Assessment:');
  REdtSOP.Lines.Add(at);
  if trim(at)<> '' then
    REdtSOP.Lines.Add('');
    
  REdtSOP.Lines.Add('PLAN:');
  REdtSOP.Lines.Add(pt);
  if trim(pt)<> '' then
    REdtSOP.Lines.Add('');


  //�w�]�j�p
  {GroupBox8.Height := 154;
  GroupBox8.Align := alBottom;
  GroupBox9.Height := 136;
  GroupBox9.Align := alBottom;
  GroupBox7.Align := alClient; }
  //�ī~
  k := 1;
  for i := 1 to StringGrid3.RowCount-1 do
  begin
    if Trim(StringGrid3.Cells[0,i])<> '' then
      inc(k)
  end;
  for i := 0 to SGMed.RowCount-1 do
  begin
    hav := False;
    if (trim(SGMed.Cells[M_Code,i]) <> '') and (trim(SGMed.Cells[M_name,i]) <> '') then
    begin
      for j := 1 to StringGrid3.RowCount-1 do
        if trim(StringGrid3.Cells[11,j]) = trim(SGMed.Cells[0,i]) then
          hav := True;
      if not hav then
      begin
        StringGrid3.Cells[0,k]:= 'NEW';
        StringGrid3.Cells[1,k]:= trim(SGMed.Cells[m_name,i]);
        StringGrid3.Cells[2,k]:= trim(SGMed.Cells[M_Qty,i]);
        StringGrid3.Cells[3,k]:= trim(SGMed.Cells[M_Cir,i]);
        StringGrid3.Cells[4,k]:= trim(SGMed.Cells[M_ttl_qty,i]);
        StringGrid3.Cells[5,k]:= '0';//trim(SGMed.Cells[M_days,i]);
        StringGrid3.Cells[6,k]:= trim(SGMed.Cells[M_days,i]);
        StringGrid3.Cells[7,k]:= trim(SGMed.Cells[M_path,i]);
        StringGrid3.Cells[8,k]:= trim(SGMed.Cells[M_FeeUnit,i]);
        StringGrid3.Cells[9,k]:= trim(SGMed.Cells[M_INS,i]);
        StringGrid3.Cells[10,k]:= trim(SGMed.Cells[M_Memo,i]);
        StringGrid3.Cells[11,k]:= trim(SGMed.Cells[m_code,i]);
        StringGrid3.RowCount := StringGrid3.RowCount+1;
        inc(k);
      end;
    end;
  end;
  //����B�ˬd�B��g
  k := 1;
  for i := 1 to StringGrid2.RowCount-1 do
  begin
    if Trim(StringGrid2.Cells[0,i])<> '' then
      inc(k)
  end;

  for i := 0 to 2 do
  begin
    case i of
      0: tmpgr := SGLab;
      1: tmpgr := SGChk;
      2: tmpgr := SGXRay;
    end;
    for j := 0 to tmpgr.RowCount-1 do
    begin
      hav := False;
      if (Trim(tmpgr.Cells[c_code,j]) <> '') and (Trim(tmpgr.Cells[c_order,j]) <> '') then
      begin
        for e := 1 to StringGrid2.RowCount-1 do
          if trim(StringGrid2.Cells[8,e]) = trim(tmpgr.Cells[C_Code,i]) then
            hav := True;
        if not hav then
        begin
          case i of
            0: StringGrid2.Cells[0,k]:= '����';
            1: StringGrid2.Cells[0,k]:= '�ˬd';
            2: StringGrid2.Cells[0,k]:= '��g';
          end;
          StringGrid2.Cells[1,k]:= 'NEW';
          StringGrid2.Cells[2,k]:= trim(tmpgr.Cells[C_Order,j]);
          StringGrid2.Cells[3,k]:= trim(tmpgr.Cells[C_Qty,j]);
          StringGrid2.Cells[4,k]:= trim(tmpgr.Cells[C_path,j]);
          StringGrid2.Cells[5,k]:= trim(tmpgr.Cells[C_INS,j]);
          StringGrid2.Cells[6,k]:= trim(tmpgr.Cells[C_EMG,j]);
          StringGrid2.Cells[7,k]:= trim(tmpgr.Cells[C_MEMO,j]);
          StringGrid2.Cells[8,k]:= trim(tmpgr.Cells[C_Code,j]);
          StringGrid2.RowCount := StringGrid2.RowCount+1;
          inc(k);
        end;
      end;
    end;
  end;
  //�B�m�B�ç��B�ԭz����
  k := 1;
  for i := 1 to StringGrid4.RowCount-1 do
  begin
    if Trim(StringGrid4.Cells[0,i])<> '' then
      inc(k)
  end;
  for i := 0 to 2 do
  begin
    case i of
      0: tmpgr := SGFee;
      1: tmpgr := SGMtrl;
      2: tmpgr := SGOrder;
    end;
    for j := 0 to tmpgr.RowCount-1 do
    begin
      hav := False;
      if (Trim(tmpgr.Cells[F_code,j]) <> '') and (Trim(tmpgr.Cells[F_Name,j]) <> '') then
      begin
        for e := 1 to StringGrid4.RowCount-1 do
          if trim(StringGrid4.Cells[5,e]) = trim(tmpgr.Cells[F_code,j]) then
            hav := True;
        if not hav then
        begin
          case i of
            0: StringGrid4.Cells[0,k]:= '�B�m';
            1: StringGrid4.Cells[0,k]:= '�ç�';
            2: StringGrid4.Cells[0,k]:= '�ԭz';
          end;
          StringGrid4.Cells[1,k]:= 'NEW';
          StringGrid4.Cells[2,k]:= trim(tmpgr.Cells[F_Name,j]);
          if i <> 2 then
          begin
            StringGrid4.Cells[3,k]:= trim(tmpgr.Cells[F_Qty,j]);
            StringGrid4.Cells[4,k]:= trim(tmpgr.Cells[F_Ins,j]);
            StringGrid4.Cells[5,k]:= trim(tmpgr.Cells[F_code,j]);
          end;
          StringGrid4.RowCount := StringGrid4.RowCount+1;
          inc(k);
        end;
      end;
    end;
  end;
  FreeAndNil(name_val);

end;


procedure TFrmOrder.N41Click(Sender: TObject);
begin
  inherited;
  if not assigned(Frmoutproms) then
    Application.CreateForm(TFrmoutproms, Frmoutproms);
  Frmoutproms.ShowModal;
end;

procedure TFrmOrder.SGfeepayDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if ARow <> 0 then
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clWindow;
  if TStringGrid(Sender).Cells[2, arow] = '��' then
    TStringGrid(Sender).Canvas.Font.Color := clRed;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

procedure TFrmOrder.BitBtn4Click(Sender: TObject);
var
  Handle : THandle;
  myStr,myParamter : String;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  SetSheet(sqlsheetno);
  mystr := '';
  myParamter := '';
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TBitBtn(Sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TBitBtn(Sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  //sql_time_log('�ñ�',myParamter);
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

procedure TFrmOrder.SGMedMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
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
  if trim(TStringGrid(Sender).Cells[M_Code,gid.y])<> '' then
  begin
    //iv code begin
    if gid.x = M_Memo then
      TStringGrid(Sender).Hint := trim(TStringGrid(Sender).Cells[M_Memo,gid.y])
    else
      TStringGrid(Sender).Hint := trim(TStringGrid(Sender).Cells[M_Hint,gid.y]);
    p1 := TStringGrid(Sender).ClientToScreen(Point(x,y));
    Application.ActivateHint(p1);
  end
  else
    Application.CancelHint;
end;


Function TFrmOrder.InsertChild(feecode: string;seq_no: integer):Boolean;
var
  Qry : TADOQuery;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  with Qry do
  begin
    Close;
    SQL.Clear;
    //SQL.Add('select * from orderitem_basic where order_type=''M'' and child_flag_o=''Y'' and fee_code='+Qt(feecode));
    SQL.Add('select * from orderitem_basic where order_type in(''M'',''F'')  and child_flag_o=''Y'' and fee_code='+Qt(feecode));
    Open;
    if not IsEmpty then
    begin
      Close;
      SQL.Clear;
      SQL.Add('select tech_code,order_type from fee_child a,orderitem_basic b ');
      SQL.Add(' where a.fee_code=' + Qt(feecode));
      SQL.Add(' and tech_code=b.fee_code');
      Open;
      SGMed.Row := chsginstrow(SGMed);//�P�_�O�q���@��}�l�}��
      SGMtrl.Row := chsginstrow(SGMtrl);
      SGChk.Row := chsginstrow(SGChk);
      SGFee.Row := chsginstrow(SGFee);
      While not Eof do
      begin
        if Qry.FieldByName('order_type').AsString = 'M' then
        begin
          if InsertMed(Trim(FieldByName('tech_code').AsString),'','','','','') then
            SGMed.Row := SGMed.Row+1;
        end
        else if Qry.FieldByName('order_type').AsString = 'S' then
        begin
          InsertMrtl(Trim(FieldByName('tech_code').AsString),'','');
        end
        else if Qry.FieldByName('order_type').AsString = 'E' then
        begin
          InsertChk(Trim(FieldByName('tech_code').AsString),'','','','');
        end
        else if Qry.FieldByName('order_type').AsString = 'F' then
        begin
          InsertFee(Trim(FieldByName('tech_code').AsString),'');
        end;
        Next;
      end;
      Close;
    end;
    close;
  end;
  Qry.Free;
end;

procedure TFrmOrder.rheSubChange(Sender: TObject);
begin
  inherited;
  count_s_h_o;
end;

procedure TFrmOrder.CheckBox1Click(Sender: TObject);
begin
  inherited;
  //select * from chr_prop where upd_date='1010911'--003 ���x���� 002(�魫)
  //���M chr_h_card ���j�˯f
  if CheckBox1.Checked then
  begin

    if (SGIcd.Cells[4,1] = 'Y') then
      SetCbbitem(CbbPart,'001')
    else
    begin
      ShowMessage('�D�E�_�D���j�˯f�X');
      CheckBox1.Checked := False;
    end;
  end
  else
    SetCbbitem(CbbPart,SetSys.ReadString('SYSTEM','PARTCODE',''));
end;

procedure TFrmOrder.dbsgcncl(sender: TObject; conf: string);
var
  i ,J: Integer;
  myDel : TStringGrid;
begin
  inherited;
  Case TStringGrid(Sender).Col of
    Del,M_CODE,M_NAME :
    begin
      if NullStrTo(TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row],'N')='N'  then
      begin
        if TStringGrid(Sender).RowCount = 1 then
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
        if TStringGrid(Sender).row >= 0 then
        begin
          delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a��
          for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
            TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
          TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
          if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).RowCount-1] <>'' then
            TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1;
        end;
      end
      else
      begin
        TStringGrid(Sender).Options := TStringGrid(Sender).Options -[goEditing];
        if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).Row] = 'O' then
        begin
          if conf ='Y' then
          begin
            if (TStringGrid(Sender).Cells[C_CONFSTATUS,TStringGrid(Sender).Row] = 'Y') and ((TStringGrid(Sender).Name<>'SGFee') and (TStringGrid(Sender).Name<>'SGMtrl')) then
            begin
              ShowMessage2('�wñ�����椣��R��',['�T�w'],msinfor);
              Exit;
            end
            else
            begin
              if TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] = '' then
              begin
                TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := 'X';
                delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a��
              end
              else
              begin
                TStringGrid(Sender).Cells[DEL,TStringGrid(Sender).Row] := '';
                InsertChild(TStringGrid(Sender).Cells[3,TStringGrid(Sender).Row],TStringGrid(Sender).Row);//�[�^�l��
              end;
            end;
          end
          else
          begin
            if TStringGrid(Sender).RowCount = 1 then
              TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount +1;
            if TStringGrid(Sender).row >= 0 then
            begin
              delchilitme(TStringGrid(Sender),TStringGrid(Sender).Cells[3,TStringGrid(Sender).row]);//�R���s�a��
              for i := TStringGrid(Sender).row to TStringGrid(Sender).RowCount - 1 do
                TStringGrid(Sender).Rows[i] := TStringGrid(Sender).Rows[i+1];
              TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
              if TStringGrid(Sender).Cells[modifyType,TStringGrid(Sender).RowCount-1] <>'' then
                TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1;
            end;
          end;
        end;
      end;
      if TStringGrid(Sender) = SGXRay then
        Radionum  ;
      TStringGrid(Sender).Refresh;
    end;
  end;
end;

procedure TFrmOrder.delchilitme(sender: TObject;c_Name: string);
procedure SGSort(Sender: TObject;row:integer);
var
  i ,j,l: Integer;
begin
  l := 1;
  for i := 0 to TStringGrid(Sender).RowCount -1 do
  begin
    if Trim(TStringGrid(Sender).Cells[row,i]) ='' then
    begin
      for J := I+1 to TStringGrid(Sender).RowCount - 1 do
      begin
        if Trim(TStringGrid(Sender).Cells[row,j]) <>'' then
        begin
          TStringGrid(Sender).Rows[I] := TStringGrid(Sender).Rows[J];
          inc(l);
          TStringGrid(Sender).Rows[J].Clear;
          break;
        end;
      end;
    end
    else
      inc(l);
  end;
  TStringGrid(Sender).RowCount := l;
end;
var
  irow,i : integer;
  hav : string;
begin
  hav := 'N';
  with DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from orderitem_basic where order_type in(''M'',''F'') and child_flag_o=''Y'' and fee_code='+Qt(c_Name));
    Open;
    if not IsEmpty then
    begin
      Close;
      SQL.Clear;
      SQL.Add('select tech_code,order_type from fee_child a,orderitem_basic b ');
      SQL.Add(' where a.fee_code=' + Qt(c_Name));
      SQL.Add(' and tech_code=b.fee_code');
      Open;
      While not Eof do
      begin
        if FieldByName('order_type').AsString = 'S' then
        begin// Mrtl
          sender := SGMtrl;
          c_Name := FieldByName('tech_code').AsString;
          for i := 0 to TStringGrid(Sender).RowCount - 1 do
          begin
            if trim(TStringGrid(Sender).Cells[L_code,i]) = trim(c_Name) then
              TStringGrid(sender).Rows[i].Clear;
          end;
          SGSort(sender,L_code);
        end;
        if FieldByName('order_type').AsString = 'F' then
        begin //�B�m
          sender := SGFee;
          c_Name := FieldByName('tech_code').AsString;
          for i := 0 to TStringGrid(Sender).RowCount - 1 do
          begin
            if trim(TStringGrid(Sender).Cells[L_code,i]) = trim(c_Name) then
              TStringGrid(sender).Rows[i].Clear;
          end;
          SGSort(sender,L_code);
        end;
        if FieldByName('order_type').AsString = 'M' then
        begin //�ī~
          sender := SGMed;
          c_Name := FieldByName('tech_code').AsString;
          for i := 0 to TStringGrid(Sender).RowCount - 1 do
          begin
            if trim(TStringGrid(Sender).Cells[M_Code,i]) = trim(c_Name) then
              TStringGrid(sender).Rows[i].Clear;
          end;
          SGSort(sender,M_Code);
        end;
        Next;
      end;
      Close;
    end;
    close;
  end;
end;

function TFrmOrder.chsginstrow(Sender: TObject): integer;
var
  irow :integer;
begin
  for irow := 0 to TStringGrid(Sender).RowCount -1 do
  begin
    if trim(TStringGrid(Sender).Cells[3,irow]) = '' then
    begin
      Result := irow;
      Break;
    end;
  end;
end;

procedure TFrmOrder.SGMedMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  if gid.y >= 0 then
    TStringGrid(Sender).Row := Gid.Y;

  if TStringGrid(Sender).Name = 'SGMed' then
  begin
    IF (m_outmed = gid.x) and (trim(TStringGrid(Sender).Cells[M_Code,TStringGrid(Sender).Row])<> '') THEN
    begin
      if TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]='99' then
        TStringGrid(Sender).Cells[TStringGrid(Sender).col,TStringGrid(Sender).row]:=''
      else
        TStringGrid(Sender).Cells[TStringGrid(Sender).col,TStringGrid(Sender).row]:='99';
      TStringGrid(Sender).Repaint;
    end;
  end;
end;

procedure TFrmOrder.SaveReaction(degree, medcode1, medcode2, kind,
  operno: String);
var
  SEQ : integer;
begin
  with DM.QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select max(seq_no) seq_no from drug_safe_log where fee_no1=' + Qt(getfeeno) );
    Open;
    SEQ := FieldbyName('seq_no').AsInteger + 1;
  end;


  if DM.ADOLink.InTransaction then
    DM.ADOLink.BeginTrans;
  DM.ADOLink.BeginTrans;

  Try
    With DM.QryInsert do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO drug_safe_log ';
      SQL.Add( ' (sour_type, fee_no1,fee_no2,seq_no, ');
      SQL.Add( 'chr_no,degree,med_code1,med_code2,kind,oper_no, ');
      SQL.Add( ' upd_oper,upd_date,upd_time) VALUES(');
      SQL.Add( ' ''E'', ' );                                 //opd_date
      SQL.Add( Qt(getFeeNo) + ' , ' );                       //fee_no1
      SQL.Add( Qt(getFeeNo) + ' , ' );                       //fee_no2
      SQL.Add( IntToStr(SEQ) + ' , ' );                      //seq_no
      SQL.Add( Qt(getchrno) + ' , ' );                       //dr_action
      SQL.Add( Qt(degree) + ' , ' );                         //degree
      SQL.Add( Qt(medcode1) + ' , ' );                       //med_code1
      SQL.Add( Qt(medcode2) + ' , ' );                       //med_code2
      SQL.Add( Qt(kind) + ' , ' );                           //kind
      SQL.Add( Qt(operno) + ' , ' );                             //oper_no
      SQL.Add( Qt(getuserid) + ' , ' );                      //upd_oper
      SQL.Add( Qt(UUpddate)+','+Qt(UUpdtime)+')');
      //SQL.Add( Qt(DBDate(RocDate(now,'')))+','+Qt(RocTime(now,''))+')');
      execsql;
    end;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
  end;

end;

procedure TFrmOrder.ImgSkinClick(Sender: TObject);
var
  SexBMP : TBitmap;
  mystr, myParamter : string;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  SetSheet(sqlsheetno);
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','CHRSPEC','');
  myParamter := Setsys.ReadString('PARAMTER','CHRSPEC','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
  end;

  SexBMP := TBitmap.Create;
  try
    with DM.QryTemp do //�S�O���O
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
          ImageListforPat.GetBitmap(10,SexBMP)// ��
        ELSE
          ImageListforPat.GetBitmap(9,SexBMP);//��
      END
      else
      begin
        ImageListforPat.GetBitmap(10,SexBMP)// ��
      end;
      ImgSkin.Picture.Graphic := SexBMp;
      SexBMP.FreeImage;
    end;
  finally
    freeandnil(SexBMP);
  end;

end;
 //�ƫe�f���Ī�
function TFrmOrder.BeforeCheck(Med_code,INS_FLAG,UNIT_QTY,CIR_CODE,Start_date,Start_time,Dc_Date,Dc_time,Text_kind: String; Var Mes :String):Boolean;  //�T�{�O�_�������
var
  myProgram,PreOrderCheck ,myParamter : String;
  TempQ2 : TADOQuery;
begin
  TempQ2 := TAdoQuery.Create(FrmOrder);
  TempQ2.Connection := DM.QrySearch.Connection;
  myProgram:= SetSys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
  PreOrderCheck := '';
  if myProgram<>'' then
  begin
    TempQ2.Close;
    TempQ2.SQL.Clear;                                                                                                                      //�`�q
    TempQ2.SQL.Add('select F_IPD_MED_CHECK('+Qt(GetChrNo)+','+Qt(Med_code)+','+Qt(GetFeeNo)+','+Qt(RocDate(now,''))+','+Qt(INS_FLAG)+','+Qt(UNIT_QTY)+') as AA from dual');
    try
      TempQ2.open;
    except
      ShowMessage('��E��O�B�z"���&�ƫe�f��"�{�ǬO�o�Ϳ��~');
      Result := False;
      Exit;
    end;
    PreOrderCheck:= StringReplace(TempQ2.fieldByName('AA').AsString,';','_',[rfReplaceAll]);
    {if ReturnID(PreOrderCheck) ='Y' then
    begin
      mes := mes +ReturnName(PreOrderCheck);
      if MedCanUse(Med_code,CIR_CODE,UNIT_QTY,Start_date,Start_time,Dc_Date,Dc_time,INS_FLAG,Text_kind,mes) = false then
        Result := False;
    end
    else }if ReturnID(PreOrderCheck) ='N' then
    begin
      //mes := mes +ReturnName(PreOrderCheck);
        //�]�ӽг�
      myProgram :=Setsys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
      myParamter := Setsys.ReadString('PARAMTER','�ƫe�f��','');
      comStrRep(myProgram);
      comstrRep(myParamter);
      ShowMessage(ReturnName(PreOrderCheck));
      SetParamter(myParamter,'$+MEDCODE+$',Med_code);
      WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
      TempQ2.Close;
      Result := True; //�n�ױ�
      FreeAndNil(TempQ2);
    end
    else if ReturnID(PreOrderCheck) ='1' then
    begin
      mes := mes +ReturnName(PreOrderCheck);
      TempQ2.Close;
      myProgram :=Setsys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
      myParamter := Setsys.ReadString('PARAMTER','�ƫe�f��','');
      comStrRep(myProgram);
      comstrRep(myParamter);
      //ShowMessage(ReturnName(PreOrderCheck));
      SetParamter(myParamter,'$+MEDCODE+$',Med_code);
      WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);

      Result := True;//�n�ױ�
      FreeAndNil(TempQ2);
    end
    else if ReturnID(PreOrderCheck) ='2' then
    begin
      mes := mes +ReturnName(PreOrderCheck);
      TempQ2.Close;
      myProgram :=Setsys.ReadString('OTHERSYSTEMLINK','�ƫe�f��','');
      myParamter := Setsys.ReadString('PARAMTER','�ƫe�f��','');
      comStrRep(myProgram);
      comstrRep(myParamter);
      SetParamter(myParamter,'$+MEDCODE+$',Med_code);
      WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
      Result := False;
      FreeAndNil(TempQ2);
    end
    else
    begin
      Result := False;
    end;
  end;
end;

//�����ˮ� ===========================================================================
//�Ƽf����
function TFrmOrder.CheckMedprog(medcode,self_flag,qty: string):string;
var
  ttqry : Extended;
  hiamedqry: TADOQuery;
begin
  Result := '';
  if self_flag = 'Y' then//�ഫ�۶O�O
    self_flag := 'N'
  else
    self_flag := 'Y';
  hiamedqry := TADOQuery.Create(FrmOrder);
  hiamedqry.Connection := DM.ADOLink;
  try
    if not TryStrToFloat(qty,ttqry) then
      ttqry := 0;
    hiamedqry.Close;
    hiamedqry.SQL.Clear;
    hiamedqry.SQL.Add('Select * from med_basic where med_code='+Qt(Trim(medcode)));
    hiamedqry.open;
    if not hiamedqry.IsEmpty then
    begin
      if hiamedqry.FieldByName('prog_flag').AsString ='Y' then
      begin
        hiamedqry.Close;
        hiamedqry.SQL.Clear;
        hiamedqry.SQL.Add('Select F_HIA_MED('+Qt(GetChrNo)+','+Qt(Trim(medcode))+','+Qt(GetFeeNo)+','+Qt(GetEpdDate)+','+Qt(self_flag)+','+FloatToStr(ttqry)+' ) as valuestr from dual');
        hiamedqry.open;
        if not hiamedqry.IsEmpty then
        begin
          if copy(trim(hiamedqry.FieldByName('valuestr').AsString),1,1) ='P' then
            Result := trim(hiamedqry.FieldByName('valuestr').AsString);
        end;
      end;
    end;
    hiamedqry.Close;
  finally
    FreeAndNil(hiamedqry);
  end;
end;

//�ި����
function TFrmOrder.CheckMedCtrl(Med_Code: string; Row: integer):Boolean;
var
  i: integer;
  myProgram, myParamter, TempStr: string;
begin
  Result := True;
  myProgram := SetSys.ReadString('OTHERSYSTEMLINK', '�ި��ī~�ݨ�', '');
  if myProgram <> '' then
  begin
    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select nvl(count(*),0) AS count from Epd_all_order where fee_no=' + Qt(GetFeeNo));
      SQL.Add(' and fee_code=' + Qt(Med_Code) + ' and pay_flag=''Y'' and order_date = '+Qt(GetEpdDate));
      Open;
      if FieldByName('count').AsString = '0' then
      begin
        try
          myParamter := Setsys.ReadString('PARAMTER', '�ި��ī~�ݨ�', '');
          comStrRep(myProgram);
          comstrRep(myParamter);
          IF Trim(myProgram) <> '' THEN
          BEGIN
            if FileExists(ExtractFileDir(Application.ExeName)+'\mc.txt') then
              DELETEFILE(ExtractFileDir(Application.ExeName) + '\mc.txt');
            SetParamter(myParamter, '$+MEDCODE+$', Med_code);
            WinExecAndWait32(myProgram + ' ' + myParamter, SW_SHOWNORMAL);
            OutList.Clear;
            //if FileExists(ExtractFileDir(Application.ExeName) + '\mc.txt') then
            if FileExists('D:\tmch\e_order\mc.txt') then
            begin
              //OutList.LoadFromFile(ExtractFileDir(Application.ExeName) + '\mc.txt');
              OutList.LoadFromFile('D:\tmch\e_order\mc.txt');
              for i := 0 to OutList.Count - 1 do
              begin
                TempStr := OutList.Strings[i];
                if Trim(TempStr) = 'C' then
                begin
                {  SGMed.Col := Del;
                  SGMed.Row := Row;
                  SGMedDblClick(SGMed);}
                  SGMed.Cells[M_INS, Row] := 'N';
                  Result := False;
                end
                else if Trim(TempStr) = 'X' then
                begin

                end
                else
                begin
                  SGMed.Cells[M_INS, Row] := TempStr;
                  Result := False;
                end;
              end;
            end;
            DELETEFILE(ExtractFileDir(Application.ExeName) + '\mc.txt');
          END;
        except

        end;
      end;
    end;

  end;
end;

//�ī~������
function TFrmOrder.CheckMedURGPurchase(Med_Code: string; Row: integer):Boolean;
var
  i: integer;
  myProgram, myParamter, TempStr: string;
begin
  Result := True;
  myProgram := SetSys.ReadString('OTHERSYSTEMLINK', '�ī~������', '');
  if myProgram <> '' then
  begin
    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select count(*) AS count from Epd_all_order where fee_no=' + Qt(GetFeeNo));
      SQL.Add(' and fee_code=' + Qt(Med_Code) + ' and pay_flag=''Y'' ');
      Open;
      if FieldByName('count').AsString <= '0' then
      begin
        try
          myParamter := Setsys.ReadString('PARAMTER', '�ī~������', '');
          comStrRep(myProgram);
          comstrRep(myParamter);
          IF Trim(myProgram) <> '' THEN
          BEGIN
            if FileExists(ExtractFileDir(Application.ExeName)+'\mb.txt') then
              DELETEFILE(ExtractFileDir(Application.ExeName) + '\mb.txt');
            SetParamter(myParamter, '$+MEDCODE+$', Med_code);
            WinExecAndWait32(myProgram + ' ' + myParamter, SW_SHOWNORMAL);
            OutList.Clear;
            if FileExists(ExtractFileDir(Application.ExeName) + '\mb.txt') then
            begin
              OutList.LoadFromFile(ExtractFileDir(Application.ExeName) + '\mb.txt');
              for i := 0 to OutList.Count - 1 do
              begin
                TempStr := OutList.Strings[i];
                if Trim(TempStr) = 'C' then
                begin
                  {SGMed.Col := Del;
                  SGMed.Row := Row;
                  SGMedDblClick(SGMed);}
                  SGMed.Cells[M_INS, Row] := 'N';
                  Result := False;
                end
                else if Trim(TempStr) = 'X' then
                begin

                end
                else
                begin
                  //110.06.24 shh ITe 11138 add ����ADV�^�ǰT�� Y to N
                  {if Trim(TempStr) = 'Y' then
                    TempStr := 'N'; }
                  SGMed.Cells[M_INS, Row] := TempStr;
                  Result := False;
                end;
              end;
            end;
            DELETEFILE(ExtractFileDir(Application.ExeName) + '\mb.txt');
          END;
        except

        end;
      end;
    end;

  end;

end;

function TFrmOrder.MEDCHK(Med_code,CIR_CODE:STRING;VAR MES:STRING): Boolean;
VAR
  arrkey :STRING;
begin
  arrkey := '';
  Result := True;
  With DM.Med_Check do
  begin
    Close;
    Parameters.Clear;
    ProcedureName := 'check_medicines_limit';
    Parameters.CreateParameter('chrno',ftString,pdInput,4000,Null); // �ǤJ��
    Parameters.CreateParameter('medcode',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('doccode',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('icdno1',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('icdno2',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('icdno3',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('icdno4',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('icdno5',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('birthday',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('feecode',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('Self',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('sex',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('circode',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('arrest',ftString,pdInputOutput,4000,Null); // �^�ǭ�
    Parameters.CreateParameter('message',ftString,pdReturnValue,4000,Null); // �^�ǭ�
    Parameters.CreateParameter('isqlcode',ftInteger,pdReturnValue,10,0);

    Parameters.parambyname('chrno').Value := GetchrNo;
    Parameters.parambyname('medcode').Value := Trim(Med_code);
    Parameters.parambyname('doccode').Value := getUserId;
    IF icdchangea <> 'N' THEN
    BEGIN
      Parameters.parambyname('icdno1').Value := SGIcd10.Cells[0,1];
      Parameters.parambyname('icdno2').Value := SGIcd10.Cells[0,2];
      Parameters.parambyname('icdno3').Value := SGIcd10.Cells[0,3];
      Parameters.parambyname('icdno4').Value := SGIcd10.Cells[0,4];
      Parameters.parambyname('icdno5').Value := SGIcd10.Cells[0,5];
    END
    ELSE
    BEGIN
      Parameters.parambyname('icdno1').Value := SGIcd.Cells[0,1];
      Parameters.parambyname('icdno2').Value := SGIcd.Cells[0,2];
      Parameters.parambyname('icdno3').Value := SGIcd.Cells[0,3];
      Parameters.parambyname('icdno4').Value := SGIcd.Cells[0,4];
      Parameters.parambyname('icdno5').Value := SGIcd.Cells[0,5];
    END;
    Parameters.parambyname('birthday').Value := getBirth;
    Parameters.parambyname('feecode').Value := Trim(Med_code);
    Parameters.parambyname('self').Value := getPatID;
    Parameters.parambyname('sex').Value := getSex01;
    Parameters.parambyname('circode').Value := CIR_CODE;

    ExecProc;

    if varisnull(Parameters.parambyname('arrest').Value) then
      arrkey := 'N'
    else
      arrkey := Trim(Parameters.parambyname('arrest').Value) ;
    mes := '';
    if not varisnull(Parameters.parambyname('message').Value) then
      Mes :=Trim(Parameters.parambyname('message').Value);
    if arrkey='Y' then //���_
      Result := False;
  end;
end;

//�p������ˮ�
function TFrmOrder.childPDC(var msg:string; weight,height,medcode,cir,qty,days :string):Boolean;
var
  rntcode,rtnmsg,seleitem :string;
  sno,a : integer;
begin
  Result := True;
  rntcode := '';
  rtnmsg := '';
  seleitem := '';
  sno := 0;

  With DM.Med_Check do
  begin
    Close;
    Parameters.Clear;
    ProcedureName := 'pk_drug_warning.p_child_dose_limit';
    Parameters.CreateParameter('achr_no',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('afee_no',ftString,pdInput,4000,Null); // �ǤJ��
    Parameters.CreateParameter('aopd_date',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('aicd9_code',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('aweight',ftInteger,pdInput,4000,Null);
    Parameters.CreateParameter('aheight',ftInteger,pdInput,4000,Null);
    Parameters.CreateParameter('amed_code',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('acir_code',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('aper_qty',ftFloat,pdInput,4000,Null);
    Parameters.CreateParameter('amed_days',ftInteger,pdInput,4000,Null);
    Parameters.CreateParameter('auser',ftString,pdInput,4000,Null);
    Parameters.CreateParameter('an_rtn_code',ftString,pdReturnValue,4000,Null);
    Parameters.CreateParameter('an_dose_lmt',ftString,pdReturnValue,4000,Null);
    Parameters.CreateParameter('an_seq_no',ftInteger,pdReturnValue,4,Null);
    try
      Parameters.parambyname('achr_no').Value := GetchrNo;
      Parameters.parambyname('afee_no').Value := GetFeeNo;
      Parameters.parambyname('aopd_date').Value := GetEpdDate;
      Parameters.parambyname('aicd9_code').Value := SGIcd.Cells[0,1];
      IF TryStrToInt(trim(weight),a) then
        Parameters.parambyname('aweight').Value := StrToFloat(NullStrTo(trim(weight),'0'))
      else
        Parameters.parambyname('aweight').Value := '0';
      IF TryStrToInt(trim(height),a) then
        Parameters.parambyname('aheight').Value := StrToFloat(NullStrTo(trim(height),'0'))
      else
        Parameters.parambyname('aheight').Value := '0';
      Parameters.parambyname('amed_code').Value := medcode;
      Parameters.parambyname('acir_code').Value := cir;
      Parameters.parambyname('aper_qty').Value :=  StrToFloat(NullStrTo(trim(qty),'0'));
      Parameters.parambyname('amed_days').Value := StrToInt(NullStrTo(trim(days),'0'));
      Parameters.parambyname('auser').Value := getUserId;
    
      ExecProc;
    except
      ShowMessage('��E��O�B�z"�p����ľ��q�ˮ�"�{�Ǯɵo�Ϳ��~');
      //Result := False; //�ˮֿ��~���L���B�z
      Exit;
    end;

    if not varisnull(Parameters.parambyname('an_rtn_code').Value) then
      rntcode := trim(Parameters.parambyname('an_rtn_code').Value);
    if not varisnull(Parameters.parambyname('an_dose_lmt').Value) then
      rtnmsg := Trim(Parameters.parambyname('an_dose_lmt').Value);
    if rntcode = 'NY' then
    begin
      if not varisnull(Parameters.parambyname('an_seq_no').Value) then
        sno := Parameters.parambyname('an_seq_no').Value;
      if MessageDlg('�p�ྯ�q�ˮ�ĵ��:'+rtnmsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        seleitem := '1';
        Result := False;
      end
      else
      begin
        seleitem := '2';
      end;
      DM.QryUpdate.Close;
      DM.QryUpdate.SQL.Clear;
      DM.QryUpdate.SQL.Add('update pdc_log_d set oper_no ='+Qt(seleitem)+'	where fee_no ='+Qt(GetFeeNo)+' and seq_no='+IntToStr(sno));
      DM.ADOLink.BeginTrans;
      try
        DM.QryUpdate.ExecSQL;
        DM.ADOLink.CommitTrans;
      except
        DM.ADOLink.RollbackTrans;
      end;
    end;
    if  rntcode = 'NX' then
    begin
      Msg := rtnmsg;
      Result := False;
    end;
  end;
end;

//���Х����ˮ�
function TFrmOrder.CheckDupMed: Boolean;
var
  i,j,k : Integer;
  Dup_flag,FsBut,Mes: String;
  BDUP,Blocking_FLAG : Boolean;
  myRow,myDupList : TStrings;
begin
  Result := True;
  myRow := TStringList.Create;
  myDupList := TStringList.Create;
  Result := True;
  Blocking_FLAG := False;
  UUpddate :='';
  UUpdtime :='';
  UUpddate := DBDate(RocDate(now,''));
  UUpdtime := DBDate(RocTime(now,'')); //���o�{�b�ɶ�

  for i := 0 to SGMed.RowCount -1 do
  begin
    if (SGMed.Cells[modifytype,i] = 'O') or (SGMed.Cells[Del,i] = 'X') or ((Trim(SGMed.Cells[M_Cir,i]) = 'STAT') ) then
      continue
    else
    begin
      if (Trim(SGMed.Cells[M_Code,i]) <> '') then
      begin
        Dup_flag := '';
        for j := i to SGMed.RowCount -1 do
        begin
          if i <> j then
          begin
            if (Trim(SGMed.Cells[M_Code,j]) = '') then
              continue;
            Dup_flag := '';
            With DM.Med_Check do
            begin
              //as_rtn_code:�ˬd�s�}�ߤ@���ī~�^�ǥN�X(YY:���Шê��_ YN:���жȴ��� N:�L����)
              Close;
              Parameters.Clear;
              ProcedureName := 'pk_drug_warning.p_med_dup_message_opd';

              Parameters.CreateParameter('as_sour_type',ftString,pdInput,4000,Null); // �ǤJ��
              Parameters.CreateParameter('as_chr_no',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_fee_no',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_case_type',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_order_type',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_med_code1',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_med_code2',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_self_flag1',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_self_flag2',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_cir_code1',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('as_cir_code2',ftString,pdInput,4000,Null);
              Parameters.CreateParameter('an_qty_num1',ftFloat,pdInput,4000,Null);
              Parameters.CreateParameter('an_qty_num2',ftFloat,pdInput,4000,Null);
              Parameters.CreateParameter('as_rtn_code',ftString,pdReturnValue,4000,Null); // �^�ǭ�
              Parameters.CreateParameter('as_rtn_msg',ftString,pdReturnValue,4000,Null); // �^�ǭ�
              Parameters.CreateParameter('as_rtn_code2',ftString,pdReturnValue,4000,Null); // �^�ǭ�
              Parameters.CreateParameter('as_rtn_msg2',ftString,pdReturnValue,4000,Null); // �^�ǭ�

              Parameters.parambyname('as_sour_type').Value  := 'E';
              Parameters.parambyname('as_chr_no').Value     := GetChrNo;
              Parameters.parambyname('as_fee_no').Value     := GetfeeNo;
              Parameters.parambyname('as_case_type').Value  := ReturnId(CbbCase.Text);
              Parameters.parambyname('as_order_type').Value := ReturnId(CbbPart.Text);
              Parameters.parambyname('as_med_code1').Value  := Trim(SGMed.Cells[M_CODE,i]);
              Parameters.parambyname('as_med_code2').Value  := Trim(SGMed.Cells[M_CODE,j]);
              Parameters.parambyname('as_self_flag1').Value := Trim(SGMed.Cells[M_INS,i]);
              Parameters.parambyname('as_self_flag2').Value := Trim(SGMed.Cells[M_INS,j]);
              Parameters.parambyname('as_cir_code1').Value  := Trim(SGMed.Cells[M_cir,i]);
              Parameters.parambyname('as_cir_code2').Value  := Trim(SGMed.Cells[M_cir,j]);
              Parameters.parambyname('an_qty_num1').Value   := StrToFloat(NullStrTo(Trim(SGMed.Cells[M_qty,i]),'0'));
              Parameters.parambyname('an_qty_num2').Value   := StrToFloat(NullStrTo(Trim(SGMed.Cells[M_qty,j]),'0'));
              try
                ExecProc;
              except
                ShowMessage('��E��O�B�z"���Х����ˮ�"�{�Ǯɵo�Ϳ��~');
                Result := False;
                Exit;
              end;

              if not varisnull(DM.Med_Check.Parameters.parambyname('as_rtn_code').Value) then
                if Trim(DM.Med_Check.Parameters.parambyname('as_rtn_code').Value)<>'N' then
                begin
                  Dup_flag := Trim(DM.Med_Check.Parameters.parambyname('as_rtn_code').Value);
                  if Dup_flag = 'YY' then
                  BEGIN
                    Blocking_FLAG := True;
                    Result := False;
                  END;
                  SaveReaction('0',Trim(SGMed.Cells[M_CODE,i]),Trim(SGMed.Cells[M_CODE,J]),'02','1');
                  Mes :=Mes+Trim(DM.Med_Check.Parameters.parambyname('as_rtn_msg').Value)+#13;
                  myRow.Add(inttostr(i));
                end;
            end;
          end;
        end;//for j

        //as_rtn_code2:�ˬd�w�}�߹L�ī~�^�ǥN�X(YY:���Шê��_ YN:���жȴ��� N:�L����)
        With DM.Med_Check do
        begin
          Close;
          Parameters.Clear;
          ProcedureName := 'pk_drug_warning.p_med_dup_message_opd';

          Parameters.CreateParameter('as_sour_type',ftString,pdInput,4000,Null); // �ǤJ��
          Parameters.CreateParameter('as_chr_no',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_fee_no',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_case_type',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_order_type',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_med_code1',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_med_code2',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_self_flag1',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_self_flag2',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_cir_code1',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('as_cir_code2',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('an_qty_num1',ftFloat,pdInput,4000,Null);
          Parameters.CreateParameter('an_qty_num2',ftFloat,pdInput,4000,Null);
          Parameters.CreateParameter('as_rtn_code',ftString,pdReturnValue,4000,Null); // �^�ǭ�
          Parameters.CreateParameter('as_rtn_msg',ftString,pdReturnValue,4000,Null); // �^�ǭ�
          Parameters.CreateParameter('as_rtn_code2',ftString,pdReturnValue,4000,Null); // �^�ǭ�
          Parameters.CreateParameter('as_rtn_msg2',ftString,pdReturnValue,4000,Null); // �^�ǭ�

          Parameters.parambyname('as_sour_type').Value  := 'E';
          Parameters.parambyname('as_chr_no').Value     := GetChrNo;
          Parameters.parambyname('as_fee_no').Value     := GetfeeNo;
          Parameters.parambyname('as_case_type').Value  := ReturnId(CbbCase.Text);
          Parameters.parambyname('as_order_type').Value := ReturnId(CbbPart.Text);
          Parameters.parambyname('as_med_code1').Value  := Trim(SGMed.Cells[M_CODE,i]);
          Parameters.parambyname('as_med_code2').Value  := '';
          Parameters.parambyname('as_self_flag1').Value := Trim(SGMed.Cells[M_INS,i]);
          Parameters.parambyname('as_self_flag2').Value := '';
          Parameters.parambyname('as_cir_code1').Value  := Trim(SGMed.Cells[M_cir,i]);
          Parameters.parambyname('as_cir_code2').Value  := '';
          Parameters.parambyname('an_qty_num1').Value   := StrToFloat(NullStrTo(Trim(SGMed.Cells[M_qty,i]),'0'));
          Parameters.parambyname('an_qty_num2').Value   := 0;
          {ShowMessage(GetChrNo+'_'+GetfeeNo+'_'+ReturnId(CbbCase.Text)+'_'+ReturnId(CbbPart.Text)+'_'+Trim(SGMed.Cells[M_CODE,i])
                      +'_'+Trim(SGMed.Cells[M_CODE,j])+'_'+Trim(SGMed.Cells[M_INS,i])+'_'+Trim(SGMed.Cells[M_INS,j])+'_'+Trim(SGMed.Cells[M_cir,i])+
                      Trim(SGMed.Cells[M_cir,j])+'_'+NullStrTo(Trim(SGMed.Cells[M_qty,i]),'0')); }
          try
            ExecProc;
          except
            ShowMessage('��E��O�B�z"���Х����ˮ�"�{�Ǯɵo�Ϳ��~');
            Result := False;
            Exit;
          end;
          
          if not varisnull(Parameters.parambyname('as_rtn_code2').Value) then
            if Trim(Parameters.parambyname('as_rtn_code2').Value)<>'N' then
            begin
              Dup_flag := Trim(Parameters.parambyname('as_rtn_code2').Value);
              if Dup_flag = 'YY' then
              BEGIN
                Blocking_FLAG := True;
                Result := False;
              END;
              SaveReaction('0',Trim(SGMed.Cells[M_CODE,i]),' ','02','1');
              Mes :=Mes+Trim(Parameters.parambyname('as_rtn_msg2').Value)+#13;
              myRow.Add(inttostr(i));
            end;
        end;
      end;
    end;
  end;//for i

  if Mes <>'' then
  begin
    if not Assigned(FrmIPDDupMed) then
      FrmIPDDupMed := TFrmIPDDupMed.Create(self);
    with FrmIPDDupMed do
    begin
      iPSI_WaitTime :=0 ;
      FFeeNo:=GetFeeNo;
      FOpdDate:=DBDate(RocDate(now,''));
      FChrNo:= GetChrNo;
      FDocNo:= GetUserId;
      FDocName := GetUserName;
      FPatName := GetpatName;
      FDeptDesc := GetpatDept;
      FUpddate := UUpddate;
      FUpdtime := UUpdtime;
      IF Blocking_FLAG THEN
        but3.Enabled := False
      ELSE
        but3.Enabled := True;
      Richedit1.Lines.Add('');
      Richedit1.Lines.Strings[Richedit1.Lines.Count-1]:= Mes;
    end;
    FrmIPDDupMed.ShowModal;
    BDUP := FrmIPDDupMed.DUP;
    FSBut := FrmIPDDupMed.FsBut;
    if FrmIPDDupMed <> nil then
      FrmIPDDupMed := nil;
    if not BDUP then
    begin
      if FsBut = '3' then
        for j := 0 to myRow.Count-1 do
        begin
          SGMed.Cells[M_INS,Strtoint(myRow.Strings[j])] := 'N'; //�אּ�۶O
        end;
      Result := False;
    end
    else
      Result := True;
  end;
end;

function TFrmOrder.ctrlmed(var msg:string; medcode :string):Boolean;
var
  myStr, myParamter :string;
begin
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','','');
  myParamter := Setsys.ReadString('PARAMTER','','');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    //showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
  end;
end;
//�����ˮ� ===========================================================================

procedure TFrmOrder.cbbvscodeDropDown(Sender: TObject);
begin
  inherited;
  cbbvscode.Items.Clear;
  if CBx_VS.Checked then
    cbbvscode.Items.AddStrings(USE_ER_VSDOC)
  else
    cbbvscode.Items.AddStrings(EMGDOC);
end;

procedure TFrmOrder.cbbvscodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tempkey : String;
  DOCINDX : INTEGER;
begin
  IF cbbvscode.Text ='�п��' then
    cbbvscode.Text := '';
  tempkey := ReturnID(cbbvscode.Text);
  if key = Vk_return then
  BEGIN
    cbbvscode.Items.Clear;
    if CBx_VS.Checked then
      cbbvscode.Items.AddStrings(USE_ER_VSDOC)
    else
      cbbvscode.Items.AddStrings(EMGDOC);
      
    SetCbbitem(cbbvscode,cbbvscode.Text);
    if (cbbvscode.ItemIndex = -1) and (tempkey<>'') then
    begin
       DOCINDX := SetCbbitem_(doctor,tempkey);
       if DOCINDX >= 0 then
         cbbvscode.Text := doctor.Strings[DOCINDX]
       else
         cbbvscode.Text := '';
    end;
  END;
  inherited;

end;



procedure TFrmOrder.N15Click(Sender: TObject);
begin
  inherited;
  oftendept := '86';
  //oftenindex
  N21Click(Self);
end;

procedure TFrmOrder.N46Click(Sender: TObject);
begin
  inherited;
  oftendept := 'XXXX';
  N21Click(Self);
end;

procedure TFrmOrder.MyItemsForCONSULTClick(Sender: TObject);
var
  myStr,myParamter,TempStr,TempStr2 : String;
  i : Integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  //SetCONMAJOR('X');//���g
  //SetCONSTR1('X'); //Report requested regarding
  //SetCONSTR2('X'); //Brief summary
  //SetCONDEPT('X'); //�|�E��O
  //SetCONCLA('1');  //�|�E���O
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
  //sql_time_log(TMenuItem(Sender).Caption,myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  if FileExists(ExtractFileDir(Application.ExeName)+'\epd_consult.txt') then
    DELETEFILE(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
  try
    if pos('HTTP',UpperCase(myStr))> 0 then
    begin
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    end
    else
      WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
  end;

  OutList.Clear;
  if FileExists(ExtractFileDir(Application.ExeName)+'\epd_consult.txt') then
  begin
    OutList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
    for i := 0 to OutList.Count -1 do
    begin
      insertordertxt('',ReturnID(OutList.Strings[i]));
      //rheHist.Lines.Add(dateformat(3,Now)+''+ReturnID(OutList.Strings[i]))
    end;
  end;
  OutList.Clear;
  DELETEFILE(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
end;

procedure TFrmOrder.MyItemsForWaitingClick(Sender: TObject); //�}��/�w��
var
  mystr, myParamter, defPrint : string;
  tmpStr: TStrings;
  reg: TRegistry;
  i : integer;
begin
  inherited;
  if pnlHintGrid.Visible then
    SetPanel(False,pnlHintGrid);
  SetPanel(FALSE,pnlphrase);
  Edit1.Text := '';
  //��L���
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
  begin
    defPrint := reg.ReadString('Device');
    for i := 0 to printer.Printers.Count -1 do
    begin
      if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA5','')) then
      begin
        reg.DeleteKey('Device');
        reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
      end;
    end;
  end;
  reg.DeleteKey('Device');
  reg.WriteString('Device',DefPrint);
  Reg.CloseKey;
  Reg.Free;

  SetSheet(sqlsheetno);
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;

  //if FileExists(ExtractFileDir(Application.ExeName)+'\Blood.txt') then
  //if FileExists(Setsys.ReadString('OTHERSYSTEMLINK','BLOOD','')+'\Blood.txt') then
  //  DELETEFILE(Setsys.ReadString('OTHERSYSTEMLINK','BLOOD','')+'\Blood.txt');

  try
    if pos('HTTP',UpperCase(myStr))> 0 then
    begin
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    end
    else
    begin
      //�T�{�D�v��v
      if not ckvscode2 then
      begin
        exit;
      end;
      
      WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
      OutList.Clear;
      if FileExists(Setsys.ReadString('OTHERSYSTEMLINK','BLOOD','')+'\Blood.txt') then
      begin
        OutList.LoadFromFile(Setsys.ReadString('OTHERSYSTEMLINK','BLOOD','')+'\Blood.txt');
        for i := 0 to OutList.Count -1 do
        begin
          tmpStr := split('_', OutList.Strings[i]);
          IF TRIM(tmpStr[3]) <> '' THEN
            insertordertxt('',tmpStr[3]+' '+tmpStr[4]+' Unit PREPARE');
        end;
      end;
    end;
  except
  end;

  OutList.Clear;
  DELETEFILE(Setsys.ReadString('OTHERSYSTEMLINK','BLOOD','')+'\Blood.txt');
end;


procedure TFrmOrder.Patient_Instructions(ICD9:string);
var
  pi_q:TADOQuery;
  i:integer;
  id:string;
  reg : TRegistry;
  DefPrint : String;
begin
  //�ñг�C�L
  try
    pi_q := TADOQuery.Create(nil);
    pi_q.Connection := DM.ADOLink;
    pi_q.SQL.Clear;
    pi_q.SQL.Add('select * from INFECT_RPT_PRINT_LOG ');
    pi_q.SQL.Add(' where icd9_code ='+ qt(ICD9));
    pi_q.SQL.Add(' and fee_no = '+ Qt(getfeeno));
    pi_q.Open;
    if not pi_q.IsEmpty then
    begin
      exit;
    end;

    //��L���
    reg := TRegistry.Create;
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
    begin
      defPrint := reg.ReadString('Device');
      for i := 0 to printer.Printers.Count -1 do
      begin
        if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA5','')) then
        begin
          reg.DeleteKey('Device');
          reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
        end;
      end;
    end;
    reg.DeleteKey('Device');
    reg.WriteString('Device',DefPrint);
    Reg.CloseKey;
    Reg.Free;

    pi_q.Close;
    pi_q.SQL.Clear;
    pi_q.SQL.Add('select ipdtpn_id from tbl_instructions_map where trim(icd9_code)=' + QuotedStr(ICD9) + ' and source_type=''E''');
    pi_q.Open;

    if not pi_q.IsEmpty then
    begin
      id := pi_q.fieldbyname('ipdtpn_id').AsString;

      pi_q.Close;
      pi_q.SQL.Clear;
      pi_q.SQL.Add('select A.thevalue title,B.thevalue content from ipdtpn_code A, ipdtpn_dtl B where A.id=B.id and A.id=' + QuotedStr(id) +' and A.kind=''E'' order by B.seq');
      pi_q.Open;

      if not pi_q.IsEmpty then
      begin
        try
          if not Assigned(frm_instruction) then
            frm_instruction := Tfrm_instruction.Create(self);
          //Application.CreateForm(Tfrm_instruction, frm_instruction);
          frm_instruction.QRL_Title.Caption := pi_q.FieldByName('title').AsString;
          pi_q.First;
          frm_instruction.QRM_Content.Lines.Clear;
          for i := 0 to pi_q.RecordCount -1 do
          begin
            frm_instruction.QRM_Content.Lines.Append(pi_q.FieldByName('content').AsString);
            pi_q.Next;
          end;
          frm_instruction.PrepareSQL;
          if assigned(frm_instruction) then
            frm_instruction := nil;
          try
            DM.ADOLink.BeginTrans;
            pi_q.Close;
            pi_q.SQL.Clear;
            pi_q.SQL.Add('insert into INFECT_RPT_PRINT_LOG (print_type,fee_no,chr_no,icd9_code,print_date,print_time,oper_id)');
            pi_q.SQL.Add('  Values (''1'','+ Qt(getfeeno) +','+ Qt(getchrno) +','+Qt(ICD9) +','+Qt(DBDate(RocDate(now,'')))+','+Qt(RocTime(now,''))+','+Qt(getuserid)+')');
            pi_q.ExecSQL;
            DM.ADOLink.CommitTrans;
          except
            DM.ADOLink.RollbackTrans;
          end;

        finally
          FreeAndNil(frm_instruction)
        end;
      end;
    end;

  finally
    FreeAndNil(pi_q);
  end;
end;

procedure TFrmOrder.DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  inherited;
  if pnlIcd.Visible  then
  begin
    DBText1.Font.Color := clBlack;
    DBText2.Font.Color := clBlack;
    DBText3.Font.Color := clBlack;

    if Trim(dm.qryicd9.FieldByName('urg_flag').AsString) = 'Y' then
    begin
      DBText1.Font.Color := clGreen;
      DBText2.Font.Color := clGreen;
      DBText3.Font.Color := clGreen;
    end;

    if Trim(dm.qryicd9.fieldbyname('slow_flag').AsString) = 'Y' then
    begin
      DBText1.Font.Color := clBlue;
      DBText2.Font.Color := clBlue;
      DBText3.Font.Color := clBlue;
    end;

    if (Trim(dm.qryicd9.FieldByName('urg_flag').AsString) = 'Y') and  (Trim(dm.qryicd9.fieldbyname('slow_flag').AsString) = 'Y') then
    begin
      DBText1.Font.Color := clRed;
      DBText2.Font.Color := clRed;
      DBText3.Font.Color := clRed;
    end;
  end;
end;

function TFrmOrder.CheckCTMRI: Boolean;
var
  pi_q: TADOQuery;
  days: integer;
  dday: string;
begin
  Result := True;
  dday := SetSys.ReadString('SYSTEM','MAJOR_MEDICAL','');
  if TryStrToInt(dday,days) then
    days := StrToInt(NullStrTo(trim(dday),'90'))
  else
    days := 90;
  pi_q := TADOQuery.Create(nil);
  pi_q.Connection := DM.ADOLink;
  try
    with pi_q do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.fee_code,a.item_no,opd_date,b.fee_name From Lab_Sche a,orderitem_basic b ');
      SQL.Add('Where Kind_No In (''2'', ''3'') And Opd_Date Between ' +Qt(RocDate(now-days,'')) + ' And '+ Qt(RocDate(now,'')) + 'And chr_No = ' + Qt(GetChrNo));
      SQL.Add(' and trim(a.fee_code)=trim(b.fee_code)');
      SQL.Add(' and trim(a.item_no)=trim(b.send_cd_2) and a.del_flag=''N'' and self_pay_flag=''N''');
      Open;
      dday := '';
      while not Eof do
      begin
        dday := dday +'�f�H�w�� ' + FieldbyName('opd_date').AsString + '�}�߹L'+#10#13+
                '�N�X        �W�� '+#10#13+
                FieldbyName('fee_code').AsString +' '+ FieldbyName('fee_name').AsString +#10#13+
                '�~�� : Yes'+#10#13+'���� : No'+#10#13;
                
        Next;
      end;
      if dday <> '' then
        if MessageDlg('���j��O�}�ߴ���'+#10#13+dday,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Result := true
        else
          Result := False;
    end;
  finally
    pi_q.Free;
  end;
end;

//ic function **********************************************************start
procedure TFrmOrder.SetICINFOR(percent: integer; meg: String);
begin
  with FrmInsertICInfor do
  begin
    Panel1.Caption := meg;
    ProgressBar1.Position := percent;
    if not FrmInsertICInfor.Showing then
      FrmInsertICInfor.Show
    else
      FrmInsertICInfor.Refresh;
  end;
end;

//ic function **********************************************************end
function TFrmOrder.ordermedbefor(medcode: string): string;
var
  Handle : THandle;
  myStr,myParamter,Str,Str1 : String;
  pi_q: TADOQuery;
begin
  //�ި���İ��O���d��
  Result := '';
  pi_q := TADOQuery.Create(nil);
  pi_q.Connection := DM.ADOLink;
  Str1 := '';
  str :=  SetSys.ReadString('SYSTEM','CAREATCODE','');
  if str <> '' then
  begin
    while not (trim(Str)='') do
    begin
      Str1 := Str1+ReturnId(Str)+';';
      Str := ReturnName(str);
    end;
  end;
  try
    pi_q.Close;
    pi_q.SQL.Clear;
    pi_q.SQL.Add('select * from med_basic where med_code='+qt(medcode)+' and atc_code in('+Qts(Str1)+')');
    pi_q.Open;
    if not pi_q.IsEmpty then
    begin
      if MessageDlg('�}�ߦ��Ļݳs�u���O���u�O�I��H�S�w������T�d�ߡv�����A'+#10#13+
         '�д��J"��ƤH���d"��"���O�d"�d�߯f�w�ĥv�A�s�u���O��?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

        myStr :=Setsys.ReadString('��L','�S�w������T','');
        myParamter := Setsys.ReadString('PARAMTERSYSTEM','�S�w������T','');
        comStrRep(mystr);
        comstrRep(myParamter);
        if myStr ='' then
        begin
          //showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
          Exit;
        end;
        try
          if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
            ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
        except
        end;
      end
      else
        Result := 'N';
    end;
  finally
    FreeAndNil(pi_q);
  end;
end;

procedure TFrmOrder.SpeedButton1Click(Sender: TObject);
var
  msg:string;
begin
  inherited;
  if MessageDlg('�d���{�ҡA�нT�{�d���B��ƤH���d�w�N��'+#10#13+
                'Yes : �}�l�{��'+#10#13+
                ' No : ���}',mtInformation,[mbYes, mbNo], 0) = mrYes then
  begin
    msg := '';
    msg := ic_HPCcheck;
    if msg <> '' then
      ShowMessage(msg);
  end;
end;

procedure TFrmOrder.MenuItem1Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).CopyToClipboard;
end;

procedure TFrmOrder.MenuItem2Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).CutToClipboard;
end;

procedure TFrmOrder.MenuItem3Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).PasteFromClipboard;
end;

function TFrmOrder.Mgmtctrl: boolean;
var
  myStr, myParamter, SQLSTRSAVE: string;
begin
  Result := true;
  myStr := '';
  myStr := Setsys.ReadString('OTHERSYSTEMLINK','CONTROLLED_DRUGS_PRINT','');
  myParamter := Setsys.ReadString('PARAMTER','CONTROLLED_DRUGS_PRINT','');
  comStrRep(mystr);
  comstrRep(myParamter);
  IF TRIM(myStr) <> '' THEN
  begin
    With Dm.QrySearch do
    begin
      SQLSTRSAVE := SetSql.ReadString('SYSTIME','CONTROLLED_DRUGS_PRINT','');
      SetParamter(SQLSTRSAVE,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(SQLSTRSAVE,'$EPDDATE$',Qt(GetEpdDate));
      SetParamter(SQLSTRSAVE,'$SHEETNO$',Qt(GetSHEET));
      Close;
      SQL.Clear;
      SQL.Add(SQLSTRSAVE);
      Open;
      while not Eof do
      begin
        SetParamter(myParamter,'$+SEQNO+$',trim(fieldbyname('seq_no').AsString));
        SetParamter(myParamter,'$+MEDCODE+$',trim(fieldbyname('med_code').AsString));
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
        Next;
      end;
    END;
  end;
end;

procedure TFrmOrder.N20Click(Sender: TObject);
var
  myStr, myParamter, SQLSTRSAVE: string;
begin
  inherited;
  myStr := '';
  myStr := Setsys.ReadString('OTHERSYSTEMLINK','CONTROLLED_DRUGS_PRINT','');
  myParamter := Setsys.ReadString('PARAMTER','CONTROLLED_DRUGS_PRINT','');
  comStrRep(mystr);
  comstrRep(myParamter);
  IF TRIM(myStr) <> '' THEN
  begin
    With Dm.QrySearch do
    begin
      SQLSTRSAVE := SetSql.ReadString('SYSTIME','CONTROLLED_DRUGS_PRINT_ALL','');
      SetParamter(SQLSTRSAVE,'$FEE_NO$',Qt(GetFeeNo));
      SetParamter(SQLSTRSAVE,'$EPDDATE$',Qt(GetEpdDate));
      //SetParamter(SQLSTRSAVE,'$SHEETNO$',Qt(GetSHEET));
      Close;
      SQL.Clear;
      SQL.Add(SQLSTRSAVE);
      Open;
      while not Eof do
      begin
        SetParamter(myParamter,'$+SEQNO+$',trim(fieldbyname('seq_no').AsString));
        SetParamter(myParamter,'$+MEDCODE+$',trim(fieldbyname('med_code').AsString));
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
        Next;
      end;
    END;
  end;
end;


procedure TFrmOrder.ExecJoin(Join_code:String);   //�s�a
begin
  if Trim(Join_code) <>'' then
  begin
    With DM.QryTemp do
    begin
      //����
      Close;
      SQL.Clear;
      SQL.Add('select a.*,b.FEE_NAME,b.UNIT from join_item a,orderitem_basic b ');
      SQL.Add(' Where a.join_code=' + Qt(Join_code));
      SQL.Add('   And a.order_type=''L''');
      SQL.Add('   And b.order_type=''L''');
      SQL.Add('   And a.fee_code=b.fee_code');
      SQL.Add('   And trim(a.send_cd_1)=trim(b.send_cd_1)');
      SQL.Add('   And trim(a.send_cd_2)=trim(b.send_cd_2)');
      SQL.Add('   And trim(a.send_cd_3)=trim(b.send_cd_3)');
      //SQL.SAVETOFILE('JOIN.TXT');
      open;
      while not Eof do
      begin
        SGLab.Cells[modifyType,SGLab.Rowcount -1] := 'N';
        SGLab.Cells[Seq,SGLab.Rowcount -1]     := '';
        SGLab.Cells[Del,SGLab.Rowcount -1]     := '';
        SGLab.Cells[C_Code,SGLab.Rowcount -1]  := Trim(fieldByName('Fee_CODE').AsString);
        SGLab.Cells[C_Order,SGLab.Rowcount -1] := Trim(fieldByName('Fee_NAME').AsString);
        SGLab.Cells[C_Qty,SGLab.Rowcount -1]   := Trim(FieldByName('UNIT_QTY').AsString);
        SGLab.Cells[C_Unit,SGLab.Rowcount -1]  := Trim(FieldByName('UNIT').AsString);
        SGLab.Cells[C_Cir,SGLab.Rowcount -1]   := Trim(FieldByName('CIR_CODE').AsString);
        SGLab.Cells[C_path,SGLab.Rowcount -1]  := Trim(FieldByName('Send_cd_2').AsString); //��g���� �������� send_cd_2
        SGLab.Cells[C_INS,SGLab.Rowcount -1]   := Trim(FieldByName('Self_pay_flag').AsString);
        SGLab.Cells[C_EMG,SGLab.Rowcount -1]   := Trim(FieldByName('URG_FLAG').AsString);
        SGLab.Cells[C_MEMO,SGLab.Rowcount -1]  := '';
        SGLab.Cells[C_Send,SGLab.Rowcount -1]  := Trim(FieldByName('send_cd_1').AsString); //send_cd_1
        SGLab.Cells[C_Kind,SGLab.Rowcount -1]  := 'L';                                     // ���綵��
        SGLab.Cells[C_2Send,SGLab.Rowcount -1] := Trim(FieldByName('send_cd_3').AsString);
        SGLab.Cells[C_no,SGLab.Rowcount -1]    := Trim(FieldByName('send_cd_3').AsString);
        SGLab.Cells[C_Join,SGLab.Rowcount -1]  := Joinno;

        SGLab.RowCount := SGLab.RowCount +1 ;
        SGLab.Row := SGLab.Row +1;
        Next;
      end;
      //�ˬd
      Close;
      SQL.Clear;
      SQL.Add('select a.*,b.UNIT from join_item a,orderitem_basic b ');
      SQL.Add(' Where a.join_code=' + Qt(Join_code));
      SQL.Add('   And a.order_type=''E''');
      SQL.Add('   And b.order_type=''E''');
      SQL.Add('   And a.fee_code=b.fee_code');
      SQL.Add('   And trim(a.send_cd_1)=trim(b.send_cd_1)');
      SQL.Add('   And trim(a.send_cd_2)=trim(b.send_cd_2)');
      SQL.Add('   And trim(a.send_cd_3)=trim(b.send_cd_3)');
      open;
      While not Eof do
      begin
        SGChk.Cells[modifyType,SGChk.Rowcount -1] := 'N';
        SGChk.Cells[Seq,SGChk.Rowcount -1]        := '';
        SGChk.Cells[Del,SGChk.Rowcount -1]        := '';
        SGChk.Cells[C_Code,SGChk.Rowcount -1]     := Trim(FieldByName('fee_CODE').AsString);
        SGChk.Cells[C_Order,SGChk.Rowcount -1]    := Trim(FieldByName('fee_name').AsString);
        SGChk.Cells[C_Qty,SGChk.Rowcount -1]      := Trim(FieldByName('UNIT_QTY').AsString);
        SGChk.Cells[C_Unit,SGChk.Rowcount -1]     := Trim(FieldByName('UNIT').AsString);
        SGChk.Cells[C_Cir,SGChk.Rowcount -1]      := Trim(FieldByName('CIR_CODE').AsString);
        SGChk.Cells[C_path,SGChk.Rowcount -1]     := Trim(FieldByName('Send_cd_1').AsString);//�ˬd��
        SGChk.Cells[C_INS,SGChk.Rowcount -1]      := Trim(FieldByName('Self_pay_flag').AsString);
        SGChk.Cells[C_EMG,SGChk.Rowcount -1]      := NullStrTo(Trim(FieldByName('Urg_flag').AsString),'N');
        SGChk.Cells[C_MEMO,SGChk.Rowcount -1]     := '';
        SGChk.Cells[C_Send,SGChk.Rowcount -1]     := Trim(FieldByName('Send_cd_2').AsString);
        SGChk.Cells[C_Kind,SGChk.Rowcount -1]     := 'C';  // �ˬd����
        SGChk.Cells[C_2Send,SGChk.Rowcount -1]    := Trim(FieldByName('Send_cd_3').AsString);
        SGChk.Cells[C_no,SGChk.Rowcount -1]       := Trim(FieldByName('Send_cd_3').AsString);
        SGChk.Cells[C_Join,SGChk.Rowcount -1]     := Joinno;

        SGChk.RowCount := SGChk.RowCount +1 ;
        Next;
      end;
      //��g
      Close;
      SQL.Clear;
      SQL.Add('select a.*,b.UNIT,b.position_o from join_item a,orderitem_basic b ');
      SQL.Add(' Where a.join_code=' + Qt(Join_code));
      SQL.Add('   And substr(a.order_type,1,1)= ''X''');
      SQL.Add('   And substr(b.order_type,1,1)= ''X''');
      SQL.Add('   And a.fee_code=b.fee_code');
      SQL.Add('   And trim(a.send_cd_1)=trim(b.send_cd_1)');
      SQL.Add('   And trim(a.send_cd_2)=trim(b.send_cd_2)');
      SQL.Add('   And trim(a.send_cd_3)=trim(b.send_cd_3)');
      open;
      While not Eof do
      begin
        SGXRay.Cells[modifyType,SGXRay.Rowcount -1] := 'N';
        SGXRay.Cells[Seq,SGXRay.Rowcount -1]        := '';
        SGXRay.Cells[Del,SGXRay.Rowcount -1]        := '';
        SGXRay.Cells[C_Code,SGXRay.Rowcount -1]     := trim(fieldByName('Fee_CODE').AsString);
        SGXRay.Cells[C_Order,SGXRay.Rowcount -1]    := Trim(FieldByName('Fee_Name').AsString);
        SGXRay.Cells[C_Qty,SGXRay.Rowcount -1]      := Trim(FieldByName('UNIT_QTY').AsString);
        SGXRay.Cells[C_Unit,SGXRay.Rowcount -1]     := Trim(FieldByName('UNIT').AsString);
        SGXRay.Cells[C_Cir,SGXRay.Rowcount -1]      := Trim(FieldByName('CIR_CODE').AsString);
        SGXRay.Cells[C_path,SGXRay.Rowcount -1]     := Trim(FieldByName('position_o').AsString);
        SGXRay.Cells[C_NO,SGXRay.Rowcount -1]       := Trim(FieldByName('Send_cd_1').AsString);
        SGXRay.Cells[C_INS,SGXRay.Rowcount -1]      := Trim(FieldByName('Self_pay_flag').AsString);
        SGXRay.Cells[C_EMG,SGXRay.Rowcount -1]      := Trim(FieldByName('Urg_flag').AsString);
        SGXRay.Cells[C_MEMO,SGXRay.Rowcount -1]     := '';
        SGXRay.Cells[C_Send,SGXRay.Rowcount -1]     := Trim(FieldByName('Send_cd_2').AsString);
        SGXRay.Cells[C_Kind,SGXRay.Rowcount -1]     := Trim(FieldByName('Order_Type').AsString);
        SGXRay.Cells[C_Join,SGXRay.Rowcount -1]     := Joinno;

        SGXRay.RowCount := SGXRay.RowCount +1 ;
        SGXRay.Row := SGXRay.Row +1;
        Next;
      end;
      Close;
    end;
  end;
end;

procedure TFrmOrder.Clineguide1Click(Sender: TObject);
var
  Path : String;
begin
  inherited;
  Path := SetSys.ReadString('OTHERSYSTEMLINK','Clin-eguide','');
  if trim(path) <> '' then
  begin
    SetParamter(Path,'$+CLIN+$',copy(trim(SGMed.Cells[M_hint,SGMed.row]),1,pos(#13,trim(SGMed.Cells[M_hint,SGMed.row]))));
    ShellExecute(Handle, 'open',PChar(Path),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TFrmOrder.MDConsult1Click(Sender: TObject);
var
  Path : String;
begin
  inherited;
  Path := SetSys.ReadString('OTHERSYSTEMLINK','MD Consult','');
  if trim(path) <> '' then
  begin
    SetParamter(Path,'$+DMSTR+$',copy(trim(SGMed.Cells[M_hint,SGMed.row]),1,pos(#13,trim(SGMed.Cells[M_hint,SGMed.row]))));
    ShellExecute(Handle, 'open',PChar(Path),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TFrmOrder.deljoinitem(join_no: string);
  procedure SGSort(Sender: TObject;row:integer);
  var
    i ,j,l: Integer;
  begin
    l := 1;
    for i := 0 to TStringGrid(Sender).RowCount -1 do
    begin
      if Trim(TStringGrid(Sender).Cells[row,i]) ='' then
      begin
        for J := I+1 to TStringGrid(Sender).RowCount - 1 do
        begin
          if Trim(TStringGrid(Sender).Cells[row,j]) <>'' then
          begin
            TStringGrid(Sender).Rows[I] := TStringGrid(Sender).Rows[J];
            inc(l);
            TStringGrid(Sender).Rows[J].Clear;
            break;
          end;
        end;
      end
      else
        inc(l);
    end;
    TStringGrid(Sender).RowCount := l;
  end;
var
  irow,i,j : integer;
  hav : string;
  sgtmp: TStringGrid;
begin
  hav := 'N';
  for j := 0 to 5 do
  begin
    case j of
      0:   // Mrtl
       begin
         sgtmp := SGMtrl;
         irow   := L_Join;
       end;
      1:   //�B�m
       begin
         sgtmp := SGFee;
         irow   := F_Join;
       end;
      2:   //����
       begin
         sgtmp := SGLab;
         irow   := C_Join;
       end;
      3:   //�ī~
       begin
         sgtmp := SGMed;
         irow   := M_Join;
       end;
      4:   //��g
       begin
         sgtmp := SGXRay;
         irow   := C_Join;
       end;
      5:   //����
       begin
         sgtmp := SGChk;
         irow   := C_Join;
       end;
    end;

    for i := 0 to sgtmp.RowCount - 1 do
    begin
      if trim(sgtmp.Cells[irow,i]) = trim(join_no) then
        if trim(sgtmp.Cells[modifytype,i])='O' then
        begin
          if trim(sgtmp.Cells[del,i])='X' then
            sgtmp.Cells[del,i] := ''
          else
            sgtmp.Cells[del,i] := 'X';
        end
        else
          sgtmp.Rows[i].Clear;
    end;
    SGSort(sgtmp,L_code);
  end;
end;

procedure TFrmOrder.BitBtn5Click(Sender: TObject);
begin
  inherited;
   //
end;

procedure TFrmOrder.BitBtn17Click(Sender: TObject);
var
  Path : String;
  i : integer;
begin
  inherited;

  Path := SetSys.ReadString('OTHERSYSTEMLINK','PATHOLOGY','');
  comStrRep(Path);
  if trim(path) <> '' then //�}�үf�z�}��e��
  begin
    if trim(GetVsCode) = '' then
    begin
      ShowMessage('�п�J�D�v��v');
      exit;
    end;
    if WinExecAndWait32(Path,SW_SHOWNORMAL) >= 0 then
    begin
      //�M�����
      for i := 0 to SGPath.RowCount -1 do
        SGPath.Rows[i].Clear;
      SGPath.RowCount := SGPath.FixedRows +1;

      //Ū���f�z�}����
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select a.*,b.item_name as fee_name from opd_path a join pathology_basic b on a.item_no=b.item_no where fee_no='+Qt(GetFeeNo)+
              ' and ( nvl(trim(seq_no2),''0'')=''0'' or ( del_flag=''Y'' and nvl(trim(seq_no2),''0'')<>''0'' and dc_sheet_no is null))');
      DM.QryTemp.Open;
      while not DM.QryTemp.Eof do
      begin
        Path := 'Y';
        if DM.QryTemp.FieldByName('del_flag').AsString = 'Y' then
          SGPath.Cells[Del, SGPath.Row] := 'X';
        SGPath.Cells[modifytype, SGPath.Row] := 'N';
        SGPath.Cells[pth_code, SGPath.Row]   := DM.QryTemp.FieldByName('fee_code').AsString; //  �O�ΥN�X
        SGPath.Cells[pth_order, SGPath.Row]  := DM.QryTemp.FieldByName('fee_name').AsString; //  �O�ΦW��
        SGPath.Cells[Pth_Qty, SGPath.Row]    := DM.QryTemp.FieldByName('qty_num').AsString;
        SGPath.Cells[Pth_item, SGPath.Row]   := DM.QryTemp.FieldByName('item_no').AsString;
        SGPath.Cells[Pth_seqno, SGPath.Row]  := DM.QryTemp.FieldByName('seq_no').AsString;
        SGPath.Cells[Pth_seqno2, SGPath.Row] := DM.QryTemp.FieldByName('seq_no2').AsString;
        if DM.QryTemp.FieldByName('self_pay_flag').AsString = 'Y' then
          SGPath.Cells[Pth_INS, SGPath.Row]    := 'N'
        else
          SGPath.Cells[Pth_INS, SGPath.Row]    := 'Y';
        SGPath.Cells[Pth_EMG, SGPath.Row]    := DM.QryTemp.FieldByName('urg_flag').AsString;
        SGPath.Cells[Pth_MEMO, SGPath.Row]   := '';
        SGPath.Cells[Pth_CONFSTATUS, SGPath.Row] := DM.QryTemp.FieldByName('conf_flag').AsString;
        SGPath.Cells[pth_no, SGPath.Row] := DM.QryTemp.FieldByName('path_no').AsString;
        if SGPath.Row = (SGPath.RowCount - 1) then
        begin
          SGPath.RowCount := SGPath.RowCount + 1;
        end;
        SGPath.Row := SGPath.Row+1;
        DM.QryTemp.Next;
      end;
      if path = 'Y' then
        ShowMessage('�w�}�߯f�z����A�Ч�����E��O�y�Ȧs�z�Ρy���E�z�~�|�p��');
    end;
  end
  else
    ShowMessage('�\�ॼ�}��ϥ�(PATHOLOGY)');
end;

function TFrmOrder.MedUseCtrl(i: Integer; var Mes: string): Boolean;
begin
  Result := True;
  with DM.Med_Check do
  begin
    Close;
    Parameters.Clear;
    ProcedureName := 'pk_ipd_order_ud.p_fee_use_ctrl';

    Parameters.CreateParameter('as_fee_no', ftString, pdInput, 4000, Null); // �ǤJ��
    Parameters.CreateParameter('as_medcode', ftString, pdInput, 4000, Null);
    Parameters.CreateParameter('doccode', ftString, pdInput, 4000, Null);
    Parameters.CreateParameter('self1', ftString, pdInput, 4000, Null);
    Parameters.CreateParameter('arrest', ftString, pdReturnValue, 1, Null); // �^�ǭ�
    Parameters.CreateParameter('message', ftString, pdReturnValue, 4000, Null); // �^�ǭ�

    Parameters.parambyname('as_fee_no').Value := GetfeeNo;
    Parameters.parambyname('as_medcode').Value := Trim(SGMed.Cells[M_CODE, i]);
    Parameters.parambyname('doccode').Value := getUserId;
    Parameters.parambyname('self1').Value := Trim(SGMed.Cells[M_INS, i]);

    try
      ExecProc;
    except
      ShowMessage('��E��O�B�z"�S���ī~�v���ޱ��ˮ�"�{�Ǯɵo�Ϳ��~');
      Result := False;
      Exit;
    end;

    if Trim(Parameters.parambyname('arrest').Value) <> 'N' then
    begin
      if not varisnull(Parameters.parambyname('message').Value) then
        Mes := Mes + '��' + IntToStr(i + 1) + '���Ī� [' + Trim(SGMed.Cells[M_Name, i]) + ']:' + Trim(Parameters.parambyname('message').Value) + #13;
      Result := False;
    end
    else
      Result := True;
  end;
end;

function TFrmOrder.checkexper(itemno: string): Boolean;
var
  tqry: TADOQuery;
begin
  Result := False;
  if trim(itemno) <> '' then
  begin
    tqry := TADOQuery.Create(Self);
    tqry.Connection := DM.ADOLink;
    tqry.Close;
    tqry.SQL.Clear;
    tqry.SQL.Add('select * from opd_exper where chr_no='+Qt(GetChrNo)+' and opd_date='+Qt(GetEpdDate)+' and item_no='+Qt(itemno)+' and del_flag=''N''');
    tqry.Open;
    if not tqry.IsEmpty then
      Result := True;
  end;
end;

procedure TFrmOrder.PageControl2DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  str :AnsiString ;
  tmpRect :TRect;
  text :TSize;
  x,y,indexno : integer;
begin
  inherited;
  indexno := TabIndex;
  if indexno > 8 then
    inc(indexno);
  if (((PageControl2.Pages[indexno].PageIndex >= 2) and (PageControl2.Pages[indexno].PageIndex <= 7)) or (PageControl2.Pages[indexno].PageIndex = 11))  then
  begin
    if  TStringGrid(frmOrder.FindComponent(ReturnName(PageControl2.Pages[indexno].Hint))).RowCount-1 > 0 then
      str := ReTurnId(PageControl2.Pages[indexno].Hint) +IntToStr(TStringGrid(frmOrder.FindComponent(ReturnName(PageControl2.Pages[indexno].Hint))).RowCount-1)
    else
      str := ReTurnId(PageControl2.Pages[indexno].Hint);
  end
  else
  begin
    str := ReTurnId(PageControl2.Pages[indexno].Hint);
  end;
  //str := (TPageControl(Control)).Pages[indexno].Caption;
  text := Control.Canvas.TextExtent(str);
  Control.Canvas.FillRect(Rect);
  x := ((Rect.Right - Rect.Left) - text.cx) div 2;
  y := (((Rect.Bottom - Rect.Top) - text.cy) div 2) + 1;
  tmpRect:=Rect;
  if(Active) then
    OffsetRect(tmpRect, 1, 1);
  Control.Canvas.TextOut(tmpRect.Left + x, tmpRect.Top + y, str);

end;

procedure TFrmOrder.SGOrderExit(Sender: TObject);
begin
  inherited;
  if trim(SGOrder.Cells[O_Name,sgorder.rowcount-1]) <> '' then
    SGOrder.RowCount:= SGOrder.RowCount+1;
end;

function TFrmOrder.AllMedChk(medcode, ATC_CODE, InOut: string):Boolean;
VAR
  S: STRING;
  findrow, i: integer;
begin
  Result := True;
  //ami�����ˮ�

  findrow := -1;
  S := SetSys.ReadString('SYSTEM','AMIDRUG','');
  if InOut = 'Del' then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Text := 'select atc_code from orderitem_basic where fee_code='+Qt(medcode);
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      IF strComparing( S, trim(DM.QryTemp.fieldbyname('atc_code').AsString) ) THEN
      begin
        findrow := SGOrder.Cols[O_Name].IndexOf('�f�H�L�h24�p�ɤ������ϥ�Phosphodiesterase type 5 inhibitors.');
        if findrow > -1 then
        begin
          SGOrder.Row := findrow;
          for i := findrow to SGOrder.RowCount - 1 do
            SGOrder.Rows[i] := SGOrder.Rows[i+1];
          SGOrder.RowCount  := SGOrder.RowCount - 1;
          if SGOrder.Cells[modifyType,SGOrder.RowCount-1] <>'' then
            SGOrder.RowCount := SGOrder.RowCount + 1;
        end;
      end;
    end;
  end
  else if InOut = 'ADD' then
  begin
    IF strComparing(S,ATC_CODE) THEN
      if MessageDlg('�и߰ݯf�H�L�h24�p�ɤ��O�_���g�ϥ�Phosphodiesterase type 5 inhibitors,�ҦpViagra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Result := False;
      end
      else
      begin
        findrow := SGOrder.Cols[O_Name].IndexOf('�f�H�L�h24�p�ɤ������ϥ�Phosphodiesterase inhibitors.');
        if findrow = -1 then
          insertordertxt('','�f�H�L�h24�p�ɤ������ϥ�Phosphodiesterase type 5 inhibitors.');
      end;
  end;
end;

procedure TFrmOrder.N47Click(Sender: TObject);
var
  i : integer;
  OpenTransfer,myStr,myParamter : string;
begin
  inherited;
  try
    //1061013 shh ITe 11138 modify �s�W�����W�ߪ�
    OpenTransfer := UpperCase(SetSys.ReadString('SYSTEM','TRANSFERSELF',''));
    if UpperCase(OpenTransfer) ='TRUE' then
    begin
      myStr :=Setsys.ReadString('OTHERSYSTEMLINK','�����ɳ�','');
      myParamter := Setsys.ReadString('PARAMTER','�����ɳ�','');
      comStrRep(mystr);
      comstrRep(myParamter);
      if myStr <>'' then
        begin
        try
          WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
        except
          Exit;
        end;
      end;
    end
    else
    begin
      //��{���}�l

      //��Z��
      if not Assigned(FrmTransfernote) then
        FrmTransfernote := TFrmTransfernote.Create(Self);
      FrmTransfernote.Lblage.Caption := Trim(edtAge.Text);
      FrmTransfernote.infrom := '';//��|�w��
      FOR I := 1 TO 10 DO
      BEGIN
        IF (TRIM(SGIcd.Cells[0,I]) <> '') AND (TRIM(SGIcd.Cells[1,I]) <> '') THEN
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST + TRIM(SGIcd.Cells[0,I])+'_'+ TRIM(SGIcd.Cells[1,I])+';';
      END;

      //Assessment
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select text from epd_record where fee_no = '+qt(GetFeeNo)+' AND order_date= '+Qt(GetEpdDate)+' and kind=''O_HISTORY'' order by seq_no');
      DM.QryTemp.Open;
      while not DM.QryTemp.Eof do
      begin
        if trim(DM.QryTemp.FieldByName('text').AsString) <> '' then
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString));
        DM.QryTemp.Next;
      end;
      for i := 0 to rheHist.Lines.Count-1 do
      begin
        if trim(rheHist.Lines.Strings[i])<> '' then
          FrmTransfernote.ICD9LIST := FrmTransfernote.ICD9LIST +';'+ rheHist.Lines.Strings[i];
      end;

      FrmTransfernote.ShowModal;
      FreeAndNil(FrmTransfernote);
      //��{������

    end;
    //END �s�W�����W�ߪ�

  except
    FreeAndNil(FrmTransfernote);
  end;
end;

function TFrmOrder.chckipdroom(fee_no: string): Boolean;
begin
  Result := True;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT BED_NO FROM IPD_BASIC WHERE FEE_NO =(SELECT FEE_NO_I FROM BESP_IPD ');
  DM.QryTemp.SQL.Add('WHERE BESP_IPD.FEE_NO ='+Qt(fee_no)+' and Rownum = 1)' );
  DM.QryTemp.Open;
  if DM.QryTemp.IsEmpty then
    Result := false;
end;

procedure TFrmOrder.ISS1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmISS) then
    FrmISS := TFrmISS.Create(Self);
  FrmISS.ShowModal;
end;

procedure TFrmOrder.DC1Click(Sender: TObject);
VAR
  SQL: STRING;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult, myParamter : STRING;
begin
  inherited;
  //�P�_�O�_�w��������
  sql := MedDC(1);
  SetParamter(sql,'$FEE_NO$',  Qt(GetFeeNo));
  SetParamter(sql,'$SHEET_NO$',Qt(StringGrid3.Cells[13,StringGrid3.ROW]));//sheet_no
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  DM.QrySearch.SQL.Text := sql;
  DM.QrySearch.Open;
  if DM.QrySearch.FieldByName('qty').AsInteger <= 0 then
  begin
    ShowMessage('���Ĥw�������槹��!!�L�kDC');
  end
  else
  begin
    //update epd_all_order dc_date...
    sql := MedDC(0);
    SetParamter(sql,'$DC_DATE$', QT(ROCDate(Now,'')));
    SetParamter(sql,'$DC_TIME$', QT(ROCTime(Now,'')));
    SetParamter(sql,'$DC_SHEET_NO$',Qt(StringGrid3.Cells[13,StringGrid3.ROW]));//sheet_no
    SetParamter(sql,'$DC_OPER$', Qt(getUserId));
    SetParamter(sql,'$FEE_NO$',  Qt(GetFeeNo));
    SetParamter(sql,'$SHEET_NO$',Qt(StringGrid3.Cells[13,StringGrid3.ROW]));//sheet_no
    DM.ADOLink.BeginTrans;
    try
      DM.QryUpdate.Close;
      DM.QryUpdate.SQL.Clear;
      DM.QryUpdate.SQL.Text := SQL;
      DM.QryUpdate.ExecSQL;

      //update e_ud_order nus_conf
      Paramter := TStringList.Create;
      PType    := TStringList.Create;
      RType    := TStringList.Create;
      PData    := TStringList.Create;
      SpName   := getSpSql(12,Paramter,PType,RType);
      PData.Add(getFeeNo);
      PData.Add(StringGrid3.Cells[14,StringGrid3.ROW]);//As_Seq
      PData.Add(StringGrid3.Cells[13,StringGrid3.ROW]);//As_sheet_no
      ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
      Paramter.Free;
      RType.Free;
      PType.Free;
      PData.Free;
      if ReturnID(ExeSPResult) = 'N' then
      BEGIN
        DM.ADOLink.RollbackTrans;
        MessageDlg('�g�J����('+SpName+')���D:'+ReturnName(ExeSPResult),mtWarning,[mbOk],0);
        exit;
      END;
      DM.ADOLink.CommitTrans;

    except
      DM.ADOLink.RollbackTrans;
    end;
  end;
end;

procedure TFrmOrder.ChkBOutmedClick(Sender: TObject);
begin
  inherited;
  ShowMessage(SGMed.Cells[M_outmed,sgmed.row]);
end;

procedure TFrmOrder.N48Click(Sender: TObject);
var
  Handle : THandle;
  myStr : String;
begin
  inherited;
  myStr :=Setsys.ReadString('WEB','CARERECORDER','');
  comStrRep(mystr);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;
  try
    if winexec(PChar(PChar(myStr)),SW_SHOWNORMAL) < 31 then
      ShellExecute(Handle,'open',PChar(myStr),NIL,nil,SW_SHOWNORMAL);
  except
  end;
end;

procedure TFrmOrder.CMBoxDateRecordVIChange(Sender: TObject);
begin
  inherited;
  CmBid.ItemIndex := CMBoxDateRecordVI.ItemIndex;
  //�M�����
  MEDTBT.Text := '';
  MDETHR.Text := '';
  MEDTBR.Text := '';
  MEDTBPH.Text := '';
  MEDTBS.Text := '';
  MEdtPAIN.Text := '';
  MEDTSPO2.Text := '';
  EdtE.text := '';
  EdtV.text := '';
  EdtM.text := '';
  VITALSIGNSHOWDATA;
end;

procedure TFrmOrder.VITALSIGNSHOWDATA;
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

    while not DM.QryTemp.Eof do
    begin
      if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_G' then
        EdtE.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_C' then
        EdtV.Text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'EVM_S' then
        EdtM.Text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BR' then
        MEDTBR.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BS' then
        MEDTBS.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'SPO2' then
        MEDTSPO2.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'HR' then
        MDETHR.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BT' then
      begin
        if trim(MEDTBT.Text) <> '' then
          MEDTBT.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)+ '.' +MEDTBT.text
        else
          MEDTBT.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BT2' then
      begin
        if trim(MEDTBT.Text) <> '' then
          MEDTBT.text := MEDTBT.text + '.' + trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
        else
          MEDTBT.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BPH' then
      begin
        if trim(MEDTBPH.Text) <> '' then
          MEDTBPH.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString) + '/' + MEDTBPH.text
        else
          MEDTBPH.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'BPL' then
      begin
        if trim(MEDTBPH.Text) <> '' then
          MEDTBPH.text := MEDTBPH.text+'/'+trim(DM.QryTemp.FieldByName('VS_RECORD').AsString)
        else
          MEDTBPH.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);
      end
      else if trim(DM.QryTemp.FieldByName('VS_ITEM').AsString) = 'PAIN' then
        MEdtPAIN.text := trim(DM.QryTemp.FieldByName('VS_RECORD').AsString);

      DM.QryTemp.Next;
    end;
  end;
end;

procedure TFrmOrder.N49Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPreliminaryReport) then
    FrmPreliminaryReport := TFrmPreliminaryReport.Create(Self);
  FrmPreliminaryReport.prelage :=  edtAge.Text;
  FrmPreliminaryReport.ShowModal;
end;

//icd10
function TFrmOrder.InsertIcd10(Icd_Code: string): Boolean;
var
  i,j: integer;
  q_str: string;
  Qrys: TADOQuery;
  SQLs: TStrings;
begin
  if icd_code <> '' then
  begin
    Result := True;
    for i := 1 to 11 do
    begin
      if (SGIcd10.Cells[0, i] <> Icd_Code) then
      begin
        if (SGIcd10.Cells[0, i] = '') then
        begin
          SQLs := TStringList.Create;
          Qrys := TADOQuery.Create(Self);
          try
            Qrys.Connection := DM.ADOLink;
            Qrys.SQL.Clear;
            q_str := sqlstr(34);
            SetParamter(q_str, '$IDC_CODE$', qt(trim(UPPERCASE(Icd_Code))) );
            Qrys.SQL.Text := q_str;
            Qrys.Open;
            if not Qrys.IsEmpty then
            begin
              //���w��Ū�row
              for j := 1 to 11 do
              begin
                if ((trim(SGIcd10.Cells[0, j]) = '') or (trim(SGIcd10.Cells[1, j]) = '')) then
                begin
                  SGIcd10.Row := j;
                  Break;
                end;
              end;
              //�P�_�O�_���~�]�X 20151218
              if SGIcd10.Row = 1 then
                if ((UpperCase(copy(Qrys.FieldByName('ICD9_CODE').AsString,1,1)) = 'V') or
                    (UpperCase(copy(Qrys.FieldByName('ICD9_CODE').AsString,1,1)) = 'W') or
                    (UpperCase(copy(Qrys.FieldByName('ICD9_CODE').AsString,1,1)) = 'X') or
                    (UpperCase(copy(Qrys.FieldByName('ICD9_CODE').AsString,1,1)) = 'Y')) then
                begin
                  ShowMessage('���X���~�]�X���ର�D�E�_!');
                  SGIcd10.Rows[SGIcd10.Row].Clear;
                  exit;
                end;
              SGIcd10.Cells[0, SGIcd10.Row] := Qrys.FieldByName('ICD9_CODE').AsString;
              SGIcd10.Cells[1, SGIcd10.Row] := Qrys.FieldByName('ENG_SIMP_DESC').AsString;
              SGIcd10.Cells[2, SGIcd10.Row] := Qrys.FieldByName('CHN_SIMP_DESC').AsString;
              SGIcd10.Cells[3, SGIcd10.Row] := Qrys.FieldByName('slow_flag').AsString;
              SGIcd10.Cells[4, SGIcd10.Row] := Qrys.FieldByName('first_flag').AsString;
              SGIcd10.Cells[5, SGIcd10.Row] := Qrys.FieldByName('CHN_FULL_DESC').AsString;
              SGIcd10.Cells[6, SGIcd10.Row] := Qrys.FieldByName('ENG_FULL_DESC').AsString;
              SGIcd10.Cells[7, SGIcd10.Row] := trim(Qrys.FieldByName('icd9toicd10').AsString);
              SGIcd10.Cells[8, SGIcd10.Row] := Qrys.FieldByName('choose_flag').AsString;
              if SGIcd10.Row < (SGIcd10.RowCount - 1) then
              begin
                SGIcd10.Row := SGIcd10.Row + 1;
              end;
              //showt�ǬV�f�q��=======================SELECT count(*) FROM icd9_basic WHERE icd9_code = :data AND inf_flag <> 'N'
              if Qrys.FieldByName('inf_flag').AsString <> 'N' then
                If MessageDlg('�ǬV�f��1��~5���e�f�X �O�_�q��?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                  N37Click(N37);
                end;
            end;

          finally
            FreeAndNil(Qrys);
          end;
          break;
        end;
      end
      else
      begin
        MessageDlg('��' + Icd_Code + '�E�_�X�w���ƶ}�ߡI', mtWarning, [mbOk], 0);
        result := false;
        break;
      end;
    end;
  end;
end;

procedure TFrmOrder.DBText41Click(Sender: TObject);
var
  i,j: integer;
begin
  inherited;
  if Trim(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString) <> '' then
  begin
    j := 0;
    for i := 1 to SGIcd10.RowCount - 1 do
    begin
      if SGIcd10.Cells[0, i] <> '' then
        if DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString = SGIcd10.Cells[0, i] then
        begin
          inc(j);
          if j > 1 then
          begin
            ShowMessage('��' + DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString + '�E�_�X�w���ƶ}�ߡI');
            SetPanel(False, PnlICD10);
            SGIcd10.Cells[0, SGIcd10.Row] := '';
            SGIcd10.SetFocus;
            Exit;
          end;
        end;
    end;
    //�P�_�O�_���~�]�X 20151218
    if SGIcd10.Row = 1 then
      if ((UpperCase(copy(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,1,1)) = 'V') or
          (UpperCase(copy(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,1,1)) = 'W') or
          (UpperCase(copy(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,1,1)) = 'X') or
          (UpperCase(copy(DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,1,1)) = 'Y')) then
      begin
        ShowMessage('���X���~�]�X���ର�D�E�_!');
        SGIcd10.Rows[SGIcd10.Row].Clear;
        exit;
      end;

    SGIcd10.Cells[0, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString;
    SGIcd10.Cells[1, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_SIMP_DESC').AsString;
    SGIcd10.Cells[2, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString;
    SGIcd10.Cells[3, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('slow_flag').AsString;
    SGIcd10.Cells[4, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('first_flag').AsString;
    SGIcd10.Cells[5, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_FULL_DESC').AsString;
    SGIcd10.Cells[6, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_FULL_DESC').AsString;
    SGIcd10.Cells[7, SGIcd10.Row] := trim(DBCICD10.DataSource.DataSet.FieldByName('icd9toicd10').AsString);
    SGIcd10.Cells[8, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('choose_flag').AsString;

    //showt�ǬV�f�q��=======================SELECT count(*) FROM icd9_basic WHERE icd9_code = :data AND inf_flag <> 'N'
    if DBCICD10.DataSource.DataSet.FieldByName('inf_flag').AsString <> 'N' then
      If MessageDlg('�ǬV�f��1��~5���e�f�X �O�_�q��?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        N37Click(N37);
      end;

    if SGIcd10.Row < (SGIcd10.RowCount - 1) then
    begin
      SGIcd10.Row := SGIcd10.Row + 1;
    end;


  end
  else
    SGIcd10.Rows[SGIcd10.Row].Clear;
  SetPanel(False, PnlICD10);
end;

procedure TFrmOrder.DSIcdDataChange(Sender: TObject; Field: TField);
VAR
  TMPSQL,STQRY: STRING;
begin
  inherited;
  STQRY := sqlstr(11);
  TMPSQL := sqlstr(1);
  SetParamter(STQRY, '$IDC9_CODE$', qt(trim(DSIcd.DataSet.FIELDBYNAME('ICD9_CODE').AsString)));
  SetParamter(STQRY, '$DEPT_CODE$', qt(trim(GetUserDept)));
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Clear;
  DM.QrySubSearch.SQL.Text := STQRY;
  DM.QrySubSearch.Open;
  if DM.QrySubSearch.FieldByName('ROWCT').AsInteger > 0 then
    SetParamter(TMPSQL, '$DEPT_CODE$', 'and dept_code='+qt(trim(GetUserDept)))
  else
    SetParamter(TMPSQL, '$DEPT_CODE$', '');

  SetParamter(TMPSQL, '$IDC9_CODE$', qt(trim(DSIcd.DataSet.FIELDBYNAME('ICD9_CODE').AsString)));
  DM.qryICD10.Close;
  DM.qryICD10.SQL.Clear;
  DM.qryICD10.SQL.Text := TMPSQL;
  DM.qryICD10.Open;
  if NOT DM.qryICD10.IsEmpty then
  begin
    DSICD10.DataSet := DM.qryICD10;
    //PnlICD10.Top := (pnlHintGrid.top-(PnlICD10.Height+5));
    PnlICD10.Height := 80;
    DBCICD10.RowCount := 2;
    PnlICD10.Align := alBottom;
    SetPanel(True,PnlICD10);
    DBCICD10.Enabled := False;
  end;
end;


procedure TFrmOrder.ToolButton2Click(Sender: TObject);
var
  mystr, myParamter, OpenTransfer : string;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TToolButton(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TToolButton(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    showMessage(NullStrTo(gsSysMsg,'���\�ण�}��ϥΡA�p���ðݽЬ���T�Ǹ߰ݡC'));
    Exit;
  end;

  try
    WinExecAndWait32(myStr+' '+myParamter,SW_SHOWNORMAL);
  except
    Exit;
  end;
end;

procedure TFrmOrder.IVPanelDblClick(Sender: TObject);
begin
  inherited;
  IVPanel.Visible := False;
end;

procedure TFrmOrder.IVPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  Application.HideHint;
end;

procedure TFrmOrder.EdtMedQtyExit(Sender: TObject);
var
  key: Word;
begin
  inherited;
  MIXComboExit(Sender);
  EdtMixPackExit(EdtMixPack);
end;

procedure TFrmOrder.EdtMedQtyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if SGMed.Cells[modifytype, SGMed.Row] = 'N' then
    SGMed.Cells[M_Qty, SGMed.Row] := Trim(EdtMedQty.Text);
  LbMedPack.Caption := FloatToStr(StrToFloat(NullStrto(Trim(EdtMedQty.Text), '1')) / StrToFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')) * StrToFloat(NullStrto(Trim(SGMix.Cells[24, 0]), '0')));
  EdtPack.Text := Floattostr(StrToFloat(Nullstrto(LbMixpack.Caption, '0')) + StrToFloat(Nullstrto(LbMedpack.Caption, '0')));

  if GBoxIVD.Visible then
    EdtIVDTimeKeyUp(EdtIVDTime, key, [])
  else if GBoxCIVD.Visible then
    EdtSpeedMCGKeyUp(EdtSpeedMCG, key, []);
end;

procedure TFrmOrder.BtndataClick(Sender: TObject);
begin
  inherited;
  MemoPanel.Visible := True;
  MemoPanel.Left := IVPanel.Left;
  MemoPanel.Top := IVPanel.Top + Panel25.Height + 2;
  MemoPanel.Width := IVPanel.Width;
  MemoPanel.BringToFront;
  Memo1.Lines.Text := SGMix.Cells[22, 0];
  Memo1.Lines.Text := Memo1.Lines.Text + #13#10 + '----------------';
  if Uppercase(Trim(SGMix.Cells[5, 0])) = 'CIVD' then
  begin
    if (Trim(SGMix.Cells[5, 0]) = '0') then
      Memo1.Lines.Text := Memo1.Lines.Text + ''
    else if (Trim(SGMix.Cells[5, 0]) = '1') then
      Memo1.Lines.Text := Memo1.Lines.Text + ''
  end
  else
  begin
    if (Trim(SGMix.Cells[5, 0]) = '0') then //�Hmg/min����ml/hr��times
      Memo1.Lines.Text := Memo1.Lines.Text + ''
    else if (Trim(SGMix.Cells[5, 0]) = '2') then //�Htimes����ml/hr
      Memo1.Lines.Text := Memo1.Lines.Text + ''

  end;
end;

procedure TFrmOrder.MIXComboChange(Sender: TObject);
var
  SQLs: TStringList;
begin

  EdtPack.Text := '0';
  EdtSpeedMCG.Text := '';
  EdtSpeedMCGE.Text := '';
  EdtCIVDSpd.Text := '';
  EdtCIVDSpdE.Text := '';
  EdtQty.Text := '';
  EdtQtyMax.Text := '';
  EdtIVDTime.Text := '';
  EdtIVDSpeed.Text := '';

  SQLs := TStringList.Create;
  with DM.QryTemp do
  begin
    Close;
    SQLs.Clear;
    SQLs.Add(' SELECT  a.IN_MED_CODE,a.SEQ_NO,a.IN_PACK,a.PACK_TRANS,a.IN_UNIT,a.PATH_CODE,a.MIX_CODE,a.MIX_PACK_DEFAULT,a.CIR_CODE,a.CONCENTRATION_MAX,a.CONCENTRATION_MIN, ');
    SQLs.Add(' a.CONCEN_UNIT,a.SPEED_TYPE,a.SPEED_MAX,a.SPEED_MIN,a.SPEED_DEFAULT,a.SPDKG_MAX,a.SPDKG_MIN,a.SPDKG_DEFAULT,a.TIMES_MAX,a.TIMES_MIN,a.TIMES_DEFAULT, ');
    SQLs.Add(' a.MEMO,a.FILTER_FLAG,b.CC_AMT,c.FEE_PACK,a.SPEED_UNIT,a.SPDKG_UNIT,a.TIMES_UNIT,a.SPDKG_TRANS,'''' as SPDTIME_TRANS,C.ACCU_FLAG,a.qty_num,a.speed_trans,c.fee_unit,a.filter_flag ');
    SQLs.Add(' FROM IN_MED_DTL a,IN_MED_BASIC b,ORDERITEM_BASIC c WHERE a.IN_MED_CODE=b.IN_MED_CODE and a.IN_MED_CODE=c.FEE_CODE and a.IN_MED_CODE = ' + Qt(Trim(SGmed.Cells[M_CODE, SGmed.Row])) + ' AND UPPER(a.PATH_CODE) = ' + Qt(Uppercase(Trim(SGmed.Cells[M_PATH, SGmed.Row]))) + ' and mix_code = ' + Qt(Trim(MixCombo.Text)));
    //SQLs.savetofile('in.txt');

  end;
  DM.OPENSQL(SQLs, SGMix, True);
  FreeAndNil(SQLs);

  if (SGMix.RowCount >= 1) and (SGMix.Cells[0, 0] <> '') then
  begin
    if Trim(SGMed.Cells[M_Qty, SGMed.Row]) = '' then
    begin
      SGMed.Cells[M_Qty, SGMed.Row] := SGMix.Cells[32, 0];
    end;

    if Trim(SGMed.Cells[M_Cir, SGMed.Row]) = '' then
    begin
      SGMed.Cells[M_Cir, SGMed.Row] := SGMix.Cells[8, 0];
    end;

    if SGMix.Cells[35, 0] = 'Y' then
      lbIVPump.Visible := True
    else
      lbIVPump.Visible := False;

    LbMedPack.Caption := FloatToStr(StrToFloat(NullStrto(Trim(EdtMedQty.Text), '1')) / StrToFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')) * StrToFloat(NullStrto(Trim(SGMix.Cells[24, 0]), '0')));


    if Uppercase(Trim(MIXCombo.Text)) = 'OTHER' then
    begin
      LbOther.Visible := True;
      LbOther1.Visible := True;
      EdtOther.Visible := True;
    end
    else
    begin
      LbOther.Visible := False;
      LbOther1.Visible := False;
      EdtOther.Visible := False;
    end;

    if Trim(MIXCombo.Text) <> '�L' then
    begin
      EdtMixPack.Enabled := True;
      EdtMixPack.Color := clWindow;
      EdtMixPack.Text := SGMix.Cells[7, 0]; 
    end
    else
    begin
      EdtMixPack.Enabled := False;
      EdtMixPack.Color := clGrayText;
      EdtMixPack.Text := '0';
    end;

    LbMixpack.Caption := EdtMixPack.Text;
    EdtPack.Text := floattostr(strtofloat(NullStrTo(LbMedPack.Caption, '0')) + strtofloat(NullStrTo(EdtMixPack.Text, '0')));

    if GBoxIV.Visible then //IV (�u��mg/min��times�p��)
    begin
      CbIVD.Checked := False;
      CbIVDClick(CbIVD);

      if SGMix.Cells[12, 0] = '0' then //�t�� (�]�˳��/min)
      begin
        EdtIVTime.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[15, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);

        LbTUnit.Caption := 'min';
      end
      else if SGMix.Cells[12, 0] = '2' then //��`�ɶ�
      begin
        EdtIVTime.Text := SGMix.Cells[21, 0];

        LbTUnit.Caption := Trim(SGMix.Cells[28, 0]);

      end;

    end
    else if GBoxIVD.Visible then //IVD (�u��mg/min��times�p��)
    begin
      CbIVD.Checked := False;
      CbIVDClick(CbIVD);

      if SGMix.Cells[12, 0] = '0' then //�t�� (�]�˳��/min)
      begin
        EdtIVDSpeed.Text := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[15, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtIVDTime.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', EdtIVDSpeed.Text, Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);

        LbTUnit.Caption := Trim(SGMix.Cells[26, 0]);
      end
      else if SGMix.Cells[12, 0] = '2' then //��`�ɶ�
      begin
        EdtIVDSpeed.Text := IVCalcul(SGMix.Cells[12, 0], 'spdtimehr', '', Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], SGMix.Cells[21, 0], SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtIVDTime.Text := SGMix.Cells[21, 0];

        LbTUnit.Caption := Trim(SGMix.Cells[28, 0]);

      end;
    end
    else if GBoxCIVD.Visible then //CIVD
    begin
      EdtCIVDSpdE.Enabled := False;
      EdtSpeedMCGE.Enabled := False;
      LbQty.Visible := True;
      EdtQty.Visible := True;
      LbQtyUnit.Caption := Trim(SGMix.Cells[34, 0]);

      if SGMix.Cells[12, 0] = '0' then //�t�� (�]�˳��/min)
      begin
        EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[15, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtSpeedMCG.Text := SGMix.Cells[15, 0];
        LbWeight.Visible := False;
        EdtWeight.Visible := False;
        LbTUnit.Caption := Trim(SGMix.Cells[26, 0]);
        EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, SGMed.Cells[M_Qty, SGMed.Row], SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, SGMed.Cells[M_Qty, SGMed.Row], SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);

      end
      else if SGMix.Cells[12, 0] = '1' then //�y�t (�]�˳��/kg/min)
      begin
        LbWeight.Visible := True;
        EdtWeight.Visible := True;
        LbWeightUnit.Visible := True;
        BtnR.Visible := True;
        with DM.QrySelf do
        begin
          Close;
          SQL.Clear;
          SQL.Add(' SELECT * FROM BIO_INFORMATION_LOG where chr_no=' + Qt(getchrno));
          SQL.Add('     and Del_flag=''N''');
          SQL.Add('and upd_date||upd_time in (select max(upd_date||upd_time) from BIO_INFORMATION_LOG where chr_no=' + Qt(getchrno) + ' and Del_flag=''N'')');
          //sql.savetofile('w.txt');
          Open;
          EdtWeight.Text := fieldbyname('Body_weight').AsString;
        end;
        LbTUnit.Caption := Trim(SGMix.Cells[27, 0]);
        CbIVD.Checked := False;

        EdtSpeedMCG.Text := SGMix.Cells[18, 0];
        EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(SGMix.Cells[18, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(SGMed.Cells[M_Qty, SGMed.Row]), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, SGMed.Cells[M_Qty, SGMed.Row], SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, SGMed.Cells[M_Qty, SGMed.Row], SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);

      end;

    end;
  end;
end;

procedure TFrmOrder.MIXComboExit(Sender: TObject);
begin
  inherited;
  IVModifyCheck(Sender);
end;

procedure TFrmOrder.EdtMixPackExit(Sender: TObject);
var
  cmsg, ConValue: string;
  CResult: Boolean;
begin
  inherited;
  MIXComboExit(Sender);

  CResult := True;
  ConValue := IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
  if (Trim(SGMix.Cells[9, 0]) = '') and (Trim(SGMix.Cells[10, 0]) = '') then
  begin
  end
  else if (Trim(SGMix.Cells[9, 0]) = '') and (Trim(SGMix.Cells[10, 0]) <> '') and (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row])) < StrtoFloat(NullStrto(SGMix.Cells[10, 0], '0'))) then
  begin
    CResult := False;
    cmsg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + #13 + '�@�׻ݤj��' + SGMix.Cells[10, 0];
  end
  else if (Trim(SGMix.Cells[10, 0]) = '') and (Trim(SGMix.Cells[9, 0]) <> '') and (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row])) > StrtoFloat(Nullstrto(SGMix.Cells[9, 0], '99999'))) then
  begin
    CResult := False;
    cmsg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + #13 + '�@�׻ݤp��' + SGMix.Cells[9, 0];
  end
  else if (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row])) < StrtoFloat(NullStrto(SGMix.Cells[10, 0], '0'))) or (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row])) > StrtoFloat(Nullstrto(SGMix.Cells[9, 0], '99999'))) then
  begin
    CResult := False;

    cmsg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + #13 + '�@�׻ݤ���' + SGMix.Cells[10, 0] + '��' + SGMix.Cells[9, 0];
  end;

  if not CResult then
  begin
    ShowMessage(cmsg, ['�Эק�'], mserror);

    if GBoxIV.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), Trim(ConValue), Trim(SGMed.Cells[M_Unit, SGMed.Row]) + '/mL', '0', '', '', '', '', Trim(EdtIVTime.Text), '', '', '', Trim(EdtOther.Text), '', Trim(LbIVTUnit.Caption), '', Trim(LbMedpack.Caption), '', cmsg);
    end
    else if GBoxIVD.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), Trim(ConValue), Trim(SGMed.Cells[M_Unit, SGMed.Row]) + '/mL', '0', Trim(EdtIVDSpeed.Text), '', '', '', Trim(EdtIVDTime.Text), '', '', '', Trim(EdtOther.Text), Trim(LbIVDSpdUnit.Caption), Trim(LbIVDTUnit.Caption), '', Trim(LbMedpack.Caption), '', cmsg);

    end
    else if GBoxCIVD.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), Trim(ConValue), Trim(SGMed.Cells[M_Unit, SGMed.Row]) + '/mL', '0', Trim(EdtCIVDSpd.Text), Trim(EdtCIVDSpdE.Text), Trim(EdtSpeedMCG.Text), Trim(EdtSpeedMCGE.Text), '', '', Trim(EdtWeight.Text), Trim(EdtQty.Text), Trim(EdtOther.Text), Trim(LbSpdUnit.Caption), '', Trim(LbTUnit.Caption), Trim(LbMedpack.Caption), Trim(EdtQtyMax.Text), cmsg);

    end;
    LbIVModiflag.Caption := '';

    Exit;
  end;
end;

procedure TFrmOrder.EdtMixPackKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  LbMixpack.Caption := EdtMixPack.Text;
  EdtPack.Text := Floattostr(StrToFloat(Nullstrto(LbMixpack.Caption, '0')) + StrToFloat(Nullstrto(LbMedpack.Caption, '0')));

  if GBoxIVD.Visible then
    EdtIVDTimeKeyUp(EdtIVDTime, key, [])
  else if GBoxCIVD.Visible then
    EdtSpeedMCGKeyUp(EdtSpeedMCG, key, []);
end;

procedure TFrmOrder.EdtPackKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  MedPack, MixPack: integer;
begin
  inherited;
  MedPack := 0;
  MixPack := 0;
  LbMixpack.Caption := EdtMixPack.Text;
  MedPack := StrToInt(Nullstrto(LbMixpack.Caption, '0'));
  MixPack := StrToInt(Nullstrto(LbMedpack.Caption, '0'));
  EdtPack.Text := inttostr(MedPack + MixPack);
end;

procedure TFrmOrder.EdtMemoExit(Sender: TObject);
begin
  inherited;
  SpdModifyCheck(Sender);
end;

procedure TFrmOrder.EdtIVDTimeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  EdtIVDSpeed.Text := IVCalcul(SGMix.Cells[12, 0], 'spdtimehr', '', Trim(EdtMedQty.Text), SGMix.Cells[3, 0], EdtIVDTime.Text, SGMix.Cells[31, 0], SGmed.Cells[M_Unit, sgmed.Row]);
end;

procedure TFrmOrder.EdtCIVDSpdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not CbIVD.Checked then //�����
  begin
    EdtSpeedMCGE.Text := '';
    if SGMix.Cells[12, 0] = '0' then
    begin
      EdtSpeedMCG.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrmg', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
    end
    else if SGMix.Cells[12, 0] = '1' then
    begin
      EdtSpeedMCG.Text := FloattoStr(StrtoFloat(IVCalcul(SGMix.Cells[12, 0], 'spdhrkg', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) * StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) * StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1')));
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
    end;
    EdtQtyMax.Text := EdtQty.Text;
  end
  else //�϶���
  begin
    if SGMix.Cells[12, 0] = '0' then
    begin
      EdtSpeedMCG.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrmg', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
      EdtSpeedMCGE.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrmg', EdtCIVDSpdE.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
      EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpdE.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
    end
    else if SGMix.Cells[12, 0] = '1' then
    begin
      EdtSpeedMCG.Text := FloattoStr(StrtoFloat(IVCalcul(SGMix.Cells[12, 0], 'spdhrkg', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) * StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) * StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1')));
      EdtSpeedMCGE.Text := FloattoStr(StrtoFloat(IVCalcul(SGMix.Cells[12, 0], 'spdhrkg', EdtCIVDSpdE.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) * StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) * StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1')));
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
      EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpdE.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
    end;
  end;
end;

procedure TFrmOrder.EdtSpeedMCGKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not CbIVD.Checked then //�����
  begin
    if SGMix.Cells[12, 0] = '0' then
    begin
      EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(Nullstrto(EdtSpeedMCG.Text, '0')) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtCIVDSpdE.Text := '';
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', Nullstrto(EdtCIVDSpd.Text, '0'), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQtyMax.Text := EdtQty.Text;
    end
    else
    begin
      EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(Nullstrto(EdtSpeedMCG.Text, '0')) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtCIVDSpdE.Text := '';
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', Nullstrto(EdtCIVDSpd.Text, '0'), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQtyMax.Text := EdtQty.Text;
    end;
  end
  else //�϶���
  begin

    if SGMix.Cells[12, 0] = '0' then
    begin
      EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(Nullstrto(EdtSpeedMCG.Text, '0')) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtCIVDSpdE.Text := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFLoat(Nullstrto(EdtSpeedMCGE.Text, '0')) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', Nullstrto(EdtCIVDSpd.Text, '0'), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpdE.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
    end
    else
    begin
      EdtCIVDSpd.Text := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(EdtSpeedMCG.Text) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtCIVDSpdE.Text := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(NullStrto(EdtSpeedMCGE.Text, '0')) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQty.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', EdtCIVDSpd.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      EdtQtyMax.Text := IVCalcul(SGMix.Cells[12, 0], 'DAY_QTY', NullStrto(EdtCIVDSpdE.Text, '0'), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
    end;
  end;
end;

procedure TFrmOrder.EdtweightEnter(Sender: TObject);
var
  key: Word;
begin
  inherited;
  EdtSpeedMCGKeyUp(EdtSpeedMCG, key, []);
end;

procedure TFrmOrder.EdtweightKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  EdtSpeedMCGKeyUp(EdtSpeedMCG, key, []);
end;

procedure TFrmOrder.BtnRClick(Sender: TObject);
var
  key: Word;
begin
  inherited;
  with DM.QrySelf do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT * FROM BIO_INFORMATION_LOG where chr_no=' + Qt(getchrno));
    SQL.Add('     and Del_flag=''N''');
    SQL.Add('and upd_date||upd_time in (select max(upd_date||upd_time) from BIO_INFORMATION_LOG where chr_no=' + Qt(getchrno) + ' and Del_flag=''N'')');
    //sql.savetofile('w.txt');
    Open;
    EdtWeight.Text := fieldbyname('Body_weight').AsString;
    EdtweightKeyUp(Edtweight, key, []);
  end;
end;

procedure TFrmOrder.EdtIVDSpeedKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  EdtIVDTime.Text := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', EdtIVDSpeed.Text, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);
end;

procedure TFrmOrder.CbIVDClick(Sender: TObject);
begin
  inherited;
  if not cbIvd.Checked then
  begin
    EdtCIVDSpd.Enabled := True;
    EdtCIVDSpdE.Enabled := False;
    EdtSpeedMCG.Enabled := True;
    EdtSpeedMCGE.Enabled := False;
    EdtCIVDSpd.Color := clWindow;
    EdtSpeedMCG.Color := clWindow;
    EdtCIVDSpdE.Color := clGray;
    EdtSpeedMCGE.Color := clGray;

  end
  else
  begin
    EdtCIVDSpd.Enabled := True;
    EdtCIVDSpdE.Enabled := True;
    EdtSpeedMCG.Enabled := True;
    EdtSpeedMCGE.Enabled := True;
    EdtCIVDSpd.Color := clWindow;
    EdtCIVDSpdE.Color := clWindow;
    EdtSpeedMCG.Color := clWindow;
    EdtSpeedMCGE.Color := clWindow;
    EdtSpeedMCGE.SetFocus;
  end;
end;

function TFrmOrder.IVCalcul(Spdtype, Spdname, Speed, Qty, Pack_Trans,
  Times, Accu_flag, Dose_unit: string): string;
begin
  //Spdtype 0-�t��(mg/min)  1-�y�t(mg/kg/min) 2-��`�ɶ� 3-�@��
  if Spdtype = '0' then
  begin
    if Spdname = 'spdmghr' then //��mg/min����ml/hr
    begin
      if Uppercase(Trim(Dose_unit)) = Uppercase(Trim(SGMix.Cells[4, 0])) then
        IVCalcul := FloattoStr(SimpleRoundto((StrtoFloat(NullStrTo(Speed, '0')) / ((StrtoFloat(NullStrTo(Qty, '0')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1')))) * 60, -1))
      //ml/hr= (mg/min / (���q*�ī~�e��mg)/ �`��n)*60
      else
        IVCalcul := FloattoStr(SimpleRoundto((StrtoFloat(NullStrTo(Speed, '0')) / ((StrtoFloat(NullStrTo(Qty, '0')) / StrToFloat(NullStrto(SGMix.Cells[25, 0], '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1')))) * 60, -1));
      //ml/hr= (mg/min / (���q/�p���ഫ*�ī~�e��mg)/ �`��n)*60
    end
    else if Spdname = 'spdhrmg' then //��ml/hr����mg/min
    begin
      if Uppercase(Trim(Dose_unit)) = Uppercase(Trim(SGMix.Cells[4, 0])) then
        IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Speed, '0')) * ((StrtoFloat(NullStrTo(Qty, '0')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / 60, -4) * StrToFloat(NullStrto(SGMix.Cells[33, 0], '1')))
       //mg/min= ml/hr *((���q*�ī~�e��mg)/�`��n)/60
      else
        IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Speed, '0')) * ((StrtoFloat(NullStrTo(Qty, '0')) / StrToFloat(NullStrto(SGMix.Cells[25, 0], '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / 60, -4) * StrToFloat(NullStrto(SGMix.Cells[33, 0], '1')));
      //mg/min= ml/hr *((���q/�p���ഫ*�ī~�e��mg)/�`��n)/60
    end
    else if Spdname = 'spdhrtime' then //��ml/hr����time
    begin
      IVCalcul := FloattoStr(Floor(StrtoFloat(NullStrTo(Edtpack.Text, '0')) / StrtoFloat(NullStrTo(Speed, '1')) * 60));
      //time= (�`��n/ ml/hr)* 60 <<�L����˥h>>
    end
    else if Spdname = 'spdtimehr' then //��time����ml/hr
    begin
      IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Edtpack.Text, '0')) / StrtoFloat(NullStrTo(Times, '1')) * 60, -1));
      //ml/hr= �`��n/��`�ɶ�(��)*60
    end
    else if spdname = 'DAY_QTY' then //��ml/hr����C��o�Ķq
    begin
      if Accu_flag = 'Y' then //�ī~�i�֭p(�}�ʫ᥼�ϥΧ� �i����ϥ�)
        IVCalcul := FloattoStr(Ceil(Ceil(StrtoFloat(NullStrTo(Speed, '0')) * 24 / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')) * (StrtoFloat(NullStrTo(Qty, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')))))
      else //�ī~���i�֭p(�}�ʫ᥼�ϥΧ� ���i����ϥ�)
        IVCalcul := FloattoStr(Ceil(Ceil(StrtoFloat(NullStrTo(Speed, '0')) * 24 / StrtoFloat(NullStrTo(Edtpack.Text, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1'))) * Ceil(StrtoFloat(NullStrTo(Qty, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')))));
      //day_qty= ((ml/hr*24/�`��n/�p���ഫ)<<�L����i��>> * (���q/�p���ഫ) <<�L����i��>>) �̫�<<�A�L����i��>>
    end;


  end
  else if Spdtype = '1' then
  begin
    if Spdname = 'spdkghr' then // ��mg/kg/min����ml/hr
    begin
      if Uppercase(Trim(Dose_unit)) = Uppercase(Trim(SGMix.Cells[4, 0])) then
        IVCalcul := FloattoStr(SimpleRoundto(((StrtoFloat(NullStrTo(Speed, '0')) * StrtoFloat(NullStrTo(Edtweight.Text, '1'))) / ((StrtoFloat(NullStrTo(Qty, '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1')))) * 60, -1))
      //ml/hr= (mg/kg/min* �魫)/ (���q*�ī~�e��mg)/ �`��n)*60
      else
        IVCalcul := FloattoStr(SimpleRoundto(((StrtoFloat(NullStrTo(Speed, '0')) * StrtoFloat(NullStrTo(Edtweight.Text, '1'))) / ((StrtoFloat(NullStrTo(Qty, '1')) / StrToFloat(NullStrto(SGMix.Cells[25, 0], '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1')))) * 60, -1));
      //ml/hr= (mg/kg/min* �魫)/ (���q/�p���ഫ*�ī~�e��mg)/ �`��n)*60
    end
    else if Spdname = 'spdhrkg' then //��ml/hr����mg/kg/min
    begin
      if Uppercase(Trim(Dose_unit)) = Uppercase(Trim(SGMix.Cells[4, 0])) then
        IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Speed, '0')) * (((StrtoFloat(NullStrTo(Qty, '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / 60 / StrtoFloat(NullStrTo(Edtweight.Text, '1'))), -4))
      //mg/kg/min= ml/hr *((���q*�ī~�e��mg)/�`��n)/60/�魫
      else
        IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Speed, '0')) * (((StrtoFloat(NullStrTo(Qty, '1')) / StrToFloat(NullStrto(SGMix.Cells[25, 0], '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / 60 / StrtoFloat(NullStrTo(Edtweight.Text, '1'))), -4));
      //mg/kg/min= ml/hr *((���q/�p���ഫ*�ī~�e��mg)/�`��n)/60/�魫
    end
    else if spdname = 'DAY_QTY' then //��ml/hr����C��o�Ķq
    begin
      if Accu_flag = 'Y' then //�ī~�i�֭p(�}�ʫ᥼�ϥΧ� �i����ϥ�)
        IVCalcul := FloattoStr(Ceil(Ceil(StrtoFloat(NullStrTo(Speed, '0')) * 24 / StrtoFloat(NullStrTo(Edtpack.Text, '1'))) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')) * (StrtoFloat(NullStrTo(Qty, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')))))
      else //�ī~���i�֭p(�}�ʫ᥼�ϥΧ� ���i����ϥ�)
        IVCalcul := FloattoStr(Ceil(Ceil(StrtoFloat(NullStrTo(Speed, '0')) * 24 / StrtoFloat(NullStrTo(Edtpack.Text, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1'))) * Ceil(StrtoFloat(NullStrTo(Qty, '1')) / StrtoFloat(NullStrto(Trim(SGMix.Cells[25, 0]), '1')))));
      //day_qty= ((ml/hr*24/�`��n/�p���ഫ)<<�L����i��>> * (���q/�p���ഫ) <<�L����i��>>)  �̫�<<�A�L����i��>>
    end;
  end
  else if Spdtype = '2' then
  begin
    if Spdname = 'spdhrtime' then //��ml/hr����time
    begin
      IVCalcul := FloattoStr(Floor(StrtoFloat(NullStrTo(Edtpack.Text, '0')) / StrtoFloat(NullStrTo(Speed, '1')) * 60));
      //time= (�`��n/ ml/hr)* 60 <<�L����˥h>>
    end
    else if Spdname = 'spdtimehr' then //��time����ml/hr
    begin
      IVCalcul := FloattoStr(SimpleRoundto(StrtoFloat(NullStrTo(Edtpack.Text, '0')) / StrtoFloat(NullStrTo(Times, '1')) * 60, -1));
      //ml/hr= �`��n/��`�ɶ�(��)*60
    end;
  end
  else if Spdtype = '3' then //�@��
  begin
    if Uppercase(Trim(Dose_unit)) = Uppercase(Trim(SGMix.Cells[4, 0])) then
      IVCalcul := FloattoStr(SimpleRoundto(((StrtoFloat(NullStrTo(Qty, '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))), -4))

    else
      IVCalcul := FloattoStr(SimpleRoundto(((StrtoFloat(NullStrTo(Qty, '1')) / StrToFloat(NullStrto(SGMix.Cells[25, 0], '1')) * StrtoFloat(NullStrTo(Pack_Trans, '1'))) / StrtoFloat(NullStrTo(Edtpack.Text, '1'))), -4));

  end;
end;

procedure TFrmOrder.IVModifyCheck(Sender: TObject);
begin
  if Trim(SGmed.Cells[modifytype, SGmed.Row]) = 'O' then
  begin
    if LbIVModiflag.Caption <> 'Y' then
    begin
      if Trim(TEdit(Sender).Text) <> Trim(SGmed.Cells[TEdit(Sender).Tag, SGmed.Row]) then
        LbIVModiflag.Caption := 'Y';
    end;
  end;
end;

procedure TFrmOrder.SaveIVError(FEE_CODE, QTY_NUM, UNIT_DESC, CIR_CODE,
  PATH_CODE, MIX_CODE, MIX_PACK, CONCENTRATION, CONCEN_UNIT, SPEED_TYPE,
  SPEED, SPEED_END, SPEED_MCG, SPEED_MCG_E, TIMES, TIMES_END, WEIGHT,
  DAY_QTY, MIX_TEXT, SPEED_UNIT, TIMES_UNIT, SPEEDMCG_UNIT, MED_PACK,
  DAY_QTY_MAX, MESSAGELog: string);
begin
  if DM.ADOLink.InTransaction then
    DM.ADOLink.CommitTrans;
  DM.ADOLink.BeginTrans;
  try
    with DM.QryInsert do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO IV_ERROR_LOG ';
      SQL.Add(' (FEE_NO,FEE_CODE,QTY_NUM,UNIT_DESC,CIR_CODE,PATH_CODE,MIX_CODE,MIX_PACK,CONCENTRATION,CONCEN_UNIT, ');
      SQL.Add('  SPEED_TYPE,SPEED,SPEED_END,SPEED_MCG,SPEED_MCG_END,TIMES,TIMES_END,WEIGHT,DAY_QTY, ');
      SQL.Add('  MIX_TEXT,SPEED_UNIT,TIMES_UNIT,SPEEDMCG_UNIT,MED_PACK,DAY_QTY_MAX,MESSAGE,UPD_DATE,UPD_TIME,UPD_OPER ) ');
      SQL.Add('  VALUES(');
      SQL.Add(Qt(getFeeNo) + ' , ');
      SQL.Add(Qt(FEE_CODE) + ' , ');
      SQL.Add(Qt(QTY_NUM) + ' , ');
      SQL.Add(Qt(UNIT_DESC) + ' , ');
      SQL.Add(Qt(CIR_CODE) + ' , ');
      SQL.Add(Qt(PATH_CODE) + ' , ');
      SQL.Add(Qt(MIX_CODE) + ' , ');
      SQL.Add(Qt(MIX_PACK) + ' , ');
      SQL.Add(Qt(CONCENTRATION) + ' , ');
      SQL.Add(Qt(CONCEN_UNIT) + ' , ');
      SQL.Add(Qt(SPEED_TYPE) + ' , ');
      SQL.Add(Qt(SPEED) + ' , ');
      SQL.Add(Qt(SPEED_END) + ' , ');
      SQL.Add(Qt(SPEED_MCG) + ' , ');
      SQL.Add(Qt(SPEED_MCG_E) + ' , ');
      SQL.Add(Qt(TIMES) + ' , ');
      SQL.Add(Qt(TIMES_END) + ' , ');
      SQL.Add(Qt(WEIGHT) + ' , ');
      SQL.Add(Qt(DAY_QTY) + ' , ');
      SQL.Add(Qt(MIX_TEXT) + ' , ');
      SQL.Add(Qt(SPEED_UNIT) + ' , ');
      SQL.Add(Qt(TIMES_UNIT) + ' , ');
      SQL.Add(Qt(SPEEDMCG_UNIT) + ' , ');
      SQL.Add(Qt(MED_PACK) + ' , ');
      SQL.Add(Qt(DAY_QTY_MAX) + ' , ');
      SQL.Add(Qt(Messagelog) + ' , ');
      SQL.Add(Qt(DBDate(RocDate(now, ''))) + ',' + Qt(RocTime(now, '')) + ',');
      SQL.Add(Qt(getuserid) + ' ) ');
      //SQL.SAVETOFILE('ERROR.TXT');
      execsql;
    end;
    DM.ADOLink.CommitTrans;
  except
    DM.ADOLink.RollbackTrans;
  end;
end;

procedure TFrmOrder.SpdModifyCheck(Sender: TObject);
begin
  if Trim(SGmed.Cells[modifytype, SGmed.Row]) = 'O' then
  begin
    if LbSpdModiflag.Caption <> 'Y' then
      if Trim(TEdit(Sender).Text) <> Trim(SGmed.Cells[TEdit(Sender).Tag, SGmed.Row]) then
        LbSpdModiflag.Caption := 'Y';
  end;
end;

procedure TFrmOrder.CheckIV(aRow: integer);
var
  MyRec: TRect;
  Mypoint: TPoint;
  SQLs: TStringList;
  tmpmixcode,tempmome,tempcir: string;
begin
  MyRec := SGMed.CellRect(M_Memo, aRow);
  Mypoint := ScreenToClient(ClientToScreen(MyRec.topleft));
  MIXCombo.Items.Clear;
  LbOldQty.Caption := '';
  LbIVModiflag.Caption := '';
  LbSpdModiflag.Caption := '';
  tmpmixcode := '';

  if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IVD') or (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'CIVD') or (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IV') then
  begin
    LbMedName.Caption := Trim(SGMed.Cells[M_Name, aRow]);
    LbMedUnit.Caption := Trim(SGMed.Cells[M_Unit, aRow]);
    EdtMedQty.Text := SGMed.Cells[M_Qty, aRow];
    //109.05.07 shh ITe add IV memo
    EdtMemo.Text := SGMed.Cells[M_Memo, SGMed.Row];

    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT a.*,b.CC_AMT,c.FEE_PACK FROM IN_MED_DTL a,IN_MED_BASIC b,ORDERITEM_BASIC c WHERE  a.IN_MED_CODE= b.IN_MED_CODE and b.IN_MED_CODE=c.FEE_CODE and b.IN_MED_CODE = ' + Qt(Trim(SGMed.Cells[M_CODE, aRow])) + ' and b.IV_TYPE=''I'' ');
      SQL.Add(' and Upper(a.PATH_CODE)=' + Qt(UpperCase(Trim(SGMed.Cells[M_PATH, aRow]))));
      //SQL.SAVETOFILE('CC.TXT');
      open;
      while not Eof do
      begin
        LbMedPack.Caption := FloatToStr(StrToFloat(NullStrto(Trim(EdtMedQty.Text), '1')) / StrToFloat(NullStrto(FieldbyName('FEE_PACK').AsString, '1')) * StrToFloat(NullStrto(Trim(FieldbyName('CC_AMT').AsString), '0')));
        MIXCombo.Items.Add(Trim(FieldByName('MIX_CODE').AsString));
        if Trim(FieldByName('epd_flag').AsString)= 'E' then
          tmpmixcode := Trim(FieldByName('MIX_CODE').AsString);
        Next;
      end;
    end;

    if SGMed.Cells[M_Mix, aRow] <> '' then
    begin
      LbOldQty.Caption := SGMed.Cells[M_Qty, aRow];
      SQLs := TStringList.Create;
      with DM.QryTemp do
      begin
        Close;
        SQLs.Clear;
        SQLs.Add(' SELECT  a.IN_MED_CODE,a.SEQ_NO,a.IN_PACK,a.PACK_TRANS,a.IN_UNIT,a.PATH_CODE,a.MIX_CODE,a.MIX_PACK_DEFAULT,a.CIR_CODE,a.CONCENTRATION_MAX,a.CONCENTRATION_MIN, ');
        SQLs.Add(' a.CONCEN_UNIT,a.SPEED_TYPE,a.SPEED_MAX,a.SPEED_MIN,a.SPEED_DEFAULT,a.SPDKG_MAX,a.SPDKG_MIN,a.SPDKG_DEFAULT,a.TIMES_MAX,a.TIMES_MIN,a.TIMES_DEFAULT, ');
        SQLs.Add(' a.MEMO,a.FILTER_FLAG,b.CC_AMT,c.FEE_PACK,a.SPEED_UNIT,a.SPDKG_UNIT,a.TIMES_UNIT,a.SPDKG_TRANS,'''' as SPDTIME_TRANS,C.ACCU_FLAG,a.qty_num,a.speed_trans,c.fee_unit ');
        SQLs.Add(' FROM IN_MED_DTL a,IN_MED_BASIC b,ORDERITEM_BASIC c WHERE a.IN_MED_CODE=b.IN_MED_CODE and a.IN_MED_CODE=c.FEE_CODE and a.IN_MED_CODE = ' + Qt(Trim(SGMed.Cells[M_CODE, aRow])) + ' AND UPPER(a.PATH_CODE) = ' + Qt(Uppercase(Trim(SGMed.Cells[M_PATH, aRow]))) + ' and UPPER(mix_code) = ' + Qt(Uppercase(Trim(SGMed.Cells[M_Mix, aRow]))));
      end;                                                                                                                          //and a.Epd_Flag = ''E''
      DM.OPENSQL(SQLs, SGMix, True);
      FreeAndNil(SQLs);
      Application.HideHint;

      if (SGMed.Height - MyRec.Bottom) > (IVPanel.Height + EdtOrderEdit.Height + 2) then
        IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom + EdtOrderEdit.Height + 2, IVPanel.Width,
          IVPanel.Height)
      else
      begin
        if (SGMed.Top + IVPanel.Height) > (MyRec.Bottom + EdtOrderEdit.Height + 2) then
          IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom + EdtOrderEdit.Height + 2, IVPanel.Width,
            IVPanel.Height)

        else
          IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom - IVPanel.Height, IVPanel.Width
            , IVPanel.Height);
      end;

      IVPanel.Visible := True;
      SGMed.Enabled := False;
      Application.HideHint;



      if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IV') then
      begin
        GBoxIV.Align := alTop;
        GBoxIV.Visible := True;
        GBoxIVD.Visible := False;
        GBoxCIVD.Visible := False;
        EdtIVTime.Text := SGMed.Cells[M_Times, aRow];
        EdtIVTime.Text := SGMed.Cells[M_Times, aRow];
        LbIVTUnit.Caption := SGMed.Cells[M_TimeUnit, aRow];

      end
      else if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IVD') then
      begin
        GBoxIVD.Align := alTop;
        GBoxIVD.Visible := True;
        GBoxCIVD.Visible := False;
        GBoxIV.Visible := False;
        EdtIVDTime.Text := SGMed.Cells[M_Times, aRow];
        EdtIVDSpeed.Text := SGMed.Cells[M_Speed, aRow];
        LbIVDSpdUnit.Caption := SGMed.Cells[M_Speedunit, aRow];
        LbIVDTUnit.Caption := SGMed.Cells[M_TimeUnit, aRow];
      end
      else if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'CIVD') then
      begin
        GBoxCIVD.Align := alTop;
        GBoxCIVD.Visible := True;
        GBoxIVD.Visible := False;
        GBoxIV.Visible := False;
        EdtSpeedMCG.Text := SGMed.Cells[M_SpeedMcg, aRow];
        EdtSpeedMCGE.Text := SGMed.Cells[M_SpeedMcgE, aRow];
        LbTUnit.Caption := SGMed.Cells[M_SpeedMcgUnit, aRow];
        EdtCIVDSpd.Text := SGMed.Cells[M_Speed, aRow];
        EdtCIVDSpdE.Text := SGMed.Cells[M_SpeedE, aRow];
        LbSpdUnit.Caption := SGMed.Cells[M_Speedunit, aRow];
        EdtQty.Text := SGMed.Cells[M_DayQty, aRow];
        EdtQtyMax.Text := SGMed.Cells[M_DayQty_Max, aRow];
        LbQtyUnit.Caption := Trim(SGMix.Cells[34, 0]);

        if SGMed.Cells[M_Weight, aRow] = '' then
        begin
          EdtWeight.Visible := False;
          LbWeight.Visible := False;
          LbWeightUnit.Visible := False;
        end
        else
        begin
          EdtWeight.Visible := True;
          LbWeight.Visible := True;
          LbWeightUnit.Visible := True;
          EdtWeight.Text := SGMed.Cells[M_Weight, aRow];
        end;

        if SGMed.Cells[M_Spdtype, aRow] = '0' then
          CbIVD.Checked := False
        else
          CbIVD.Checked := True;

      end;

      MIXCombo.Text := SGMed.Cells[M_Mix, aRow];
      EdtMixPack.Text := SGMed.Cells[M_Pack, aRow];
      EdtPack.Text := SGMed.Cells[M_AllPack, aRow];
      LbMedpack.Caption := SGMed.Cells[M_MedPack, aRow];
      LbMixpack.Caption := SGMed.Cells[M_Pack, aRow];
      lbIVPump.Visible := pos(Trim(lbIVPump.Caption),Trim(SGMed.Cells[M_Memo, aRow])) > 0 ;
      EdtCIVDSpd.Text := SGMed.Cells[M_Speed, aRow];
      EdtCIVDSpdE.Text := SGMed.Cells[M_SpeedE, aRow];
      LbSpdUnit.Caption := SGMed.Cells[M_SpeedUnit, aRow];

      if (SGMed.Cells[M_Other, aRow] <> '') and (Uppercase(Trim(SGMed.Cells[M_MIX, aRow])) = 'OTHER') then
      begin
        EdtOther.Text := SGMed.Cells[M_Other, aRow];
        LbOther.Visible := True;
        LbOther1.Visible := True;
        EdtOther.Visible := True;
      end
      else
      begin
        SGMed.Cells[M_Other, aRow] := '';
        LbOther.Visible := False;
        LbOther1.Visible := False;
        EdtOther.Visible := False;
      end;
    end
    else
    begin

      EdtOrderEdit.SetBounds(Mypoint.x + 1, Mypoint.y + 1 + SGMed.Top, MyRec.right - MyRec.left, SGMed.DefaultRowHeight);
      if MIXCombo.Items.Count > 0 then
      begin
        if (SGMed.Height - MyRec.Bottom) > (IVPanel.Height + EdtOrderEdit.Height + 2) then
          IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom + EdtOrderEdit.Height + 2, IVPanel.Width,
            IVPanel.Height)
        else
        begin
          if (SGMed.Top + IVPanel.Height) > (MyRec.Bottom + EdtOrderEdit.Height + 2) then
            IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom + EdtOrderEdit.Height + 2, IVPanel.Width,
              IVPanel.Height)
          else
            IVPanel.SetBounds(min(EdtOrderEdit.Left, Screen.ActiveForm.Width - IVPanel.Width - 30), MyRec.Bottom - IVPanel.Height, IVPanel.Width
              , IVPanel.Height);
        end;

        IVPanel.Visible := True;
        SGMed.Enabled := False;
        Application.HideHint;


        if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IVD') then
        begin
          GBoxIVD.Align := alTop;
          GBoxIVD.Visible := True;
          GBoxCIVD.Visible := False;
          GBoxIV.Visible := False;
        end
        else if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'CIVD') then
        begin
          GBoxCIVD.Align := alTop;
          GBoxCIVD.Visible := True;
          GBoxIVD.Visible := False;
          GBoxIV.Visible := False;
          SGMed.Cells[M_Cir, aRow] := 'ASORDER';
          SGMed.Repaint;
          LbWeight.Visible := False;
          EdtWeight.Visible := False;
          LbWeightUnit.Visible := False;
          BtnR.Visible := False;
          LbQtyUnit.Caption := Trim(SGMix.Cells[34, 0]);
          EdtQty.Visible := True;
          LbTUnit.Caption := '';
        end
        else if (UpperCase(Trim(SGMed.Cells[M_PATH, aRow])) = 'IV') then
        begin
          GBoxIV.Align := alTop;
          GBoxIV.Visible := True;
          GBoxCIVD.Visible := False;
          GBoxIVD.Visible := False;
        end;
        if trim(tmpmixcode)<> '' then
        begin
          SetCbbitem(MIXCombo,tmpmixcode);
          MIXComboChange(MIXCombo);
        end;
      end
      else
      begin
        //EdtOrderEdit.Show;
        //EdtOrderEdit.BringTofront;
        //EdtOrderEdit.Text := SGMed.cells[M_Memo, aRow];
        //EdtOrderEdit.SetFocus;
        //�Щ󦹳B�[�J���q�{�� begin
          if not Assigned(Frmshift_note) then
            Frmshift_note := TFrmshift_note.Create(Self);
          Frmshift_note.RichEdit1.Lines.Text := Trim(SGMed.Cells[m_memo,Arow]);
          Frmshift_note.note_kind := SGMed.name;
          Frmshift_note.ShowModal;
          SGMed.Cells[m_memo,ARow] := trim(Frmshift_note.RichEdit1.Lines.Text);
        //end
        SGMed.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmOrder.ClearIVItem(Sender: TObject);
var
  i: integer;
begin
  MIXCombo.Clear;
  EdtPack.Text := '';
  EdtMixPack.Text := '';
  LbMedpack.Caption := '';
  LbMixpack.Caption := '';
  EdtOther.Text := '';
  EdtOther.Visible := False;
  LbOther.Visible := False;
  LbOther1.Visible := False;
  EdtOrderEdit.Text := '';
  LbMedName.Caption := '';
  LbMedUnit.Caption := '';
  EdtMedQty.Text := '';
  LbIVModiflag.Caption := '';
  LbSpdModiflag.Caption := '';
  LbOldQty.Caption := '';

  CbIVD.Checked := False;
  EdtCIVDSpd.Text := '';
  EdtCIVDSpdE.Text := '';
  EdtSpeedMCG.Text := '';
  EdtSpeedMCGE.Text := '';
  LbTUnit.Caption := '';
  EdtQty.Text := '';
  EdtQtyMax.Text := '';
  LbQtyUnit.Caption := '';
  EdtWeight.Text := '';
  LbWeightUnit.Visible := False;
  EdtIVDTime.Text := '';
  EdtIVDSpeed.Text := '';
  EdtIVTime.Text := '';
  EdtMemo.Text := '';
  lbIVPump.Visible := False;

  Memo1.Lines.Text := '';
  MemoPanel.Visible := False;

  SetPanel(False, IVPanel);
  SGmed.Enabled := True;

  for i := 0 to SGMix.RowCount - 1 do
    SGMix.Rows[i].Clear;
  SGMix.RowCount := SGMix.FixedRows + 1;
end;

procedure TFrmOrder.BtnCancelClick(Sender: TObject);
begin
  inherited;
  SGMed.Cells[M_Qty, SGMed.Row] := LbOldQty.Caption;
  if SGMed.Cells[M_Mix, SGMed.Row] = '' then
  begin
    SGMed.Col := Del;
    SGMedDblClick(SGMed);
  end;
  SGMed.Refresh;
  SGMed.Enabled := True;
  SGMed.SetFocus;
  ClearIVItem(self);
  SGMed.Col := M_Code;
end;

procedure TFrmOrder.BtnConfirmClick(Sender: TObject);
  function NumCheck(Number: string): Boolean;
  begin
    Result := True;
    if (Trim(Number) = '') or (Trim(Number) = '.') then
    begin
      Result := False;
      exit;
    end;
    try
      StrToFloat(Number);
    except
      Result := False;
      exit;
    end;

  end;
var
  IVResult: Boolean;
  msg, ConValue, tmpcir, tmpMome, ordercode, delrowflag: string;
  spdhrmax, spdhrmin, spdtimemax, spdtimemin: string;
  i, row: integer;
begin
  inherited;

  IVResult := True;
  msg := '';
  spdhrmax := '';
  spdhrmin := '';
  spdtimemax := '';
  spdtimemin := '';
  ordercode := '';
  delrowflag := '';

  if MIXCombo.Text = '' then
  begin
    ShowMessage('�}���G���ؤ��i�ť�!' + #13, ['�Эק�'], mserror);
    LbIVModiflag.Caption := '';
    Exit;
  end;

  if (EdtOther.Visible) and (Trim(EdtOther.Text) = '') then
  begin
    ShowMessage('�}���G���ج�OTHER,�Щ��L����J�}���G�W��!' + #13, ['�Эק�'], mserror);
    EdtOther.SetFocus;
    LbIVModiflag.Caption := '';
    Exit;
  end;

  if EdtMedQty.Text = '0' then
  begin
    ShowMessage('�ī~���q���i��0 ' + #13, ['�Эק�'], mserror);
    LbIVModiflag.Caption := '';
    Exit;
  end;

  if EdtPack.Text = '0' then
  begin
    ShowMessage('�`��n�Ȥ��i��0 ' + #13, ['�Эק�'], mserror);
    LbIVModiflag.Caption := '';
    Exit;
  end;


  if GBoxIV.Visible then
  begin
    if EdtIVTime.Text = '' then
    begin
      ShowMessage('�`��`�ɶ����i�ť�!' + #13, ['�Эק�'], mserror);
      LbSpdModiflag.Caption := '';
      Exit;
    end
    else
    begin
      if not NumCheck(EdtIVTime.Text) then
      begin
        ShowMessage('�`��`�ɶ��D�Ʀr���A!' + #13, ['�Эק�'], mserror);
        LbSpdModiflag.Caption := '';
        Exit;
      end;
    end;
  end
  else if GBoxIVD.Visible then
  begin
    if (EdtIVDSpeed.Text = '') or (EdtIVDTime.Text = '') then
    begin
      ShowMessage('�y�t�B�`��`�ɶ����i�ť�!' + #13, ['�Эק�'], mserror);
      LbSpdModiflag.Caption := '';
      Exit;
    end
    else
    begin
      if not NumCheck(EdtIVDSpeed.Text) then
      begin
        ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
        LbSpdModiflag.Caption := '';
        Exit;
      end;
      if not NumCheck(EdtIVDTime.Text) then
      begin
        ShowMessage('�`��`�ɶ��D�Ʀr���A!' + #13, ['�Эק�'], mserror);
        LbSpdModiflag.Caption := '';
        Exit;
      end;
    end;
  end
  else if GBoxCIVD.Visible then
  begin
    if CbIVD.Checked then
    begin
      if (EdtCIVDSpd.Text = '') or (EdtCIVDSpdE.Text = '') or (EdtSpeedMCG.Text = '') or (EdtSpeedMCGE.Text = '') then
      begin
        ShowMessage('�y�t���i�ť�!' + #13, ['�Эק�'], mserror);
        LbSpdModiflag.Caption := '';
        Exit;
      end
      else
      begin
        if not NumCheck(EdtCIVDSpd.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
        if not NumCheck(EdtCIVDSpdE.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
        if not NumCheck(EdtSpeedMCG.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
        if not NumCheck(EdtSpeedMCGE.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;

        if StrtoFloat(EdtSpeedMCGE.Text) < StrtoFloat(EdtSpeedMCG.Text) then
        begin
          ShowMessage('�y�t�]�w���~�A�W���Ȥp��U����!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
        if StrtoFloat(EdtSpeedMCGE.Text) = StrtoFloat(EdtSpeedMCG.Text) then
        begin
          ShowMessage('�y�t�]�w���~�A�W���ȵ���U����!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
      end;
    end
    else
    begin
      if (EdtCIVDSpd.Text = '') or (EdtSpeedMCG.Text = '') then
      begin
        ShowMessage('�y�t���i�ť�!' + #13, ['�Эק�'], mserror);
        LbSpdModiflag.Caption := '';
        Exit;
      end
      else
      begin
        if not NumCheck(EdtCIVDSpd.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;

        if not NumCheck(EdtSpeedMCG.Text) then
        begin
          ShowMessage('�y�t�D�Ʀr���A!' + #13, ['�Эק�'], mserror);
          LbSpdModiflag.Caption := '';
          Exit;
        end;
      end;
    end;

    if (Edtweight.Visible) and (Edtweight.Text = '') then
    begin
      ShowMessage('�魫���i�ť�!' + #13, ['�Эק�'], mserror);
      Edtweight.SetFocus;
      LbSpdModiflag.Caption := '';
      Exit;
    end;
  end;


  ConValue := IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]);

  if (Trim(SGMix.Cells[9, 0]) = '') and (Trim(SGMix.Cells[10, 0]) = '') then
  begin
  end
  else if (Trim(SGMix.Cells[9, 0]) = '') and (Trim(SGMix.Cells[10, 0]) <> '') and (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) < StrtoFloat(NullStrto(SGMix.Cells[10, 0], '0'))) then
  begin
    IVResult := False;
    msg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + '(�@�׻ݤj��' + SGMix.Cells[10, 0] + ')' + #13#10;
    LbIVModiflag.Caption := '';
  end
  else if (Trim(SGMix.Cells[10, 0]) = '') and (Trim(SGMix.Cells[9, 0]) <> '') and (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) > StrtoFloat(Nullstrto(SGMix.Cells[9, 0], '99999'))) then
  begin
    IVResult := False;
    msg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + '(�@�׻ݤp��' + SGMix.Cells[9, 0] + ')' + #13#10;
    LbIVModiflag.Caption := '';
  end
  else if (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) < StrtoFloat(NullStrto(SGMix.Cells[10, 0], '0'))) or (StrtoFloat(IVCalcul('3', '', SGMix.Cells[15, 0], Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row])) > StrtoFloat(Nullstrto(SGMix.Cells[9, 0], '99999'))) then
  begin
    IVResult := False;
    msg := '�ثe�@�׬�' + ConValue + Trim(SGMix.Cells[11, 0]) + ',�@�צ��~!' + '(�@�׻ݤ���' + SGMix.Cells[10, 0] + '��' + SGMix.Cells[9, 0] + ')' + #13#10;
    LbIVModiflag.Caption := '';
  end;


  if GBoxIV.Visible then //IVD (�u��mg/min��times�p��)
  begin
    if SGMix.Cells[12, 0] = '0' then //mg/min
    begin
      if SGMix.Cells[13, 0] <> '' then
      begin
        spdtimemax := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(Nullstrto(SGMix.Cells[14, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGmed.Cells[M_Unit, SGmed.Row]), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      end
      else
      begin
        spdtimemax := '99999';
      end;

      if (SGMix.Cells[14, 0] <> '') and (SGMix.Cells[14, 0] <> '0') then
      begin
        spdtimemin := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(Nullstrto(SGMix.Cells[13, 0], '99999')) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
      end
      else
      begin
        spdtimemin := '0';
      end;
    end
    else //��`�ɶ�
    begin
      if SGMix.Cells[19, 0] <> '' then
      begin
        spdtimemax := SGMix.Cells[19, 0];
      end
      else
      begin
        spdtimemax := '99999';
      end;

      if (SGMix.Cells[20, 0] <> '') and (SGMix.Cells[20, 0] <> '0') then
      begin
        spdtimemin := SGMix.Cells[20, 0];
      end
      else
      begin
        spdtimemin := '0';
      end;
    end;

    if (Nullstrto(Trim(EdtPack.Text), '0') <> '0') and (Nullstrto(Trim(EdtPack.Text), '') <> '�L') then
    begin

      if (spdtimemin = '0') and (StrtoFloat(Nullstrto(Trim(EdtIVTime.Text), '0')) > StrtoFloat(spdtimemax)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤp��' + spdtimemax + ' mins)' + #13#10;
      end
      else if (spdtimemax = '99999') and (StrtoFloat(Nullstrto(Trim(EdtIVTime.Text), '0')) < StrtoFloat(spdtimemin)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤj��' + spdtimemin + ' mins)' + #13#10;
      end
      else if (StrtoFloat(Nullstrto(Trim(EdtIVTime.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtIVTime.Text), '0')) > StrtoFloat(spdtimemax)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤ���' + spdtimemin + '��' + spdtimemax + ' mins)' + #13#10;
      end;
    end;
  end
  else if GBoxIVD.Visible then //IVD (�u��mg/min��times�p��)
  begin
    if SGMix.Cells[12, 0] = '0' then //mg/min
    begin
      if SGMix.Cells[13, 0] <> '' then
      begin
        spdhrmax := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[13, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemin := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', spdhrmax, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        //��`�ɶ�����P�y�t�ۤ�,���̤p��`�ɶ����H�̤j�y�t�p��
      end
      else
      begin
        spdhrmax := '99999';
        spdtimemin := '0';
      end;

      if (SGMix.Cells[14, 0] <> '') and (SGMix.Cells[14, 0] <> '0') then
      begin
        spdhrmin := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[14, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemax := IVCalcul(SGMix.Cells[12, 0], 'spdhrtime', spdhrmin, Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        //��`�ɶ�����P�y�t�ۤ�,���̤j��`�ɶ����H�̤p�y�t�p��
      end
      else
      begin
        spdhrmin := '0';
        spdtimemax := '99999';
      end;
    end
    else //��`�ɶ�
    begin
      if SGMix.Cells[19, 0] <> '' then
      begin
        spdhrmin := IVCalcul(SGMix.Cells[12, 0], 'spdtimehr', '', Trim(EdtMedQty.Text), SGMix.Cells[3, 0], SGMix.Cells[19, 0], SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemax := SGMix.Cells[19, 0];
      end
      else
      begin
        spdhrmin := '0';
        spdtimemax := '99999';
      end;

      if (SGMix.Cells[20, 0] <> '') and (SGMix.Cells[20, 0] <> '0') then
      begin
        spdhrmax := IVCalcul(SGMix.Cells[12, 0], 'spdtimehr', '', Trim(EdtMedQty.Text), SGMix.Cells[3, 0], SGMix.Cells[20, 0], SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemin := SGMix.Cells[20, 0];
      end
      else
      begin
        spdhrmax := '99999';
        spdtimemin := '0';
      end;
    end;

    if (Nullstrto(Trim(EdtPack.Text), '0') <> '0') and (Nullstrto(Trim(EdtPack.Text), '') <> '�L') then
    begin
      if (spdtimemin = '0') and (StrtoFloat(Nullstrto(Trim(EdtIVDTime.Text), '0')) > StrtoFloat(spdtimemax)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤp��' + spdtimemax + ' mins)' + #13#10;
      end
      else if (spdtimemax = '99999') and (StrtoFloat(Nullstrto(Trim(EdtIVDTime.Text), '0')) < StrtoFloat(spdtimemin)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤj��' + spdtimemin + ' mins)' + #13#10;
      end
      else if (StrtoFloat(Nullstrto(Trim(EdtIVDTime.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtIVDTime.Text), '0')) > StrtoFloat(spdtimemax)) then
      begin
        IVResult := False;
        msg := Msg + '��`�ɶ��]�w�����T,(�]�w�Ȼݤ���' + spdtimemin + '-' + spdtimemax + ' mins)' + #13#10;
      end;

      if (spdhrmin = '0') and (StrtoFloat(Nullstrto(Trim(EdtIVDSpeed.Text), '0')) > StrtoFloat(spdhrmax)) then
      begin
        IVResult := False;
        msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤp��' + spdhrmax + ' mL/hr)' + #13#10;
      end
      else if (spdhrmax = '99999') and (StrtoFloat(Nullstrto(Trim(EdtIVDSpeed.Text), '0')) < StrtoFloat(spdhrmin)) then
      begin
        IVResult := False;
        msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤj��' + spdhrmin + ' mL/hr)' + #13#10;
      end
      else if (StrtoFloat(Nullstrto(Trim(EdtIVDSpeed.Text), '0')) < StrtoFloat(spdhrmin)) or (StrtoFloat(Nullstrto(Trim(EdtIVDSpeed.Text), '0')) > StrtoFloat(spdhrmax)) then
      begin
        IVResult := False;
        msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤ���' + spdhrmin + '-' + spdhrmax + ' mL/hr)' + #13#10;
      end;


    end;
  end
  else if GBoxCIVD.Visible then
  begin
    if SGMix.Cells[12, 0] = '0' then
    begin
      if SGMix.Cells[13, 0] <> '' then
      begin
        spdhrmax := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[13, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemax := SGMix.Cells[13, 0];
      end
      else
      begin
        spdhrmax := '99999';
        spdtimemax := '99999';
      end;

      if (SGMix.Cells[14, 0] <> '') and (SGMix.Cells[14, 0] <> '0') then
      begin
        spdhrmin := IVCalcul(SGMix.Cells[12, 0], 'spdmghr', FloattoStr(StrtoFloat(SGMix.Cells[14, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[33, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemin := SGMix.Cells[14, 0];
      end
      else
      begin
        spdhrmin := '0';
        spdtimemin := '0';
      end;
    end
    else if SGMix.Cells[12, 0] = '1' then //KG�p��
    begin
      if SGMix.Cells[16, 0] <> '' then
      begin
        spdhrmax := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(SGMix.Cells[16, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemax := SGMix.Cells[16, 0];
      end
      else
      begin
        spdhrmax := '99999';
        spdtimemax := '99999';
      end;

      if (SGMix.Cells[17, 0] <> '') and (SGMix.Cells[17, 0] <> '0') then
      begin
        spdhrmin := IVCalcul(SGMix.Cells[12, 0], 'spdkghr', FloattoStr(StrtoFloat(SGMix.Cells[17, 0]) / StrtoFloat(Nullstrto(SGMix.Cells[29, 0], '1')) / StrtoFloat(Nullstrto(SGMix.Cells[30, 0], '1'))), Trim(EdtMedQty.Text), SGMix.Cells[3, 0], '0', SGMix.Cells[31, 0], SGMed.Cells[M_Unit, SGMed.Row]);
        spdtimemin := SGMix.Cells[17, 0];
      end
      else
      begin
        spdhrmin := '0';
        spdtimemin := '0';
      end;
    end;


    if (Nullstrto(Trim(EdtPack.Text), '0') <> '0') and (Nullstrto(Trim(EdtPack.Text), '') <> '�L') then
    begin
      if not CbIVD.Checked then
      begin
        if (spdtimemin = '0') and (StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) > StrtoFloat(spdtimemax)) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤp��' + spdtimemax + LbTUnit.Caption + ' )' + #13#10;
        end
        else if (spdtimemax = '99999') and (StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) < StrtoFloat(spdtimemin)) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤj��' + spdtimemin + LbTUnit.Caption + ' )' + #13#10;
        end
        else if (StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) > StrtoFloat(spdtimemax)) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤ���' + spdtimemin + '��' + spdtimemax + LbTUnit.Caption + ' )' + #13#10;
        end;

        if (spdhrmin = '0') and (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) > StrtoFloat(spdhrmax)) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤp��' + spdhrmax + ' mL/hr)' + #13#10;
        end
        else if (spdhrmax = '99999') and (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) < StrtoFloat(spdhrmin)) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤj��' + spdhrmin + ' mL/hr)' + #13#10;
        end
        else if (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) < StrtoFloat(spdhrmin)) or (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) > StrtoFloat(spdhrmax)) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤ���' + spdhrmin + '-' + spdhrmax + ' mL/hr)' + #13#10;
        end;
      end
      else
      begin
        if (spdtimemin = '0') and ((StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) > StrtoFloat(spdtimemax)) or (StrtoFloat(Nullstrto(Trim(EdtSpeedMCGE.Text), '0')) > StrtoFloat(spdtimemax))) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤp��' + spdtimemax + LbTUnit.Caption + ' )' + #13#10;
        end
        else if (spdtimemax = '99999') and ((StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtSpeedMCGE.Text), '0')) < StrtoFloat(spdtimemin))) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤj��' + spdtimemin + LbTUnit.Caption + ' )' + #13#10;
        end
        else if ((StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtSpeedMCG.Text), '0')) > StrtoFloat(spdtimemax))) or ((StrtoFloat(Nullstrto(Trim(EdtSpeedMCGE.Text), '0')) < StrtoFloat(spdtimemin)) or (StrtoFloat(Nullstrto(Trim(EdtSpeedMCGE.Text), '0')) > StrtoFloat(spdtimemax))) then
        begin
          IVResult := False;
          msg := Msg + '�t�׳]�w�����T,(�]�w�Ȼݤ���' + spdtimemin + '��' + spdtimemax + LbTUnit.Caption + ' )' + #13#10;
        end;

        if (spdhrmin = '0') and ((StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) > StrtoFloat(spdhrmax)) or (StrtoFloat(Nullstrto(Trim(EdtCIVDSpdE.Text), '0')) > StrtoFloat(spdhrmax))) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤp��' + spdhrmax + ' mL/hr)' + #13#10;
        end
        else if (spdhrmax = '99999') and ((StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) < StrtoFloat(spdhrmin)) or (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) < StrtoFloat(spdhrmin))) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤj��' + spdhrmin + ' mL/hr)' + #13#10;
        end
        else if ((StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) < StrtoFloat(spdhrmin)) or (StrtoFloat(Nullstrto(Trim(EdtCIVDSpd.Text), '0')) > StrtoFloat(spdhrmax))) or ((StrtoFloat(Nullstrto(Trim(EdtCIVDSpdE.Text), '0')) < StrtoFloat(spdhrmin)) or (StrtoFloat(Nullstrto(Trim(EdtCIVDSpdE.Text), '0')) > StrtoFloat(spdhrmax))) then
        begin
          IVResult := False;
          msg := Msg + '�y�t�]�w�����T,(�]�w�Ȼݤ���' + spdhrmin + '-' + spdhrmax + ' mL/hr)' + #13#10;
        end;
      end;
    end;
  end;


  if not IVResult then
  begin
    ShowMessage('��`�����ݦA�T�{!' + #13 + msg, ['�Эק�'], mserror);
    //�glog
    if GBoxIV.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), '', '', '0', '', '', '', '', Trim(EdtIVTime.Text), '', '', '', Trim(EdtOther.Text), '', Trim(LbIVTUnit.Caption), '', Trim(LbMedpack.Caption), '', msg);
    end
    else if GBoxIVD.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), '', '', '0', Trim(EdtIVDSpeed.Text), '', '', '', Trim(EdtIVDTime.Text), '', '', '', Trim(EdtOther.Text), Trim(LbIVDSpdUnit.Caption), Trim(LbIVDTUnit.Caption), '', Trim(LbMedpack.Caption), '', msg);

    end
    else if GBoxCIVD.Visible then
    begin
      SaveIVError(Trim(SGMed.Cells[M_Code, SGMed.Row]), Trim(EdtMedQty.Text), Trim(SGMed.Cells[M_Unit, SGMed.Row]), Trim(SGMed.Cells[M_Cir, SGMed.Row]), Trim(SGMed.Cells[M_Path, SGMed.Row]),
        Trim(MIXCombo.Text), Trim(EdtMixpack.Text), '', '', '0', Trim(EdtCIVDSpd.Text), Trim(EdtCIVDSpdE.Text), Trim(EdtSpeedMCG.Text), Trim(EdtSpeedMCGE.Text), '', '', Trim(EdtWeight.Text), Trim(EdtQty.Text), Trim(EdtOther.Text), Trim(LbSpdUnit.Caption), '', Trim(LbTUnit.Caption), Trim(LbMedpack.Caption), Trim(EdtQtyMax.Text), msg);

    end;

    LbIVModiflag.Caption := '';

    Exit;
  end;

  row := SGMed.Row;
  ordercode := Trim(SGMed.Cells[M_Code, SGMed.Row]);

  if (Nullstrto(Trim(EdtPack.Text), '') <> '') and (Nullstrto(Trim(MixCombo.Text), '') <> '�L') and (Uppercase(SGMed.Cells[M_PATH, SGMed.Row]) = 'CIVD') and (SGMed.Cells[M_IVSEQ, SGMed.Row] = '') then
  begin
    with DM.QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.*,b.* from MIX_COMPARE_BASIC a,orderitem_basic b where mix_code=' + Qt(Trim(Mixcombo.Text)));
      SQL.Add(' and ' + Qt(EdtMixPack.Text) + ' between pack_min and pack_max');
      SQL.Add(' and a.fee_code = b.fee_code');
      //sql.savetofile('mix.txt');
      Open;
      if not Eof then
      begin
        case ShowMessage('�O�_�ݶ}���I�w' + FieldByName('FEE_code').AsString + ' ' + FieldByName('FEE_name').AsString + '?', ['�O', '�_'], msComf) of
          1: begin
               //exit;
            end;
          0: begin
              tmpcir := '';
              tmpMome := '';
              DM.QrySearch.Close;
              DM.QrySearch.SQL.Clear;
              DM.QrySearch.SQL.Add('select CODE_ONE,to_number(CODE_ONENAME) CODE_ONENAME from COMPARE_CODE_BASIC WHERE IPD_RELATED=''V1''');
              DM.QrySearch.SQL.Add('  and Code_onename between ''0'' and ''99999'' AND TRIM(CODE_ONE) NOT IN (''STAT'',''ASORDER'') GROUP BY CODE_ONE,CODE_ONENAME HAVING Trim(CODE_ONENAME)>=' + Qt(FloattoStr(Ceil(StrtoFloat(NullStrTo(EdtCIVDSpd.Text, '0')) * 24 / StrtoFloat(NullStrTo(Edtpack.Text, '1'))))) + '  ORDER BY to_number(CODE_ONENAME)');

              DM.QrySearch.Open;
              tmpcir := Trim(DM.QrySearch.FieldbyName('code_one').AsString);
              DM.QrySearch.Close;
              if not CbIVD.Checked then
                tmpMome := 'for ' + Trim(SGMed.Cells[M_name, SGMed.Row]) + ' in ' + Trim(MixCombo.Text) + ' ' + Trim(EdtMixPack.Text) + 'mL run ' + Trim(EdtCIVDSpd.Text) + Trim(LbSpdUnit.Caption) + '(' + Trim(EdtSpeedMCG.Text) + Trim(LbTUnit.Caption) + ')' + '�C' + SGmed.Cells[M_Memo, SGmed.RowCount - 1]
              else
                tmpMome := 'for ' + Trim(SGMed.Cells[M_name, SGMed.Row]) + ' in ' + Trim(MixCombo.Text) + ' ' + Trim(EdtMixPack.Text) + 'mL run ' + Trim(EdtCIVDSpd.Text) + '-' + Trim(EdtCIVDSpdE.Text) + Trim(LbSpdUnit.Caption) + '(' + Trim(EdtSpeedMCG.Text) + '-' + Trim(EdtSpeedMCGE.Text) + Trim(LbTUnit.Caption) + ')' + '�C' + SGmed.Cells[M_Memo, SGmed.RowCount - 1];

              for i := 0 to SGMed.RowCount-1 do
              begin
                if trim(SGMed.Cells[M_PARENTCODE, i]) = ordercode then
                begin
                  SGMed.Row := i;
                  delrowflag := 'Y';
                  Break;
                end;
              end;
              if trim(SGMed.Cells[M_code, SGMed.row]) = ordercode then
              begin
                SGMed.Row := SGMed.Row + 1;
                if trim(SGMed.Cells[M_code, SGMed.Row]) <> '' then
                  SGMed.Row := SGMed.RowCount - 1;
              end;
              InsertMed(FieldByName('FEE_code').AsString, tmpcir, Trim(FieldByName('UNIT_QTY').AsString), '', '', SGMed.Cells[M_Path, SGMed.Row-1], tmpMome, SGMed.Cells[M_days, SGMed.Row]);

              SGMed.Cells[M_IVSEQ, SGMed.Row - 1] := IntToStr(row);
              SGMed.Cells[M_PARENTCODE, SGMed.Row - 1] := ordercode;
              if (Trim(SGMed.Cells[M_Path, row]) = 'CIVD') and (Trim(SGMed.Cells[M_Cir, row]) = 'ASORDER') then
              begin
                SGMed.Cells[M_Cir, SGMed.Row - 1] := SGMed.Cells[M_Cir, row];
                SGMed.Cells[M_Path, SGMed.Row - 1] := SGMed.Cells[M_Path, row];
                SGMed.Cells[M_Qty, SGMed.Row - 1] :=  '1';

                SGMed.Cells[M_ttl_qty,SGMed.Row - 1] := '1';
              end;

              SGMed.Row := row;
              if delrowflag = 'Y' then
                SGMed.RowCount := SGMed.RowCount - 1;
            end;
        end;
      end
      else
      begin
        case ShowMessage('�O�_�ݶ}���I�w?', ['�O', '�_'], msComf) of
          1: begin
            //exit;
            end;
          0: begin
              PageControl1.ActivePageIndex := 2;
              DSIV.DataSet := nil;
              DsIV.DataSet := DM.QryOrder;
              SGMed.Cells[M_PARENTFLAG, SGMed.Row] := 'Y';
            end;
        end;
      end;
    end;
  end;

  SGMed.Cells[M_MIX, SGMed.Row] := MIXCombo.Text;
  SGMed.Cells[M_PACK, SGMed.Row] := EdtMixpack.Text;
  SGMed.Cells[M_Qty, SGMed.Row] := EdtMedQty.Text;


  if not CbIVD.Checked then
    SGMed.Cells[M_Spdtype, SGMed.Row] := '0'
  else
    SGMed.Cells[M_Spdtype, SGMed.Row] := '1';

  tmpMome := '';
  if GBoxIV.Visible then
  begin
    SGMed.Cells[M_SPEED, SGMed.Row] := '';
    SGMed.Cells[M_SPEEDE, SGMed.Row] := '';
    SGMed.Cells[M_Speedunit, SGMed.Row] := '';
    SGMed.Cells[M_SpeedMCG, SGMed.Row] := '';
    SGMed.Cells[M_SpeedMCGE, SGMed.Row] := '';
    SGMed.Cells[M_SpeedMCGUnit, SGMed.Row] := '';
    SGMed.Cells[M_Times, SGMed.Row] := EdtIVTime.Text;
    SGMed.Cells[M_TimesE, SGMed.Row] := '';
    SGMed.Cells[M_TimeUnit, SGMed.Row] := LbIVTUnit.Caption;
    SGMed.Cells[M_Dayqty, SGMed.Row] := '';
    SGMed.Cells[M_Dayqty_Max, SGMed.Row] := '';
    SGMed.Cells[M_Weight, SGMed.Row] := '';
    tmpMome := trim(SGMed.Cells[M_name, SGMed.Row]) + ' ' + trim(SGMed.Cells[M_Qty, SGMed.Row]) + ' ' +
               Trim(SGMed.Cells[M_Unit, SGMed.Row]) + ' ' + trim(SGMed.Cells[M_PATH, SGMed.Row]) + ' ' +
               Trim(SGMed.Cells[M_Cir, SGMed.Row]) + ', for ' +EdtIVTime.Text +' mins\ ';

    EdtMemo.Text := StringReplace(EdtMemo.Text,trim(tmpMome),'',[rfReplaceAll]);
    SGMed.Cells[M_Memo, SGMed.Row] := trim(tmpMome) + trim(EdtMemo.Text);

  end
  else if GBoxIVD.Visible then
  begin
    SGMed.Cells[M_SPEED, SGMed.Row] := EdtIVDSpeed.Text;
    SGMed.Cells[M_SPEEDE, SGMed.Row] := '';
    SGMed.Cells[M_Speedunit, SGMed.Row] := LbIVDSpdUnit.Caption;
    SGMed.Cells[M_SpeedMCG, SGMed.Row] := '';
    SGMed.Cells[M_SpeedMCGE, SGMed.Row] := '';
    SGMed.Cells[M_SpeedMCGUnit, SGMed.Row] := '';
    SGMed.Cells[M_Times, SGMed.Row] := EdtIVDTime.Text;
    SGMed.Cells[M_TimesE, SGMed.Row] := '';
    SGMed.Cells[M_TimeUnit, SGMed.Row] := LbIVDTUnit.Caption;
    SGMed.Cells[M_Dayqty, SGMed.Row] := '';
    SGMed.Cells[M_Dayqty_Max, SGMed.Row] := '';
    SGMed.Cells[M_Weight, SGMed.Row] := '';
    tmpMome := trim(SGMed.Cells[M_name, SGMed.Row]) + ' ' + Trim(SGMed.Cells[M_Cir, SGMed.Row]) + ' ' +
               trim(SGMed.Cells[M_Qty, SGMed.Row]) + ' ' + Trim(SGMed.Cells[M_Unit, SGMed.Row]) + ' ' +
               trim(SGMed.Cells[M_PATH, SGMed.Row]) + ' in ' + MIXCombo.Text + ' ' + EdtMixpack.Text + 'ml run ' +
               EdtIVDSpeed.Text + 'ml/hr, for ' + EdtIVDTime.Text + ' mins\ ';
    EdtMemo.Text := StringReplace(EdtMemo.Text,trim(tmpMome),'',[rfReplaceAll]);
    SGMed.Cells[M_Memo, SGMed.Row] := trim(tmpMome) + trim(EdtMemo.Text);

  end
  else if GBoxCIVD.Visible then
  begin
    SGMed.Cells[M_SPEED, SGMed.Row] := EdtCIVDSpd.Text;
    SGMed.Cells[M_SPEEDE, SGMed.Row] := EdtCIVDSpdE.Text;
    SGMed.Cells[M_Speedunit, SGMed.Row] := LbSpdUnit.Caption;
    SGMed.Cells[M_SpeedMCG, SGMed.Row] := EdtSpeedMCG.Text;
    SGMed.Cells[M_SpeedMCGE, SGMed.Row] := EdtSpeedMCGE.Text;
    SGMed.Cells[M_SpeedMCGUnit, SGMed.Row] := LbTUnit.Caption;
    SGMed.Cells[M_Times, SGMed.Row] := '';
    SGMed.Cells[M_TimesE, SGMed.Row] := '';
    SGMed.Cells[M_TimeUnit, SGMed.Row] := '';
    SGMed.Cells[M_Dayqty, SGMed.Row] := EdtQty.Text;
    SGMed.Cells[M_Dayqty_Max, SGMed.Row] := EdtQtyMax.Text;
    SGMed.Cells[M_Weight, SGMed.Row] := EdtWeight.Text;
    tmpMome := trim(SGMed.Cells[M_name, SGMed.Row]) + ' ' + Trim(SGMed.Cells[M_Cir, SGMed.Row]) + ' ' +
               trim(SGMed.Cells[M_Qty, SGMed.Row]) + ' ' + Trim(SGMed.Cells[M_Unit, SGMed.Row]) + ' ' +
               trim(SGMed.Cells[M_PATH, SGMed.Row]) + ' in '  + MIXCombo.Text + ' ' + EdtCIVDSpd.Text + 'ml continuous run ';
    EdtMemo.Text := StringReplace(EdtMemo.Text,trim(tmpMome),'',[rfReplaceAll]);
    SGMed.Cells[M_Memo, SGMed.Row] := trim(tmpMome) + trim(EdtMemo.Text);

  end;

  SGMed.Cells[M_MedPack, SGMed.Row] := LbMedpack.Caption;
  SGMed.Cells[M_AllPack, SGMed.Row] := EdtPack.Text;



  if Uppercase(Trim(SGMed.Cells[M_MIX, SGMed.Row])) = 'OTHER' then
    SGMed.Cells[M_Other, SGMed.Row] := EdtOther.Text
  else
    SGMed.Cells[M_Other, SGMed.Row] := '';

  if lbIVPump.Visible then
    SGMed.Cells[M_Memo, SGMed.Row] := lbIVPump.Caption + '�C' + EdtMemo.Text;

  SGMed.Cells[M_ttl_qty,SGMed.Row] := CalTotal(SGMed.Cells[M_code,SGMed.Row],SGMed.Cells[M_ins,SGMed.Row],SGMed.Cells[M_CIR,SGMed.Row],StrToInt(NullStrTo(Trim(SGMed.Cells[M_PKG,SGMed.Row]),'0')),StrToInt(NullStrTo(Trim(SGMed.Cells[M_days,SGMed.Row]),'0')),StrToFloat(NullStrTo(Trim(SGMed.Cells[M_Qty,SGMed.Row]),'0')));
  SetPanel(False, IVPanel);
  SGMed.Enabled := True;

  SGMed.Refresh;

  ClearIVItem(self);
end;

procedure TFrmOrder.BtnCloseClick(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Text := '';
  MemoPanel.Visible := False;
end;

procedure TFrmOrder.btnInfoClick(Sender: TObject);
var
  Path: string;
begin
  inherited;
  Path := SetSys.ReadString('OTHERSYSTEMLINK', '�B�趰', '');
  comStrRep(Path);
  ComStrRepParam(path, Trim(SGmed.Cells[M_CODE, SGmed.row]));
  ShellExecute(Handle, 'open', PChar(Path), nil, nil, SW_SHOWNORMAL);
end;

end.




