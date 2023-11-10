unit MAJOR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids,DateUtils,
  CheckLst, Contnrs, Math, ADODB, Mask;

type
  TFrmMAJOR = class(TFrmMain)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    BtnConfirm: TBitBtn;
    BtnExit: TBitBtn;
    LabDose: TLabel;
    Label2: TLabel;
    Edtweights: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SLabDoes: TStaticText;
    SLabBolus: TStaticText;
    SLabSlowIV: TStaticText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox3: TGroupBox;
    LabAMI: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtWeightAMI: TMaskEdit;
    StaticText1: TStaticText;
    LabAMI30: TStaticText;
    LabAMI60: TStaticText;
    Label15: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    BtnStroke: TBitBtn;
    BtnAMI: TBitBtn;
    BtnOther: TBitBtn;
    procedure BtnStrokeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtWeightAMIKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtweightsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConfirmClick(Sender: TObject);
  private
    { Private declarations }
    dosqty : Extended;
    weigth : integer;
  public
    { Public declarations }
    Str_Note,selfpay : string;
  end;

var
  FrmMAJOR: TFrmMAJOR;

implementation

uses DBDM, Commfunc, Global, MySQLc, ERsFunc, Order, SaveData, MECHANISM,
  MajorRept, DB;

{$R *.dfm}


procedure TFrmMAJOR.BtnStrokeClick(Sender: TObject);
begin
  inherited;
  GroupBox2.Visible := False;
  Panel2.Visible :=  True;
  Panel2.Align := alClient;
  if TBitBtn(Sender).Name ='BtnOther' then
  begin
    Str_Note := '';
    Self.Close;
  end
  else if TBitBtn(Sender).Name ='BtnAMI' then
  begin
    BtnExit.Enabled := False;
    GroupBox1.Visible := False;
    LabAMI.Caption := 'AMI症狀出現在6小時之內，且需給予rt-PA 90 minutes accelerated infusion';
    EdtWeightAMI.Text := '';
    LabAMI30.Caption := '';
    LabAMI60.Caption := '';
    GroupBox3.Align := alClient;
    GroupBox3.Visible := true;
  end
  else
  begin //BtnStroke
    GroupBox3.Visible := False;
    BtnExit.Enabled := False;
    Edtweights.Text := '';
    SLabDoes.Caption := '';
    SLabBolus.Caption := '';
    SLabSlowIV.Caption := '';
    if MessageDlg('藥品IACT是否開立健保?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      GroupBox1.Caption := '健保';
      LabDose.Caption := 'rt-PA劑量為0.9mg/Kg';
      dosqty := 0.9;
      selfpay := 'Y';
    end
    else
    begin
      GroupBox1.Caption := '自費';
      selfpay := 'N';
      if MessageDlg('rt-PA劑量為0.6 mg/Kg? (選否為0.9mg/Kg)',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        dosqty := 0.6;
        LabDose.Caption := 'rt-PA劑量為0.6mg/Kg';
      end
      else
      begin
        dosqty := 0.9;
        LabDose.Caption := 'rt-PA劑量為0.9mg/Kg';
      end;
    end;
    GroupBox1.Align := alClient;
    GroupBox1.Visible := true;
  end;
end;

procedure TFrmMAJOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  GroupBox1.Visible := False;
  GroupBox2.Visible := False;
  GroupBox3.Visible := False;
  Panel2.Visible :=  False;
  Action := caFree;
end;

procedure TFrmMAJOR.FormDestroy(Sender: TObject);
begin

  FrmMAJOR := nil;
end;

procedure TFrmMAJOR.BtnExitClick(Sender: TObject);
begin
  inherited;
  Str_Note := '';
  Close;
end;

procedure TFrmMAJOR.FormShow(Sender: TObject);
begin
  inherited;
  GroupBox2.Visible := true;
  GroupBox2.Align := alClient;
  Panel2.Visible :=  False;
  selfpay := '';
end;

procedure TFrmMAJOR.EdtWeightAMIKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if trim(EdtWeightAMI.Text)<> '' then
  begin
    BtnExit.Enabled := True;
    weigth := StrToInt(Trim(EdtWeightAMI.Text));
    if weigth > 65 then
    begin
      LabAMI30.Caption := '50';
      LabAMI60.Caption := '35';
    end
    else
    begin
      LabAMI30.Caption := FloatToStr(Trunc((0.75 * weigth)+0.5));
      LabAMI60.Caption := FloatToStr(Trunc((0.5 * weigth)+0.5));
    end;
  end;
end;

procedure TFrmMAJOR.EdtweightsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if trim(Edtweights.Text)<> '' then
  begin
    BtnExit.Enabled := True;
    weigth := StrToInt(Trim(Edtweights.Text));
    if weigth > 100 then
      weigth := 100;
    SLabDoes.Caption := FloatToStr(Trunc((dosqty * weigth)+0.5));
    SLabBolus.Caption := FloatToStr(Trunc((0.1 * StrToInt(SLabDoes.Caption))+0.5));
    SLabSlowIV.Caption := FloatToStr(Trunc((StrToInt(SLabDoes.Caption)- StrToInt(SLabBolus.Caption))+0.5));
  end;
end;

procedure TFrmMAJOR.BtnConfirmClick(Sender: TObject);
begin
  inherited;
  if GroupBox1.Visible then
  begin
    Str_Note := LabDose.Caption+'，'+Label2.Caption+Edtweights.Text+'Kg，'+
                Label5.Caption+SLabDoes.Caption+'mg，'+
                Label6.Caption+SLabBolus.Caption+'mg，'+
                Label7.Caption+SLabSlowIV.Caption+'mg，';
  end
  else if GroupBox3.Visible then
  begin
    Str_Note := Label11.Caption+EdtWeightAMI.Text+'Kg，'+
                StaticText1.Caption+Label17.Caption+
                Label15.Caption+LabAMI30.Caption+Label18.Caption+
                Label1.Caption+LabAMI60.Caption+Label19.Caption;
  end;
  Close;
end;

end.
