unit MTRL_LIST_PRINT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Mask, ComCtrls, Buttons, ExtCtrls;

type
  TFrmMTRLListPrint = class(TFrmMain)
    BBTNTQRY: TBitBtn;
    BBtnCLOSE: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure BBTNTQRYClick(Sender: TObject);
    procedure BBtnCLOSEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMTRLListPrint: TFrmMTRLListPrint;

implementation

uses Commfunc, NurseOrderRpt, MySQLc;

{$R *.dfm}

procedure TFrmMTRLListPrint.FormShow(Sender: TObject);
begin
  inherited;
  DateTimePicker1.DateTime := Now;
  DateTimePicker2.DateTime := Now;
  MaskEdit1.Text := ROCTime(Now,'');
  MaskEdit2.Text := ROCTime(Now,'');

end;

procedure TFrmMTRLListPrint.BBTNTQRYClick(Sender: TObject);
VAR
  STDATE,sqlstr:STRING;
begin
  inherited;
  if not Assigned(FrmNurseOrderRpt) then
    FrmNurseOrderRpt := TFrmNurseOrderRpt.Create(Self);
  STDATE := ROCDate(DateTimePicker1.Date-4,'');
  FrmNurseOrderRpt.ADOQuery1.Close;
  FrmNurseOrderRpt.ADOQuery1.SQL.Clear;
  sqlstr := nurse_eisai(12);
  SetParamter(sqlstr,'$STADATE$',Qt(ROCDate(DateTimePicker1.Date,'')));
  SetParamter(sqlstr,'$ENDDATE$',Qt(ROCDate(DateTimePicker2.Date,'')));
  SetParamter(sqlstr,'$STATIME$',Qt(MaskEdit1.Text));
  SetParamter(sqlstr,'$ENDTIME$',Qt(MaskEdit2.Text));
  SetParamter(sqlstr,'$OPDDATE$',Qt(STDATE));
  FrmNurseOrderRpt.ADOQuery1.SQL.Text := sqlstr;
  FrmNurseOrderRpt.ADOQuery1.Open;
  IF NOT FrmNurseOrderRpt.ADOQuery1.IsEmpty THEN
  BEGIN
    FrmNurseOrderRpt.QRLabel1.Caption := '列印區間'+ROCDate(DateTimePicker1.Date,'.')+' '+MaskEdit1.Text+' ~ '+MaskEdit2.Text;
    FrmNurseOrderRpt.QuickRep1.Preview;
  END
  ELSE
    ShowMessage('查不到資料');
end;

procedure TFrmMTRLListPrint.BBtnCLOSEClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
