unit userpsw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrmuserpsw = class(TFrmMain)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Labmasge: TLabel;
    Labpatname: TLabel;
    Labpatdept: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Labsex: TLabel;
    Labbed: TLabel;
    Label9: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cncl_flag :Boolean;
  end;

var
  Frmuserpsw: TFrmuserpsw;

implementation

uses Global, DBDM, Commfunc, DB;

{$R *.dfm}

procedure TFrmuserpsw.BitBtn2Click(Sender: TObject);
begin
  inherited;
  cncl_flag := True;
  Self.Close;
end;

procedure TFrmuserpsw.FormShow(Sender: TObject);
begin
  inherited;
  Edit1.Text := '';
  Edit2.Text := '';
  Label4.Caption := '';
  cncl_flag := False;
  Label4.Caption := getUserName ;
  Edit1.Text := getUserId;
  Labpatname.Caption := GetPatName;
  Labpatdept.Caption := GetDeptName(GetPatDept);
  Labsex.Caption := GetSex(Getsex01);
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select bed_no from bed_area where fee_no='+Qt(GetFeeNo));
  DM.QryTemp.open;
  if DM.QryTemp.IsEmpty then
    Labbed.Caption := ''
  else
    Labbed.Caption := trim(DM.QryTemp.fieldbyname('bed_no').AsString);
  Labmasge.Caption := '';
  if GetPatDept <> GetUserDept then
  begin
    Labmasge.Caption := '請注意醫師與病人掛號科別不同!!';
  end;
end;

procedure TFrmuserpsw.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Label9.Visible := False;
  if (Trim(Edit1.Text)<> '') and (Trim(Edit2.Text) <> '') then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select * from USER_BASIC where USER_ID='+Qt(Trim(Edit1.Text))+' and Use_flag=''Y''');
    DM.QryTemp.open;
    DM.QryTemp.Last;
    DM.QryTemp.First;
    if DM.QryTemp.recordcount =1 then
    begin
      if trim(Edit2.Text)=Trim(DM.QryTemp.FieldByName('USER_PASSWD').AsString) then
      begin
        Setorderdoc(Trim(Edit1.Text));
        Self.Close;
      end
      else
      begin
        Label9.Visible := True;
        Label9.Caption := '密碼錯誤';
      end;
    end;
  end
  else
    ShowMessage('請輸入帳密資料');
end;

procedure TFrmuserpsw.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
    BitBtn1Click(BitBtn1);
end;

procedure TFrmuserpsw.Edit1Change(Sender: TObject);
begin
  inherited;
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('select * from USER_BASIC where USER_ID='+Qt(Trim(Edit1.Text))+' and Use_flag=''Y''');
    DM.QryTemp.open;
    DM.QryTemp.Last;
    DM.QryTemp.First;    
    if DM.QryTemp.recordcount =1 then
    begin
      Label4.Caption := Trim(DM.QryTemp.fieldbyname('user_name').AsString);
      Edit2.SetFocus;
    end;
end;

end.
