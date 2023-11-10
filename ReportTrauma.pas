unit ReportTrauma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, QRCtrls, QuickRpt, ExtCtrls, ComCtrls, StdCtrls, ADODB, Contnrs,
  DB, DBCtrls, dbcgrids, Buttons, Grids, Registry, Printers, Menus, Jpeg;

type
  TFrmfirstrecord2 = class(TFrmMain)
    Panel1: TPanel;
    ScrollBox2: TScrollBox;
    Panel9: TPanel;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
    CheckBox71: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox72: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox74: TCheckBox;
    CheckBox75: TCheckBox;
    CheckBox76: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox78: TCheckBox;
    CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;
    CheckBox81: TCheckBox;
    CheckBox82: TCheckBox;
    CheckBox83: TCheckBox;
    CheckBox84: TCheckBox;
    GroupBox5: TGroupBox;
    CheckBox85: TCheckBox;
    CheckBox86: TCheckBox;
    CheckBox87: TCheckBox;
    GroupBox7: TGroupBox;
    ScrollBox1: TScrollBox;
    GroupBox9: TGroupBox;
    Chief_Complaints: TRichEdit;
    GroupBox11: TGroupBox;
    Present_Illness: TRichEdit;
    GroupBox12: TGroupBox;
    Past_History: TRichEdit;
    GroupBox8: TGroupBox;
    Medication_History: TRichEdit;
    GroupBox13: TGroupBox;
    Allergy: TRichEdit;
    GroupBox14: TGroupBox;
    Physical_Examination: TRichEdit;
    GroupBox15: TGroupBox;
    Trauma_Sheet: TRichEdit;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    RichEdit2: TRichEdit;
    GroupBox18: TGroupBox;
    Plan: TRichEdit;
    CheckBox475: TCheckBox;
    CheckBox476: TCheckBox;
    CheckBox477: TCheckBox;
    CheckBox478: TCheckBox;
    CheckBox479: TCheckBox;
    CheckBox480: TCheckBox;
    CheckBox481: TCheckBox;
    CheckBox482: TCheckBox;
    CheckBox483: TCheckBox;
    CheckBox484: TCheckBox;
    CheckBox485: TCheckBox;
    CheckBox486: TCheckBox;
    CheckBox487: TCheckBox;
    Button1: TButton;
    pag_name: TEdit;
    Button6: TButton;
    Panel3: TPanel;
    RGPAKG: TRadioGroup;
    GroupBox19: TGroupBox;
    EDTGRPNO: TEdit;
    GroupBox20: TGroupBox;
    edtPkgName: TEdit;
    Button2: TButton;
    Button4: TButton;
    dsfrst: TDataSource;
    pnlphrase: TPanel;
    DBCphrase: TDBCtrlGrid;
    DBText38: TDBText;
    Button3: TButton;
    Button5: TButton;
    GroupBox21: TGroupBox;
    TRA11: TCheckBox;
    TRA12: TCheckBox;
    GroupBox22: TGroupBox;
    CheckBox290: TCheckBox;
    CheckBox291: TCheckBox;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    CheckBox294: TCheckBox;
    CheckBox295: TCheckBox;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    CheckBox299: TCheckBox;
    CheckBox300: TCheckBox;
    TRA13: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox301: TCheckBox;
    Edit4: TEdit;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    CheckBox304: TCheckBox;
    CheckBox305: TCheckBox;
    Edit6: TEdit;
    GroupBox6: TGroupBox;
    GroupBox29: TGroupBox;
    CheckBox88: TCheckBox;
    CheckBox90: TCheckBox;
    CheckBox89: TCheckBox;
    CheckBox91: TCheckBox;
    GroupBox30: TGroupBox;
    CheckBox92: TCheckBox;
    CheckBox93: TCheckBox;
    CheckBox94: TCheckBox;
    CheckBox95: TCheckBox;
    CheckBox209: TCheckBox;
    GroupBox31: TGroupBox;
    CheckBox225: TCheckBox;
    GroupBox32: TGroupBox;
    CheckBox96: TCheckBox;
    CheckBox97: TCheckBox;
    CheckBox98: TCheckBox;
    CheckBox99: TCheckBox;
    CheckBox100: TCheckBox;
    GroupBox33: TGroupBox;
    GroupBox34: TGroupBox;
    CheckBox103: TCheckBox;
    CheckBox102: TCheckBox;
    GroupBox35: TGroupBox;
    CheckBox107: TCheckBox;
    CheckBox101: TCheckBox;
    CheckBox104: TCheckBox;
    CheckBox108: TCheckBox;
    GroupBox36: TGroupBox;
    CheckBox105: TCheckBox;
    CheckBox106: TCheckBox;
    GroupBox37: TGroupBox;
    GroupBox38: TGroupBox;
    CheckBox111: TCheckBox;
    CheckBox183: TCheckBox;
    Edit1: TEdit;
    GroupBox39: TGroupBox;
    CheckBox200: TCheckBox;
    CheckBox112: TCheckBox;
    Edit7: TEdit;
    GroupBox43: TGroupBox;
    CheckBox125: TCheckBox;
    CheckBox126: TCheckBox;
    CheckBox127: TCheckBox;
    CheckBox128: TCheckBox;
    CheckBox129: TCheckBox;
    CheckBox130: TCheckBox;
    CheckBox131: TCheckBox;
    CheckBox132: TCheckBox;
    CheckBox133: TCheckBox;
    Edit9: TEdit;
    GroupBox44: TGroupBox;
    GroupBox45: TGroupBox;
    GroupBox46: TGroupBox;
    CheckBox135: TCheckBox;
    CheckBox136: TCheckBox;
    GroupBox47: TGroupBox;
    CheckBox134: TCheckBox;
    CheckBox137: TCheckBox;
    GroupBox48: TGroupBox;
    CheckBox139: TCheckBox;
    CheckBox140: TCheckBox;
    CheckBox141: TCheckBox;
    CheckBox142: TCheckBox;
    GroupBox49: TGroupBox;
    GroupBox50: TGroupBox;
    CheckBox144: TCheckBox;
    CheckBox146: TCheckBox;
    CheckBox145: TCheckBox;
    CheckBox148: TCheckBox;
    CheckBox109: TCheckBox;
    CheckBox152: TCheckBox;
    CheckBox154: TCheckBox;
    CheckBox151: TCheckBox;
    CheckBox153: TCheckBox;
    GroupBox51: TGroupBox;
    CheckBox155: TCheckBox;
    CheckBox156: TCheckBox;
    CheckBox157: TCheckBox;
    CheckBox158: TCheckBox;
    GroupBox52: TGroupBox;
    CheckBox159: TCheckBox;
    CheckBox160: TCheckBox;
    CheckBox161: TCheckBox;
    Edit10: TEdit;
    GroupBox53: TGroupBox;
    GroupBox54: TGroupBox;
    CheckBox162: TCheckBox;
    CheckBox163: TCheckBox;
    CheckBox164: TCheckBox;
    GroupBox55: TGroupBox;
    CheckBox165: TCheckBox;
    CheckBox166: TCheckBox;
    GroupBox56: TGroupBox;
    CheckBox167: TCheckBox;
    CheckBox168: TCheckBox;
    Edit11: TEdit;
    GroupBox57: TGroupBox;
    GroupBox58: TGroupBox;
    CheckBox169: TCheckBox;
    CheckBox170: TCheckBox;
    CheckBox171: TCheckBox;
    CheckBox172: TCheckBox;
    CheckBox173: TCheckBox;
    CheckBox174: TCheckBox;
    GroupBox59: TGroupBox;
    CheckBox175: TCheckBox;
    CheckBox176: TCheckBox;
    CheckBox177: TCheckBox;
    CheckBox178: TCheckBox;
    GroupBox60: TGroupBox;
    CheckBox179: TCheckBox;
    CheckBox180: TCheckBox;
    CheckBox181: TCheckBox;
    CheckBox182: TCheckBox;
    GroupBox61: TGroupBox;
    CheckBox184: TCheckBox;
    CheckBox185: TCheckBox;
    GroupBox62: TGroupBox;
    GroupBox63: TGroupBox;
    CheckBox187: TCheckBox;
    CheckBox188: TCheckBox;
    GroupBox64: TGroupBox;
    CheckBox190: TCheckBox;
    CheckBox191: TCheckBox;
    CheckBox192: TCheckBox;
    CheckBox193: TCheckBox;
    CheckBox194: TCheckBox;
    CheckBox195: TCheckBox;
    CheckBox196: TCheckBox;
    CheckBox197: TCheckBox;
    CheckBox198: TCheckBox;
    CheckBox199: TCheckBox;
    GroupBox65: TGroupBox;
    CheckBox186: TCheckBox;
    CheckBox189: TCheckBox;
    GroupBox66: TGroupBox;
    CheckBox201: TCheckBox;
    CheckBox202: TCheckBox;
    GroupBox67: TGroupBox;
    CheckBox110: TCheckBox;
    CheckBox138: TCheckBox;
    GroupBox68: TGroupBox;
    CheckBox143: TCheckBox;
    CheckBox203: TCheckBox;
    GroupBox69: TGroupBox;
    CheckBox206: TCheckBox;
    CheckBox287: TCheckBox;
    GroupBox70: TGroupBox;
    CheckBox212: TCheckBox;
    CheckBox213: TCheckBox;
    CheckBox214: TCheckBox;
    CheckBox215: TCheckBox;
    CheckBox216: TCheckBox;
    CheckBox217: TCheckBox;
    Edit12: TEdit;
    GroupBox71: TGroupBox;
    CheckBox227: TCheckBox;
    CheckBox228: TCheckBox;
    GroupBox72: TGroupBox;
    CheckBox218: TCheckBox;
    CheckBox219: TCheckBox;
    CheckBox220: TCheckBox;
    CheckBox221: TCheckBox;
    CheckBox222: TCheckBox;
    GroupBox73: TGroupBox;
    CheckBox223: TCheckBox;
    CheckBox224: TCheckBox;
    CheckBox237: TCheckBox;
    CheckBox238: TCheckBox;
    Edit13: TEdit;
    GroupBox74: TGroupBox;
    CheckBox229: TCheckBox;
    CheckBox230: TCheckBox;
    CheckBox231: TCheckBox;
    CheckBox232: TCheckBox;
    CheckBox233: TCheckBox;
    CheckBox234: TCheckBox;
    CheckBox235: TCheckBox;
    CheckBox236: TCheckBox;
    Edit15: TEdit;
    GroupBox76: TGroupBox;
    CheckBox243: TCheckBox;
    GroupBox77: TGroupBox;
    GroupBox78: TGroupBox;
    CheckBox250: TCheckBox;
    CheckBox251: TCheckBox;
    GroupBox79: TGroupBox;
    CheckBox253: TCheckBox;
    CheckBox254: TCheckBox;
    CheckBox255: TCheckBox;
    CheckBox256: TCheckBox;
    CheckBox257: TCheckBox;
    CheckBox258: TCheckBox;
    CheckBox259: TCheckBox;
    GroupBox80: TGroupBox;
    CheckBox261: TCheckBox;
    CheckBox262: TCheckBox;
    CheckBox263: TCheckBox;
    CheckBox264: TCheckBox;
    GroupBox81: TGroupBox;
    CheckBox266: TCheckBox;
    CheckBox267: TCheckBox;
    CheckBox268: TCheckBox;
    Edit16: TEdit;
    GroupBox82: TGroupBox;
    GroupBox83: TGroupBox;
    CheckBox270: TCheckBox;
    CheckBox271: TCheckBox;
    CheckBox272: TCheckBox;
    GroupBox84: TGroupBox;
    CheckBox274: TCheckBox;
    CheckBox275: TCheckBox;
    CheckBox276: TCheckBox;
    GroupBox85: TGroupBox;
    CheckBox278: TCheckBox;
    CheckBox279: TCheckBox;
    GroupBox86: TGroupBox;
    CheckBox281: TCheckBox;
    CheckBox282: TCheckBox;
    GroupBox87: TGroupBox;
    CheckBox284: TCheckBox;
    CheckBox285: TCheckBox;
    Edit17: TEdit;
    Button7: TButton;
    GroupBox40: TGroupBox;
    CheckBox113: TCheckBox;
    CheckBox115: TCheckBox;
    CheckBox114: TCheckBox;
    CheckBox116: TCheckBox;
    GroupBox41: TGroupBox;
    CheckBox117: TCheckBox;
    CheckBox118: TCheckBox;
    CheckBox119: TCheckBox;
    GroupBox42: TGroupBox;
    CheckBox121: TCheckBox;
    CheckBox122: TCheckBox;
    CheckBox123: TCheckBox;
    Edit8: TEdit;
    GroupBox75: TGroupBox;
    CheckBox226: TCheckBox;
    CheckBox239: TCheckBox;
    CheckBox240: TCheckBox;
    CheckBox241: TCheckBox;
    CheckBox242: TCheckBox;
    Edit14: TEdit;
    GroupBox10: TGroupBox;
    GroupBox88: TGroupBox;
    CheckBox306: TCheckBox;
    GroupBox89: TGroupBox;
    CheckBox307: TCheckBox;
    CheckBox308: TCheckBox;
    CheckBox309: TCheckBox;
    CheckBox310: TCheckBox;
    CheckBox311: TCheckBox;
    CheckBox312: TCheckBox;
    Edit18: TEdit;
    GroupBox90: TGroupBox;
    CheckBox313: TCheckBox;
    CheckBox314: TCheckBox;
    CheckBox315: TCheckBox;
    CheckBox316: TCheckBox;
    CheckBox317: TCheckBox;
    CheckBox318: TCheckBox;
    CheckBox319: TCheckBox;
    CheckBox320: TCheckBox;
    CheckBox321: TCheckBox;
    CheckBox322: TCheckBox;
    CheckBox323: TCheckBox;
    CheckBox324: TCheckBox;
    CheckBox325: TCheckBox;
    CheckBox326: TCheckBox;
    CheckBox327: TCheckBox;
    CheckBox328: TCheckBox;
    CheckBox329: TCheckBox;
    CheckBox330: TCheckBox;
    CheckBox331: TCheckBox;
    CheckBox332: TCheckBox;
    CheckBox333: TCheckBox;
    CheckBox334: TCheckBox;
    CheckBox335: TCheckBox;
    CheckBox336: TCheckBox;
    CheckBox337: TCheckBox;
    GroupBox91: TGroupBox;
    CheckBox339: TCheckBox;
    CheckBox340: TCheckBox;
    CheckBox341: TCheckBox;
    Edit19: TEdit;
    GroupBox92: TGroupBox;
    CheckBox342: TCheckBox;
    CheckBox343: TCheckBox;
    CheckBox344: TCheckBox;
    CheckBox345: TCheckBox;
    CheckBox346: TCheckBox;
    CheckBox347: TCheckBox;
    GroupBox93: TGroupBox;
    CheckBox349: TCheckBox;
    CheckBox350: TCheckBox;
    CheckBox351: TCheckBox;
    CheckBox352: TCheckBox;
    Edit21: TEdit;
    GroupBox94: TGroupBox;
    CheckBox353: TCheckBox;
    CheckBox354: TCheckBox;
    CheckBox355: TCheckBox;
    CheckBox356: TCheckBox;
    CheckBox357: TCheckBox;
    Edit20: TEdit;
    GroupBox95: TGroupBox;
    CheckBox358: TCheckBox;
    CheckBox359: TCheckBox;
    CheckBox360: TCheckBox;
    CheckBox361: TCheckBox;
    CheckBox368: TCheckBox;
    GroupBox96: TGroupBox;
    CheckBox370: TCheckBox;
    CheckBox371: TCheckBox;
    CheckBox372: TCheckBox;
    CheckBox373: TCheckBox;
    CheckBox374: TCheckBox;
    Edit22: TEdit;
    GroupBox97: TGroupBox;
    CheckBox362: TCheckBox;
    CheckBox363: TCheckBox;
    CheckBox364: TCheckBox;
    CheckBox365: TCheckBox;
    CheckBox366: TCheckBox;
    CheckBox367: TCheckBox;
    Edit23: TEdit;
    GroupBox98: TGroupBox;
    GroupBox99: TGroupBox;
    CheckBox376: TCheckBox;
    CheckBox377: TCheckBox;
    CheckBox378: TCheckBox;
    CheckBox379: TCheckBox;
    CheckBox380: TCheckBox;
    CheckBox381: TCheckBox;
    CheckBox382: TCheckBox;
    Edit24: TEdit;
    GroupBox100: TGroupBox;
    CheckBox383: TCheckBox;
    CheckBox384: TCheckBox;
    CheckBox385: TCheckBox;
    CheckBox386: TCheckBox;
    Edit25: TEdit;
    BitBtn1: TBitBtn;
    GroupBox101: TGroupBox;
    CheckBox387: TCheckBox;
    CheckBox388: TCheckBox;
    CheckBox389: TCheckBox;
    CheckBox390: TCheckBox;
    CheckBox391: TCheckBox;
    CheckBox392: TCheckBox;
    Edit26: TEdit;
    pnlIcd: TPanel;
    DBCIcd: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    pnlIcdT: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DSIcd: TDataSource;
    Timer1: TTimer;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    Edit39: TEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    StaticText1: TStaticText;
    StaticText12: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    Edit43: TEdit;
    StaticText4: TStaticText;
    GroupBox118: TGroupBox;
    CheckBox120: TCheckBox;
    CheckBox124: TCheckBox;
    Edit5: TEdit;
    CheckBox393: TCheckBox;
    GroupBox102: TGroupBox;
    CheckBox394: TCheckBox;
    CheckBox395: TCheckBox;
    CheckBox396: TCheckBox;
    Edit27: TEdit;
    GroupBox103: TGroupBox;
    GroupBox104: TGroupBox;
    CheckBox398: TCheckBox;
    CheckBox399: TCheckBox;
    CheckBox400: TCheckBox;
    CheckBox401: TCheckBox;
    CheckBox402: TCheckBox;
    CheckBox403: TCheckBox;
    CheckBox404: TCheckBox;
    CheckBox405: TCheckBox;
    CheckBox406: TCheckBox;
    CheckBox407: TCheckBox;
    CheckBox408: TCheckBox;
    CheckBox409: TCheckBox;
    Edit28: TEdit;
    GroupBox105: TGroupBox;
    CheckBox410: TCheckBox;
    CheckBox411: TCheckBox;
    CheckBox412: TCheckBox;
    CheckBox413: TCheckBox;
    CheckBox414: TCheckBox;
    Edit29: TEdit;
    GroupBox106: TGroupBox;
    CheckBox415: TCheckBox;
    CheckBox416: TCheckBox;
    CheckBox417: TCheckBox;
    CheckBox418: TCheckBox;
    CheckBox419: TCheckBox;
    CheckBox420: TCheckBox;
    CheckBox421: TCheckBox;
    CheckBox422: TCheckBox;
    CheckBox423: TCheckBox;
    CheckBox424: TCheckBox;
    GroupBox107: TGroupBox;
    CheckBox426: TCheckBox;
    CheckBox427: TCheckBox;
    CheckBox428: TCheckBox;
    Edit30: TEdit;
    GroupBox108: TGroupBox;
    CheckBox429: TCheckBox;
    CheckBox430: TCheckBox;
    CheckBox431: TCheckBox;
    CheckBox432: TCheckBox;
    CheckBox433: TCheckBox;
    GroupBox109: TGroupBox;
    CheckBox435: TCheckBox;
    CheckBox436: TCheckBox;
    CheckBox437: TCheckBox;
    CheckBox438: TCheckBox;
    CheckBox439: TCheckBox;
    Edit31: TEdit;
    GroupBox110: TGroupBox;
    CheckBox440: TCheckBox;
    CheckBox441: TCheckBox;
    CheckBox442: TCheckBox;
    CheckBox443: TCheckBox;
    CheckBox444: TCheckBox;
    Edit32: TEdit;
    GroupBox111: TGroupBox;
    CheckBox445: TCheckBox;
    CheckBox446: TCheckBox;
    CheckBox447: TCheckBox;
    CheckBox448: TCheckBox;
    CheckBox449: TCheckBox;
    Edit33: TEdit;
    GroupBox112: TGroupBox;
    CheckBox450: TCheckBox;
    CheckBox451: TCheckBox;
    CheckBox452: TCheckBox;
    Edit34: TEdit;
    GroupBox113: TGroupBox;
    GroupBox114: TGroupBox;
    CheckBox454: TCheckBox;
    CheckBox455: TCheckBox;
    CheckBox456: TCheckBox;
    CheckBox457: TCheckBox;
    CheckBox458: TCheckBox;
    CheckBox459: TCheckBox;
    GroupBox115: TGroupBox;
    CheckBox461: TCheckBox;
    CheckBox462: TCheckBox;
    CheckBox463: TCheckBox;
    Edit35: TEdit;
    GroupBox116: TGroupBox;
    CheckBox464: TCheckBox;
    CheckBox465: TCheckBox;
    CheckBox466: TCheckBox;
    GroupBox117: TGroupBox;
    CheckBox468: TCheckBox;
    CheckBox469: TCheckBox;
    CheckBox470: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox147: TCheckBox;
    CheckBox149: TCheckBox;
    CheckBox150: TCheckBox;
    CheckBox204: TCheckBox;
    CheckBox205: TCheckBox;
    CheckBox207: TCheckBox;
    CheckBox208: TCheckBox;
    CheckBox210: TCheckBox;
    CheckBox211: TCheckBox;
    medication_data: TMemo;
    Allergy_data: TMemo;
    DBText4: TDBText;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    ppmcopy: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Button8: TButton;
    ScrollBox3: TScrollBox;
    RdGPatFristList: TRadioGroup;
    PnlICD10: TPanel;
    DBCICD10: TDBCtrlGrid;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    Panel37: TPanel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SGEmgicd: TStringGrid;
    SGICD10: TStringGrid;
    BitBtn8: TBitBtn;
    DSICD10: TDataSource;
    GroupBox119: TGroupBox;
    BitBtn4: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Memo1: TMemo;
    StaticText13: TStaticText;
    Button9: TButton;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox88Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RGPAKGClick(Sender: TObject);
    procedure Chief_ComplaintsEnter(Sender: TObject);
    procedure pag_nameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pag_nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText38Click(Sender: TObject);
    procedure ScrollBox2MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Present_IllnessEnter(Sender: TObject);
    procedure Past_HistoryEnter(Sender: TObject);
    procedure Medication_HistoryEnter(Sender: TObject);
    procedure Physical_ExaminationEnter(Sender: TObject);
    procedure Trauma_SheetEnter(Sender: TObject);
    procedure AllergyEnter(Sender: TObject);
    procedure PlanEnter(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SGEmgicdEnter(Sender: TObject);
    procedure pag_nameExit(Sender: TObject);
    procedure SGEmgicdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SGEmgicdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure SGEmgicdKeyPress(Sender: TObject; var Key: Char);
    procedure SGEmgicdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText1Click(Sender: TObject);
    procedure SGEmgicdDblClick(Sender: TObject);
    procedure SGEmgicdDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SGEmgicdDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SGEmgicdDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGEmgicdExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure RdGPatFristListClick(Sender: TObject);
    procedure DBText41Click(Sender: TObject);
    procedure DSIcdDataChange(Sender: TObject; Field: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    spstr1, firststr, have, frmopen, backcount, oldbackcount : string;
    LEVSTRING : TStringList;
    theDept, TheDoc, MajorDataTime: String;
    chkbcout,ctop,clft,Gap,levecount : integer;
    SourceCol,SourceRow: integer;
    SQLo: TObjectList;
    tms : TMemoryStream;
    J1: TJPEGImage;
    procedure GBVisible;
    procedure getdata(prt,allseqno: string);
    procedure mynextnode();
    procedure SetPanel(Bview: Boolean; Sender: TObject);
    function insertFirstRecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
    function InsertIcd(fee_code: string): Boolean;
    function RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
    function getstr(name: TObject) : TStrings;
    procedure StringGridSort(Sender: TObject);
    function InsertIcd10first(Icd_Code: string): Boolean;
    //繪圖
    procedure ImageSizeChange(Sender: TObject);
    function StretchImageRatio(PMS: TMemoryStream; Width, Height, Quality : Integer; Center : Boolean) : TJpegImage ;
  public
    { Public declarations }
    traumalis,icd9FIRS,CHIEF_S,IMPRESS_A,PLAN_P,PE_O, orderitems : TStringList;
    HAVTRA : Boolean;
  end;

var
  Frmfirstrecord2: TFrmfirstrecord2;

implementation

uses Trauma, Commfunc, DBDM, ERsFunc, Global, MySQLc, GetICD9,
  PrintFirstRecord, PathDraw;

{$R *.dfm}



procedure TFrmfirstrecord2.FormShow(Sender: TObject);
var
  i : integer;
  newQuery : TADOQuery;
  //MYCOMP : TComponent;
  SQSTR :STRING;
  Paramter,PType,RType,PData : TStrings;
  SpName, ExeSPResult : STRING;
begin
  inherited;
  orderitems := TStringList.Create;
  IF UpperCase(SetSys.ReadString('SYSTEM','ICD10','FALSE'))= 'TRUE' THEN
    PageControl1.ActivePageIndex :=1
  ELSE
    PageControl1.ActivePageIndex :=0;
  orderitems.Add('新增');
  MajorDataTime := '';
  backcount := '0';//預設為第一次首頁資料
  oldbackcount := '0';
  HAVTRA := False;
  theDept := GetUserDept;
  TheDoc  := getUserId;
  frmopen := 'Y';
  RdGPatFristList.Items.Clear;
  RdGPatFristList.Items.Add('新增');
  Chief_Complaints.Clear;
  Present_Illness.Clear;
  Past_History.Clear;
  medication_data.Clear;
  Medication_History.Clear;
  Allergy_data.Clear;
  Allergy.Clear;
  Physical_Examination.Clear;
  Trauma_Sheet.Clear;
  RichEdit2.Clear;
  Plan.Clear;

  newQuery := TAdoQuery.Create(Self);
  newQuery.Connection := DM.ADOLink;
  i := 0;
  newQuery.Close;
  newQuery.SQL.Clear;
  newQuery.SQL.Text := 'select distinct b.order_date,nvl(trim(b.print_flag),''1'') print_flag,b.allorder_no from epd_tabulation b, '+
                       '(select max(allorder_no) as allorder_no,print_flag from EPD_TABULATION where kind = ''FIRST_RECORD'' and del_flag=''N'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate)+
                       'and (print_flag in(select distinct print_flag from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate)+') or print_flag is null) and del_flag=''N'' group by print_flag) a '+
                       ' where a.allorder_no=b.allorder_no '+
                       '   and b.fee_no='+Qt(GetFeeNo)+' and b.order_date ='+qt(GetEpdDate)+
                       '   and b.kind = ''FIRST_RECORD'' and b.del_flag=''N'' order by print_flag';
  newQuery.Open;
  while not newQuery.Eof do
  begin
    inc(i);
    RdGPatFristList.Items.Add(newQuery.FieldByName('order_date').asstring+'_'+newQuery.FieldByName('print_flag').asstring);
    orderitems.Add(newQuery.FieldByName('print_flag').asstring+'_'+newQuery.FieldByName('allorder_no').asstring);
    if i > 3 then
      RdGPatFristList.Height := RdGPatFristList.Height + 20;
    newQuery.Next;
  end;

  //新版用藥史
  Paramter:=TStringList.Create;
  PType:=TStringList.Create;
  RType:=TStringList.Create;
  PData:=TStringList.Create;
  SpName   := getSpSql(13,Paramter,PType,RType);
  PData.Add(GetFeeNo);
  PData.Add(IntToStr(all_seq));
  ExeSPResult := DM.ExecSP(Paramter,PType,RType,PData,SpName);
  Paramter.Clear;
  PType.Clear;
  RType.Clear;
  PData.Clear;

  //是否為24小時回診20140415 資訊會議17需求
  newQuery.Close;
  newQuery.SQL.Clear;
  newQuery.SQL.Text := 'select * from epdexitbk_log where type_m=''02'' and type_d=''01'' and old_feeno='+Qt(GetFeeNo);
  newQuery.Open;
  if not newQuery.IsEmpty then
  begin
    //有反診紀錄提示是否要加開一筆
    if MessageDlg('返診病人是否紀錄新增一筆首頁資料', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      getdata(ReturnId(orderitems.Strings[RdGPatFristList.Items.count-1]),ReturnName(orderitems.Strings[RdGPatFristList.Items.count-1]));
      RdGPatFristList.ItemIndex := RdGPatFristList.Items.count-1;
      if RdGPatFristList.Items.count > 1 then
      begin
        backcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
        oldbackcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
      end;
    end
    else
    begin
      if RdGPatFristList.Items.count > 1 then
      begin
        backcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
        oldbackcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
      end;
      RdGPatFristList.ItemIndex := 0;
    end;
  end
  else
  begin
    getdata(ReturnId(orderitems.Strings[RdGPatFristList.Items.count-1]),ReturnName(orderitems.Strings[RdGPatFristList.Items.count-1]));
    RdGPatFristList.ItemIndex := RdGPatFristList.Items.count-1;
    if RdGPatFristList.Items.count > 1 then
    begin
      backcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
      oldbackcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
    end;
  end;
  GBVisible;//all not Visible
  Chief_ComplaintsEnter(Self);//set Default
  ScrollBox1.Perform(WM_VSCROLL,SB_TOP ,0);
  ScrollBox2.Perform(WM_VSCROLL,SB_TOP ,0);
  frmopen := 'N';
  //mynextnode;
end;

procedure TFrmfirstrecord2.mynextnode();
procedure subitem(key,kind:string);
var
  tQuery : TAdoQuery;
  dou : integer;
  tchkbox : TCheckBox;
  fatha : string;
begin
  tQuery := TAdoQuery.Create(Self);
  tQuery.Connection := DM.ADOLink;
  tQuery.Close;
  tQuery.SQL.Clear;
  tQuery.SQL.Add('select * from tmu_phrase_main where phrase_Father='+Qt(Key)+' and phrase_level in(''ALL'',''86'','+Qt(getUserId)+') and phrase_kind ='+Qt(kind)+' order by phrase_kind,phrase_id');
  tQuery.Open;
  dou := clft;
  while not tQuery.Eof do
  begin
    inc(chkbcout);
    ctop := ctop +30;
    if tQuery.fieldbyname('phrase_Father').AsString <> fatha then
      dou := dou+gap;
    Panel10.Height := Panel10.Height+41;
    tchkbox := TCheckBox.Create(Self);
    tchkbox.Parent := Panel10;
    tchkbox.Caption := trim(tQuery.fieldbyname('phrase_name').AsString);
    tchkbox.Name := 'f_'+IntToStr(chkbcout);
    tchkbox.Left := dou;
    tchkbox.Top := ctop;
    tchkbox.Font.Size := 11;
    tchkbox.Width := 300;

    
    fatha := tQuery.fieldbyname('phrase_Father').AsString;
    subitem(trim(tQuery.fieldbyname('phrase_id').AsString),trim(tQuery.fieldbyname('phrase_kind').AsString));
    tQuery.Next;
  end;
end;
var
  myitem,myItemName: TTreeNode;
  newQuery : TAdoQuery;
  oldkind,cname,cparent : string;
  tchkbox : TCheckBox;
begin
  inherited;
  oldkind := '';
  chkbcout := 0;
  Gap := 30;
  ctop := 8;
  clft := 8;
  newQuery := TAdoQuery.Create(Self);
  newQuery.Connection := DM.ADOLink;
  newQuery.Close;
  newQuery.SQL.Clear;
  newQuery.SQL.Add('select * from tmu_phrase_main where phrase_level in(''ALL'','+GetUserDept+','+Qt(getUserId)+') and  phrase_kind > 0 and phrase_kind < 9 and (nvl(phrase_father,''0'')= ''0'' or phrase_father= ''000000000000'') order by phrase_kind,phrase_id');
  newQuery.Open;
  while not newQuery.Eof do
  begin
    inc(chkbcout);
    Panel10.Height := Panel10.Height+41;
    tchkbox := TCheckBox.Create(Self);
    tchkbox.Parent := Panel10;
    tchkbox.Caption := trim(newQuery.fieldbyname('phrase_name').AsString);
    tchkbox.Name := 'f_'+IntToStr(chkbcout);
    if trim(newQuery.fieldbyname('phrase_kind').AsString) = oldkind then
    begin
      tchkbox.Left := clft;
      tchkbox.Top := ctop;
      tchkbox.Font.Size := 11;
      tchkbox.Width := 300;
      subitem(trim(newQuery.fieldbyname('phrase_id').AsString),trim(newQuery.fieldbyname('phrase_kind').AsString));
    end
    else
    begin//第一層
      clft := 8;
      tchkbox.Font.Name := 'Verdana';
      tchkbox.Font.Size := 14;
      tchkbox.Width := 350;
      tchkbox.Left := clft;
      tchkbox.Top := ctop;
      tchkbox.Hint :=  trim(newQuery.fieldbyname('phrase_name').AsString);
      cparent := trim(newQuery.fieldbyname('phrase_name').AsString);
    end;
    oldkind := newQuery.fieldbyname('phrase_kind').AsString;
    ctop :=  ctop+ 30;
    newQuery.next;
  end;
  newQuery.Close;
  newQuery.Free;
end;

procedure TFrmfirstrecord2.CheckBox1Click(Sender: TObject);
var
  I : integer;
begin
  inherited; //chief complaint
  if frmopen = 'N' then
  begin
    if TCheckBox(Sender).Checked then
    begin
      if trim(TCheckBox(Sender).Hint) <> '' then
      begin
        i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(TCheckBox(Sender).Hint);
        if i = -1 then
           TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Add(TCheckBox(Sender).Hint);
      end;
      TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Add(trim(TCheckBox(Sender).Caption)+', ');
    end
    else
    begin
      i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(trim(TCheckBox(Sender).Caption)+', ');
      if i <> -1 then
        TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Delete(i);
    end;
  end;
end;

procedure TFrmfirstrecord2.CheckBox88Click(Sender: TObject);
var
  I,cont : integer;
  stsp : string;
begin
  inherited; //PE
  {stsp := '';
  cont := 0;
  if TCheckBox(Sender).Checked then
  begin
    if trim(TCheckBox(Sender).Hint) <> '' then
    begin
      cont := 2 * (TCheckBox(Sender).Tag-1);
      if cont > 0 then
        for i := 1 to cont do
          stsp := stsp+ ' ';
      i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(stsp+trim(TCheckBox(Sender).Hint));
      if i = -1 then
        i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(stsp+trim(TCheckBox(Sender).Hint)+', ');
      if i = -1 then
      begin
         TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Add(stsp+TCheckBox(Sender).Hint);
      end;
    end;
    stsp := '';
    cont := 2 * TCheckBox(Sender).Tag;
    for i := 1 to cont do
      stsp := stsp+ ' ';
    TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Add(stsp+trim(TCheckBox(Sender).Caption)+', ');
  end
  else
  begin
    stsp := '';
    cont := 2 * TCheckBox(Sender).Tag;
    for i := 1 to cont do
      stsp := stsp+ ' ';
    i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(stsp+trim(TCheckBox(Sender).Caption)+', ');
    if i = -1 then
      i:=TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.IndexOf(stsp+trim(TCheckBox(Sender).Hint));
    if i <> -1 then
      TRichEdit(Self.FindComponent(trim(TCheckBox(Sender).Parent.Hint))).Lines.Delete(i);
  end;}
end;

procedure TFrmfirstrecord2.Button6Click(Sender: TObject);
begin
  inherited;
  Panel3.Visible := True;
  Panel3.Left := 128;
  Panel3.Top := 40;
  Panel3.Width := 641;
  Panel3.Height := 137;
  RGPAKG.ItemIndex :=2;
end;

procedure TFrmfirstrecord2.Button2Click(Sender: TObject);
VAR
  TMPSQL,typ,grpno: STRING;
  SQLs: TStringList;
  indexi, I,k: INTEGER;
begin
  inherited;
  case RGPAKG.ItemIndex of
    0 :
      begin
        if inputBox('管理密碼','請輸入密碼 ','') <> EncodeStr('CYF}h\`G','650326') then
        begin
          ShowMessage('很抱歉您沒有權限設定全院共用套餐');
          Exit;
        end;
      end;
    1 :
      Begin
        if getuserLevel <>'1' then
        begin
          ShowMessage('很抱歉您沒有權限設定科共用套餐,科共用須由主治醫師方有權限');
          Exit;
        end
      end;
  end;
  IF (Trim(edtPkgName.Text) = '') or (Trim(EDTGRPNO.Text) = '') THEN
  BEGIN
    ShowMessage('請輸入套餐、組別名稱');
    Exit;
  END
  ELSE
  begin
    try
      if Assigned(SQLo)then
        SQLo.Clear
      else
        SQLo := TObjectList.Create;
      //grpno := getphraseno;
      //grpno := 'ED'+grpno;
      if checkphragno(theDept,TheDoc,Trim(EDTGRPNO.Text))= 'Y' then
      begin
        ShowMessage('組別名稱重複，請設其他名稱');
        exit;
      end;
      grpno := Trim(EDTGRPNO.Text);
      SQLo := TObjectList.Create;
      TMPSQL := getordergrp(0);
      SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
      SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
      //SetParamter(TMPSQL,'$GROUP_CODE$',Qt(Trim(EDTGRPNO.Text)));
      SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
      SetParamter(TMPSQL,'$GROUP_NAME$',Qt(Trim(edtPkgName.Text)));
      SQLs := TStringList.Create;
      SQLs.Add(TMPSQL);
      SQLo.Add(SQLs);
      indexi := 1;
      for i := 0  to Self.ComponentCount-1 do
      begin
        if (Self.Components[i] is TRichEdit) then
        begin
          if (TRichEdit(Self.Components[i]).Name <> 'medication_data') and (TRichEdit(Self.Components[i]).Name <> 'Allergy_data') then
          begin
            if Trim(TRichEdit(Self.Components[i]).Lines.Text) <> '' then
            begin
              if TRichEdit(Self.Components[i]).Name ='Chief_Complaints' then
                typ := 'F1';
              if TRichEdit(Self.Components[i]).Name ='Present_Illness' then
                typ := 'F2';
              if TRichEdit(Self.Components[i]).Name ='Past_History' then
                typ := 'F3';
              if TRichEdit(Self.Components[i]).Name ='Medication_History' then
                typ := 'F4';
              if TRichEdit(Self.Components[i]).Name ='Allergy' then
                typ := 'F5';
              if TRichEdit(Self.Components[i]).Name ='Physical_Examination' then
                typ := 'F6';
              if TRichEdit(Self.Components[i]).Name ='Trauma_Sheet' then
                typ := 'F7';
              if TRichEdit(Self.Components[i]).Name ='RichEdit2' then
                typ := 'F8';
              if TRichEdit(Self.Components[i]).Name ='Plan' then
                typ := 'F9';
              FOR k := 0 TO TRichEdit(Self.Components[i]).Lines.Count-1 DO
                IF Trim(TRichEdit(Self.Components[i]).Lines.Text) <>'' THEN
                BEGIN
                  TMPSQL := getordergrp(2);
                  SetParamter(TMPSQL,'$DEPT_CODE$',Qt(theDept));
                  SetParamter(TMPSQL,'$USER_ID$',Qt(TheDoc));
                  SetParamter(TMPSQL,'$GROUP_CODE$',Qt(grpno));
                  SetParamter(TMPSQL,'$SEQ_NO$',IntToStr(indexi));
                  SetParamter(TMPSQL,'$ORDER_TEXT$',Qt(TRichEdit(Self.Components[i]).Lines.Strings[k]));
                  SetParamter(TMPSQL,'$ORDER_TYPE$',Qt(typ));
                  SetParamter(TMPSQL,'$TEXT_KIND$',Qt(''));
                  SQLs := TStringList.Create;
                  SQLs.Add(TMPSQL);
                  SQLo.Add(SQLs);
                  Inc(indexi);
                END;
            end;
          end;
        end;
      end;
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('寫入資料庫失敗');
        exit;
      end;
      edtPkgName.Text := '';
      Panel3.Visible := False;
    finally
      FreeAndNil(SQLo);
    end;
  end;
end;

procedure TFrmfirstrecord2.Button4Click(Sender: TObject);
begin
  inherited;
  Panel3.Visible := False;
end;

procedure TFrmfirstrecord2.RGPAKGClick(Sender: TObject);
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
end;

procedure TFrmfirstrecord2.Chief_ComplaintsEnter(Sender: TObject);
begin
  inherited;
  //ScrollBox2.VertScrollBar.Position :=  GroupBox1.Top;
  GBVisible;
  GroupBox1.Visible := true;
  if GroupBox1.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox1.Height;
  GroupBox1.Align := alTop;
end;

procedure TFrmfirstrecord2.pag_nameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and (pnlphrase.Visible) then
    exit;
  if pag_name.Text <> '' then
  begin
    DM.QrySearch.Close;
    DM.QrySearch.SQL.Clear;
    DM.QrySearch.SQL.Add('SELECT group_name as str_desc,group_code FROM ORDER_GRP_BASIC where ((dept_code=''ALL'' and user_id=''ALL'') or (dept_code='+Qt(theDept)+' and user_id=''XXXXXX'') or (dept_code=''XXXX'' and  user_id='+Qt(TheDoc)+')) and upper(group_name) like '+Qt(UpperCase(Trim(pag_name.Text))+'%'));
    DM.QrySearch.SQL.Add(' and group_code in(select group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9''))');
    dm.QrySearch.SQL.Text;
    DM.QrySearch.Open;
    if DM.QrySearch.IsEmpty then
    begin
      SetPanel(FALSE,pnlphrase);
    end
    else
    begin
      dsfrst.DataSet := DM.QrySearch;
      SetPanel(True,pnlphrase);
    end;
  end
  else
    SetPanel(FALSE,pnlphrase);
end;

procedure TFrmfirstrecord2.SetPanel(Bview: Boolean; Sender: TObject);
begin
  try
    TPanel(sender).Visible := Bview;
  except
  end;
  if Sender is TPanel then
  begin
    if  TPanel(Sender).Name = 'PnlICD10' then
    begin
      PnlICD10.Visible := Bview;
      DBCICD10.Enabled := True;
    end
    ELSE if TPanel(Sender).Name = 'pnlphrase' then
    begin
      if Bview = False then
      BEGIN
        if DM.QrySearch.State in[dsBrowse] then
          DM.QrySearch.Close;
        dsfrst.DataSet := nil;
      END
      else
      begin
        pnlphrase.Left := 136;
        pnlphrase.Top := 3;
        pnlphrase.Width := 300;
        pnlphrase.Height := 220;
        DBCphrase.Align := alClient;
        dsfrst.DataSet := DM.QrySearch;
      end;
    end;
    if TPanel(Sender).Name = 'pnlIcd' then
    begin
      if Bview = False then
      BEGIN
        if DM.QrySearch.State in[dsBrowse] then
          DM.QrySearch.Close;
        DSIcd.DataSet := nil;
      END
      else
      begin
        pnlIcd.Left := 8;
        pnlIcd.Top := 420;
        pnlIcd.Width := 720;
        pnlIcd.Height := 200;
        DBCIcd.Align := alClient;
        DSIcd.DataSet := DM.qryicd9;
      end;
    end;
  end;
end;

procedure TFrmfirstrecord2.pag_nameKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmfirstrecord2.DBText38Click(Sender: TObject);
var
  str : string;
begin
  inherited;
  str := trim(DBCphrase.DataSource.DataSet.FieldByName('group_code').AsString);
  SetPanel(False,pnlphrase);
  DM.QrySearch.Close;
  DM.QrySearch.SQL.Clear;
  DM.QrySearch.SQL.Add('select * from ORDER_GRP_TEXT where group_code='+Qt(str)+' and (dept_code='+Qt(theDept)+' or user_id='+Qt(TheDoc)+')  and ');
  DM.QrySearch.SQL.Add('order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9'')  order by order_type,seq_no ');
  DM.QrySearch.Open;
  while not DM.QrySearch.Eof do
  begin
    if (DM.QrySearch.FieldByName('order_type').AsString ='F1') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Chief_Complaints.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F2') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Present_Illness.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F3') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Past_History.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F4') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Medication_History.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F5') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Allergy.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F6') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Physical_Examination.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F7') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Trauma_Sheet.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F8') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      RichEdit2.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    if (DM.QrySearch.FieldByName('order_type').AsString ='F9') and (trim(DM.QrySearch.FieldByName('order_text').AsString) <> '') then
      Plan.Lines.Add(TrimRight(DM.QrySearch.FieldByName('order_text').AsString));
    DM.QrySearch.Next;
  end;
  pag_name.Text := '';
end;

procedure TFrmfirstrecord2.ScrollBox2MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox2.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmfirstrecord2.ScrollBox2MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox2.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmfirstrecord2.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
end;

procedure TFrmfirstrecord2.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP ,0);
end;

procedure TFrmfirstrecord2.Button1Click(Sender: TObject);
var
  TempQ : TAdoQuery;
  ALLNO,Q_STR,stemp,date,time,tmpSql : string;
  seqno1,i : integer;
  SQLo1: TObjectList;
  SQLs1: TStrings;
  chek,havedata: Boolean;
  all_no,SEQ_no :integer;
begin
  inherited;
  havedata := False;
  chek := False;
  all_no := 0;
  SEQ_no := 0;

  //check icd code
  for i := 1 to SGICD10 .RowCount-1 do
  begin
    if SGICD10.Cells[0, i] <> '' then
       if not checkicd10(trim(SGICD10.Cells[0, i])) then
       begin
         ShowMessage('非有效的ICD10碼 :'+trim(SGICD10.Cells[0, i]));
         exit;
       end;
  end;

  try
    //存檔
    strReplace(Chief_Complaints);
    strReplace(Present_Illness);
    strReplace(Past_History);
    strReplacememo(medication_data);
    strReplace(Medication_History);
    strReplacememo(Allergy_data);
    strReplace(Allergy);
    strReplace(Physical_Examination);
    strReplace(Trauma_Sheet);
    strReplace(RichEdit2);
    strReplace(Plan);

    SQLo1:=TObjectList.Create;
    date := ROCDate(Now,'');
    time :=  ROCTimes(Now,'');
    TempQ := TAdoQuery.Create(self);
    TempQ.Connection := Dm.ADOLink;
    TempQ.Close;
    TempQ.SQL.Clear;
    TempQ.SQL.Add('select max(nvl(SEQ_NO,0)) as seq_no,max(nvl(allorder_no,0)) as all_no from EPD_TABULATION where fee_no='+qt(getFeeNo)+' and order_date ='+qt(GetEpdDate) );
    TempQ.Open;
    all_no := TempQ.FieldByName('all_no').AsInteger;
    SEQ_no := TempQ.FieldByName('seq_no').AsInteger;
    TempQ.Close;
    tmpSql := sql_str(4);
    SetParamter(tmpSql,'$fee_no$',qt(getFeeNo));
    DM.QrySearch.SQL.Text := tmpSql;
    dm.QrySearch.Open;
    if DM.QrySearch.IsEmpty then //opd_basic1
    begin
      //use_opd_log('病歷首頁');
      tmpSql:= 'insert into opd_basic1(OPD_KIND,PAT_NAME,OPD_DATE,DEPT_CODE,SHIFT_NO,PRINT_FLAG,DEPT_ROOM,DOC_CODE,SEQ_NO,CHR_NO,FEE_NO,PAT_ID,INS_SEQ_NO,PROG_FLAG,ICD9_CODE1,UPD_DATE,UPD_TIME,UPD_OPER)'+
               ' VALUES ($OPD_KIND$,$PAT_NAME$,$OPD_DATE$,$DEPT_CODE$,$SHIFT_NO$,$PRINT_FLAG$,$DEPT_ROOM$,$DOC_CODE$,$SEQ_NO$,$CHR_NO$,$FEE_NO$,$PAT_ID$,$INS_SEQ_NO$,$PROG_FLAG$,$ICD9_CODE$,$UPD_DATE$,$UPD_TIME$,$UPD_OPER$)';
      SetParamter(tmpSql,'$OPD_KIND$',qt('E'));
      SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
      SetParamter(tmpSql,'$PAT_NAME$',qt(GetPatName));
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
        SetParamter(tmpSql,'$ICD9_CODE$',qt(Trim(SGEmgicd.Cells[0,1])));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    Inc(all_no);

    //update EPD_TABULATION old data cncl_flag='Y'  20140415
    if (all_no > 1) and (Trim(backcount) = Trim(oldbackcount)) then
    begin
      tmpSql := 'update EPD_TABULATION set del_flag=''Y'' where fee_no='+qt(getFeeNo)+' and order_date ='+qt(GetEpdDate)+' and allorder_no < '+IntToStr(all_no)+' and (print_flag is null or print_flag='+qt(backcount)+') and kind in(''FIRST_RECORD'',''FIRST_ITEM'')';
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;

    //記錄勾選的資料
    for i := 0 to Frmfirstrecord2.ComponentCount-1 do
    begin
      if Frmfirstrecord2.Components[i] is TCheckBox then
        if TCheckBox(Frmfirstrecord2.Components[i]).Checked then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_ITEM',TCheckBox(Frmfirstrecord2.Components[i]).Name+'_Y','N',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      if Frmfirstrecord2.Components[i] is TEdit then
        if TEdit(Frmfirstrecord2.Components[i]).Text <> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_ITEM',TCheckBox(Frmfirstrecord2.Components[i]).Name+'_'+Trim(TEdit(Frmfirstrecord2.Components[i]).Text),'N',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
    end;

    if Trim(Chief_Complaints.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Chief Complaint:','01',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Chief_Complaints.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Chief_Complaints.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Chief_Complaints.Lines.Strings[i]),'01',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','01',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
     //現病史
    if trim(Present_Illness.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Present Illness:','02',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Present_Illness.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Present_Illness.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Present_Illness.Lines.Strings[i]),'02',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','02',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //過去病史
    if trim(Past_History.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Past History:','03',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Past_History.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Past_History.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Past_History.Lines.Strings[i]),'03',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','03',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //過敏資料
    if trim(Allergy_data.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Allergy History:','04',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Allergy_data.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Allergy_data.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Allergy_data.Lines.Strings[i]),'04',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    if trim(Allergy.Lines.Text) <> ''  then
    begin
      if not havedata then
      begin
        inc(SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','◎Allergy History:','05',date,time,IntToStr(all_no),IntToStr(SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to Allergy.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Allergy.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Allergy.Lines.Strings[i]),'05',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','05',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //過去用藥史
    havedata := False;
    if trim(medication_data.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Medication History:','06',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to medication_data.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(medication_data.Lines.Strings[i])<> '' then
        begin
          havedata := True;
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(medication_data.Lines.Strings[i]),'06',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    if trim(Medication_History.Lines.Text) <> ''  then
    begin
      if not havedata then
      begin
        inc(SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','◎Medication History:','07',date,time,IntToStr(all_no),IntToStr(SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to Medication_History.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Medication_History.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(Medication_History.Lines.Strings[i]),'07',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','07',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //理學檢查
    if trim(Physical_Examination.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Physical Examination:','08',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Physical_Examination.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Physical_Examination.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Physical_Examination.Lines.Strings[i],'08',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','08',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //Trauma
    if trim(Trauma_Sheet.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Trauma Sheet:','09',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Trauma_Sheet.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Trauma_Sheet.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Trauma_Sheet.Lines.Strings[i],'09',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    //Plan 治療計畫
    if trim(Plan.Lines.Text) <> ''  then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Plan(s):','12',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 0 to Plan.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(Plan.Lines.Strings[i])<> '' then
        begin
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Plan.Lines.Strings[i],'12',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','12',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //impression診斷
    havedata := False;
    if ((Trim(SGICD10.Cells[0,1])<>'') and (Trim(SGICD10.Cells[1,1])<>'')) or
       ((Trim(SGEmgicd.Cells[0,1])<>'') and (Trim(SGEmgicd.Cells[1,1])<>'')) then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','◎Impression :','10',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
      for i := 1 to 10 do
      begin
        tmpSql := '';
        //icd10
        if Trim(SGICD10.Cells[0,i])<> '' then
        begin
          havedata := True;
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD',Trim(SGICD10.Cells[0,i])+'_'+Trim(SGICD10.Cells[1,i]),'10',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
       tmpSql := '';
       //icd9
       if Trim(SGEmgicd.Cells[0,i])<> '' then
       begin
         havedata := True;
         inc(SEQ_no);
         tmpSql := insertFirstRecord('FIRST_RECORD',Trim(SGEmgicd.Cells[0,i])+'_'+Trim(SGEmgicd.Cells[1,i]),'10',date,time,IntToStr(all_no),IntToStr(SEQ_no));
         SQLs1 := TStringList.Create;
         SQLs1.Text:=tmpSql;
         SQLo1.Add(SQLs1);
       end;
      end;
    end;                 
    if trim(RichEdit2.Lines.Text) <> ''  then
    begin
      if not havedata then
      begin
        inc(SEQ_no);
        tmpSql := insertFirstRecord('FIRST_RECORD','◎Impression :','11',date,time,IntToStr(all_no),IntToStr(SEQ_no));
        SQLs1 := TStringList.Create;
        SQLs1.Text:=tmpSql;
        SQLo1.Add(SQLs1);
      end;
      for i := 0 to RichEdit2.Lines.Count-1 do
      begin
        tmpSql := '';
        if Trim(RichEdit2.Lines.Strings[i])<> '' then
        begin
          havedata := true;
          inc(SEQ_no);
          tmpSql := insertFirstRecord('FIRST_RECORD','  '+Trim(RichEdit2.Lines.Strings[i]),'11',date,time,IntToStr(all_no),IntToStr(SEQ_no));
          SQLs1 := TStringList.Create;
          SQLs1.Text:=tmpSql;
          SQLo1.Add(SQLs1);
        end;
      end;
    end;
    if havedata then
    begin
      inc(SEQ_no);
      tmpSql := insertFirstRecord('FIRST_RECORD','  ','11',date,time,IntToStr(all_no),IntToStr(SEQ_no));
      SQLs1 := TStringList.Create;
      SQLs1.Text:=tmpSql;
      SQLo1.Add(SQLs1);
    end;
    //20151021刪除
    tmpSql := 'delete EPD_TABULATION where fee_no='+qt(getFeeNo)+' and del_flag=''Y'' and kind in(''FIRST_RECORD'',''FIRST_ITEM'')';
    SQLs1 := TStringList.Create;
    SQLs1.Text:=tmpSql;
    SQLo1.Add(SQLs1);

    //20170103 更新epd_his更新日期時間(電子病歷自動重上傳完整重傳用)
    tmpSql := 'update epd_his set upd_date='+Qt(date)+',upd_time='+qt(copy(time,1,4))+' where fee_no='+qt(getFeeNo)+' and epd_date='+qt(epd_date);
    SQLs1 := TStringList.Create;
    SQLs1.Text:=tmpSql;
    SQLo1.Add(SQLs1);

    if SQLo1.Count > 0 then
      if not DM.ExecSQL(SQLo1) then
      begin
        ShowMessage('寫入資料庫失敗');
        exit;
      end;
    SQLo1.Free;
    //寫入圖檔，每一份首頁存一張圖
    //20160627判斷沒有資料不進圖
    if (Image1.Picture.Height <> 0 ) then
    begin
      inc(SEQ_no);
      if not ImageToDB(IntToStr(all_no),IntToStr(SEQ_no),date,time,Memo1.Lines.Text, Image1) then
        ShowMessage('圖檔存檔失敗');
    end;

     //mbYes 6	,mbNo 7,mbOK 1,mbCancel 2,mbAbort 3,mbRetry 4,mbIgnore 5,mbAll 8,mbNoToAll 9, mbYesToAll 10,mbHelp
     //,,,,,,,,, 沒有選預設為Cancel
    case MessageDlg('是否轉入(Subject、Assessment、Plan)、列印病歷首頁'+#10#13+'帶入  S、O、A、P: YesToAll'+
                    #10#13+'不帶入S、O、A、P: NoToAll',mtConfirmation, [mbYesToAll, mbNoToAll], 0) of
      10: //YesToAll
        begin
          BitBtn3Click(BitBtn3);//轉入
          Button3Click(Button1);//列印上傳電子病歷
        end ;
      9: Button3Click(Button1);//列印上傳電子病歷
    end;

  except
    TempQ.Free;
    Self.Close;
  end;
  TempQ.Free;
  Self.Close;
end;

procedure TFrmfirstrecord2.BitBtn8Click(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if not Assigned(FrmGetICD9) then
    FrmGetICD9 := TFrmGetICD9.Create(Self);
  FrmGetICD9.send_father  := UpperCase('FRMORDER');
  FrmGetICD9.icd9_record  := TStringList.Create;
  FrmGetICD9.icd10_record := TStringList.Create;
  FrmGetICD9.ShowModal;
  if FrmGetICD9.icd9_record.Count > 0 then
  begin
    for i := 0 to FrmGetICD9.icd9_record.Count-1 do
      InsertIcd(FrmGetICD9.icd9_record.Strings[i]);
  end;
  //icd10
  if FrmGetICD9.icd10_record.Count > 0 then
  begin
    for i := 0 to FrmGetICD9.icd10_record.Count-1 do
      InsertIcd10first(FrmGetICD9.icd10_record.Strings[i]);
  end;
  FreeAndNil(FrmGetICD9);
end;

function TFrmfirstrecord2.InsertIcd(fee_code: string): Boolean;
var
  q_str,fcode : string;
begin
  Result := False;
  if fee_code <> '' then
  begin
    fcode := '';
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
        if RepeatInGrid(FieldByName('ICD9_CODE').AsString,'0', 0, SGEmgicd) then
        begin
          ShowMessage(FieldByName('ICD9_CODE').AsString+ #13#10 +FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
          SGEmgicd.Rows[SGEmgicd.Row].Clear;
        end
        else if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
        begin
          SGEmgicd.Cells[0, SGEmgicd.Row] := FieldByName('ICD9_CODE').AsString;
          SGEmgicd.Cells[1, SGEmgicd.Row] := FieldByName('ENG_full_DESC').AsString;
          SGEmgicd.Cells[2, SGEmgicd.Row] := FieldByName('CHN_full_DESC').AsString;
          SGEmgicd.Cells[3, SGEmgicd.Row] := FieldByName('slow_flag').AsString;
          SGEmgicd.Cells[4, SGEmgicd.Row] := FieldByName('urg_flag').AsString;
          if SGEmgicd.Row < (SGEmgicd.RowCount - 1) then
          begin
            SGEmgicd.Row := SGEmgicd.Row + 1;
          end;
          Result := True;
        end
        else
          SGEmgicd.Rows[SGEmgicd.Row].Clear;
      end;
    end;
  end;
end;

function TFrmfirstrecord2.insertFirstRecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME,ALLNO,first: string): string;
var
  q_str : string;
begin
  q_str := 'INSERT INTO EPD_TABULATION(FEE_NO,KIND,SEQ_NO,TEXT,ORDER_SORT,ALLORDER_NO,UPD_OPER,UPD_DATE,UPD_TIME,VS_CODE,ORDER_DATE,ORDER_TIME,DEL_FLAG,PRINT_FLAG)' +
           ' VALUES($FEE_NO$,$KIND$,$SEQ_NO$,$TEXT$,$ORDER_SORT$,$ALLORDER_NO$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$VS_CODE$,$ORDER_DATE$,$ORDER_TIME$,$DEL_FLAG$,$PRINT_FLAG$) ';
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
  SetParamter(q_str,'$PRINT_FLAG$',qt(backcount));
  Result := q_str;
end;

function TFrmfirstrecord2.RepeatInGrid(aCode,aspay: string; aIndex: Integer; aGrd: TStringGrid): Boolean;
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
procedure TFrmfirstrecord2.Button3Click(Sender: TObject);
var
  Q_STR,stemp,itmesort, vsdoc :string;
  name_val : TStringList;
  i :integer;
  reg : TRegistry;
  DefPrint : String;
begin
  inherited;
  //抓印表機
  //setprinterdef('PRINTA4');
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
    FrmPrintFirstRecord.QRLabel17.Caption := '列印醫師: '+ GETDOCNAME(getUserId);
    //FrmPrintFirstRecord.QRLbbedno.Caption := TRIM(DM.QrySubSearch.FieldByName('epd_bed').AsString);
    //FrmPrintFirstRecord.QRLBIdNo.Caption := GetIdNo;
    stemp := TRIM(DM.QrySubSearch.FieldByName('arrival_date').AsString); //掛號時間
    if trim(stemp) = '' then
      stemp := FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+'_'+GetEpdTime;
    FrmPrintFirstRecord.QRLbArrival.Caption := format('掛號時間:'+RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'%s')+'%s '+RocTimes(RocToTime(ReTurnName(stemp)),':'),['年','月','日']);

    FrmPrintFirstRecord.QRLbBirthday.Caption := '民國 '+IntToStr(strToInt(getyear(GetBirth)))+ '年 '+getmonth(GetBirth)+'月 '+getdays(GetBirth) +'日';
    FrmPrintFirstRecord.QRLbSex.Caption := SexType(Getsex01);
    FrmPrintFirstRecord.MYMEMO.Clear;
    //首頁檢傷
    for i := 0 to traumalis.Count-1 do
    begin
      FrmPrintFirstRecord.QRMemo1.Lines.Add(traumalis[i]);
    end;

    //看診時間 //首頁
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := 'select date_time from epd_timelog where seq_no=(select min(seq_no)'+
                           ' from epd_timelog where time_type=''61'' and fee_no='+Qt(GetFeeNo)+' and log_date >='+Qt(Minus_six_months_date)+')';
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then //20160531改呈現格式
      FrmPrintFirstRecord.MYMEMO.Add('DATETIME:'+ ROCDate(DM.QryTemp.fieldbyname('date_time').AsDateTime,'/') +' '+ ROCTimes(DM.QryTemp.fieldbyname('date_time').AsDateTime,':'));

    //取圖檔
    FrmPrintFirstRecord.PICFLAG := 'N';
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    if RdGPatFristList.ItemIndex = 0 then
    begin
      DM.QryTemp.SQL.Text := 'select *'+
                             ' from EPD_ADMISSION_PIC where fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+')';
    end
    else
    begin
      DM.QryTemp.SQL.Text := 'select *'+
                             ' from EPD_ADMISSION_PIC where fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' AND print_flag='+Qt(Returnid(orderitems.Strings[RdGPatFristList.ItemIndex]))+')';
    end;
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then
    begin
      tms := TmemoryStream.Create;
      TBlobField(DM.QryTemp.FieldByName('PATHPIC')).SaveToStream(tms);
      J1 := TJPEGImage.Create;
      TMS.Seek(0,soFromBeginning);
      with J1 do
      begin
        PixelFormat := jf24Bit;
        Scale := jsFullSize;
        Grayscale := False;
        Performance := jpBestQuality;
        ProgressiveDisplay := True;
        ProgressiveEncoding := True;
        LoadFromStream(tms);
      end;
      FrmPrintFirstRecord.Image1.Picture.Assign(J1);
      FrmPrintFirstRecord.PICFLAG := 'Y';
      FrmPrintFirstRecord.QRMemo2.Lines.Text:= DM.QryTemp.fieldbyname('text').AsString;
    end;
    tms.Free;
    J1.Free;

    //首頁
    DM.QryTemp.Close;
    if RdGPatFristList.ItemIndex = 0 then
      DM.QryTemp.SQL.Text := 'select * from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+') order by ORDER_SORT,SEQ_NO'
    else
      DM.QryTemp.SQL.Text := 'select * from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' AND print_flag='+Qt(Returnid(orderitems.Strings[RdGPatFristList.ItemIndex]))+') order by ORDER_SORT,SEQ_NO';
    //DM.QryTemp.SQL.SaveToFile('D:\firstrecord.txt');
    DM.QryTemp.Open;
    itmesort := '';
    stemp := '    ';
    name_val :=  TStringList.Create;
    while not DM.QryTemp.Eof do
    begin
      vsdoc :=  GETDOCNAME(trim(DM.QryTemp.fieldbyname('VS_code').AsString));
      if itmesort = trim(DM.QryTemp.fieldbyname('ORDER_SORT').AsString) then
      begin
        if itmesort ='02' then
        begin
          if trim(DM.QryTemp.fieldbyname('text').AsString) <> '' then
            FrmPrintFirstRecord.MYMEMO.Add('    '+trim(DM.QryTemp.fieldbyname('text').AsString));
        end
        else
        begin
          if pos('*',trim(DM.QryTemp.fieldbyname('text').AsString)) > 0 then
          begin
            if trim(stemp) <> '' then
            begin
              name_val := SliptStr(70,FulltoHalf(stemp));
              for i := 0 to name_val.Count-1 do
              begin
                FrmPrintFirstRecord.MYMEMO.Add('        '+name_val[i]);
              end;
              stemp := '    ';
            end;
            FrmPrintFirstRecord.MYMEMO.Add('    '+trim(DM.QryTemp.fieldbyname('text').AsString));
          end
          else
          //FrmPrintFirstRecord.MYMEMO.Add('        '+ Trim(DM.QryTemp.fieldbyname('text').AsString)+#13#10);
            stemp := stemp +' '+ Trim(DM.QryTemp.fieldbyname('text').AsString) ;
        end;
      end
      else
      begin
        if trim(stemp) <> '' then
        begin
          name_val := SliptStr(70,FulltoHalf(stemp));
          for i := 0 to name_val.Count-1 do
          begin
            FrmPrintFirstRecord.MYMEMO.Add('        '+name_val[i]);
          end;
          stemp := '    ';
        end;
      FrmPrintFirstRecord.MYMEMO.Add(DM.QryTemp.fieldbyname('text').AsString);
      end;

      itmesort := trim(DM.QryTemp.fieldbyname('ORDER_SORT').AsString);
      dm.QryTemp.Next;
    end;

    if trim(stemp) <> '' then
    begin
      name_val := SliptStr(70,FulltoHalf(stemp));
      for i := 0 to name_val.Count-1 do
      begin
        FrmPrintFirstRecord.MYMEMO.Add('        '+name_val[i]);
      end;
      stemp := '    ';
    end;

    //病例首頁圖檔
    IF (DONOT_PRINT_PAPER) and (FrmPrintFirstRecord.PICFLAG='N') THEN
    begin
      FrmPrintFirstRecord.MYMEMO.Add('                                                                               醫師姓名: ' + vsdoc);
      FrmPrintFirstRecord.MYMEMO.Add('-----------------------------------------------------------------------------------------------------');
    end
    else
      //有圖時呈現
      FrmPrintFirstRecord.QRLabel8.Caption := '醫師姓名: ' + vsdoc;

    FrmPrintFirstRecord.docno := backcount;
    if Sender = Button1 then
      FrmPrintFirstRecord.PrepareSQL('Save')
    else
      FrmPrintFirstRecord.PrepareSQL('reprint');
    if FrmPrintFirstRecord.print_flag = 1 then
      opd_ba1printflag('Y')

  end
  else
  begin
    DM.QrySubSearch.Close;
    ShowMessage('沒有資料');
  end;
  reg.DeleteKey('Device');
  reg.WriteString('Device',DefPrint);
  Reg.CloseKey;
  Reg.Free;
end;

procedure TFrmfirstrecord2.FormCreate(Sender: TObject);
begin
  inherited;
  traumalis := TStringList.Create;
  icd9FIRS := TStringList.Create;
end;

procedure TFrmfirstrecord2.Present_IllnessEnter(Sender: TObject);
begin
  inherited;
//  ScrollBox2.VertScrollBar.Position :=  GroupBox2.Top;
  GBVisible;
  GroupBox2.Visible := true;
  if GroupBox2.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox2.Height;
  GroupBox2.Align := alTop;
end;

procedure TFrmfirstrecord2.Past_HistoryEnter(Sender: TObject);
begin
  inherited;
//  ScrollBox2.VertScrollBar.Position :=  GroupBox3.Top;
  GBVisible;
  GroupBox3.Visible := true;
  if GroupBox3.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox3.Height;
  GroupBox3.Align := alTop;
end;

procedure TFrmfirstrecord2.Medication_HistoryEnter(Sender: TObject);
begin
  inherited;
//  ScrollBox2.VertScrollBar.Position :=  GroupBox4.Top;
  GBVisible;
  GroupBox4.Visible := true;
  if GroupBox4.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox4.Height;
  GroupBox4.Align := alTop;
end;

procedure TFrmfirstrecord2.Physical_ExaminationEnter(Sender: TObject);
var
  intage: integer;
begin
  inherited;
  intage := 0;
   // ScrollBox2.VertScrollBar.Position :=  panel2.Top;
  // ScrollBox1.VertScrollBar.Position := GroupBox14.Top;
  try
    intage := StrToInt(GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear));
  except
    intage := 18;
  end;

  ScrollBox1.VertScrollBar.Position := 400;
  if intage >= 18 then
  begin //成人
    GBVisible;
    GroupBox6.Visible := true;
    if GroupBox6.Height > ScrollBox2.Height then
      Panel10.Height := GroupBox6.Height;
    GroupBox6.Align := alTop;
  end
  else
  begin
    GBVisible;
    GroupBox10.Visible := true;
    if GroupBox10.Height > ScrollBox2.Height then
      Panel10.Height := GroupBox10.Height;
    GroupBox10.Align := alTop;
  end;
end;

procedure TFrmfirstrecord2.Trauma_SheetEnter(Sender: TObject);
begin
  inherited;
//  ScrollBox2.VertScrollBar.Position :=  GroupBox7.Top;
  GBVisible;
  GroupBox7.Visible := true;
  if GroupBox7.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox7.Height;
  GroupBox7.Align := alTop;
end;

procedure TFrmfirstrecord2.GBVisible;
begin
  GroupBox1.Visible := false;
  GroupBox2.Visible := False;
  GroupBox3.Visible := False;
  GroupBox4.Visible := False;
  GroupBox5.Visible := False;
  GroupBox6.Visible := False;
  GroupBox7.Visible := False;
  GroupBox10.Visible := False;
  GroupBox16.Visible := False;
  Panel10.Height := 650;
  ScrollBox2.Width := 466;
  Panel10.Align := alTop;
end;

procedure TFrmfirstrecord2.AllergyEnter(Sender: TObject);
begin
  inherited;
  GBVisible;
  GroupBox5.Visible := true;
  if GroupBox5.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox5.Height;
  GroupBox5.Align := alTop;
end;

procedure TFrmfirstrecord2.PlanEnter(Sender: TObject);
begin
  inherited;
  GBVisible;
  GroupBox16.Visible := true;
  if GroupBox16.Height > ScrollBox2.Height then
    Panel10.Height := GroupBox16.Height;
  GroupBox16.Align := alTop;
end;

procedure TFrmfirstrecord2.Button5Click(Sender: TObject);
begin
  inherited;
  LEVSTRING := TStringList.Create;
  firststr := '';
  have := '';
  levecount := 0;
  Trauma_Sheet.Lines.Add(getstr(GroupBox7).Text);
end;

function TFrmfirstrecord2.getstr(name: TObject) :TStrings;
var
  i,J,SCONT : Integer;
begin
  Result := TStringList.Create;
  if TControl(Name).Tag = 999 then
  begin
    if TControl(Name) is TCheckBox then
      if TCheckBox(TControl(Name)).Checked then
      begin
        //if firststr = '' then
        //  firststr := AddChar(firststr,' ',length(firststr)+levecount+2)+TCheckBox(TControl(Name)).Caption+','
        //else
          //firststr := firststr+TCheckBox(TControl(Name)).Caption+',';
          LEVSTRING.Add(AddChar(firststr,' ',length(firststr)+levecount+2)+' '+TCheckBox(TControl(Name)).Caption+',');
        have := 'Y';
      end;
    if TControl(Name) is TEdit then
      if TEdit(TControl(Name)).Text <> '' then
      begin
        //if firststr <> '' then
        //  firststr := AddChar(firststr,' ',length(firststr)+levecount+2)+ReturnId(TEdit(TControl(Name)).Hint)+TEdit(TControl(Name)).Text+ReturnName(TEdit(TControl(Name)).Hint)+','
        //else
        //  firststr := firststr+ReturnId(TEdit(TControl(Name)).Hint)+TEdit(TControl(Name)).Text+ReturnName(TEdit(TControl(Name)).Hint)+',';
          if levecount > 2 then
            LEVSTRING.Add(AddChar(firststr,' ',length(firststr)+levecount+2)+ReturnId(TEdit(TControl(Name)).Hint)+' '+TEdit(TControl(Name)).Text+' '+ReturnName(TEdit(TControl(Name)).Hint)+',')
          else
            LEVSTRING.Add(AddChar(firststr,' ',length(firststr)+levecount+1)+ReturnId(TEdit(TControl(Name)).Hint)+' '+TEdit(TControl(Name)).Text+' '+ReturnName(TEdit(TControl(Name)).Hint)+',');
        have := 'Y';
      end;
  end
  else
  begin
    //if (firststr <> '') and (have = 'Y') then
    if (LEVSTRING.Count> 0) and (have = 'Y') then
    begin
      for j := 0 to LEVSTRING.Count-1 do
        Result.Add(LEVSTRING.Strings[j]);
      //Result.Add(firststr);
      firststr := '';
      LEVSTRING.Clear;
      have := '';
    end;
    inc(levecount);
    if (TControl(Name) is TGroupBox) AND (levecount>1)  then
    begin
      //firststr := AddChar(firststr,' ',levecount-1)+TGroupBox(TControl(Name)).Caption;
      if levecount = 2 then
        LEVSTRING.Add(AddChar('*'+TGroupBox(TControl(Name)).Caption,' ',length(TGroupBox(TControl(Name)).Caption)+levecount))
      else
        LEVSTRING.Add(AddChar(TGroupBox(TControl(Name)).Caption,' ',length(TGroupBox(TControl(Name)).Caption)+levecount));
    end;
    for i := 0 to TGroupBox(Name).ControlCount -1 do
    begin
      //if TCheckBox(TControl(name)).Caption= 'Wound:' then
      //  ShowMessage('Wound:');
      TCheckBox(TControl(name)).Caption;
      Result.AddStrings(getstr(TGroupBox(Name).Controls[i]));
    end;
    levecount := levecount -1;
    if (have='')  then
    BEGIN
      firststr := '';
      IF LEVSTRING.Count> 0 THEN
        LEVSTRING.Delete(LEVSTRING.Count-1);
      //firststr := LEVSTRING.Text;
    END
    else
      if (i = TGroupBox(Name).ControlCount ) and (have='Y') then
      begin
        for j := 0 to LEVSTRING.Count-1 do
          Result.Add(LEVSTRING.Strings[j]);
        //Result.Add(firststr);
        firststr := '';
        LEVSTRING.Clear;
        have := '';
      end;
  end;
end;

procedure TFrmfirstrecord2.Button7Click(Sender: TObject);
begin
  inherited;
  LEVSTRING := TStringList.Create;
  firststr := '';
  have := '';
  Physical_Examination.Lines.Add(getstr(GroupBox6).Text);
end;


procedure TFrmfirstrecord2.BitBtn1Click(Sender: TObject);
begin
  inherited;
  LEVSTRING := TStringList.Create;
  firststr := '';
  have := '';
  Physical_Examination.Lines.Add(getstr(GroupBox10).Text);
end;

procedure TFrmfirstrecord2.SGEmgicdEnter(Sender: TObject);
begin
  inherited;
  ScrollBox1.VertScrollBar.Position := 660;
  if pnlIcd.Visible then
    SetPanel(False,pnlphrase);
  IF PnlICD10.Visible THEN
    SetPanel(False,pnlIcd10);
end;

procedure TFrmfirstrecord2.pag_nameExit(Sender: TObject);
begin
  if TControl(ActiveControl) is TDBCtrlGrid then
   //ShowMessage('a')
  else
    if pnlphrase.Visible then
    begin
      SetPanel(FALSE,pnlphrase);
      pag_name.Text := '';
    end;
  inherited;
end;

procedure TFrmfirstrecord2.SGEmgicdMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
    { Allow dragging only if an acceptable cell was clicked
    (cell beyond the fixed column and row) }
  if pnlIcd.Visible then
    if DSIcd.DataSet.IsEmpty then
    begin
      if SGEmgicd.Cells[1,SourceRow] = '' then
        TStringGrid(Sender).Rows[SourceRow].Clear;
      SetPanel(False,pnlIcd);
    end;
  if (SourceCol >= 0) and (SourceRow >= 0) then
    if (TStringGrid(Sender).Cells[0,SourceRow]<> '') and (TStringGrid(Sender).Cells[1,SourceRow]<> '') then
      TStringGrid(Sender).BeginDrag(False, 4);
end;

procedure TFrmfirstrecord2.SGEmgicdKeyUp(Sender: TObject; var Key: Word;
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
  q_str,STR : string;
  i : integer;
  myKeyWord : TStringList;
begin
  inherited;
  if (key in [vk_up,vk_down,vk_return]) and ((pnlIcd.Visible) or (PnlICD10.Visible)) then
    exit;
  if TStringGrid(Sender).Col = 0 then
  begin
    if TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row] <>'' then
    begin
      if Sender = SGEmgicd then
      begin
        q_str := sql_str(2);
        if length(AnsiUpperCase(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row])) <= 3 then
        begin
          q_str := q_str + ' AND INSTR(icd9_code, '+qt(AnsiUpperCase(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row]))+') = 1 and rownum <= 50 order by icd9_code';
        end
        else
        begin
          if pos('.',SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row]) = 0  then
          begin
            q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(copy(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row],1,3)+'.'+
                                                                copy(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row],4, +
                                                                length(AnsiUpperCase(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row])))))+') = 1 and rownum <= 50 order by icd9_code';

          end
          else
          begin
            q_str := q_str + ' AND INSTR(icd9_code, '+Qt(AnsiUpperCase(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row]))+') = 1 and rownum <= 50 order by icd9_code';
          end;
        end;
        DM.qryicd9.Close;
        dm.qryicd9.SQL.Text := q_str;
        dm.qryicd9.Open;
        if not DM.qryicd9.IsEmpty then
        begin
          SetPanel(True,pnlIcd);
        end;
      end
      ELSE
      BEGIN
        q_str := sqlstr(0);
        q_str := q_str + ' upper(icd_code) like ' +qt(UPPERCASE(TStringGrid(Sender).Cells[TStringGrid(Sender).Col, TStringGrid(Sender).Row]) + '%');
        q_str := q_str + ' and eff_flag=''Y'' and icd_system = ''C'' and rownum <= 50';
        PnlICD10.Left := 8;
        PnlICD10.Top := 420;
        PnlICD10.Width := 720;
        PnlICD10.Height := 200;
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
          SetPanel(False,pnlIcd);
      END;
    end
    else
    begin
      SetPanel(False, PnlICD10);
      SetPanel(False,pnlIcd);
    end;
  end
  else
    if (TStringGrid(Sender).Col = 1) and (Trim(TStringGrid(Sender).Cells[TStringGrid(Sender).Col,TStringGrid(Sender).Row]) <>'') then
    begin
      Timer1.Enabled := True;
      Timer1.OnTimer(Sender);
    end;
end;

procedure TFrmfirstrecord2.Timer1Timer(Sender: TObject);
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
  if Sender = SGEmgicd then
  begin
    if Trim(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row]) <>'' then
    begin
      STR := AnsiUpperCase(Trim(SGEmgicd.Cells[SGEmgicd.Col,SGEmgicd.Row]));

      q_str := sql_str(2);

      myKeyWord:=StrToList(STR);
      for i := 0 to myKeyWord.Count -1 do
        q_str := q_str +' And INSTR(CHN_FULL_DESC||UPPER(ENG_FULL_DESC),'+Qt(myKeyWord.Strings[i])+') > 0 ';
      q_str := q_str +'  and rownum <= 50 order by ENG_FULL_DESC';
      dm.qryicd9.SQL.Text := q_str;
      dm.qryicd9.Open;
      if not DM.qryicd9.IsEmpty then
      begin
        SetPanel(True,pnlIcd);
      end;
    end;
  end
  else
  begin
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
      PnlICD10.Left := 8;
      PnlICD10.Top := 420;
      PnlICD10.Width := 720;
      PnlICD10.Height := 200;
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
  Timer1.Enabled := False;
end;

procedure TFrmfirstrecord2.SGEmgicdKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in [#10,#08]) then
    key := key;
end;

procedure TFrmfirstrecord2.SGEmgicdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_ESCAPE) then
  begin
    SetPanel(True,pnlIcd);
    PnlICD10.Visible := False;
  end;
  Timer1.Enabled := False;
  if (pnlIcd.Visible) or (PnlICD10.Visible) then
  begin
    if key in [vk_up,vk_down,vk_return] then
    begin
      if Key = vk_return then
      begin
        if pnlIcd.Visible then
          DBText1Click(self);
        if (PnlICD10.Visible) and (Sender = SGIcd10) then
          DBText41Click(self);
        key :=0;
      end;
      if pnlIcd.Visible then
        Sendmessage(DBCIcd.Handle,WM_KEYDOWN,key,0);
      if (PnlICD10.Visible) and (Sender = SGIcd10) then
        Sendmessage(DBCICD10.Handle, WM_KEYDOWN, key, 0);        
      key :=0;
    end;
  end;
end;

procedure TFrmfirstrecord2.DBText1Click(Sender: TObject);
var
  icd10code: string;
begin
  inherited;
  icd10code := '';
  if RepeatInGrid(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString,'0', 0, SGEmgicd) then
  begin
    ShowMessage(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString+ #13#10 +DBCIcd.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
    SGEmgicd.Rows[SGEmgicd.Row].Clear;
  end
  else if Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString) <> '' then
  begin
    IF PnlICD10.Visible THEN
       icd10code :=Trim(DSICD10.DataSet.FieldByName('ICD9_CODE').AsString);

    InsertIcd(Trim(DBCIcd.DataSource.DataSet.FieldByName('ICD9_CODE').AsString));
    
    IF trim(icd10code)<> '' THEN
      InsertIcd10first(icd10code);
  end
  else
    SGEmgicd.Rows[SGEmgicd.Row].Clear;

  SetPanel(False,pnlIcd);
  SetPanel(False,PnlICD10);
  //StringGridSort(SGICd);
end;

procedure TFrmfirstrecord2.SGEmgicdDblClick(Sender: TObject);
VAR
  delicd9: string;
  delrow: INTEGER;
begin
  inherited;
  if TStringGrid(Sender).Row > 0 then
  begin
    delicd9 := TStringGrid(Sender).Cells[0,TStringGrid(Sender).Row];
    TStringGrid(Sender).Rows[TStringGrid(Sender).Row].Clear;
    StringGridSort(TStringGrid(Sender));

    //連動刪IDC10
    if Sender = SGEmgicd then
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

procedure TFrmfirstrecord2.StringGridSort(Sender: TObject);
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


procedure TFrmfirstrecord2.SGEmgicdDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  vCol,vRow : integer;
  a,b,c,d,e : string;
begin
inherited;
  if (Trim(SGEmgicd.Cells[0,SourceRow])<> '') and (Trim(SGEmgicd.Cells[1,SourceRow])<> '') then
  begin
    TStringGrid(Sender).MouseToCell(X, Y, vCol, vRow);
    if vRow > 0 then
    begin
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
    end;
  end;
end;

procedure TFrmfirstrecord2.SGEmgicdDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  oCol, oRow:integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, oCol, oRow);
  Accept := (TStringGrid(Sender).Name = TStringGrid(Source).Name) and (oCol >= 0) and (oRow >= 1);
end;

procedure TFrmfirstrecord2.SGEmgicdDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if TStringGrid(Sender).Name = 'SGEmgicd' then
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
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

procedure TFrmfirstrecord2.SGEmgicdExit(Sender: TObject);
begin
  if TControl(ActiveControl) is TDBCtrlGrid then
   //ShowMessage('a')
  else
  begin
    if pnlIcd.Visible then
      if (Trim(SGEmgicd.Cells[0,SGEmgicd.Row])= '') or (Trim(SGEmgicd.Cells[1,SGEmgicd.Row]) = '' ) then
      begin
        SGEmgicd.Rows[SGEmgicd.Row].Clear;
        StringGridSort(SGEmgicd);
      end;
      SetPanel(False,pnlIcd);
    if pnlIcd10.Visible then
    begin
      if (Trim(SGICD10.Cells[0,SGICD10.Row])= '') or (Trim(SGICD10.Cells[1,SGICD10.Row]) = '' ) then
      begin
        SGICD10.Rows[SGICD10.Row].Clear;
        StringGridSort(SGICD10);
      end;
      SetPanel(False,PnlICD10);
    end;
  end;
  inherited;
end;

procedure TFrmfirstrecord2.BitBtn3Click(Sender: TObject);
VAR
  I : INTEGER;
begin
  inherited;
  CHIEF_S := TStringList.Create;
  IMPRESS_A := TStringList.Create;
  PLAN_P := TStringList.Create;
  PE_O := TStringList.Create;
  icd9FIRS.Clear;//2013/09/30
  FOR I := 0 TO Chief_Complaints.Lines.Count -1 DO
    IF Trim(Chief_Complaints.Lines.Strings[I])<> '' THEN
      CHIEF_S.Add(Chief_Complaints.Lines.Strings[I]);
  FOR I := 0 TO RichEdit2.Lines.Count -1 DO
    IF Trim(RichEdit2.Lines.Strings[I])<> '' THEN
      IMPRESS_A.Add(RichEdit2.Lines.Strings[I]);
  FOR I := 0 TO Plan.Lines.Count -1 DO
    IF Trim(Plan.Lines.Strings[I])<> '' THEN
      PLAN_P.Add(Plan.Lines.Strings[I]);
  FOR I := 0 TO Present_Illness.Lines.Count -1 DO
    IF Trim(Present_Illness.Lines.Strings[I])<> '' THEN
      PE_O.Add(Present_Illness.Lines.Strings[I]);
  FOR I := 1 TO SGEmgicd.RowCount -1 DO
    IF Trim(SGEmgicd.Cells[0,I])<> '' THEN
      icd9FIRS.Add(SGEmgicd.Cells[0,I]);
  HAVTRA := True;
  //ShowMessage('完成!!離開後帶入');
end;

procedure TFrmfirstrecord2.BitBtn2Click(Sender: TObject);
var
  i :integer;
begin
  inherited;
  //O_SUBJECT , O_OJECT ,O_PLAN  ,O_HISTORY ,A_ASSESSMENT
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select fee_no,kind,seq_no,text,allorder_no from epd_record where fee_no='+qt(GetFeeNo)+' AND ORDER_DATE='+QT(GetEpdDate)+' and ');
  DM.QryTemp.SQL.Add('substr(kind,1,1)=''O'' and del_flag=''N'' order by kind,allorder_no,seq_no');
  dm.QryTemp.SQL.Text;
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    if trim(DM.QryTemp.FieldByName('kind').AsString)= 'O_SUBJECT' then
      Chief_Complaints.Lines.Add(soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString)));
    if trim(DM.QryTemp.FieldByName('kind').AsString)= 'O_OJECT' then
      Physical_Examination.Lines.Add(soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString)));
    if trim(DM.QryTemp.FieldByName('kind').AsString)= 'O_PLAN' then
      Plan.Lines.Add(soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString)));
    if trim(DM.QryTemp.FieldByName('kind').AsString)= 'O_HISTORY' then
      RichEdit2.Lines.Add(soapstrReplace(trim(DM.QryTemp.FieldByName('text').AsString)));
    DM.QryTemp.Next;
  end;
  for i := 0 to icd9FIRS.Count-1 do
   InsertIcd(icd9FIRS.Strings[i]);
end;

procedure TFrmfirstrecord2.DBCIcdPaintPanel(DBCtrlGrid: TDBCtrlGrid;
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

procedure TFrmfirstrecord2.MenuItem1Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).CopyToClipboard;
end;

procedure TFrmfirstrecord2.MenuItem2Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).CutToClipboard;
end;

procedure TFrmfirstrecord2.MenuItem3Click(Sender: TObject);
begin
  inherited;
  TRichEdit(TControl(ppmcopy.PopupComponent)).PasteFromClipboard;
end;

procedure TFrmfirstrecord2.Button8Click(Sender: TObject);
begin
  inherited;
  Chief_Complaints.Lines.Text := MajorDataTime + Chief_Complaints.Lines.Text;
  DM.QryUpdate.Close;
  DM.QryUpdate.SQL.Clear;
  DM.QryUpdate.SQL.Add('update major_injuries_dtl set cncl_flag=''N'' where fee_no='+Qt(GetFeeNo));
  DM.ADOLink.BeginTrans;
  try
    DM.QryUpdate.ExecSQL;
  except
    DM.ADOLink.RollbackTrans;
  end;
  DM.ADOLink.CommitTrans;
  Button8.Visible := False;
end;

procedure TFrmfirstrecord2.getdata(prt, allseqno: string);
var
  newQuery: TADOQuery;
  i: integer;
  MYCOMP : TComponent;
  SQSTR :STRING;
begin
  try
    ClearSG(SGEmgicd);
    SGEmgicd.RowCount := 11;
    SGEmgicd.Cells[0,0] := 'ICD9';
    SGEmgicd.Cells[1,0] := '英文';
    SGEmgicd.Cells[2,0] := '中文';
    SGEmgicd.ColWidths[2] := -1;
    SGEmgicd.ColWidths[3] := -1;
    SGEmgicd.ColWidths[4] := -1;
    //icd10
    SGICD10.RowCount := 11;
    SGICD10.Cells[0,0] := 'ICD10';
    SGICD10.Cells[1,0] := '英文';
    SGICD10.Cells[2,0] := '中文';
    SGICD10.ColWidths[2] := -1;
    SGICD10.ColWidths[3] := -1;
    SGICD10.ColWidths[4] := -1;


    i := 9;
    tag := 0;


    Chief_Complaints.Clear;
    Present_Illness.Clear;
    Past_History.Clear;
    medication_data.Clear;
    Medication_History.Clear;
    Allergy_data.Clear;
    Allergy.Clear;
    Physical_Examination.Clear;
    Trauma_Sheet.Clear;
    RichEdit2.Clear;
    Plan.Clear;

    newQuery := TADOQuery.Create(Self);
    newQuery.Connection := DM.ADOLink;
    //取圖檔
    newQuery.Close;
    newQuery.SQL.Clear;
    newQuery.SQL.Text := 'select *'+
                         ' from EPD_ADMISSION_PIC where fee_no='+Qt(GetFeeNo)+' and allorder_no='+Qt(allseqno);

    newQuery.Open;
    if not newQuery.IsEmpty then
    begin
      tms := TmemoryStream.Create;
      TBlobField(newQuery.FieldByName('PATHPIC')).SaveToStream(tms);
      J1 := TJPEGImage.Create;
      TMS.Seek(0,soFromBeginning);
      with J1 do
      begin
        PixelFormat := jf24Bit;
        Scale := jsFullSize;
        Grayscale := False;
        Performance := jpBestQuality;
        ProgressiveDisplay := True;
        ProgressiveEncoding := True;
        LoadFromStream(tms);
      end;
      Memo1.Lines.Text := newQuery.FieldByName('text').AsString;
      Image1.Picture.Assign(J1);
      Image2.Picture.Assign(J1);
    end;
    tms.Free;
    J1.Free;

    newQuery.Close;
    newQuery.SQL.Clear;
    newQuery.SQL.Text := 'select *'+
                         ' from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no='+Qt(allseqno);
                         //'(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+')';
    newQuery.Open;
    while not newQuery.Eof do
    begin
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '01' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Chief Complaint:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            Chief_Complaints.Lines.Add('');
            Chief_Complaints.Lines.Strings[Chief_Complaints.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '02' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Present Illness:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Present_Illness.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Present_Illness.Lines.Add('');
            Present_Illness.Lines.Strings[Present_Illness.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '03' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Past History:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Past_History.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Past_History.Lines.Add('');
            Past_History.Lines.Strings[Past_History.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if Trim(newQuery.FieldByName('ORDER_SORT').AsString) = '04' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Allergy History:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Allergy_data.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Allergy_data.Lines.Add('');
            Allergy_data.Lines.Strings[Allergy_data.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '05' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Allergy History:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Allergy.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Allergy.Lines.Add('');
            Allergy.Lines.Strings[Allergy.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '06' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Medication History:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //medication_data.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            medication_data.Lines.Add('');
            medication_data.Lines.Strings[medication_data.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '07' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Medication History:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Medication_History.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Medication_History.Lines.Add('');
            Medication_History.Lines.Strings[Medication_History.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '08' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Physical Examination:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Physical_Examination.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Physical_Examination.Lines.Add('');
            Physical_Examination.Lines.Strings[Physical_Examination.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '09' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Trauma Sheet:' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Trauma_Sheet.Lines.Add(TrimLeft(newQuery.fieldbyname('text').AsString));
            Trauma_Sheet.Lines.Add('');
            Trauma_Sheet.Lines.Strings[Trauma_Sheet.Lines.Count-1]:= TrimLeft(newQuery.fieldbyname('text').AsString);
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '10' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Impression :' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            InsertIcd10first(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
            InsertIcd(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '11' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Impression :' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //RichEdit2.Lines.Add(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
            RichEdit2.Lines.Add('');
            RichEdit2.Lines.Strings[RichEdit2.Lines.Count-1]:= ReturnId(trim(newQuery.fieldbyname('text').AsString));
          end;
      end;
      if trim(newQuery.FieldByName('ORDER_SORT').AsString) = '12' then
      begin
        if Trim(newQuery.fieldbyname('text').AsString) <> '◎Plan(s):' then
          if trim(newQuery.fieldbyname('text').AsString) <> '' then
          begin
            //Plan.Lines.Add(ReturnId(trim(newQuery.fieldbyname('text').AsString)));
            Plan.Lines.Add('');
            Plan.Lines.Strings[Plan.Lines.Count-1]:= ReturnId(trim(newQuery.fieldbyname('text').AsString));
          end;
      end;
      newQuery.Next;
    end;

    newQuery.Close;
    newQuery.SQL.Clear;
    newQuery.SQL.Text := 'select *'+
                         '  from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+' and order_date='+qt(GetEpdDate)+' and allorder_no='+Qt(allseqno);
                         //'(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_ITEM'' and fee_no='+Qt(GetFeeNo)+')';
    newQuery.Open;
    WHILE NOT newQuery.Eof DO
    BEGIN
      MYCOMP := FindComponent(ReturnId(trim(newQuery.FieldByName('text').AsString)));
      IF MYCOMP IS TCheckBox THEN
        TCheckBox(MYCOMP).Checked := True;
      IF MYCOMP IS TEdit THEN
        TEdit(MYCOMP).Text := ReturnName(trim(newQuery.FieldByName('text').AsString));
      newQuery.Next;
    END;

    //取重症啟動時間
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select * from major_injuries_dtl where fee_no='+Qt(GetFeeNo)+' and nvl(trim(cncl_flag),''N'') = ''N'' ');
    DM.QryTemp.open;
    IF not DM.QryTemp.IsEmpty then
    begin
      Button8.Visible := True;
      while not DM.QryTemp.Eof do
      begin
        MajorDataTime := MajorDataTime + dateformat(1,ROCToDate(trim(DM.QryTemp.fieldbyname('start_date').AsString))) +
                         copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),1,2) + '時' +
                         copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),3,2) + '分' +
                         copy(trim(DM.QryTemp.fieldbyname('start_time').AsString),5,2) + '秒 啟動' +
                         trim(DM.QryTemp.fieldbyname('major_name').AsString) + '小組'+#10;
        DM.QryTemp.Next;
      end;
    end;

    if (Getopdstatus= '1') or (Getopdstatus= '2') or (newQuery.IsEmpty) then
    begin
      //沒有此病人病歷首頁資料
      with DM.QryTemp do
      begin
        //過敏史
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add('Select * from OPD_WARNING2 where CHR_NO='+Qt(GetChrno)+' and nvl(MED_CODE ,''nil'')<>''nil''');
        DM.QryTemp.open;
        Allergy_data.Clear;
        while not DM.QryTemp.Eof do
        begin
          Allergy_data.Lines.Add('藥品名:'+trim(DM.QryTemp.fieldByName('MED_DESC').AsString)+'_'+trim(DM.QryTemp.fieldByName('ALISE_DESC').AsString)+'_'+Trim(DM.QryTemp.fieldbyname('oper_name').AsString));
          DM.QryTemp.next;
        end;

        //歷史用藥  sql_str
        Close;
        SQL.Clear;
        SQSTR := sql_str(12);
        SetParamter(SQSTR,'$FEE_NO$',qt(GetFeeNo));
        //SetParamter(SQSTR,'$CHR_NO$',qt(GetChrNo));
        //SetParamter(SQSTR,'$BEGINDATE$',Qt(ROCDate(ROCToDate(GetEpdDate)-7,'')));
        //SetParamter(SQSTR,'$NOWDATE$',ROCDate(Now,''));
        SQL.Text := SQSTR;
        //sql.SaveToFile('D:\medlog.txt');
        open;
        medication_data.Clear;
        medication_data.Lines.Add(trim('無病人主述之現用藥') );

        if not IsEmpty then
        medication_data.Clear;
        while not Eof do
        begin                                                                   // +'_'+trim(fieldByName('ALISE_DESC').AsString)
          medication_data.Lines.Add(trim(fieldByName('TITLE').AsString)+trim(fieldByName('MEMO').AsString) );
          Next;
        end;



        //院內有紀錄的病史20140402
        Close;
        SQL.Clear;
        SQSTR := firstsql_str(0);
        SetParamter(SQSTR,'$CHR_NO$',qt(GetChrNo));
        SQL.Text := SQSTR;
        open;
        while not Eof do
        begin
          Past_History.Lines.Add(trim(fieldbyname('dd').AsString));
          Next;
        end;
        Close;
      end;
    end;
    newQuery.Close;
  finally
    FreeAndNil(newQuery);
  end;
end;

procedure TFrmfirstrecord2.RdGPatFristListClick(Sender: TObject);
begin
  inherited;
  if RdGPatFristList.ItemIndex = 0 then
  begin
    //新增
    if frmopen = 'N' then
      if MessageDlg('是否清除畫面資料', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      ClearSG(SGEmgicd);
      SGEmgicd.RowCount := 11;
      Chief_Complaints.Clear;
      Present_Illness.Clear;
      Past_History.Clear;
      medication_data.Clear;
      Medication_History.Clear;
      Allergy_data.Clear;
      Allergy.Clear;
      Physical_Examination.Clear;
      Trauma_Sheet.Clear;
      RichEdit2.Clear;
      Plan.Clear;
      Image1.Picture.Graphic := nil;
      END;
    backcount := IntToStr(StrToInt(trim(backcount))+1);
  end
  else
  begin
    //修改
    getdata(ReturnId(orderitems.Strings[RdGPatFristList.ItemIndex]),ReturnName(orderitems.Strings[RdGPatFristList.ItemIndex]));
    backcount := Returnid(orderitems.Strings[RdGPatFristList.ItemIndex]);
    oldbackcount := Returnid(orderitems.Strings[RdGPatFristList.Items.count-1]);
  end;
end;

procedure TFrmfirstrecord2.DBText41Click(Sender: TObject);
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
            ShowMessage('此' + DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString + '診斷碼已重複開立！');
            SetPanel(False, PnlICD10);
            SGIcd10.Cells[0, SGIcd10.Row] := '';
            SGIcd10.SetFocus;
            Exit;
          end;
        end;
    end;
    SGIcd10.Cells[0, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ICD9_CODE').AsString;
    SGIcd10.Cells[1, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_SIMP_DESC').AsString;
    SGIcd10.Cells[2, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_SIMP_DESC').AsString;
    SGIcd10.Cells[3, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('slow_flag').AsString;
    SGIcd10.Cells[4, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('first_flag').AsString;
    SGIcd10.Cells[5, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('CHN_FULL_DESC').AsString;
    SGIcd10.Cells[6, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('ENG_FULL_DESC').AsString;
    SGIcd10.Cells[7, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('icd9toicd10').AsString;
    SGIcd10.Cells[8, SGIcd10.Row] := DBCICD10.DataSource.DataSet.FieldByName('choose_flag').AsString;
    if SGIcd10.Row < (SGIcd10.RowCount - 1) then
    begin
      SGIcd10.Row := SGIcd10.Row + 1;
    end;
  end
  else
    SGIcd10.Rows[SGIcd10.Row].Clear;
  SetPanel(False, PnlICD10);
end;

function TFrmfirstrecord2.InsertIcd10first(Icd_Code: string): Boolean;
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
              //指定到空的row
              for j := 1 to 11 do
              begin
                if ((trim(SGIcd10.Cells[0, j]) = '') or (trim(SGIcd10.Cells[1, j]) = '')) then
                begin
                  SGIcd10.Row := j;
                  Break;
                end;
              end;
              SGIcd10.Cells[0, SGIcd10.Row] := Qrys.FieldByName('ICD9_CODE').AsString;
              SGIcd10.Cells[1, SGIcd10.Row] := Qrys.FieldByName('ENG_SIMP_DESC').AsString;
              SGIcd10.Cells[2, SGIcd10.Row] := Qrys.FieldByName('CHN_SIMP_DESC').AsString;
              SGIcd10.Cells[3, SGIcd10.Row] := Qrys.FieldByName('slow_flag').AsString;
              SGIcd10.Cells[4, SGIcd10.Row] := Qrys.FieldByName('first_flag').AsString;
              SGIcd10.Cells[5, SGIcd10.Row] := Qrys.FieldByName('CHN_FULL_DESC').AsString;
              SGIcd10.Cells[6, SGIcd10.Row] := Qrys.FieldByName('ENG_FULL_DESC').AsString;
              SGIcd10.Cells[7, SGIcd10.Row] := Qrys.FieldByName('icd9toicd10').AsString;
              SGIcd10.Cells[8, SGIcd10.Row] := Qrys.FieldByName('choose_flag').AsString;
              if SGIcd10.Row < (SGIcd10.RowCount - 1) then
              begin
                SGIcd10.Row := SGIcd10.Row + 1;
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
        MessageDlg('此' + Icd_Code + '診斷碼已重複開立！', mtWarning, [mbOk], 0);
        result := false;
        break;
      end;
    end;
  end;
end;

procedure TFrmfirstrecord2.DSIcdDataChange(Sender: TObject; Field: TField);
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
    DSICD10.DataSet   := DM.qryICD10;
    PnlICD10.Height   := 80;
    PnlICD10.Left     := 8;
    PnlICD10.Width    := pnlIcd.Width;
    PnlICD10.Top      := pnlIcd.TOP - 85;
    DBCICD10.RowCount := 2;
    SetPanel(True,PnlICD10);
    DBCICD10.Enabled := False;
  end;
end;

procedure TFrmfirstrecord2.ImageSizeChange(Sender: TObject);
var
  TempW ,TempH : Integer;
begin
  TempW := TImage(sender).Width;
  TempH := TImage(sender).Height;

  if (TempW > Dint) and (TempH > Dint) then
  begin
    if TempW > TempH then
    begin
      TImage(sender).Width := Dint;
      TImage(sender).Height := (TempH * Dint ) div TempW;
    end
    else
    begin
      TImage(sender).Height := Dint;
      TImage(sender).Width := (TempW * Dint ) div TempH;
    end;
  end
  else if (TempW > Dint) then //圖的寬比較大
  begin
    TImage(sender).Width := Dint;
    TImage(sender).Height := (TempH * Dint ) div TempW;
  end
  else if (TempH > Dint) then //圖的高比較大
  begin
    TImage(sender).Height := Dint;
    TImage(sender).Width := (TempW * Dint ) div TempH;
  end
  else
  begin
    TImage(sender).Height := TempH;
    TImage(sender).Width := TempW;
  end;
  //TImage(sender).Stretch := True;
end;


procedure TFrmfirstrecord2.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPathDraw) then
    FrmPathDraw := TFrmPathDraw.Create(self);

  FrmPathDraw.myBmp.Assign(Image2.Picture.Graphic);
  FrmPathDraw.ShowModal;

  if Assigned(GMStream) then
    if  GMStream.Size > 0 then
    begin
      Image1.Picture.Assign(StretchImageRatio(GMStream,Dint,Dint,100,false));
      ImageSizeChange(Image1);
      GMStream.Clear;
    end;
end;

function TFrmfirstrecord2.StretchImageRatio(PMS: TMemoryStream; Width,
  Height, Quality: Integer; Center: Boolean): TJpegImage;
var
    bmp, tempbmp : TBitmap;
    RT : TRect;
    Ratio : Double;
    NewW, NewH : Integer;
    F1: File of DK1;
    DKind1: DK1;
    sHeader,sType:String;
begin

  result := TjpegImage.Create;
  bmp := TBitmap.Create;
  tempbmp := TBitmap.Create;

  try
    sType:='.BMP';
    GMStream.Seek(0,soFromBeginning);
    tempbmp.LoadFromStream(GMStream);// LoadFromFile(FileName);
    if (tempbmp.Width <= dint )  and (tempbmp.Height <= dint ) then
    begin
      result.Assign(tempbmp);
      exit;
      
    end;
  finally
    result.Assign(tempbmp);
    tempbmp.Free;
    bmp.Free;
  end;
    {
    if width = 0 then
      width := tempbmp.Width ;
    if Height = 0 then
      Height := tempbmp.Height;
    //縮圖開始
    if width >=dint then
      width := dint;
    if Height >= dint then
      Height :=dint;
    Ratio := Min(Width / tempbmp.Width, Height / tempbmp.Height);
    NewW := Round(tempbmp.Width * Ratio);
    NewH := Round(tempbmp.Height * Ratio);
    if Center then
    begin
      bmp.Width := Width;
      bmp.Height := Height;
      RT.Left := Floor(Abs(Width-NewW)/2);
      RT.Top := Floor(Abs(Height-NewH)/2);
      RT.Right := RT.Left + NewW;
      RT.Bottom := RT.Top + NewH;
    end
    else
    begin
      bmp.Width := NewW;
      bmp.Height := NewH;
      RT.Left := 0;
      RT.Top := 0;
      RT.Right := bmp.Width - 1;
      RT.Bottom := bmp.Height - 1;
    end;
    if sType = '.JPG' then
      bmp.Canvas.StretchDraw(RT,result)
    else
      bmp.Canvas.StretchDraw(RT,tempbmp);
    //縮圖結束
    result.CompressionQuality := Quality;
    result.Assign(bmp);
  finally
    tempbmp.Free;
    bmp.Free;
  end;
  }
end;

procedure TFrmfirstrecord2.Button9Click(Sender: TObject);
begin
  inherited;
  Image1.Picture.Graphic := nil;
end;

end.
