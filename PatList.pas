//FEE_NO OK 20160718

unit PatList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Grids, ImgList, dateutils,
  Menus, TeEngine, Series, GanttCh, TeeProcs, Chart, TeeShape,math, DB,
  ADODB, Buttons, IniFiles, Contnrs, CheckLst, SHELLapi, SHDocVw; //20121114

type
  TFrmPatList = class(TFrmMain)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    panLevel: TPanel;
    panTime: TPanel;
    panPat: TPanel;
    panDia: TPanel;
    panDoc: TPanel;
    panEmg: TPanel;
    panImp: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DGpat: TDrawGrid;
    SGMyPat: TStringGrid;
    ImageListSex: TImageList;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbArea: TComboBox;
    cbTrend: TComboBox;
    edtchr_no: TEdit;
    Button1: TButton;
    ppm: TPopupMenu;
    SgMajor: TStringGrid;
    Label5: TLabel;
    Panel4: TPanel;
    CBBdoc: TComboBox;
    DTPOpddate: TDateTimePicker;
    Panel5: TPanel;
    Pnlmed: TPanel;
    PnlOrder: TPanel;
    Pnlchk: TPanel;
    PnlExp: TPanel;
    PnlXray: TPanel;
    PnlCT: TPanel;
    PnlMRI: TPanel;
    PnlMedRecord: TPanel;
    BitBtn1: TBitBtn;
    Pnldept: TPanel;
    Panel6: TPanel;
    sgchangedoc: TStringGrid;
    Panel7: TPanel;
    cbbChangecode: TComboBox;
    Label6: TLabel;
    bbtnprint: TBitBtn;
    SpeedButton1: TSpeedButton;
    DTPbetwDate: TDateTimePicker;
    CBDate: TCheckBox;
    Label7: TLabel;
    CBDept: TComboBox;
    Button2: TButton;
    Button3: TButton;
    PageWay: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label2: TLabel;
    CBRegDept: TComboBox;
    sgPatOrder: TStringGrid;
    Button4: TButton;
    SgBigdia: TStringGrid;
    SgHRR: TStringGrid;
    Button5: TButton;
    TabSheet7: TTabSheet;
    Panel8: TPanel;
    SGCONST: TStringGrid;
    PopMcost: TPopupMenu;
    TabSheet8: TTabSheet;
    sgNurse: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure DGpatDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DGpatDblClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbTrendChange(Sender: TObject);
    procedure edtchr_noKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtdateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbAreaChange(Sender: TObject);
    procedure MySBarDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure DGpatClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DGpatMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure panLevelClick(Sender: TObject);
    procedure CBBdocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DTPOpddateExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sgchangedocDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgchangedocSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgchangedocClick(Sender: TObject);
    procedure CBDateClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mypopmenuClick(Sender: TObject);
    procedure DTPOpddateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DGpatMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DGpatMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure CBDeptChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtchr_noExit(Sender: TObject);
    procedure PageWayDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure PageWayChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ppmPopup(Sender: TObject);
    procedure DGpatMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CBBdocDropDown(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CallHRRClick(Sender : TObject);
    procedure Button5Click(Sender: TObject);
    procedure SGCONSTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SGCONSTDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGCONSTDblClick(Sender: TObject); //20121114
    procedure patMyItemsForCONSULTClick(Sender: TObject);
    procedure CBBdocChange(Sender: TObject);
    procedure ReEMR(Sender: TObject);
  private
    { Private declarations }
    leftPanel4 : integer;
    ordtype : TStringList;
    docchangeprint,gettrampkg : string;
    waitforgetlist,deptuse : boolean;
    HRRCnt,ReplyCnt,mosx,mosy : integer; //20121114
    procedure SetSG();
    procedure ppmadd;
    procedure LoadVer;
    procedure PrintSubjectBed;
  public
    { Public declarations }
    procedure setsgmajor(fee_no,val:string;col: integer);
    //0:fee_no,1:藥量,2:執行藥囑,3:檢查量,4:檢查簽收,5:檢驗量,6:檢驗報告,
    //7:放射量,8:放射簽收,9:CT量,10:CT簽收,11:MRI量,12:mri簽收,13:病歷列印否
    procedure GetList;
    function getstatuscolor(val:string):TColor;

  end;

var
  FrmPatList: TFrmPatList;

implementation

uses DBDM, MySQLc, Order, Commfunc, MyUser, Global, ERsFunc, NurseOrder,
   DataReport, MAJOR, AreaBed, chdocprnt, shift_note, ErThread, MECHANISM,
  MAJOR2, BedEmpty, RDShift, ICFunction, VCLFixes;

{$R *.dfm}

procedure TFrmPatList.FormShow(Sender: TObject);
var
  mywidth: Integer;
  iPage : Integer;
begin
  inherited;
  mosx := 0;
  mosy := 0;
  chtrm := 'N';
  listsqloper := True;
  rdonly := False;
  epd_date := ROCDATE(DTPOpddate.DATETIME,'');

  //20160531停止紙本列印
  DONOT_PRINT_PAPER := FALSE;
  DONOT_PRINT_PAPER := UpperCase(SetSys.ReadString('SYSTEM','DONOT_PRINT_PAPER',''))= 'TRUE';

  //取icd9切換住記
  DM.QrySearch3.Close;
  DM.QrySearch3.SQL.Clear;                                 // '10501'
  //DM.QrySearch3.SQL.Add('select F_GET_FUNC_value(''35001'','+qt(copy(epd_date,1,5))+') as code from dual');
  DM.QrySearch3.SQL.Add('select F_GET_FUNC_value(''35001'',''10501'') as code from dual');
  DM.QrySearch3.Open;
  if not DM.QrySearch3.IsEmpty then
  begin
    icdchangea := DM.QrySearch3.FieldByName('code').AsString;
  end;

  DGpat.ColWidths[0] := Pnldept.Width-1;
  DGpat.ColWidths[1] := panLevel.Width-1;
  DGpat.ColWidths[2] := panTime.Width-1;
  DGpat.ColWidths[3] := panPat.Width-1;
  DGpat.ColWidths[4] := panDia.Width-1;
  DGpat.ColWidths[5] := panDoc.Width-1;
  DGpat.ColWidths[6] := panEmg.Width-1;
  mywidth :=  ceil(panImp.Width / 8 );
  Pnlmed.Width       := mywidth;
  DGpat.ColWidths[7] := Pnlmed.Width-2;
  PnlOrder.Width     := mywidth;
  DGpat.ColWidths[8] := PnlOrder.Width-1;
  Pnlchk.Width       := mywidth;
  DGpat.ColWidths[9] := Pnlchk.Width-1;
  PnlExp.Width       := mywidth;
  DGpat.ColWidths[10] := PnlExp.Width-1;
  PnlXray.Width      := mywidth;
  DGpat.ColWidths[11] := PnlXray.Width-1;
  PnlCT.Width        := mywidth;
  DGpat.ColWidths[12] := PnlCT.Width-1;
  PnlMRI.Width        := mywidth;
  DGpat.ColWidths[13] := PnlMRI.Width-1;
  PnlMedRecord.Align  := alClient;
  DGpat.ColWidths[14] := PnlMedRecord.Width-1;
  mydate := date;
  DGpat.SetFocus;
  waitforgetlist := false;
  for iPage := 0 to  cbTrend.Items.Count -1 do
  begin
    PageWay.Pages[iPage].Caption :=  cbTrend.Items.Strings[ipage]
  end;
  threadReportstatus := 'N';
end;

procedure TFrmPatList.DGpatDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  myRect,TextRect : TRect;
  myBMP : Tbitmap;
  Str,s,n,i_name,trigdept : String;
  mycolor : TColor;
  h,m,tol,iRow, nurrow ,BigDiaRow,patReportRow, aa: integer;
  tmpColor :Tcolor;
  // TotalTime,PassTime,useTime : Integer;
  HRRRow : integer; //20121114
  epd_ttime: integer;

  temcolor :integer;
  temFont:TFont;

begin
  inherited;
  if trim(SGMyPat.Cells[0,1]) = '' then
    exit;
  tol := 0;
  BigDiaRow := -1;
  DGpat.Canvas.RoundRect(Rect.Left +1, Rect.Top +1, Rect.BottomRight.X -1 ,Rect.BottomRight.Y -1,1,1);
  myRect.Left := Rect.Left +1;
  myRect.Top  := Rect.Top +1;
  myRect.Right  := Rect.Right -3;
  myRect.Bottom := Rect.Bottom -3;
  myBMP := Tbitmap.Create;
  try
    iRow   := SGPatOrder.Cols[0].IndexOf(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]);
    nurrow := sgNurse.Cols[0].IndexOf(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]);
  except
    nurrow := 0;
    iRow   := 0;
  end;

  if trim(SGmypat.Cells[0,1])<>'' then
    case Acol of
      0:
      begin
        Str := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('TRIAGEDEPT'),ARow+1];
        DGpat.Canvas.Font.Size := 11;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Style := [fsbold];
        //#A:小兒 B:外傷 C:非外傷 D:其他 E:燒檢 F:急婦 ;非外傷、外傷、小兒、婦科、其他
        if Str = '' then
        begin
          trigdept := '';
          s := '';
        end;
        if str ='A' then
        begin
          trigdept :='小';
          s := '兒';
        end;
        if str = 'B' then
        begin
          trigdept := '外';
          s := '傷';
          //DGpat.Canvas.Font.Color := clRed;
        end;
        if str = 'C' then
        begin
          trigdept := '非';
          s := '傷';
        end;
        if str = 'D' then
        begin
          trigdept := '其';
          s := '他';
        end;
        if str = 'E' then
        begin
          trigdept := '燒';
          s := '檢';
        end;
        if str = 'F' then
        begin
          trigdept := '急';
          s := '婦';
        end;

        //109.06.24 shh ITe 11138
        epd_ttime := strtoint(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_ttime'),ARow+1]);
        if epd_ttime >= 2160 then
        begin
        //   DGpat.Canvas.Font.Color := clRed;
           DGpat.Canvas.Brush.Color := clRed;
           DGpat.Canvas.FillRect(Rect);
        end;
        //END 109.06.24

        TextRect := myRect;
        TextRect.Top := myRect.Top +8;
        DrawText(DGpat.Canvas.Handle,pchar(trigdept),Length(trigdept),TextRect,DT_WORDBREAK or DT_CENTER);
        TextRect.Top := myRect.Top +30;
        DrawText(DGpat.Canvas.Handle,pchar(s),Length(S),TextRect,DT_WORDBREAK or DT_CENTER);

      end;
      1:
      begin
        DGpat.Canvas.Font.Name := 'Arial';
        DGpat.Canvas.Font.Size := 36;
        DGpat.Canvas.Font.Style := [fsbold];
        if (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1])<> '') and (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1])<> 'A') then
          if TryStrToInt(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1]),aa) then//確認是否數值
            if StrToInt(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1]))< 2 then
              DGpat.Canvas.Font.Color := clRed;

        if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1]) = 'A' then
          DGpat.Canvas.TextRect(myRect,myRect.Left+12,myRect.Top+4,'5')
        else
          DGpat.Canvas.TextRect(myRect,myRect.Left+12,myRect.Top+4,SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),ARow+1]);
      end;
      2:
      begin
        TextRect := myRect;
        TextRect.Left := myRect.Left + 2;
        TextRect.Top := myRect.Top +4;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Size := 11;
        try
          Str := ROCDate(ROCToDate(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),ARow+1]),'/');
        except

        end;

         //copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),ARow+1],1,length(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),ARow+1]))-4);
        Str := Str +#10#13+ copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),ARow+1],1,2)+':'+copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),ARow+1],3,2);

        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_LEFT);
        //第二層
        //TextRect.Top := myRect.Top +20;

        //Str := copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),ARow+1],1,2)+':'+copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),ARow+1],3,2);
        //DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_LEFT);
      end;
      3:
      begin
        //20121114 start
        try
          HRRRow := SgHRR.Cols[0].IndexOf(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]);

        except
          HRRRow := 0 ;
        end;
        if HRRRow >0 then
        begin
          if trim(SgHRR.Cells[1,HRRRow]) <> trim(SgHRR.Cells[2,HRRRow]) then
            DGpat.Canvas.Brush.Color := ClYellow
          else
            DGpat.Canvas.Brush.Color := clSkyBlue;
          DGpat.Canvas.FillRect(myRect);
        end;
        //20121114 end
              
        if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('SEX_TYPE'),ARow+1]) ='1' then
           DGpat.Canvas.Font.Color := ClNavy
        else
          DGpat.Canvas.Font.Color := clMaroon;
//        DGpat.Canvas.Draw(myRect.Left+2 ,myRect.Top+4 ,myBMP);
        leftPanel4 := myRect.Left;
        TextRect := myRect;
        TextRect.Left := myRect.Left+2;
        TextRect.Top := myRect.Top +4;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Size := 13;
        DGpat.Canvas.Font.Style := [fsbold];
        if security = 'True' then
          Str := StringMix(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),ARow+1]),'＊')
        else
          Str := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),ARow+1]);
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_LEFT);
        //病姓名畫完
        Str := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('CHR_NO'),ARow+1]);
        DGpat.Canvas.Font.Name := 'Arial';
        TextRect.Top := myRect.Top + 40;
        DGpat.Canvas.Font.Style :=[];
        DGpat.Canvas.Font.Color := ClBlue;
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_LEFT);
        //病歷號畫完

        {Str := SgMajor.Cells[27,SgMajor.Cols[0].IndexOf(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('FEE_NO'),ARow+1]))];
        //myrect := TextRect;
        //myrect.Left := myrect.Right ;
        TextRect.Top := myRect.Top +38;
        DGpat.Canvas.Font.Name := '標楷體';
        DGpat.Canvas.Font.Style :=[];
        DGpat.Canvas.Font.Color := clMaroon;
        DGpat.Canvas.Font.Size := 10;
        DrawText(DGpat.Canvas.Handle,pchar(Str),Length(Str),TextRect,DT_WORDBREAK or DT_RIGHT); }
      end;
      4:
      begin
        //主診斷
        Str := copy(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('icd9_desc'),ARow+1],1,30);
        DGpat.Canvas.Font.Size := 9;
        TextRect := myRect;
        TextRect.Left := TextRect.Left+4;
        TextRect.Top := myRect.Top +4;
        DGpat.Canvas.Font.Name := 'Arial';
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_SINGLELINE);
        //備註
        str :='';
        //str := copy(trim(SGMyPat.Cells[SGMyPat.Rows[0].indexof('changenote'),ARow+1]),1,30);
        //250欄位儲存上限  //11138
        str := copy(trim(SGMyPat.Cells[SGMyPat.Rows[0].indexof('changenote'),ARow+1]),1,250);
        if Trim(str)='ps' then
          str := '';
        TextRect.Top := myRect.Top +18;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Size := 10;
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        //區域、床位、留觀
        str :='';
        if (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_area'),ARow+1]) <> '') then
          str := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_area'),ARow+1])+'/';
        if (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),ARow+1])<> '') then
          str := str + trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),ARow+1])+'床/';

        if (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('obs'),ARow+1]) = 'Y') then
          str := str + '留觀';
        TextRect.Top := myRect.Top +44;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Color := clBlue;
        DGpat.Canvas.Font.Style :=[fsbold];
        DGpat.Canvas.Font.Size := 9;
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_Left);
        //離院、待床
        Str := '';
        if PageWay.ActivePageIndex > 3 then//完診、全部
        begin
          if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('exithosp'),ARow+1])<> '' then
          begin
            if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('end_date'),ARow+1])<>'9999999' then
               str := '離院方式:'+getexthospName(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('exithosp'),ARow+1]))+'('+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('end_date'),ARow+1]+' '+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('end_time'),ARow+1] +')'//Format(Rocdate(Roctodate(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('end_date'),ARow+1])),'%s'),['/','/'])+' '+Format(Roctime(Roctotime(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('end_time'),ARow+1])),'%s'),[':'])+')'
            else
               str := '離院方式:'+getexthospName(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('exithosp'),ARow+1]));
          end;
        end
        else
        begin
          if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epdBESPNEW'),ARow+1])<> '' then//登記預約住院
            IF  trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epdBESPIN'),ARow+1])<> '' then //已住院
              if str <> '' then
                str := str + ' 住床:'+trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epdBESPIN'),ARow+1])
              ELSE
                str :=' 住床:'+trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epdBESPIN'),ARow+1])
            ELSE
              IF  trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epdBESPCHK'),ARow+1])<> '' then //已登記待床
                str := str + ' 待床:Y'
              else
                str := str + ' 待床:';
        end;
        TextRect.Top := myRect.Top +44;
        DGpat.Canvas.Font.Name := '細明體';
        DGpat.Canvas.Font.Size := 9;
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_RIGHT);
      end;
      5:  //上開單醫師下主治醫師
      begin
        Str := GETDOCNAME(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('doc_name'),ARow+1]);
        DGpat.Canvas.Font.Size := 11;
        TextRect := myRect;
        TextRect.Top := myRect.Top +8;
        DGpat.Canvas.Font.Name := '細明體';
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        Str := GETDOCNAME(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('HIA_name'),ARow+1]);
        DGpat.Canvas.Font.Color := clBlue;
        //DGpat.Canvas.Font.Name := '細明體';
        TextRect.Top := myRect.Top +40;
        DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
      end;
      6: //重症執行註記
      begin
        try
          BigDiaRow := SgBigDia.Cols[0].IndexOf(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]);
        except
          BigDiaRow := 0 ;
        end;
        if BigDiaRow >0 then
        begin
          tol := 0;
          FOR iRow := 0 TO SgBigdia.RowCount-1 DO
          BEGIN
            IF Trim(SgBigDia.Cells[0,iRow]) = Trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]) THEN
            BEGIN
              Inc(tol);
              if tol = 1 then
              begin
                Str := SgBigDia.Cells[13,iRow];//抓名稱
                DGpat.Canvas.Font.Size := 11;
                DGpat.Canvas.Font.Style := [fsBold];
                DGpat.Canvas.Font.Color := Clpurple;
                TextRect := myRect;
                TextRect.Top := myRect.Top +2;
                DGpat.Canvas.Font.Name := 'Arial';
                DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
              end
              else if tol = 2 then
              begin
                Str := SgBigDia.Cells[13,iRow];//抓名稱
                DGpat.Canvas.Font.Size := 11;
                DGpat.Canvas.Font.Style := [fsBold];
                DGpat.Canvas.Font.Color := Clpurple;
                TextRect := myRect;
                TextRect.Top := myRect.Top +22;
                DGpat.Canvas.Font.Name := 'Arial';
                DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
              end
              else
              begin
                Str := SgBigDia.Cells[13,iRow];//抓名稱
                DGpat.Canvas.Font.Size := 11;
                DGpat.Canvas.Font.Style := [fsBold];
                DGpat.Canvas.Font.Color := Clpurple;
                TextRect := myRect;
                TextRect.Top := myRect.Top +40;
                DGpat.Canvas.Font.Name := 'Arial';
                DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
              end;
            end;
          END;
        end;
      end;
      7: //藥
      begin
        if iRow > 0 then
        begin
          Str := SGPatOrder.Cells[3,iRow] +'/'+SGPatOrder.Cells[1,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;
          if NULLSTRTO(SGPatOrder.Cells[1,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[2,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[1,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[3,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')//clBlue
          else if  NULLSTRTO(SGPatOrder.Cells[3,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[1,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//ClGreen
          else
            DGpat.Canvas.Font.Color := clRed;
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);

          if ((GetUserLevel= '3') or (GetUserLevel= '6')) and (NPEnter = 'N') then
          begin
            if nurrow > 0 then
            begin
              if sgNurse.Cells[1,nurrow] > '0' then
               Str := '給'
              else
               str := '';
              DGpat.Canvas.Font.Color := clRed;
              TextRect.Top := myRect.Top +40;
              DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
            end;
          end;
        end;
      end;
      8: //醫囑
      begin
        if iRow > 0 then
        begin
          Str := SGPatOrder.Cells[12,iRow] +'/'+SGPatOrder.Cells[10,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;
          //0開單 1執行中 2已簽收 3發報告 4看過報告
          if NULLSTRTO(SGPatOrder.Cells[10,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[11,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[10,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[12,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if  NULLSTRTO(SGPatOrder.Cells[12,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[10,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')
          else
            DGpat.Canvas.Font.Color := clRed;
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        end;
      end;
      10://檢查
      begin
        if iRow > 0 then
        begin
          try
            patReportRow := SgMajor.Cols[0].IndexOf(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('Fee_No'),ARow+1]);
          except
            patReportRow := 0;
          end;
          Str := SGPatOrder.Cells[9,iRow] +'/'+SGPatOrder.Cells[7,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;
          tmpColor := DGpat.Canvas.Brush.Color;
          if NULLSTRTO(SGPatOrder.Cells[7,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[8,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[7,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[9,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if NULLSTRTO(SGPatOrder.Cells[9,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[7,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//$00004080
          else
            DGpat.Canvas.Font.Color := clPurple;
          if patReportRow > 0 then
            DGpat.Canvas.Brush.Color := clRed;
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
          DGpat.Canvas.Brush.Color :=tmpColor;
        end;
      end;
      9: //驗
      begin
        if iRow > 0 then
        begin
          Str := SGPatOrder.Cells[6,iRow] +'/'+SGPatOrder.Cells[4,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;

          if NULLSTRTO(SGPatOrder.Cells[4,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[5,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[4,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[6,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if NULLSTRTO(SGPatOrder.Cells[6,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[4,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//$00004080
          else
            DGpat.Canvas.Font.Color := getstatuscolor('2');
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        end;
      end;
      11 : //X
      begin
        if iRow > 0 then
        begin
          Str := SGPatOrder.Cells[15,iRow] +'/'+SGPatOrder.Cells[13,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;

          if NULLSTRTO(SGPatOrder.Cells[13,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[14,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[13,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[15,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if NULLSTRTO(SGPatOrder.Cells[15,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[13,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//$00004080
          else
            DGpat.Canvas.Font.Color := getstatuscolor('2');
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        end;
      end;
      12 :  //ct
      begin
        if iRow > 0 then
        begin
          Str := SGPatOrder.Cells[21,iRow] +'/'+SGPatOrder.Cells[19,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;

          if NULLSTRTO(SGPatOrder.Cells[19,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[20,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[19,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[21,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if NULLSTRTO(SGPatOrder.Cells[21,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[19,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//$00004080
          else
            DGpat.Canvas.Font.Color := clPurple;
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        end;
      end;
      13 : //mri
      begin
        if iRow > 0 then
        begin
          //1061012 shh ITe 11138 modify MRI改呈現EKG  FSN00042-1  F18001C
          //Str := SGPatOrder.Cells[18,iRow] +'/'+SGPatOrder.Cells[16,iRow];
          Str := SGPatOrder.Cells[17,iRow] +'/'+SGPatOrder.Cells[16,iRow];
          TextRect := myRect;
          TextRect.Top := myRect.Top +8;

          if NULLSTRTO(SGPatOrder.Cells[16,iRow],'0')='0' then
            DGpat.Canvas.Font.Color := getstatuscolor('')
          else if (NULLSTRTO(SGPatOrder.Cells[17,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[16,iRow],'0')) and (NULLSTRTO(SGPatOrder.Cells[18,iRow],'0')='0') then
            DGpat.Canvas.Font.Color := getstatuscolor('0')
          else if NULLSTRTO(SGPatOrder.Cells[18,iRow],'0') < NULLSTRTO(SGPatOrder.Cells[16,iRow],'0') then
            DGpat.Canvas.Font.Color := getstatuscolor('1')//$00004080
          else
            DGpat.Canvas.Font.Color := clPurple;
          DrawText(DGpat.Canvas.Handle,pchar(str),Length(Str),TextRect,DT_WORDBREAK or DT_CENTER);
        end;
      end;
    end;
end;



procedure TFrmPatList.DGpatDblClick(Sender: TObject);
var
  ag,s_qty,HAVDATAREP,mar1,mar2,mar3 :string;
  I : INTEGER;
begin
  inherited;
  HAVDATAREP := '';
  if (SGMyPat.Cells[2,DGpat.Row+1]<> '') then
  begin
    regdept := Trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triagedept'),DGpat.row+1]);
    Panel4.Visible := False; //,feeno,idno,bedno,sex,dept,Epddate,Epdtime,cost,Birthdate,patname,patid,ACType,cpddate,shiftno,deptRoom,opdstatus
    SetPat(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('CHR_NO'),DGpat.row+1],//chrno
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fee_no'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('id_no'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('sex_type'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('dept_code'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),DGpat.row+1],
           '',// cost,
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('birth_date'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('seq_no'),DGpat.row+1],
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('AC_TYPE'),DGpat.row+1],// ACType,
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('date_dt'),DGpat.row+1],// cpddate(到院時間)
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('shift_no'),DGpat.row+1],//shiftno
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('dept_room'),DGpat.row+1],//deptRoom
           SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_status'),DGpat.row+1]);//opdstatus
    tragenus := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('tragenu'),DGpat.row+1];
    cvaBP := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('systolic'),DGpat.row+1]+'/'+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('diastolic'),DGpat.row+1];
    SpO2  := ReturnId(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('alltrage'),DGpat.row+1]);
    pulse := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('pulse'),DGpat.row+1];
    GCS   := ReturnName(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('alltrage'),DGpat.row+1]);
    if GetCPD_DATE = '' then
      VArrivaltime := FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))+GetEpdTime;

    //判斷是否有身分證號
    {DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    s_qty := 'select * from chr_basic where chr_no='+Qt(GetChrNo);
    DM.QryTemp.Open;
    if DM.QryTemp.Eof then
    begin

    end
    else
    begin
    if GetIdNo ='' then
    begin
      //
    end; }
    if DGpat.Col >= 6 then
    begin
      //檢驗報告
      if (DGpat.Col = 10) and (SGMyPat.Cells[SGMyPat.Rows[0].indexof('fee_no'),DGpat.row+1] <> '') then
      begin
        if not Assigned(FrmDataReport) then
          FrmDataReport := TFrmDataReport.Create(Self);
        FrmDataReport.fee_no := SGMyPat.Cells[SGMyPat.Rows[0].indexof('fee_no'),DGpat.row+1];
        FrmDataReport.LblName.Caption := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),DGpat.row+1];
        Timer2.Enabled := False;
        FrmDataReport.ShowModal;
        Timer2.Enabled := True;
        HAVDATAREP := FrmDataReport.INORDER_FLAG;
        FreeAndNil(FrmDataReport);
        IF HAVDATAREP ='N' THEN
        BEGIN
          Button1Click(Self);
          exit;
        END;
      end;

    end;
    DM.QrySearch.Close;
    //體重

    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    s_qty := sql_str(11);
    SetParamter(s_qty,'$CHR_NO$',Qt(getChrNo));
    DM.QryTemp.SQL.Text:=s_qty;
    try
      GSAGE := GetAge(GetACType+GetBirth,ROCDate(Now,''),acYear);//共用
      sql_Waiting_log('open',s_qty);
      DM.QryTemp.Open;
      sql_Waiting_log('close','');
      if NOT DM.QryTemp.IsEmpty then
        Setpatweight(DM.QryTemp.FIELDBYNAME('weight').AsString)
      ELSE
        Setpatweight('N');
    except

    end;
                                                   // and (copy(GetUserPw2,1,1) = 'N')
    if ((GetUserLevel= '3') or (GetUserLevel= '6'))  and (NPEnter = 'N') then
    begin
      //108.10.30 shh ITe 11138 add 重症表
      if (DGpat.Col = 6) and (SGMyPat.Cells[2,DGpat.Row+1]<> '') then
      begin
        s_qty := getlog_sql(0);
        SetParamter(s_qty,'$fee_no$',Qt(Trim(GetFeeNo)));
        //SetParamter(s_qty,'$UPDDATE$',Qt(Trim(Minus_six_months_date)));
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add(s_qty);
        sql_Waiting_log('open',s_qty);
        DM.QryTemp.Open;
        sql_Waiting_log('close','');
        if not DM.QryTemp.IsEmpty  THEN
        begin
          if not Assigned(FrmAMI) then
              FrmAMI := TFrmAMI.Create(Self);

          if GetCPD_DATE <> '' then
            FrmAMI.incident_dt := COPY(GetCPD_DATE,1,12)
          else
            FrmAMI.incident_dt := VArrivaltime;

          I := 0;
          while not DM.QryTemp.Eof do
          begin
            inc(I);
            if trim(DM.QryTemp.fieldbyname('ill_name').AsString) <> '' then
            case i of
              1: mar1 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
              2: mar2 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
              3: mar3 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
            end;
            DM.QryTemp.Next;
          end;
          if (mar1<>'') and (mar2<>'') and (mar3<>'') then
          begin
            case ShowMessage('請選擇重症項目',[mar1,mar2,mar3],1) of
              0: FrmAMI.major_type := mar1;
              1: FrmAMI.major_type := mar2;
              2: FrmAMI.major_type := mar3;
            end;
          end
          else if (mar1<>'') and (mar2<>'') then
          begin
            case ShowMessage('請選擇重症項目',[mar1,mar2],1) of
              0: FrmAMI.major_type := mar1;
              1: FrmAMI.major_type := mar2;
            end;
          end
          else
          if (mar1<>'') then
            FrmAMI.major_type := mar1;
          Setpatweight(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('weight'),DGpat.row+1]);
          Timer2.Enabled := False;
          FrmAMI.Entry_point := 'LIST';
          FrmAMI.ShowModal;
          Timer2.Enabled := True;
          FreeAndNil(FrmAMI);
          exit;
        end;
      end;

      if not Assigned(FrmNurseOrder) then
        FrmNurseOrder := TFrmNurseOrder.Create(Self);

      FrmNurseOrder.sgBioinf.Cells[0,1] := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('temperature'),DGpat.row+1];
      FrmNurseOrder.sgBioinf.Cells[1,1] := '  '+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('weight'),DGpat.row+1];
      FrmNurseOrder.sgBioinf.Cells[2,1] := '  '+trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('pulse'),DGpat.row+1]);
      FrmNurseOrder.sgBioinf.Cells[3,1] := ' '+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('systolic'),DGpat.row+1]+'/'+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('diastolic'),DGpat.row+1];
      FrmNurseOrder.edtchrno.Text := GetChrNo;
      FrmNurseOrder.edtIdno.Text  := GetIdNo;
      FrmNurseOrder.edtName.Text  := GetPatName;
      FrmNurseOrder.edtsex.Text   := SexType(Getsex01);
      FrmNurseOrder.edtweth.Text  := Getpatweight;
      if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),DGpat.row+1]) = 'A' then
        FrmNurseOrder.Lbtreage.Caption:= '5'
      else
        FrmNurseOrder.Lbtreage.Caption:= trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triage'),DGpat.row+1]);
      setvscode(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('HIA_name'),DGpat.row+1]);

      try
        ag := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
        if copy(ag,1,1)<>'0' then
          FrmNurseOrder.edtAge.Text := copy(ag,1,length(ag)-2)+'歲 '+copy(ag,4,2)+'個月'
        else
          FrmNurseOrder.edtAge.Text := copy(ag,2,2)+'歲 '+copy(ag,4,2)+'個月';
      except
         ag := '0';
      end;

      s_qty :=er_look('IN',GetFeeNo,getUserId,'EDNUS');
      if ReturnId(s_qty)= 'Y' then
      begin
        if MessageDlg(ReturnName(s_qty)+#10#13+'[YES]:繼續修改'+#10#13+'[NO]:只能瀏覽',mtWarning, [mbYes, mbNo], 0) = mrNo then
          rdonly := True
        ELSE
          rdonly := False;
      end;

      timer2.Enabled := false;
      FrmNurseOrder.ShowModal;
      FreeAndNil(FrmNurseOrder);
      timer2.Enabled := True;

    end
    else //if GetUserLevel <= '3' then
    begin
      //重症
      if (DGpat.Col = 6) and (SGMyPat.Cells[2,DGpat.Row+1]<> '') then
      begin
        s_qty := getlog_sql(0);
        SetParamter(s_qty,'$fee_no$',Qt(Trim(GetFeeNo)));
        //SetParamter(s_qty,'$UPDDATE$',Qt(Trim(Minus_six_months_date)));
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add(s_qty);
        sql_Waiting_log('open',s_qty);
        DM.QryTemp.Open;
        sql_Waiting_log('close','');
        if not DM.QryTemp.IsEmpty  THEN
        begin
          if not Assigned(FrmAMI) then
              FrmAMI := TFrmAMI.Create(Self);

          if GetCPD_DATE <> '' then
            FrmAMI.incident_dt := COPY(GetCPD_DATE,1,12)
          else
            FrmAMI.incident_dt := VArrivaltime;

          I := 0;
          while not DM.QryTemp.Eof do
          begin
            inc(I);
            if trim(DM.QryTemp.fieldbyname('ill_name').AsString) <> '' then
            case i of
              1: mar1 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
              2: mar2 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
              3: mar3 :=trim(DM.QryTemp.fieldbyname('ill_name').AsString);
            end;
            DM.QryTemp.Next;
          end;
          if (mar1<>'') and (mar2<>'') and (mar3<>'') then
          begin
            case ShowMessage('請選擇重症項目',[mar1,mar2,mar3],1) of
              0: FrmAMI.major_type := mar1;
              1: FrmAMI.major_type := mar2;
              2: FrmAMI.major_type := mar3;
            end;
          end
          else if (mar1<>'') and (mar2<>'') then
          begin
            case ShowMessage('請選擇重症項目',[mar1,mar2],1) of
              0: FrmAMI.major_type := mar1;
              1: FrmAMI.major_type := mar2;
            end;
          end
          else
          if (mar1<>'') then
            FrmAMI.major_type := mar1;
          Setpatweight(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('weight'),DGpat.row+1]);
          Timer2.Enabled := False;
          FrmAMI.Entry_point := 'LIST';
          FrmAMI.ShowModal;
          Timer2.Enabled := True;
          FreeAndNil(FrmAMI);
          exit;
        end;
      end;

      //note 註記
      if (DGpat.Col = 14) and (SGMyPat.Cells[2,DGpat.Row+1]<> '') then
      begin
        if not Assigned(Frmshift_note) then
          Frmshift_note := TFrmshift_note.Create(Self);
        Frmshift_note.s_no := 0;
        s_qty := docshift(4);
        SetParamter(s_qty,'$FEE_NO$',Qt(Trim(GetFeeNo)));
        SetParamter(s_qty,'$UPD_DATA$',QT(dateformat(5,Now-180)));//西元年不同格式2012\08\31
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add(s_qty);
        sql_Waiting_log('open',s_qty);
        DM.QryTemp.Open;
        sql_Waiting_log('close','');
        s_qty := '';
        Frmshift_note.HAV := False;
        IF NOT DM.QryTemp.IsEmpty THEN
        BEGIN
          Frmshift_note.HAV := True;
          Frmshift_note.s_no := 1;//DM.QryTemp.fieldbyname('ps').AsInteger;
          Frmshift_note.RichEdit1.Lines.Add('');
          Frmshift_note.RichEdit1.Lines.Strings[0] := Trim(DM.QryTemp.fieldbyname('ps').AsString);
        END;
        Frmshift_note.note_kind := 'Shift';
        Timer2.Enabled := False;
        Frmshift_note.ShowModal;
        Timer2.Enabled := True;
        Button1Click(Self);
        exit;
      end;

      if not Assigned(FrmOrder) then
        FrmOrder := TfrmOrder.Create(Self);
      if SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triagedept'),DGpat.row+1]= 'B' then
      BEGIN
        s_qty := getMAJOR_sql(0);
        SetParamter(s_qty,'$FEE_NO$',Qt(Trim(GetFeeNo)));
        SetParamter(s_qty,'$STATRDATE$',Qt(Minus_six_months_date));
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Add(s_qty + ' and major_name=''Trauma''');
        sql_Waiting_log('open',s_qty);
        DM.QryTemp.Open;
        sql_Waiting_log('close','');
        IF DM.QryTemp.IsEmpty THEN
        BEGIN
          if not Assigned(FrmMECHANISM) then
            FrmMECHANISM := TFrmMECHANISM.Create(Self);
          FrmMECHANISM.fee_no := SGMyPat.Cells[SGMyPat.Rows[0].indexof('fee_no'),DGpat.row+1];
          if GetCPD_DATE <> '' then
            FrmMECHANISM.incident_dt := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('date_dt'),DGpat.row+1]
          else
            FrmMECHANISM.incident_dt := VArrivaltime;
          FrmMECHANISM.ShowModal;
          chtrm := FrmMECHANISM.OPNMAJ;
          {if chtrm ='Y' then
          begin
            FrmOrder.Quickpkginstorder('860');//開套餐
          end; }
        END
        else
        begin
          if DM.QryTemp.FieldByName('START_FLAG').AsString ='Y' then
            chtrm := 'Y';
        end;
      END;
      //檢傷資料
      FrmOrder.sgBioinf.Cells[0,1] := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('temperature'),DGpat.row+1];
      FrmOrder.sgBioinf.Cells[1,1] := '  '+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('weight'),DGpat.row+1];
      FrmOrder.sgBioinf.Cells[2,1] := '  '+trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('pulse'),DGpat.row+1]);
      FrmOrder.sgBioinf.Cells[3,1] := ' '+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('systolic'),DGpat.row+1]+'/'+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('diastolic'),DGpat.row+1];
      FrmOrder.edtchrno.Text := GetChrNo;
      frmorder.edtwdt.Text := Getpatweight;
      FrmOrder.STXTArea.Caption := GetAreaname(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),DGpat.row+1]),GetFeeNo);
      FrmOrder.STXTBED.Caption := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),DGpat.row+1]);

      //insert bioinformation_log
      if (trim(FrmOrder.sgBioinf.Cells[1,1]) <> '') then
        inserbioinfomation(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('weight'),DGpat.row+1],
                         '',
                         SGmypat.Cells[SgmyPat.Rows[0].IndexOf('temperature'),DGpat.row+1],
                         trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('pulse'),DGpat.row+1]),
                         SGmypat.Cells[SgmyPat.Rows[0].IndexOf('systolic'),DGpat.row+1],
                         SGmypat.Cells[SgmyPat.Rows[0].IndexOf('diastolic'),DGpat.row+1],
                         trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('date_dt'),DGpat.row+1]));

      re72feeno := '';
      re72h := '';
      ag := get24_48_72(GetFeeNo,GetChrNo,GetEpdDate,GetEpdTime);
      if ag <> '' then
      begin
        FrmOrder.stattrend.Caption := ReturnId(ag)+'H回診';
        re72feeno := ReturnName(ag);
        re72h := ReturnId(ag);
      end
      else
      begin
        FrmOrder.stattrend.Caption := '';
        re72feeno := '';
        re72h := '';
      end;
      ag := '';
      ag := getipdthreeback(GetFeeNo,GetChrNo);
      if trim(ag) <> '' then
      begin ///出院三日內
        ShowMessage(ag);
      end;

      s_qty :=er_look('IN',GetFeeNo,getUserId,'ED');
      //超過6個月病歷無法修改
      if GetEpdDate < Minus_six_months_date then
        s_qty := 'Y_超過6個月病歷無法修改，只能瀏覽';

      //110.06.23 shh ITe 11138 add 6個月病歷鎖定可控  
      if UpperCase(Lock_six_months) = 'FALSE' then
        s_qty := 'N_不鎖定超過6個月病歷';

      if ReturnId(s_qty)= 'Y' then
      begin
        if GetEpdDate < Minus_six_months_date then
        begin
          ShowMessage(ReturnName(s_qty));
          rdonly := True;
        end
        else
        begin
          if MessageDlg(ReturnName(s_qty)+#10#13+'[YES]:繼續修改'+#10#13+'[NO]:只能瀏覽',mtWarning, [mbYes, mbNo], 0) = mrNo then
            rdonly := True
          ELSE
            rdonly := False;
        end;
      end;


      if (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_status'),DGpat.Row+1]) = stas('G')) and
         (trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('EPD_STATUS'),DGpat.Row+1]) = '3') then//已批完價不能修改
        if MessageDlg('此病人已批完價，修改資料將導致帳面錯誤!!'+#10#13+'是否繼續?',mtWarning, [mbYes, mbNo], 0) = mrNo then
          exit;

      IF HAVDATAREP ='Y' THEN  //帶入檢驗值超標資料
      BEGIN
        s_qty := '';
        FrmOrder.rheObj.Lines.Clear;
        FOR I := 0 TO REPORT_DATA.Count-1 DO
          s_qty := s_qty + trim(REPORT_DATA.Strings[I]) + #10;
        FrmOrder.rheObj.Lines.Add(' ');
        FrmOrder.rheObj.Lines.Strings[0] := s_qty;
        REPORT_DATA.Clear;
      END;

      if hascons = 'Y' then  //帶入會診紀錄資料20150623 for jci
      begin
        for i := 0 to OutList.Count -1 do
        begin
          FrmOrder.insertordertxt('',ReturnID(OutList.Strings[i]));
        end;
        hascons := 'N';
        OutList.Clear;
      end;

      threadReportstatus := 'Y';
      FrmPatList.Hide;
      Timer2.Enabled := False;
      FrmOrder.ShowModal;
      FreeandNil(FrmOrder);
      LoadVer;//1
      FrmPatList.Show;
      Button1Click(Self);
      Timer2.Enabled := true;
    end;
  end;
end;

procedure TFrmPatList.Timer2Timer(Sender: TObject);
begin
  inherited;
  if PageWay.ActivePageIndex = 0 then
    if ReplyCnt = 60 then //30 秒更新一次 20150427改為1分鐘
    begin
      ReplyCnt := 0;
      Button1Click(Self);
      Button4Click(Button4);
    end;

end;


procedure TFrmPatList.GetList;
var
  mySQLs : TStrings;
  i,j,h: integer;
  strq,reb,bet : string;
  //myThread,majorThread : TThread;
  myItems,mysubItems : TMenuItem;
  lisqry :TADOQuery;
begin
  waitforgetlist := True;
  epd_date := ROCDATE(DTPOpddate.DATETIME,'');
  lisqry := TADOQuery.Create(Self);
  lisqry.Connection := DM.ADOLink;
  mySQLs := TStringList.Create;
  mySQLs.Text := getPatList(0);
  mySQLs.SaveToFile('sql_1.txt');
  try
    if listsqloper then
    begin
      listsqloper := false;
      DM.OpenSQL(mySQLs,SgMyPat);
      if PageWay.ActivePageIndex <> 6 then
        if Trim(SGMyPat.Cells[3,1]) ='' then
          PageWay.ActivePage.Caption := Trim(cbTrend.Items.Strings[PageWay.ActivePageindex])+'('+IntToStr(SGMyPat.RowCount-2)+')'
        else                                // cbTrend.Text
          PageWay.ActivePage.Caption := Trim(cbTrend.Items.Strings[PageWay.ActivePageindex])+'('+IntToStr(SGMyPat.RowCount-1)+')';
      //填入檢傷資料
      lisqry.Close;
      lisqry.SQL.Clear;
      lisqry.SQL.Text :=getPatList(4);
      sql_Waiting_log('open',lisqry.SQL.Text);
      //lisqry.SQL.SaveToFile('sql_2.txt');
      lisqry.Open;
      sql_Waiting_log('close','');
      WHILE NOT lisqry.Eof DO
      BEGIN
        FOR I:=0 TO SGMyPat.RowCount -1 DO
        BEGIN
          if SGmypat.Cells[3,i] = lisqry.FIELDBYNAME('FEE_NO').AsString then
          BEGIN              
            IF (Trim(SGmypat.Cells[39,I]) = '') or (Trim(SGmypat.Cells[39,I]) = '0') THEN
              SGmypat.Cells[39,I] := TRIM(lisqry.FIELDBYNAME('triage_level').AsString);
            SGmypat.Cells[40,I] := TRIM(lisqry.FIELDBYNAME('systolic').AsString);
            SGmypat.Cells[41,I] := TRIM(lisqry.FIELDBYNAME('diastolic').AsString);
            SGmypat.Cells[42,I] := TRIM(lisqry.FIELDBYNAME('pulse').AsString);
            SGmypat.Cells[43,I] := TRIM(lisqry.FIELDBYNAME('temperature').AsString);
            SGmypat.Cells[44,I] := TRIM(lisqry.FIELDBYNAME('triagedept').AsString);
            SGmypat.Cells[45,I] := TRIM(lisqry.FIELDBYNAME('data_dt').AsString);
            SGmypat.Cells[46,I] := TRIM(lisqry.FIELDBYNAME('weight').AsString);
            SGmypat.Cells[51,I] := TRIM(lisqry.FIELDBYNAME('tragenu').AsString);
            SGmypat.Cells[52,I] := TRIM(lisqry.FIELDBYNAME('alltrage').AsString);
          END;
        END;
        lisqry.Next;
      END;
      DGPat.RowCount := DGpat.FixedRows+1;
      SetSG;//設定行數
      if SGMyPat.RowCount >= 2 then
      begin
        Bednotuse;//取可用的床位
        ppmadd;
      end;
      //patlistsetstatus ;
    end;
  finally
    FreeAndNil(lisqry);
    FreeAndNil(mySQLs);
  end;
  DGPat.Repaint;
end;

procedure TFrmPatList.SetSG;
begin
  if SGmyPat.RowCount > 2 then
    DGpat.RowCount := SGmyPat.RowCount -1
  else
    DGpat.RowCount := 1;
end;


procedure TFrmPatList.Button1Click(Sender: TObject);
const
  ColWidthMin = 20;
var
  reg_s,er_s,aers,dtp,COSSTR,joinstr,swherestr : string;
  COSTSTR : TStrings;
  C, W, ColWidthMax: integer;
begin
  inherited;
  Panel1.Visible := True;
  Panel3.Visible := True;
  Panel8.Visible := False;
  Button1.Enabled := False;
  Screen.Cursor := crSQLWait;
  epd_date := ROCDATE(DTPOpddate.DATETIME,'');
  qstr := '';
  patlissql := '';
  joinstr :='';
  swherestr := '';
  IPDBEDCHK :='';
  IPDBEDCHK := SetSql.ReadString('SYSTIME','IPDBEDCHK','');
  IF TRIM(IPDBEDCHK) = '' THEN
    IPDBEDCHK :='(SELECT CHR_NO FROM IPD_RSV WHERE CHR_NO=(SELECT CHR_NO FROM BESP_IPD  WHERE BESP_IPD.FEE_NO= a.fee_no and Rownum=1) AND IPD_RSV.RSV_DATE >= A.OPD_DATE AND SOUR_TYPE=''E'' and Rownum=1)';
  case PageWay.ActivePageIndex of
    0:      //待診
      begin
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.end_date = ''9999999'' and epd_his.epd_date=a.opd_date and trim(epd_his.EPD_STATUS) is null ';
        qstr := ' a.opd_date > '+Qt(ROCDate(Now-3,''));
      end;
    1,2,3:  //暫存、留觀、待床
      begin
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.end_date = ''9999999'' and epd_date=a.opd_date and epd_his.EPD_STATUS=''0'' ';
        if PageWay.ActivePageIndex = 2 then
        begin
          joinstr := joinstr +' join er_status on a.fee_no = er_status.fee_no and er_status.status=''8'' and er_status.cncl_flag=''N'' '+
                                                  'and er_status.seq_no=(select max(seq_no) from er_status ers where ers.fee_no = a.fee_no '+
                                                  'and ers.status=''8'' and ers.cncl_flag=''N'')' ;
        end;
        if PageWay.ActivePageIndex = 3 then
        begin
          joinstr := joinstr +' join BESP_IPD on a.fee_no = BESP_IPD.fee_no and BESP_IPD.besp_date = a.OPD_DATE and BESP_IPD.source_type=''E'' ';
          qstr := ' a.opd_date > '+Qt(ROCDate(Now-5,''));
        end;
      end;
    4:      //完診
    begin
      if CBDate.Checked then
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.epd_date=a.opd_date and epd_his.end_date between ' + Qt(ROCDate(DTPOpddate.Date,'')) + ' and ' + Qt(ROCDate(DTPbetwDate.Date,''))
      else
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.epd_date=a.opd_date and epd_his.end_date =' + Qt(ROCDate(DTPOpddate.Date,''));
    end;
    5:      //全部
    begin
      if trim(edtchr_no.Text) = '' then
        if not CBDate.Checked then
          qstr := ' a.opd_date = '+Qt(ROCDate(DTPOpddate.Date,''));
    end;
    6:      //會診資料
    begin
      COSTSTR := TStringList.Create;
      try
        Panel1.Visible := False;
        Panel3.Visible := False;
        Panel8.Align := alClient;
        Panel8.Visible := True;
        COSSTR := SetSql.ReadString('SYSTIME','COST','');
        COSSTR := COSSTR + SetSql.ReadString('SYSTIME','COST1','');
        COSSTR := COSSTR + SetSql.ReadString('SYSTIME','COST2','');
        COSSTR := COSSTR + SetSql.ReadString('SYSTIME','COST3','');
        SetParamter(COSSTR,'$+USERID+$',Qt(getUserId));
        SetParamter(COSSTR,'$+USERDEPT+$',Qt(GetUserDept));
        COSTSTR.Add(COSSTR);
        IF NOT DM.OpenSQL(COSTSTR,SGCONST) THEN
        begin
          Screen.Cursor := crdefault;
          Button1.Enabled := True;
          COSTSTR.Free;
          exit;
        end;
        With SGCONST do
        begin
          for C := 0 to ColCount - 1 do
          begin
            ColWidthMax := ColWidthMin;
            W := Length(Trim(Cells[C, 0])) * Font.Size - 1;
            if W > ColWidthMax then
              ColWidthMax := W;
            ColWidths[C] := ColWidthMax ;
          end;
          for C := 0 to ColCount - 1 do
          begin
            ColWidthMax := ColWidths[c];
            W := Length(Trim(Cells[C, 1])) * Font.Size - 1;
            if W > ColWidthMax then
              ColWidthMax := W;
            ColWidths[C] := ColWidthMax + 5;
          end;
          ColWidths[0] := -1;
        end;
        Screen.Cursor := crdefault;
      finally
        COSTSTR.Free;
        Button1.Enabled := True;
      end;
      exit;
    end;
    7:      //處置中
    begin
      if ((GetUserLevel= '3') or (GetUserLevel= '6')) and (NPEnter = 'N') then
      BEGIN
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.epd_date=a.opd_date and epd_his.end_date = ''9999999'' and epd_his.EPD_STATUS=''0'' ';
        if qstr <> '' then
        begin
          qstr := qstr + ' and a.fee_no in(select distinct o.fee_no FROM EPD_ALL_ORDER O '+
                         'WHERE  exists(SELECT FEE_NO FROM  EPD_HIS H WHERE O.FEE_NO=H.FEE_NO and H.epd_date=O.order_date AND (H.END_DATE >= '+Qt(ROCDate(Now-3,''))+' OR END_DATE=''9999999'') and h.EPD_STATUS = ''0'') '+
                         '  AND  NOT EXISTS(SELECT N.SHEET_NO FROM NUS_CONF N WHERE N.FEE_NO=O.FEE_NO AND N.SHEET_NO=O.SHEET_NO AND (NVL(TRIM(N.STATUS),''0'')>''0'' ) ) '+
                         'AND O.So_Flag IN(''T'',''X'',''F'',''L'',''C'',''M'') and O.Dc_Flag =''N'')';
        end
        else
        begin
          qstr := qstr + ' a.fee_no in(select distinct o.fee_no FROM EPD_ALL_ORDER O '+
                         'WHERE  exists(SELECT FEE_NO FROM  EPD_HIS H WHERE O.FEE_NO=H.FEE_NO and H.epd_date=O.order_date AND (H.END_DATE >= '+Qt(ROCDate(Now-3,''))+' OR END_DATE=''9999999'')) '+
                         '  AND  NOT EXISTS(SELECT N.SHEET_NO FROM NUS_CONF N WHERE N.FEE_NO=O.FEE_NO AND N.SHEET_NO=O.SHEET_NO AND (NVL(TRIM(N.STATUS),''0'')>''0'' ) ) '+
                         'AND O.So_Flag IN(''T'',''X'',''F'',''L'',''C'',''M'') and O.Dc_Flag =''N'')';
        end;
      END
      ELSE
      BEGIN
        joinstr := ' join epd_his on a.fee_no = epd_his.fee_no and epd_his.epd_date=a.opd_date and epd_his.end_date = ''9999999'' and epd_his.EPD_STATUS=''0'' ';
        if qstr <> '' then
        begin
            qstr := qstr + ' and not exists(select fee_no'+
                           '    from er_status'+
                           '   where a.fee_no = er_status.fee_no'+
                           '     and er_status.status=''8'''+
                           '     and er_status.cncl_flag=''N'''+
                           '     and er_status.seq_no=(select max(seq_no)'+
                           '                          from er_status ers'+
                           '                         where ers.fee_no = a.fee_no'+
                           '                           and ers.status=''8'''+
                           '                           and ers.cncl_flag=''N''))'+
                           ' and not exists(select fee_no'+
                           '    from BESP_IPD'+
                           '   where a.fee_no = BESP_IPD.fee_no'+
                           '     and BESP_IPD.besp_date = a.OPD_DATE'+
                           '     and BESP_IPD.source_type=''E'')';

        end
        else
        begin
            qstr := qstr + ' not exists(select fee_no'+
                           '    from er_status'+
                           '   where a.fee_no = er_status.fee_no'+
                           '     and er_status.status=''8'''+
                           '     and er_status.cncl_flag=''N'''+
                           '     and er_status.seq_no=(select max(seq_no)'+
                           '                          from er_status ers'+
                           '                         where ers.fee_no = a.fee_no'+
                           '                           and ers.status=''8'''+
                           '                           and ers.cncl_flag=''N''))'+
                           ' and not exists(select fee_no'+
                           '    from BESP_IPD'+
                           '   where a.fee_no = BESP_IPD.fee_no'+
                           '     and BESP_IPD.besp_date = a.OPD_DATE'+
                           '     and BESP_IPD.source_type=''E'')';
        end;
      END;
    end;//CASE 7
  end;


  if PageWay.ActivePageIndex <> 0 then //待診頁簽
  begin
    if PageWay.ActivePageIndex <> 4 then //日期區間
      if CBDate.Checked then
        if qstr <> '' then
          qstr := qstr + ' and a.opd_date between '+Qt(ROCDate(DTPOpddate.Date,''))+ ' and ' +Qt(ROCDate(DTPbetwDate.Date,''))
        else
          qstr := ' a.opd_date between '+Qt(ROCDate(DTPOpddate.Date,''))+ ' and ' +Qt(ROCDate(DTPbetwDate.Date,''));

    if trim(edtchr_no.Text) <> '' then //病歷號
      if qstr <> '' then
        qstr := qstr+' and a.chr_no='+Qt(trim(edtchr_no.Text))
      else
        qstr := ' a.chr_no='+Qt(trim(edtchr_no.Text));

    
    dtp := '';//區域
    if (CBDept.ItemIndex <> -1) AND (Trim(CBDept.Text) <>'') then
    BEGIN
      IF Trim(CBDept.Text) <> '全部' THEN
      BEGIN
        case CBDept.ItemIndex of
          1 :
            dtp := 'C';
          2 :
            dtp := 'B';
          3 :
            dtp := 'A';
          4 :
            dtp := 'F';
          5 :
            dtp := 'E';
          6 :
            dtp := 'D';
          else
            dtp :='';
        end;
      END;
      if dtp <> '' then
      begin
       if qstr <> '' then
         qstr := qstr +' and a.id_no in(select c.id_no from '+TRIAGETABLENAME+' c where '+statusSQL('REGDEPT','DEPT')+'='+Qt(dtp)+' and c.id_no=a.id_no and (c.arrival_date)=(a.opd_date+19110000))'
       else
         qstr := ' a.id_no in(select c.id_no from '+TRIAGETABLENAME+' c where '+statusSQL('REGDEPT','DEPT')+'='+Qt(dtp)+' and c.id_no=a.id_no and (c.arrival_date)=(a.opd_date+19110000))';
      end;
    END;

    if deptuse then //掛號科別
      if (Trim(CBRegDept.Text) <> '請選擇') and (Trim(CBRegDept.Text) <> '') and (CBRegDept.ItemIndex <> -1) then
        IF Trim(CBRegDept.Text) <> '全部' THEN
          if qstr <> '' then
            qstr := qstr+' and a.dept_code='+Qt(ReturnId(trim(CBRegDept.Text)))
          else
            qstr := ' a.dept_code='+Qt(ReturnId(trim(CBRegDept.Text)));

    if cbArea.ItemIndex <> -1 then
      IF ReturnId(Trim(cbArea.Text)) <> '全部' THEN
        if (PageWay.ActivePageIndex <> 4) then //完診頁簽
          IF ((GetUserLevel ='3') OR (GetUserLevel ='6') OR (GetUserLevel ='7')) and (NPEnter = 'N') THEN
          begin
            if qstr <> '' then
              qstr := qstr + ' and a.fee_no in (select fee_no from bed_area where area_no ='+Qt(ReturnName(Trim(cbArea.Text)))+' and INAREA='+ReturnName(Trim(cbArea.Text))+' and not trim(fee_no) is null)'
            else
              qstr := qstr + ' a.fee_no in (select fee_no from bed_area where area_no ='+Qt(ReturnName(Trim(cbArea.Text)))+' and INAREA='+ReturnName(Trim(cbArea.Text))+' and not trim(fee_no) is null)';
          end
          else
          begin
            if qstr <> '' then
              qstr := qstr + ' and a.fee_no in (select fee_no from epd_vcb_basic where EPD_CLINIC_CODE ='+Qt(ReturnName(Trim(cbArea.Text)))+' and cncl_flag=''N'')'
            else
              qstr := qstr + ' a.fee_no in (select fee_no from epd_vcb_basic where EPD_CLINIC_CODE ='+Qt(ReturnName(Trim(cbArea.Text)))+' and cncl_flag=''N'')';
          end;

    if (Trim(CBBdoc.Text)<> '輸入帳號或選擇') AND (Trim(CBBdoc.Text) <>'') then //醫師代碼
      IF Trim(CBBdoc.Text) <> '全部' THEN
        joinstr := joinstr +' join OPD_BASIC1 on a.fee_no = OPD_BASIC1.fee_no and (OPD_BASIC1.DOC_CODE='+Qt(ReturnId(CBBdoc.Text))+' OR OPD_BASIC1.INS_DOC='+Qt(ReturnId(CBBdoc.Text))+')';
  end;

  if qstr <> '' then
    qstr := qstr + ' and ';

  swherestr := ' where ' + swherestr ;
  qstr := joinstr + swherestr + qstr;
  HRRStr := '';

  case PageWay.ActivePageIndex of
    4:
      qorderstr := ' order by end_date||end_time desc ';
    5:
      qorderstr := ' order by a.opd_date,a.seq_no desc ';
  else
    qorderstr := ' order by triage,a.seq_no ';
  end;

  patlissql := 'select a.fee_no from reg_basic a '+
               'join opd_basic b on a.opd_date = b.opd_date and a.fee_no = b.fee_no '+ qstr +
               ' a.OPD_KIND=''E'' and a.cncl_flag=''N''';
  try
    GetList;
  except
    Button1.Enabled := True;
    dm.CloseDB;
    Screen.Cursor := crdefault;
  end;
  Button1.Enabled := True;
  Screen.Cursor := crdefault;
  Timer2.Tag := 30;
  Button4Click(Button4);
end;

procedure TFrmPatList.cbTrendChange(Sender: TObject);
begin
  inherited;
  PageWay.ActivePageIndex := CbTrend.ItemIndex;
  Button1Click(Self);
end;

procedure TFrmPatList.edtchr_noKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_return then
  begin
    edtchr_noExit(sender);
    Button1Click(Self);
  end;
end;

procedure TFrmPatList.edtdateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
    Button1Click(Self);
end;

procedure TFrmPatList.cbAreaChange(Sender: TObject);
begin
  inherited;
  Button1Click(Self);
end;

procedure TFrmPatList.MySBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
var
  str: string;
  myRect,TextRect : TRect;
begin
  inherited;
  case Panel.Index of
    3:
      begin
        MySBar.Canvas.Font.Color :=clBlue;
        MySBar.Canvas.Font.Size := 11;
        str := '▄' ;
        MySBar.Canvas.FillRect(Rect);
        MySBar.Canvas.TextOut(Rect.Left+2,Rect.Top-7,str);
      end;
    4:
      begin
        myRect := rect;
        MySBar.Canvas.Font.Color :=clBlack;
        MySBar.Canvas.Font.Size := 8;
        str := '開立醫囑' ;
        MySBar.Canvas.FillRect(myRect);
        MySBar.Canvas.TextOut(myRect.Left+2,myRect.Top+1,str);
      end;
    5:
      begin
        MySBar.Canvas.Font.Color :=$00004080;//clYellow;
        MySBar.Canvas.Font.Size := 11;
        str := '▄' ;
        MySBar.Canvas.FillRect(Rect);
        MySBar.Canvas.TextOut(Rect.Left+2,Rect.Top-7,str);
      end;
    6:
      begin
        myRect := rect;
        MySBar.Canvas.Font.Color :=clBlack;
        MySBar.Canvas.Font.Size := 8;
        str := '執行中' ;
        MySBar.Canvas.FillRect(myRect);
        MySBar.Canvas.TextOut(myRect.Left+2,myRect.Top+1,str);
      end;
    7:
      begin
        MySBar.Canvas.Font.Color :=clPurple;
        MySBar.Canvas.Font.Size := 11;
        str := '▄' ;
        MySBar.Canvas.FillRect(Rect);
        MySBar.Canvas.TextOut(Rect.Left+2,Rect.Top-7,str);
      end;
    8:
      begin
        myRect := rect;
        MySBar.Canvas.Font.Color :=clBlack;
        MySBar.Canvas.Font.Size := 8;
        str := '已簽收' ;
        MySBar.Canvas.FillRect(myRect);
        MySBar.Canvas.TextOut(myRect.Left+2,myRect.Top+1,str);
      end;
    9:
      begin
        MySBar.Canvas.Font.Color :=clRed;
        MySBar.Canvas.Font.Size := 11;
        str := '▄' ;
        MySBar.Canvas.FillRect(Rect);
        MySBar.Canvas.TextOut(Rect.Left+2,Rect.Top-7,str);
      end;
   10:
      begin
        myRect := rect;
        MySBar.Canvas.Font.Color :=clBlack;
        MySBar.Canvas.Font.Size := 8;
        str := '完成/發報告' ;
        MySBar.Canvas.FillRect(myRect);
        MySBar.Canvas.TextOut(myRect.Left+2,myRect.Top+1,str);
      end;
   11:
      begin
        MySBar.Canvas.Font.Color :=clGreen;
        MySBar.Canvas.Font.Size := 11;
        str := '▄' ;
        MySBar.Canvas.FillRect(Rect);
        MySBar.Canvas.TextOut(Rect.Left+2,Rect.Top-7,str);
      end;
   12:
      begin
        myRect := rect;
        MySBar.Canvas.Font.Color :=clBlack;
        MySBar.Canvas.Font.Size := 8;
        str := '看過報告' ;
        MySBar.Canvas.FillRect(myRect);
        MySBar.Canvas.TextOut(myRect.Left+2,myRect.Top+1,str);
      end;
  end;
end;

procedure TFrmPatList.DGpatClick(Sender: TObject);
var
  h : Integer;
  preSTR,qstrA : string;
  opf,da,ti : string;
begin
  inherited;
  if ((GetUserLevel <> '3') and (GetUserLevel <> '6')) and (NPEnter = 'Y') then
    if DGpat.Row >= 0 then
    begin
      SetPat(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('CHR_NO'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fee_no'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('id_no'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('epd_bed'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('sex_type'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('dept_code'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('rsv_opd_time'),DGpat.row+1],
             '',// cost,
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('birth_date'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('seq_no'),DGpat.row+1],
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('AC_TYPE'),DGpat.row+1],// ACType,
             '',// cpddate(出院日期)
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('shift_no'),DGpat.row+1],//shiftno
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('dept_room'),DGpat.row+1],//deptRoom
             SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_status'),DGpat.row+1]);//opdstatus
      regdept := Trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('triagedept'),DGpat.row+1]);
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select id_no from doc_basic where doc_code='+Qt(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('HIA_name'),DGpat.row+1]));
      DM.QryTemp.Open;
      if not DM.QryTemp.IsEmpty then
        setvsidno(DM.QryTemp.fieldbyname('id_no').AsString);
      DM.QryTemp.Close;
      setvscode(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('HIA_name'),DGpat.row+1]);
      if (DGpat.Col = 2) then
      begin
        h := -1;
        IF Getopdstatus = stas('C') then
        begin
          if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fourhours'),DGpat.Row+1])<> '' then
            h := (MinutesBetween(now,ROCToDate(ReturnId(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fourhours'),DGpat.Row+1]))+ROCToTime(ReturnName(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fourhours'),DGpat.Row+1])))) div 60 ;
          if (h >= 4) or ( h = -1 ) then
          begin
            if MessageDlg('做過4小時的已回診、已解釋病情註記',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            Begin
              times_log('FOUR_HOURS','',getUserId,'');
              Button1Click(Button1);
            end
          end;
        end;
      end;
    end;
end;


procedure TFrmPatList.N2Click(Sender: TObject);
begin
  inherited;
  Button1Click(Button1);
end;


procedure TFrmPatList.Panel4Click(Sender: TObject);
begin
  inherited;
  Panel4.Visible := False;
end;

procedure TFrmPatList.setsgmajor(fee_no,val:string;col: integer);
begin
  if SgMajor.Cols[0].IndexOf(fee_no)> -1 then
    SgMajor.Cells[col,SgMajor.Cols[0].IndexOf(fee_no)] := val
  else
  begin
    sgmajor.Cells[0,SgMajor.RowCount-1] := fee_no;
    sgmajor.Cells[col,SgMajor.RowCount-1] := val;
    SgMajor.RowCount := SgMajor.RowCount + 1;
  end;
end;


function TFrmPatList.getstatuscolor(val:string):TColor;
begin
  if val='' then //狀態無
  begin
    IF ((GetUserLevel ='3') OR (GetUserLevel ='6') OR (GetUserLevel ='7')) and (NPEnter = 'N') THEN
      Result := $00D5E1F4
    else
      Result := $00C9D7BB; //$00C9D7BB
  end
  else if (trim(val)='0') then//開單
    Result :=clBlue
  else if (trim(val)='1') then//執行中
    Result := $00000040
  else if (trim(val)='2') then//已簽收
    Result :=clPurple
  else if (trim(val)='4') then//看過報告
    Result := clGreen
  else if (trim(val)='3') then //發報告
    Result := clRed;
end;


procedure TFrmPatList.FormCreate(Sender: TObject);
var
  str,Str1,tmpaa : string;
  menuItems,subItems,couslutname : String;
  myItems,mysubItems : TMenuItem;
begin
  inherited;
  ReplyCnt := 0;
  deptuse := False;
  hascons := 'N';
  NPEnter := 'N';//預設護理系統
  if Pos(UpperCase(GetUserPw2),SetSys.ReadString('SYSTEM','NPORDER','')) > 0 then
       if MessageDlg('護理系統  [Yes]'+#10#13+'急診系統  [No]',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         NPEnter := 'N'
       else
         NPEnter := 'Y';
  IF ((GetUserLevel ='3') OR (GetUserLevel ='6') OR (GetUserLevel ='7')) and (NPEnter = 'N') THEN
  BEGIN
    Self.Caption := Self.Caption+'(護理人員用)';
    Application.Title := '護理';
    DGpat.Color := $00D5E1F4;
  END;
  PageWay.ActivePageIndex := 0;
  DTPOpddate.DateTime := NOW;
  DTPbetwDate.DateTime := Now;
  leftPanel4 := 0;
  TRIAGETABLENAME := Setsys.ReadString('SYSTEM','TRIAGETABLENAME','');
  If SetSys.ReadString('SYSTEM','掛號科別','') = 'True' Then
    deptuse := True
  else
    deptuse := False;
  if deptuse then
  begin
    Str := SetSys.ReadString('SYSTEM','科別','');
    if str <> '' then
    begin
      while not (Str='') do
      begin
        Str1 := Str1+ReturnId(Str)+';';
        Str := ReturnName(str);
      end;
      Dm.QrySearch.Close;
      Dm.QrySearch.SQL.Clear;
      Dm.QrySearch.SQL.Add('Select trim(Dept_code) as Dept_code,trim(smpl_desc) as smpl_desc from Dept_BASIC where dept_code in('+Qts(Str1)+')');
      Dm.QrySearch.sql.Text;
      Dm.QrySearch.Open;
      while not Dm.QrySearch.Eof do
      begin
        CBRegDept.Items.Add(Trim(Dm.QrySearch.FieldByName('Dept_code').AsString)+'_'+Trim(Dm.QrySearch.FieldByName('smpl_desc').AsString));
        Dm.QrySearch.Next;
      end;
    end
    else
    begin
      CBRegDept.Items.Clear;
      CBRegDept.Items.AddStrings(Dept);
    end;
    CBRegDept.Items.Insert(0,'全部');
  end
  else
  begin
    Label2.Visible := False;
    CBRegDept.Visible := False;
  end;
  cbArea.Clear;
  cbArea.Items.AddStrings(EPDAREA);
  cbArea.Items.Insert(0,'全部');
  CBBdoc.Items.Clear;
  CBBdoc.Items.AddStrings(EMGDOC);
  CBBdoc.Items.Insert(0,'全部');

  //加入會診項目
  MenuItems := '';
  PopMcost.Items.Clear;
  menuItems := SetSys.ReadString('MAINMENU','CONSULT','False');
  tmpaa := ReTurnId(MenuItems);
  while trim(MenuItems) <>'' do
  begin
    if ReTurnId(MenuItems)<> '會診新增' then
    begin
      myItems := TMenuItem.Create(self);
      myItems.Caption := ReTurnId(MenuItems);
      myItems.OnClick := patMyItemsForCONSULTClick;
      if myItems.Caption = tmpaa then
        couslutname := myItems.Caption;
      PopMcost.Items.Add(myItems);
    end;
    MenuItems := ReturnName(MenuItems);
  end;

  threadReportstatus := 'N';

  repatlistprait := False;
end;

procedure TFrmPatList.BitBtn1Click(Sender: TObject);
var
  count : integer;
  mylbl : TLabel;
begin
  inherited;
  for Count := FrmPatList.Panel4.ControlCount-1 downto  0 do
  if (FrmPatList.Panel4.Controls[count] is TLabel) then
    if copy(FrmPatList.Panel4.Controls[count].Name,1,1) = '_' then
    begin
      mylbl := TLabel(FrmPatList.Panel4.Controls[count]);
      FrmPatList.Panel4.RemoveControl(mylbl);
      FrmPatList.RemoveComponent(mylbl);
    end;
  Panel4.Visible := False;
end;

procedure TFrmPatList.DGpatMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  c,r : integer;
  p1 : TPoint;
  strage: string;
begin
  inherited;
  c := 0;
  r := 0;
  strage := '';
  DGpat.MouseToCell(X,Y,c,r);
  if c = 3 then
  begin
    if trim(SGMyPat.Cells[c,r])<> '' then
      if trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),r+1]) <> '' then
      begin
        try                                 
          strage := IntToStr(StrToInt(GetAge(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('AC_TYPE'),r+1])+SGmypat.Cells[SgmyPat.Rows[0].IndexOf('birth_date'),r+1],ROCDate(Now,''),acYear)));
          if strage = '999' then
            strage := '年齡無法計算'
          else
            strage := strage+'歲';

          DGpat.Hint := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('PAT_NAME'),r+1])+'_'+
                             strage+'_'+
                             trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fee_no'),r+1]);
        except

        end;
      end
      else
        DGpat.Hint := '';

   p1 := DGpat.ClientToScreen(Point(x,y));
   Application.ActivateHint(p1);
  end
  else
    Application.CancelHint;
end;

procedure TFrmPatList.panLevelClick(Sender: TObject);
begin
  inherited;
  if TPanel(sender).Name ='panDia' then
    if MessageDlg('依區域排序:Yes'+#10#13+'依床位排序:No', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      TPanel(sender).Tag := 56
    else
      TPanel(sender).Tag := 35;

  if TPanel(sender).Hint <> '' then
  begin
    SGridSort(1,TPanel(sender).Tag,SGMyPat);
    TPanel(sender).Hint := '';
  end
  else
  begin
    SGridSort(0,TPanel(sender).Tag,SGMyPat);
    TPanel(sender).Hint :='X';
  end;
  DGPat.Repaint;
end;

procedure TFrmPatList.CBBdocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tempkey : String;
  DOCINDX : INTEGER;
begin
  IF CBBdoc.Text ='請選擇' then
    CBBdoc.Text := '';
  tempkey := ReturnID(CBBdoc.Text);
  if key = Vk_return then
  BEGIN
    SetCbbitem(CBBdoc,CBBdoc.Text);
    if (CBBdoc.ItemIndex = -1) and (tempkey<>'') then
    begin
       DOCINDX := SetCbbitem_(doctor,tempkey);
       CBBDOC.Text := doctor.Strings[DOCINDX];
    end;
  END;
  inherited;
end;

procedure TFrmPatList.DTPOpddateExit(Sender: TObject);
begin
  inherited;
  epd_date := ROCDATE(DTPOpddate.DATETIME,'');
end;

procedure TFrmPatList.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  sgchangedoc.RowCount := 2;
  sgchangedoc.Rows[1].Clear;
  Panel4.Visible := false;
end;


procedure TFrmPatList.sgchangedocDrawCell(Sender: TObject; ACol,
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
  end;
  TStringGrid(Sender).Canvas.Font.Color :=  ClBLACK;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  DrawText(TStringGrid(Sender).Canvas.Handle,pchar(' '+Str),Length(Str)+1,Rect,DT_WORDBREAK or DT_Left or DT_VCENTER or DT_SINGLELINE );
end;

procedure TFrmPatList.sgchangedocSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  if ACol <> 6  then
  begin
    TStringGrid(Sender).Options :=  TStringGrid(Sender).Options -[goEditing] ;
    Exit;
  end
  else
  begin
    TStringGrid(Sender).Options :=  TStringGrid(Sender).Options +[goEditing] ;
    TStringGrid(sender).Cells[ACol,ARow];
  end;
end;

procedure TFrmPatList.sgchangedocClick(Sender: TObject);
begin
  inherited;
  if TStringGrid(sender).Col = 1 then
    if TStringGrid(sender).Cells[1,TStringGrid(sender).Row] ='V' then
      TStringGrid(sender).Cells[1,TStringGrid(sender).Row] := ''
    else
      TStringGrid(sender).Cells[1,TStringGrid(sender).Row] := 'V';
end;

procedure TFrmPatList.CBDateClick(Sender: TObject);
begin
  inherited;
  if CBDate.Checked then
    DTPbetwDate.Enabled := true
  else
    DTPbetwDate.Enabled := false;
end;

procedure TFrmPatList.Button2Click(Sender: TObject);
var
  mystr, myParamter : string;
begin
  inherited;
  SetCLINIC(ReturnName(Trim(cbArea.Text)));
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',TButton(sender).Caption,'');
  myParamter := Setsys.ReadString('PARAMTER',TButton(sender).Caption,'');
  comStrRep(mystr);
  comstrRep(myParamter);
  if myStr ='' then
  begin
    Timer2.Enabled := False;
    if not Assigned(FrmRDShift) then
      FrmRDShift := TFrmRDShift.Create(Self);
    FrmRDShift.listclass := 'patlist';
    FrmRDShift.ShowModal;
    Timer2.Enabled := True;
  end
  else
  begin
    try
      if winexec(PChar(PChar(myStr) +' '+ PChar(myParamter) ),SW_SHOWNORMAL) < 31 then
        ShellExecute(Handle, 'open',PChar(myStr),PChar(myParamter),nil,SW_SHOWNORMAL);
    except
    end;
  end;

end;

procedure TFrmPatList.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPatList := nil;
end;

procedure TFrmPatList.DTPOpddateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    Button1Click(Button1);
  end;
end;

procedure TFrmPatList.DGpatMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  DGpat.Col := 4;
end;

procedure TFrmPatList.DGpatMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  DGpat.Col := 4;
end;

procedure TFrmPatList.mypopmenuClick(Sender: TObject);
var
  fee,chr,dat:string;
  mySQLs: TStrings;
  q_str,iteminfo: String;
  SQLoj: TObjectList;
  i,j,h: integer;
  bet : string;
  myItems,mysubItems : TMenuItem;
begin
  fee := '';
  fee := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fee_no'),DGpat.row+1]);
  chr := SGmypat.Cells[SgmyPat.Rows[0].IndexOf('chr_no'),DGpat.row+1];
  dat := trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('opd_date'),DGpat.row+1]);
  if fee<> '' then
  begin
    if  ReturnId(Trim(TMenuItem(Sender).Hint))='D' then
    begin
      iteminfo := ReturnName(Trim(TMenuItem(Sender).Hint));
      IF MessageDlg('確定要指定此床位?',mtWarning, [mbYes, mbNo], 0) = mrYes then
      BEGIN
        SQLoj := TObjectList.Create;
        try
          ClearPatBed(fee);
          DM.ADOLink.BeginTrans;
          With DM.QryUpdate do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from epd_vcb_basic where fee_no='+Qt(fee)+' AND REG_DATE >='+QT(Minus_six_months_date));
            Open;
            if not IsEmpty then
            begin
              if (Trim(fieldbyname('epd_clinic_code').AsString) = 'NULL') or (Trim(fieldbyname('epd_clinic_code').AsString)= '') then
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE epd_vcb_basic SET epd_clinic_code='+qt(ReturnName(Trim(iteminfo)))+',CNCL_FLAG=''N'' Where FEE_NO='+Qt(fee)+' AND REG_DATE >='+QT(Minus_six_months_date));
                Execsql;
             end;
            end
            else
            begin
              Close;
              SQL.Clear;
              SQL.Add('Insert Into epd_vcb_basic(reg_date,chr_no,fee_no,virtual_bed_code,epd_clinic_code,CNCL_FLAG) Values('+qt(dat)+','+qt(chr)+','+qt(fee)+','+qt(' ')+','+qt(ReturnName(Trim(iteminfo)))+','+qt('N')+')');
              Execsql;
            end;
            Close;
            SQL.Clear;
            SQL.Add('Update OPD_BASIC set EPD_BED='+qt(Trim(TMenuItem(Sender).Caption))+' Where fee_no='+Qt(GetFeeNo)+' AND OPD_DATE >='+QT(Minus_six_months_date));
            Execsql;

            Close;
            SQL.Clear;
            SQL.Add('UPDATE BED_AREA SET FEE_NO='+Qt(fee)+',INAREA='+ReturnName(Trim(iteminfo))+' Where BED_NO= '+qt(Trim(TMenuItem(Sender).Caption)));
            Execsql;
          end;
          DM.ADOLink.CommitTrans;
          Bednotuse;
          ppmadd;
        except
          DM.ADOLink.RollbackTrans;
          ShowMessage('指定此床位失敗');
        end;
      end;
    end
    else if  ReturnId(Trim(TMenuItem(Sender).Hint))='A' then
    begin
      iteminfo := ReturnName(Trim(TMenuItem(Sender).Hint));
      IF MessageDlg('確定要指定此區?',mtWarning, [mbYes, mbNo], 0) = mrYes then
      BEGIN
        SQLoj := TObjectList.Create;
        try
          DM.ADOLink.BeginTrans;
          With DM.QryUpdate do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from epd_vcb_basic where fee_no='+Qt(fee)+' AND REG_DATE >='+QT(Minus_six_months_date));
            Open;
            if not IsEmpty then
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE epd_vcb_basic SET epd_clinic_code='+qt(ReturnName(Trim(iteminfo)))+',CNCL_FLAG=''N'' Where FEE_NO='+Qt(fee)+' AND REG_DATE >='+QT(Minus_six_months_date));
            end
            else
            begin
              Close;
              SQL.Clear;
              SQL.Add('Insert Into epd_vcb_basic(reg_date,chr_no,fee_no,virtual_bed_code,epd_clinic_code,CNCL_FLAG) Values('+qt(dat)+','+qt(chr)+','+qt(fee)+','+qt(' ')+','+qt(ReturnName(Trim(iteminfo)))+','+qt('N')+')');
            end;
            Execsql;
          end;
          DM.ADOLink.CommitTrans;
          Bednotuse;
          ppmadd;
        except
          DM.ADOLink.RollbackTrans;
          ShowMessage('指定此區失敗');
        end;
      end;
    end;
    Button1Click(Self);
  end;
end;

procedure TFrmPatList.CBDeptChange(Sender: TObject);
begin
  inherited;
  Button1Click(Self);
end;

procedure TFrmPatList.Button3Click(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmBedEmpty) then
    FrmBedEmpty := TFrmBedEmpty.Create(Self);
  FrmBedEmpty.ShowModal;
end;

procedure TFrmPatList.FormActivate(Sender: TObject);
begin
  inherited;
  if cbTrend.ItemIndex = -1 then
    cbTrend.ItemIndex := 0;
  Button1Click(Self);
end;

procedure TFrmPatList.edtchr_noExit(Sender: TObject);
begin
  inherited;
  if Trim(TEdit(sender).Text)<> '' then
    Tedit(Sender).Text := addchar(Tedit(Sender).Text,'0',8); 
end;

procedure TFrmPatList.PageWayDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
str :AnsiString ;
tmpRect :TRect;
text :TSize;
x,y : integer;
begin
  inherited;
  if(Active) then
    Control.Canvas.Font.Color := clRed
  else
    Control.Canvas.Font.Color := clBlue;
  str := (TPageControl(Control)).Pages[TabIndex].Caption;
  text := Control.Canvas.TextExtent(str);
  Control.Canvas.FillRect(Rect);
  x := ((Rect.Right - Rect.Left) - text.cx) div 2;
  y := (((Rect.Bottom - Rect.Top) - text.cy) div 2) + 1;
  tmpRect:=Rect;
  if(Active) then
    OffsetRect(tmpRect, 1, 1);
  Control.Canvas.TextOut(tmpRect.Left + x, tmpRect.Top + y, str);
end;

procedure TFrmPatList.PageWayChange(Sender: TObject);
begin
  inherited;
 CbTrend.ItemIndex:= PageWay.ActivePageIndex ;
 cbTrendChange(CbTrend);
 if PageWay.ActivePageIndex <> 6 then
   if Trim(SGMyPat.Cells[3,1]) ='' then
     PageWay.ActivePage.Caption := Trim(cbTrend.Items.Strings[PageWay.ActivePageindex])+'('+IntToStr(SGMyPat.RowCount-2)+')'
   else                            
     PageWay.ActivePage.Caption := Trim(cbTrend.Items.Strings[PageWay.ActivePageindex])+'('+IntToStr(SGMyPat.RowCount-1)+')';
end;

procedure TFrmPatList.N1Click(Sender: TObject);
begin
  inherited;
  ClearPatBed(trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('fee_no'),DGpat.row+1]));
  Button1Click(Button1);
end;

procedure TFrmPatList.ppmPopup(Sender: TObject);
VAR
  I,J,H :INTEGER;
  bet :STRING;
  myItems,mysubItems : TMenuItem;
begin
  inherited;
  Bednotuse;//取可用的床位
  ppmadd;
end;

procedure TFrmPatList.ppmadd;
VAR
  I,J,H :INTEGER;
  bet :STRING;
  myItems,mysubItems : TMenuItem;
begin
  ppm.Items.Clear;
  myItems := TMenuItem.Create(Self);
  myItems.Caption := '指定床位';
  myItems.Name := 'OBS';
  //0:待診,1:暫存,2:留觀,3:待床,4:完診,5:全部,6:會診
  if PageWay.ActivePageIndex in[4,5] then
    myItems.Enabled := False
  else
    myItems.Enabled := True;
  ppm.Items.Add(myItems);

  myItems := TMenuItem.Create(Self);
  myItems.Caption := '清除床位';
  myItems.OnClick := N1Click;
  ppm.Items.Add(myItems);

  myItems := TMenuItem.Create(Self);
  myItems.Caption := '重整床位';
  myItems.OnClick := Button1Click;
  ppm.Items.Add(myItems);

  //20160511
  myItems := TMenuItem.Create(Self);
  myItems.Caption := '補傳病歷-完整';
  myItems.OnClick := ReEMR;
  if PageWay.ActivePageIndex in[4,5] then
    myItems.Enabled := True
  else
    myItems.Enabled := False;
  ppm.Items.Add(myItems);

  //20121114 start
  if SetSys.ReadString('SYSTEM','HRR','') = 'True' Then
  begin
    myItems := TMenuItem.Create(Self);
    myItems.Caption := '回覆HRR';
    myItems.OnClick := CallHRRClick;
    //myItems.OnClick := CallHRR(Self);
    ppm.Items.Add(myItems);
  end;



  Bednotuse;//取可用的床位
  for j:= 0 to EPDAREA.Count-1 do //區域or診間設定
  begin
    myItems := TMenuItem.Create(Self);
    myItems.Caption := ReturnId(EPDAREA.Strings[j]);
    myItems.Hint := 'A_'+EPDAREA.Strings[j];
    myItems.OnClick := mypopmenuClick;
    if PageWay.ActivePageIndex in[4,5] then
      myItems.Enabled := False
    else
      myItems.Enabled := True;
    ppm.Items.Add(myItems);
  end;

  for i := 0 to ppm.Items.Count-1 do
  begin
    if ppm.Items[i].Name='OBS' then
    begin
      ppm.Items[i].Clear;
      for j:= 0 to EPDAREA.Count-1 do
      begin
        bet := '';
        myItems := TMenuItem.Create(Self);
        myItems.Caption := ReturnId(EPDAREA.Strings[j]);
        ppm.Items[i].Add(myItems);
        bet := ReturnName(EPDAREA.Strings[j]);
        for h := 0 to EPDBED.Count-1 do
        begin
          if ReturnName(trim(EPDBED.Strings[h])) =  bet then
          begin
            mysubItems := TMenuItem.Create(Self);
            mysubItems.Caption := ReturnId(trim(EPDBED.Strings[h]));
            mysubItems.Hint := 'D_'+EPDAREA.Strings[j];
            mysubItems.OnClick := mypopmenuClick;
            myItems.Add(mysubItems);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmPatList.DGpatMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
begin
  inherited;
  if Button in [mbRight] then
  begin
    gid := TDrawGrid(Sender).MouseCoord(x,y);
    TDrawGrid(Sender).Row := Gid.Y;
  end;

end;

procedure TFrmPatList.CBBdocDropDown(Sender: TObject);
begin
  inherited;
  CBBdoc.Items.Clear;
  CBBdoc.Items.AddStrings(EMGDOC);
  CBBdoc.Items.Insert(0,'全部');
end;

procedure TFrmPatList.Button4Click(Sender: TObject);
var
  sFeeNo,hrrSTR : String;
  SQLs : TStringList;
  iRow : Integer;
begin
  inherited;
  Timer2.Enabled := False;
  sFeeNo := '';
  QSTR := '';
  Bednotuse;//取可用的床位
  ppmadd;  
  if trim(SGMyPat.Cells[0,1]) = '' then
    exit;
  for iRow := 1 to SGMyPat.Cols[SGMyPat.Rows[0].IndexOf('FEE_NO')].Count -1 do
    sFeeNo := sFeeNo+SGMyPat.Cols[SGMyPat.Rows[0].IndexOf('FEE_NO')].Strings[iRow]+';';
  sFeeNo := copy(sFeeNo,1,length(sFeeNo)-1);
  if Length(sFeeNo) > 0 then
  begin
    SQLs := TStringList.Create;
    SQLs.Clear;
    SQLs.Add('select Fee_no,');
    SQLs.Add('sum(decode(so_flag,''M'',1,0)) as mord,');
    SQLs.Add('sum(decode(so_flag,''M'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) as Mnus,');
    SQLs.Add('sum(decode(so_flag,''M'',decode(nvl(conf_date,''0''),''0'',0,1),0)) as Mconf,');
    SQLs.Add('sum(decode(so_flag,''C'',1,0)) as Cord,');
    SQLs.Add('sum(decode(so_flag,''C'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) as Cnus, ');
    SQLs.Add('sum(decode(so_flag,''C'',decode(nvl(conf_date,''0''),''0'',0,1),0)) as Cconf, ');
    SQLs.Add('sum(decode(so_flag,''L'',1,0)) as Lord, ');
    SQLs.Add('sum(decode(so_flag,''L'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) as Lnus,');
    SQLs.Add('sum(decode(so_flag,''L'',decode(order_status,''Y'',1,0),0)) as Lconf,');
    SQLs.Add('sum(decode(so_flag,''T'',1,0)) as Tord,');
    SQLs.Add('sum(decode(so_flag,''T'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) as Tnus,');
    SQLs.Add('sum(decode(so_flag,''T'',decode(nvl(conf_date,''0''),''0'',0,1),0)) as Tconf,');
    SQLs.Add('sum(decode(decode(order_type,''X1'',''X'',''X4'',''X'',So_flag),''X'',1,0)) as Xord,');
    SQLs.Add('sum(decode(decode(order_type,''X1'',''X'',''X4'',''X'',So_flag),''X'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) Xnus,');
    SQLs.Add('sum(decode(decode(order_type,''X1'',''X'',''X4'',''X'',So_flag),''X'',decode(order_status,''Y'',1,0),0)) Xconf, ');
    //1061012 shh ITe 11138 modify MRI改呈現EKG  FSN00042-1  F18001C
    //SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''MRI'',1,0)) as MRIord, ');
    //SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''MRI'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) MRInus,');
    //SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''MRI'',decode(order_status,''Y'',1,0),0)) as MRIord,');
    SQLs.Add('sum(decode(decode(trim(fee_code),''FSN00042-1'',''EKG'',''F18001C'',''EKG'',fee_code),''EKG'',1,0)) as MRIord, ');
    SQLs.Add('sum(decode(decode(trim(fee_code),''FSN00042-1'',''EKG'',''F18001C'',''EKG'',fee_code),''EKG'',decode(nvl(trim(nus_oper),''0''),''0'',0,1),0)) MRInus,');
    SQLs.Add('sum(decode(decode(trim(fee_code),''FSN00042-1'',''EKG'',''F18001C'',''EKG'',fee_code),''EKG'',decode(order_status,''Y'',1,0),0)) as MRIconf,');

    SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''CT'',1,0)) as CTord,');
    SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''CT'',decode(nvl(nus_oper,''0''),''0'',0,1),0)) CTnus,');
    SQLs.Add('sum(decode(decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag),''CT'',decode(order_status,''Y'',1,0),0)) as CTord');
    SQLs.Add(' from  epd_all_order');
    SQLs.Add(' Where Fee_no in ('+patlissql+')');
    SQLs.Add('  AND DEL_FLAG=''N''');
    SQLs.Add('  and order_date between (select opd_date from opd_basic where fee_no=epd_all_order.fee_no and Rownum=1) and '+Qt(RocDate(myDate,'')));
    SQLs.Add(' group by Fee_no');
    //SQLs.SaveToFile('SQL1.text');
    DM.OpenSQL(SQLs,SGpatOrder);

    if ((GetUserLevel= '3') or (GetUserLevel= '6')) and (NPEnter = 'N') then
    begin
    SQLs.Clear;
    SQLs.Add('select fee_no,count(*) from nus_conf where fee_no in ('+patlissql+')');
    SQLs.Add(' and order_type=''M'' and status in (''0'', ''1'') and (trim(exe_date)+19110000||substr(trim(exe_time),1,4) between to_char(sysdate - interval ''1'' hour ,''YYYYMMDDHH24MI'')');
    SQLs.Add(' and to_char(sysdate + interval ''1'' hour,''YYYYMMDDHH24MI'') ');
    SQLs.Add(' or (trim(exe_date)+19110000||substr(trim(exe_time),1,4) < to_char(sysdate,''YYYYMMDDHH24MI'') and  status in(''0'',''1''))) group by fee_no');
    DM.OpenSQL(SQLs,sgNurse);
    end;
    { wf暫關
    SQLs.Clear;
    SQLs.Add('select fee_no,aa from ( ');
    SQLs.Add('select a.*,');
    SQLs.Add('decode(nvl((select b.single_no from seen_reportdata b where a.fee_no=b.fee_no(+) and a.sp_no=b.single_no(+)),''N''),''N'',''Y'') as aa ');
    SQLs.Add('from lab_list a ');
    SQLs.Add('where not exists(select * from seen_reportdata d where a.fee_no=d.fee_no and trim(a.sp_no)=trim(d.single_no)) ');
    SQLs.Add('and nvl(trim(a.sp_no),''0'')<>''0'' ');
    SQLs.Add('and  a.Fee_no in ('+patlissql+')');
    SQLs.Add(')');
    SQLs.Add('where aa=''N''');
    //SQLs.SaveToFile('SQL2.text');
    DM.OpenSQL(SQLs,SgMajor);
    }
    SQLs.Clear;                                                                                                          //  +QT(Minus_six_months_date) //可回朔2年
    SQLs.Add('select * from er_status where status=''9'' and CNCL_FLAG=''N'' and Fee_no in ('+patlissql+') AND UPD_DATE >= to_char(add_months(sysdate,-24),''yyyymmdd'')-19110000');
    //SQLs.SaveToFile('SQL3.text');
    DM.OpenSQL(SQLs,SgBigdia);


    //20121114 start
    //20150427排除完成、全部頁簽
    case PageWay.ActivePageIndex of
      1,2,3 :
      begin
        if SetSys.ReadString('SYSTEM','HRR','') = 'True' then
        begin
          if FileExists(ExtractFileDir(Application.ExeName)+'\HRR.SQL') then
          begin
            hrrSTR := ExtractFileDir(Application.ExeName);
            SQLs.LoadFromFile(hrrSTR+'\HRR.SQL');
            hrrSTR := SQLs.Text;
            SetParamter(hrrSTR,'$FEE_NO$',patlissql);
            SQLs.Clear;
            SQLs.Add(hrrSTR);
            DM.OpenSQL(SQLs,SgHRR);
          end;
        end;
      end;
    end;//case

    DGpat.Refresh;
    FreeAndNil(SQLs)
  end;
  Timer2.Interval := 30000;
  ReplyCnt := 30;
  Timer2.Enabled := True;
end;

//20121114 start
procedure TFrmPatList.CallHRRClick(Sender:TObject);
var
  mystr, myParamter : string;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK','回覆HRR','');
  myParamter := Setsys.ReadString('PARAMTER','回覆HRR','');
  SetPat(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('chr_no'),DGpat.row+1],//chrno
         '',//會診
         '',//id_no
         '',//epd_bed
         '',//sex_type
         '',//dept_code
         '',//opd_date
         '',//rsv_opd_time
         '',//cost,
         '',//birth_date
         '',//PAT_NAME
         '',//seq_no
         '',//ACType,
         '',//cpddate(到院時間)
         '',//shiftno
         '',//deptRoom
         '');//opdstatus
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

{var
  Path : String;
begin
   Path := 'http://10.65.1.153:8089/ERCallBack.aspx?chr_no='+trim(SGmypat.Cells[SgmyPat.Rows[0].IndexOf('CHR_NO'),DGpat.row+1])+'&userid='+trim(GetUserID);
   ShellExecute(Handle, 'open',PChar(Path),nil,nil,SW_SHOWNORMAL);}
end;
//20121114 end


procedure TFrmPatList.LoadVer;
var
  FileStr : String;
begin
  //if MyIP <>'10.15.1.97' then
  if MyIP <>'10.108.2.41' then
  begin
    With DM.QryTemp do
    begin
      FileStr := SetSys.ReadString('SYSTEM','PATCH','');
      Close;
      SQL.Clear;
      SQL.Add('select * from ipd_vision where KIND=''E''');
      open;
      //RichEdit1.Lines.Text := FieldByName('Message').AsString;
      if EPD_ver <> Trim(FieldByName('VER').AsString) then
      begin
        Close;
        comStrRep(FileStr);
        WinExec(PChar(ExtractFileDir(Application.ExeName)+'/Leader.exe'),SW_SHOWNORMAL	);
        self.Close;
      end;
    end;
  end;
end;

procedure TFrmPatList.Button5Click(Sender: TObject);
var
  msg:string;
begin
  inherited;
  msg := '';
  msg := ic_HPCcheck;
  if msg <> '' then
    ShowMessage(msg);
end;

procedure TFrmPatList.SGCONSTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  gid: TGridCoord;
begin
  inherited;
  gid := TStringGrid(Sender).MouseCoord(x,y);
  mosx := gid.X;
  mosy := gid.Y;
  if Button in [mbRight] then
  begin
    gid := TStringGrid(Sender).MouseCoord(x,y);
    TStringGrid(Sender).Row := Gid.Y;
  end;
end;

procedure TFrmPatList.SGCONSTDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  Str : String;
begin
  inherited;
  Str := TStringGrid(Sender).Cells[ACol,Arow];
  if (ARow <> 0) and (ACol <> 0)  then
  begin
    if (ARow mod 2) = 0 then
      TStringGrid(Sender).Canvas.Brush.Color := $00EFF0DF
    else
      TStringGrid(Sender).Canvas.Brush.Color := clwindow;
    if TStringGrid(Sender).Row = ARow then
      TStringGrid(Sender).Canvas.Font.Color := clblue
    else
      TStringGrid(Sender).Canvas.Font.Color := clblack;
  end;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  DrawText(TStringGrid(Sender).Canvas.Handle,pchar(Str),Length(Str),Rect,DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_SINGLELINE );
end;


procedure TFrmPatList.SGCONSTDblClick(Sender: TObject);
var
  MyRec : TRect;
  Mypoint : TPoint;
begin
  inherited;
  SetPat('',//chrno
         trim(SGCONST.Cells[0,mosY]),
         '',//id_no
         '',//epd_bed
         '',//sex_type
         '',//dept_code
         '',//opd_date
         '',//rsv_opd_time
         '',// cost,
         '',//birth_date
         '',//PAT_NAME
         '',//seq_no
         '',// ACType,
         '',// cpddate(到院時間)
         '',//shiftno
         '',//deptRoom
         '');//opdstatus
  SGCONST.perform(WM_CANCELMODE,0,0);
  MyRec:=SGCONST.CellRect(mosx,mosY);
  Mypoint:= ScreenToClient(ClientToScreen(MyRec.topleft));
  PopMcost.Popup(Mypoint.x+5,Mypoint.Y+168);
end;

procedure TFrmPatList.patMyItemsForCONSULTClick(Sender: TObject);
var
  myStr,myParamter,TempStr : String;
  i : integer;
begin
  inherited;
  myStr :=Setsys.ReadString('OTHERSYSTEMLINK',Trim(TMenuItem(Sender).Caption),'');
  myParamter := Setsys.ReadString('PARAMTER',Trim(TMenuItem(Sender).Caption),'');
  comStrRep(mystr);
  comstrRep(myParamter);

  if (GetFeeNo ='')  then
  begin
    showMessage(NullStrTo(gsSysMsg,'沒有資料不開放使用。'));
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
  if (hascons = 'N') then
  begin
    OutList.Clear;
    if FileExists(ExtractFileDir(Application.ExeName)+'\epd_consult.txt') then
    begin
      OutList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
      if OutList.Count > 0 then
      begin
         hascons := 'Y';
         DELETEFILE(ExtractFileDir(Application.ExeName)+'\epd_consult.txt');
         CbTrend.ItemIndex := 1;
         cbTrendChange(CbTrend);
         for i := 0 to DGpat.RowCount-1 do
           if GetFeeNo = SGMyPat.Cells[SGMyPat.Rows[0].indexof('fee_no'),i] then
           begin
             DGpat.Row := i-1;
             DGpat.OnDblClick(DGpat);
           end;
      end
    end;
  end;
  


end;

procedure TFrmPatList.CBBdocChange(Sender: TObject);
begin
  inherited;
  Button1Click(Self);
end;

procedure TFrmPatList.PrintSubjectBed;
begin
//待床病人清單列印:附醫高偉峰部長提10303
end;

procedure TFrmPatList.ReEMR(Sender: TObject);
var
  agef : string;
begin
  try
    agef := GetAge(GetACType+GetBirth,ROCDate(Now,''),acMonth);
    if copy(agef,1,1)<>'0' then
      agef := copy(agef,1,length(agef)-2)+'歲 '+copy(agef,4,2)+'個月'
    else
      agef := copy(agef,2,2)+'歲 '+copy(agef,4,2)+'個月';
  except
     agef := '0';
  end;
  F_EMRRecord(agef,'EDR');
end;

end.
