unit shift_note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, ComCtrls, Buttons, ExtCtrls, Contnrs;

type
  TFrmshift_note = class(TFrmMain)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    RichEdit1: TRichEdit;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vsDOC_CODE,note_kind : string;
    s_no :integer;
    HAV : Boolean;
  end;

var
  Frmshift_note: TFrmshift_note;

implementation

uses Commfunc, DBDM, Global, MySQLc, ERsFunc, DB;

{$R *.dfm}

procedure TFrmshift_note.BitBtn1Click(Sender: TObject);
var
  //da,ti,qstrA : string;
  dd, dt, dall,sqstr: string;
  SQLs : TStringList;
  SQLo : TObjectList;
begin
  inherited;
  if note_kind ='Shift' then
  begin
    IF TRIM(RichEdit1.Lines.Text)<> '' THEN
    BEGIN
      SQLs := TStringList.Create;
      SQLo := TObjectList.Create;
      dd := FormatDateTime('YYYY\MM\DD',Now);
      dt := ROCTimes(Now,':');
      dall := FormatDateTime('YYYY\MM\DD hh:nn:ss',Now);
      sqstr := docshift(0);
      SetParamter(sqstr,'$OPD_DATE$',Qt(GetEpdDate));
      SetParamter(sqstr,'$FEE_NO$',Qt(GetFeeNo));
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Text:= sqstr;
      sql_Waiting_log('open',sqstr);
      DM.QryTemp.Open;
      sql_Waiting_log('close','');
      if s_no <> 1 then
      begin //have
        sqstr := docshift(2);
        SetParamter(sqstr,'$BED_NO$',Qt(Trim(DM.QryTemp.FieldByName('epd_bed').AsString)));
        SetParamter(sqstr,'$CHR_NO$',Qt(GetChrNo));
        SetParamter(sqstr,'$PAT_NAME$',Qt(GetPatName));
        SetParamter(sqstr,'$EDIAG_DESC$',Qt(''));
        SetParamter(sqstr,'$CLASS_SHIFT$',Qt(''));
        SetParamter(sqstr,'$UPD_ID$',Qt(getUserId));
        SetParamter(sqstr,'$UPD_DATA$',Qt(dd));
        SetParamter(sqstr,'$UPD_TIME$',Qt(dt));
        SetParamter(sqstr,'$PRINT_FLAG$',Qt('N'));
        SetParamter(sqstr,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sqstr,'$ORIGINAL_DATA$',Qt(dall));
        SetParamter(sqstr,'$PS$',qt(TRIM(RichEdit1.Lines.Text)));
        SQLs := TStringList.Create;
        SQLs.Add(sqstr);
        SQLo.Add(SQLs);
      end
      else
      begin
        sqstr := docshift(3);
        SetParamter(sqstr,'$BED_NO$',Qt(Trim(DM.QryTemp.FieldByName('epd_bed').AsString)));
        SetParamter(sqstr,'$EDIAG_DESC$',Qt(''));
        SetParamter(sqstr,'$CLASS_SHIFT$',Qt(''));
        SetParamter(sqstr,'$UPD_ID$',Qt(getUserId));
        SetParamter(sqstr,'$UPD_DATA$',Qt(dd));
        SetParamter(sqstr,'$UPD_TIME$',Qt(dt));
        SetParamter(sqstr,'$PRINT_FLAG$',Qt('N'));
        SetParamter(sqstr,'$PS$',qt(TRIM(RichEdit1.Lines.Text)));
        SetParamter(sqstr,'$FEE_NO$',Qt(GetFeeNo));
        SetParamter(sqstr,'$UPD_DATA_180$',QT(dateformat(5,Now-180)));
        SQLs := TStringList.Create;
        SQLs.Add(sqstr);
        SQLo.Add(SQLs);
      end;
      DM.QryTemp.Close;
      if NOT DM.ExecSQL(SQLo) then
      begin
        ShowMessage('備註寫入資料庫失敗');
        exit;
      end;
      SQLo.Free;
    END;
  end;
  Self.Close;
end;

procedure TFrmshift_note.Button1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmshift_note.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmshift_note.FormDestroy(Sender: TObject);
begin
  inherited;
  Frmshift_note := nil;
end;

procedure TFrmshift_note.FormShow(Sender: TObject);
begin
  inherited;
  RichEdit1.SetFocus;
end;

end.
