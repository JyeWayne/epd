unit qrydate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Grids, StdCtrls, ExtCtrls, XPMan, ComCtrls, Buttons,dateutils;

type
  TFrmqrydate = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    sgopd: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    CHBDept: TCheckBox;
    BitBtn2: TBitBtn;
    OPDTree: TTreeView;
    GroupBox2: TGroupBox;
    SGIPD: TStringGrid;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure sgopdClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sgopdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sgopdDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
    procedure ClearSg(sender: TObject);
    Procedure CreateItems();
  public
    { Public declarations }
  end;

var
  Frmqrydate: TFrmqrydate;

implementation

uses DBDM, Commfunc, Global, ERsFunc;

{$R *.dfm}

procedure TFrmqrydate.sgopdClick(Sender: TObject);
begin
  inherited;
  if TStringGrid(sender).Cells[1,TStringGrid(sender).Row] <> '' then
    if TStringGrid(sender).Cells[0,TStringGrid(sender).Row] ='V' then
    begin
      TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := '';
      if TStringGrid(sender).Name = 'sgopd' then
      begin
        if copy(TStringGrid(sender).Cells[2,TStringGrid(sender).Row],1,4) = '急診' then
        begin
          try
            if ReturnId(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row]))='9999999' then
            begin
              memo1.Lines.Clear;
            end
            else
            begin
              memo1.Lines.Delete(memo1.Lines.IndexOf('於'+dateformat(1,ROCToDate(ReturnId(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row]))))+
                         copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),1,2)+'時'+copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),3,2)+'分至急診就診'));
              memo1.Lines.Delete(memo1.Lines.IndexOf('於'+dateformat(1,ROCToDate(ReturnId(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row]))))+
                          copy(ReturnName(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row])),1,2)+'時'+copy(ReturnName(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row])),3,2)+'分離開急診'));

            end;
          except

          end;
        end
        else
        begin
          memo1.Lines.Delete(memo1.Lines.IndexOf('於'+dateformat(1,ROCToDate(Trim(TStringGrid(sender).Cells[1,TStringGrid(sender).Row])))+'至門診就診'));
        end;
      end
      else
      begin
        memo1.Lines.Delete(memo1.Lines.IndexOf('於'+dateformat(1,ROCToDate(Trim(TStringGrid(sender).Cells[1,TStringGrid(sender).Row])))+'住院就診'));
      end;
    end
    else
    begin
      TStringGrid(sender).Cells[0,TStringGrid(sender).Row] := 'V';
      if TStringGrid(sender).Name = 'sgopd' then
      begin
        try
          if copy(TStringGrid(sender).Cells[2,TStringGrid(sender).Row],1,4) = '急診' then
          begin
           if ReturnId(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row]))='9999999' then
           begin
             memo1.Lines.Add('於'+dateformat(1,ROCToDate(ReturnId(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row]))))+
                           copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),1,2)+'時'+copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),3,2)+'分至急診就診');
             memo1.Lines.Add('於'+dateformat(3,Now)+'離開急診');
           end
           else
           begin
             memo1.Lines.Add('於'+dateformat(1,ROCToDate(ReturnId(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row]))))+
                           copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),1,2)+'時'+copy(ReturnName(Trim(TStringGrid(sender).Cells[6,TStringGrid(sender).Row])),3,2)+'分至急診就診');
             memo1.Lines.Add('於'+dateformat(1,ROCToDate(ReturnId(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row]))))+
                            copy(ReturnName(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row])),1,2)+'時'+copy(ReturnName(Trim(TStringGrid(sender).Cells[5,TStringGrid(sender).Row])),3,2)+'分離開急診');
           end;
          end
          else
          begin
            memo1.Lines.Add('於'+dateformat(1,ROCToDate(Trim(TStringGrid(sender).Cells[1,TStringGrid(sender).Row])))+'至門診就診');
          end;
        except

        end;
      end
      else
      begin
        memo1.Lines.Add('於'+dateformat(1,ROCToDate(Trim(TStringGrid(sender).Cells[1,TStringGrid(sender).Row])))+'住院就診');
      end;
    end;
end;

procedure TFrmqrydate.BitBtn1Click(Sender: TObject);
var
  str: TStrings;
  SQL,dtpt,sdate : STRING;
begin
  inherited;
  dtpt := '';
  IF CHBDept.Checked then
    dtpt := ' and b.dept_code='+ qt(GetUserDept);
  sdate := ' and opd_date between '+qt(ROCDate(DateTimePicker1.Date,''))+' and '+qt(ROCDate(DateTimePicker2.Date,''));
  str := TStringList.Create;
  SQL := 'select '''' AS "選擇",b.opd_date as "看診日期",(select c.full_desc from dept_basic c where c.dept_code=b.dept_code) as "科別", '+
         '    (select a.doc_name from doc_basic a where a.doc_code=b.doc_code) as "醫師", '+
         '(select upd_date||''_''||upd_time from opd_his where opd_his.fee_no=b.fee_no and opd_date=b.opd_date and Rownum = 1) as opd_his,'+
         '(select end_date||''_''||end_time from epd_his where epd_his.fee_no=b.fee_no and epd_date=b.opd_date and rownum = 1) as epd_his, '+
         '(select reg_date||''_''||reg_time from epd_his where epd_his.fee_no=b.fee_no and epd_date=b.opd_date and rownum = 1) as epd_regdate,'+
         '(select d.rsv_opd_time from reg_basic d where d.opd_date=b.opd_date and d.fee_no=b.fee_no and d.opd_kind=''O'' and d.cncl_flag=''N'') as opd_time '+
         'from opd_basic b where chr_no= '+Qt(getChrno)+dtpt+sdate+' order by Opd_date desc';
  str.Clear;
  str.Text := SQL;
  DM.OpenSQL(str,sgopd);
  sgopd.ColWidths[0] := 23;
  sgopd.ColWidths[1] := 76;
  sgopd.ColWidths[2] := 228;
  sgopd.ColWidths[3] := 80;
  sgopd.ColWidths[4] := -1;//opd_end_date
  sgopd.ColWidths[5] := -1;//epd_end_date
  sgopd.ColWidths[6] := -1;//epd_reg_date
  sgopd.ColWidths[7] := -1;//opd_time

  sdate := ' and ipd_date between '+qt(ROCDate(DateTimePicker1.Date,''))+' and '+qt(ROCDate(DateTimePicker2.Date,''));
  str.Clear;
  SQL := 'select '''' AS "選擇",ipd_date as "住院日期",CPD_DATE AS "出院日期",(SELECT B.FULL_DESC FROM DEPT_BASIC B WHERE B.DEPT_CODE=C.GEN_DEPT_CODE) AS "科別",'+
         '    (SELECT A.DOC_NAME FROM DOC_BASIC A WHERE A.DOC_CODE=C.VS_DOC_CODE) AS "醫師",c.ipd_time,c.cpd_time from ipd_basic C'+
         ' where chr_no= '+Qt(getChrno)+sdate+' order by ipd_date desc';
  str.Text := SQL;
  DM.OpenSQL(str,SGIPD);
  SGIPD.ColWidths[0] := 23;
  SGIPD.ColWidths[1] := 71;
  SGIPD.ColWidths[2] := 80;
  SGIPD.ColWidths[3] := 178;
  SGIPD.ColWidths[4] := 69;
  SGIPD.ColWidths[5] := -1;
  SGIPD.ColWidths[6] := -1;
end;

procedure TFrmqrydate.ClearSg(sender: TObject);
var
  i : Integer;
begin
  for i := 1 to TStringGrid(sender).RowCount -1 do
    //TStringGrid(sender).Cells[0,i] := '';
end;

procedure TFrmqrydate.sgopdMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  SourceCol, SourceRow : Integer;
begin
  inherited;
  TStringGrid(Sender).MouseToCell(X, Y, SourceCol, SourceRow);
  if SourceRow = 0 then
    ClearSg(sender);
end;

procedure TFrmqrydate.BitBtn2Click(Sender: TObject);
var
  i,count: integer;
  str :string;
begin
  inherited;
  Self.Close;
end;

procedure TFrmqrydate.CreateItems;
var
  myitem : TTreeNode;
  i : Integer;
  Str : String;
begin
  OPDTree.Items.Clear;
  str:= '';
  if CHBDept.Checked then //只抓本科 //用月份區分
  begin
    for i := 1 to sgopd.RowCount -1 do
    begin
      if Str <> copy(sgopd.Cells[1,i],1,5) then
      begin
        str := copy(sgopd.Cells[1,i],1,5);
        myitem := OPDTree.Items.Add(OPDTree.Items.GetFirstNode,Str);
        OPDTree.Selected := myitem;
      end;
      OPDTree.Items.AddChild(myitem,'於'+dateformat(1,ROCToDate(Trim(sgopd.Cells[1,i])))+'至急診就診');
    end;
  end;

  OPDTree.Selected := OPDTree.Items.Item[0];
  OPDTree.Selected.Expanded := True;
end;

procedure TFrmqrydate.DateTimePicker1Change(Sender: TObject);
begin
  inherited;
  BitBtn1Click(BitBtn1);
end;

procedure TFrmqrydate.FormShow(Sender: TObject);
begin
  inherited;
  DateTimePicker2.Date := Date;
  DateTimePicker1.Date := getmonthofday(-1,date);
  BitBtn1Click(BitBtn1);
end;

procedure TFrmqrydate.sgopdDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if (ARow mod 2) = 0 then
    TStringGrid(Sender).Canvas.Brush.Color := $00ACFFAC
  else
    TStringGrid(Sender).Canvas.Brush.Color := $00ACC7FF;
  TStringGrid(Sender).Canvas.FillRect(Rect);
  TStringGrid(Sender).Canvas.TextOut(Rect.Left + 1, Rect.Top + 1, Trim(TStringGrid(Sender).Cells[ACol,ARow]));
end;

end.
