unit TriageData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Grids, ExtCtrls, ComCtrls;

type
  TFrmTriage = class(TFrmMain)
    SGtriage: TStringGrid;
    Button1: TButton;
    Memo_Triageman: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SGtriageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTriage: TFrmTriage;

implementation

uses DBDM, Global, MySQLc, Commfunc, ERsFunc;

{$R *.dfm}

procedure TFrmTriage.Button1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmTriage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmTriage.FormShow(Sender: TObject);
var
  mySQLs : TStringList;
  sqlst : string;
begin
  inherited;
  DM.QryTemp.Close;
  sqlst := GETEPDRECORD(2); //���˶˸��
  sqlst := sqlst + ' a.id_no=$ID_NO$ and a.opd_date=$OPD_DATE$ and $DATE_TIME3$';
  SetParamter(sqlst,'$ID_NO$',qt(GetIdNo));
  SetParamter(sqlst,'$OPD_DATE$',qt(GetEpdDate));
  SetParamter(sqlst,'$DATE_TIME3$','trim(c.arrival_date)||substr(trim(c.arrival_time),1,4) between to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')-60/24/60,''YYYYMMDDHH24MI'')'+
                       ' and to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')+60/24/60,''YYYYMMDDHH24MI'')');
  mySQLs := TStringList.Create;
  mySQLs.Text := sqlst;
  DM.OpenSQL(mySQLs,SGtriage);
end;

procedure TFrmTriage.SGtriageClick(Sender: TObject);
var
  tmpstr : string;
  name_val: TStringList;
  i : integer;
begin
  inherited;
  Memo_Triageman.Lines.Clear;
  //�˶�
  Memo_Triageman.Lines.Add('��|�ɶ�: '+ Trim(SGtriage.Cells[0,SGtriage.row])+' '+Trim(SGtriage.Cells[1,SGtriage.row]));
  Memo_Triageman.Lines.Add('�˶˯ż�: '+ Trim(SGtriage.Cells[2,SGtriage.row]));
  Memo_Triageman.Lines.Add('�N�Ѫ��A:E'+ Trim(SGtriage.Cells[3,SGtriage.row])+'_V'+Trim(SGtriage.Cells[4,SGtriage.row])+'_M'+Trim(SGtriage.Cells[5,SGtriage.row]));
  Memo_Triageman.Lines.Add('�魫: '+ Trim(SGtriage.Cells[6,SGtriage.row])+'Kg ���:'+ Trim(SGtriage.Cells[7,SGtriage.row])+'�J');
  Memo_Triageman.Lines.Add('�߷i: '+ Trim(SGtriage.Cells[8,SGtriage.row])+' �I�l����: '+ Trim(SGtriage.Cells[9,SGtriage.row]));
  Memo_Triageman.Lines.Add('����: '+ Trim(SGtriage.Cells[11,SGtriage.row])+'/'+ Trim(SGtriage.Cells[10,SGtriage.row]));
  Memo_Triageman.Lines.Add('SPO2: '+ Trim(SGtriage.Cells[12,SGtriage.row]));
  if Trim(SGtriage.Cells[13,SGtriage.row]) = '1' then
  begin
    Memo_Triageman.Lines.Add('�L�ӥv: �L');
  end
  else
  begin
    if Trim(SGtriage.Cells[14,SGtriage.row]) = '1' then
      Memo_Triageman.Lines.Add('�L�ӷ�: ���M��')
    else
    begin
      if Trim(SGtriage.Cells[15,SGtriage.row]) = '1' then
        tmpstr := Trim(SGtriage.Cells[15,0]);
      if Trim(SGtriage.Cells[16,SGtriage.row]) = '1' then
        tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[16,0]);
      if Trim(SGtriage.Cells[17,SGtriage.row]) = '1' then
        tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[17,0]);
      if Trim(SGtriage.Cells[18,SGtriage.row]) <> '' then
        tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[18,0])+':'+Trim(SGtriage.Cells[30,SGtriage.row]);
      Memo_Triageman.Lines.Add('�L�ӷ�: '+tmpstr);
      tmpstr := '';
    end;
  end;
  if Trim(SGtriage.Cells[19,SGtriage.row]) = '1' then
    Memo_Triageman.Lines.Add('�h��: �L');
  if Trim(SGtriage.Cells[19,SGtriage.row]) = '2' then
    Memo_Triageman.Lines.Add('�h��: ���M��');
  if Trim(SGtriage.Cells[19,SGtriage.row]) = '3' then
    Memo_Triageman.Lines.Add('�h��: ��');

  if Trim(SGtriage.Cells[20,SGtriage.row]) = '1' then
    tmpstr := Trim(SGtriage.Cells[20,0]);
  if Trim(SGtriage.Cells[21,SGtriage.row]) = '1' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[21,0]);
  if Trim(SGtriage.Cells[22,SGtriage.row]) = '1' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[22,0]);
  if Trim(SGtriage.Cells[23,SGtriage.row]) = '1' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[23,0]);
  if Trim(SGtriage.Cells[24,SGtriage.row]) = '1' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[24,0]);
  if Trim(SGtriage.Cells[25,SGtriage.row]) <> '' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[25,0])+':'+Trim(SGtriage.Cells[25,SGtriage.row]);
  if Trim(SGtriage.Cells[26,SGtriage.row]) <> '' then
    tmpstr := tmpstr + ';' + Trim(SGtriage.Cells[26,0])+':'+Trim(SGtriage.Cells[26,SGtriage.row]);
  if Trim(tmpstr) <> '' then
  begin
    tmpstr := '�L�h�f�v:'+tmpstr;
    Memo_Triageman.Lines.Add(tmpstr);
    tmpstr := '';
  end;

  if Trim(SGtriage.Cells[27,SGtriage.row]) <> '' then
    Memo_Triageman.Lines.Add('�k�h�j��: '+ Trim(SGtriage.Cells[27,SGtriage.row]));
  if Trim(SGtriage.Cells[28,SGtriage.row]) <> '' then
  begin
    name_val := SliptStr(25,FulltoHalf(Trim(SGtriage.Cells[28,SGtriage.row])));
    for i := 0 to name_val.Count-1 do
    begin
      if i = 0 then
        Memo_Triageman.Lines.Add('�D�z: '+ name_val[i])
      else
        Memo_Triageman.Lines.Add('      '+ name_val[i]);
    end;
  end;
end;

end.
