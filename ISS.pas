unit ISS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Mask, Buttons;

type
  TFrmISS = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    MEdtHead: TMaskEdit;
    EditIss: TEdit;
    MEdtFace: TMaskEdit;
    MEdtThorax: TMaskEdit;
    MEdtAbdomen: TMaskEdit;
    MEdtExtremity: TMaskEdit;
    MEdtExtrnal: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button9: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    Choose : integer;
    firstcount: TStringList;
    procedure clearstatus(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmISS: TFrmISS;

implementation

uses Commfunc, DBDM, DB, ADODB, Global;

{$R *.dfm}

procedure TFrmISS.FormShow(Sender: TObject);
begin
  inherited;
  with DM.QryInsert do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ISSSCORE where fee_no='+qt(GetFeeNo)+' and can_cd=''N'' ');
    Open;
    if not IsEmpty then
    begin
      MEdtHead.Text       := fieldbyname('HEAD').AsString;
      MEdtFace.Text       := fieldbyname('FACE').AsString;
      MEdtThorax.Text     := fieldbyname('THORAX').AsString;
      MEdtAbdomen.Text    := fieldbyname('ABDOMEM').AsString;
      MEdtExtremity.Text  := fieldbyname('EXTREMITY').AsString;
      MEdtExtrnal.Text    := fieldbyname('EXTERNAL_S').AsString;
      EditIss.text        := fieldbyname('SCORE').AsString;
    end;
    Close;
    BitBtn1Click(Self);
  end;
  Choose := 0;
  Label3.Caption := '';
  firstcount := TStringList.Create;
end;

procedure TFrmISS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  firstcount.Free;
end;

procedure TFrmISS.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmISS := nil;
end;

procedure TFrmISS.Button2Click(Sender: TObject);
begin
  inherited;
  Self.close;
end;

procedure TFrmISS.Button1Click(Sender: TObject);
var
  seq:integer;
begin
  inherited;
  with DM.QryInsert do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(seq) aa from ISSSCORE where fee_no='+qt(GetFeeNo));
    Open;
    seq := fieldbyname('aa').AsInteger;
    try
      DM.ADOLink.BeginTrans;
      Close;
      SQL.Clear;
      SQL.Add('insert into ISSSCORE(fee_no,seq,can_cd,can_oper,can_date,');
      SQL.Add('can_time,head,face,thorax,abdomem,extremity,');
      SQL.Add('external_s,score,oper_id,oper_date,oper_time)');
      SQL.Add(' values('+qt(GetFeeNo)+','+IntToStr(seq+1)+',''N'','''','''' ');
      SQL.Add(','''','+qt(MEdtHead.Text)+','+qt(MEdtFace.Text)+','+qt(MEdtThorax.Text)+','+qt(MEdtAbdomen.Text)+','+qt(MEdtExtremity.Text));
      SQL.Add(','+qt(MEdtExtrnal.Text)+','+EditIss.Text+','+qt(getUserId)+','+qt(ROCDate(Now,''))+','+qt(ROCTime(Now,''))+')');
      ExecSQL;
      //�¸�ư�dc���O
      if seq > 0 then
      begin
        Close;
        SQL.Clear;
        SQL.Add('update issscore set can_cd=''Y'',can_oper='+qt(getUserId)+',can_date='+qt(ROCDate(Now,''))+',can_time='+qt(ROCTime(Now,'')));
        SQL.Add(' where fee_no='+qt(GetFeeNo)+' and seq='+IntToStr(seq));
        ExecSQL;
      end;
      DM.ADOLink.CommitTrans;
    except
      DM.ADOLink.RollbackTrans;
    end;
  end;
  Self.Close;
end;

procedure TFrmISS.BitBtn1Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn1);
  Choose := 1;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.�n��´:');
  Memo1.Lines.Add('�Y�ּ�����<10cm��<100���褽��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.�Y��:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.�V��:');
  Memo1.Lines.Add('�V�շl�˦��L����β��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.����:');
  Memo1.Lines.Add('�ж˾ɭP�Y�h�ΤG�ׯt�w���L�N�ѳ�');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.���:');
  Memo1.Lines.Add('���פ��~�V�R�߼�����');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.��L:');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.�n��´:');
  Memo2.Lines.Add('�Y�ּ�����>10cm�� >100���褽��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.�Y��:');
  Memo2.Lines.Add('����Y�\������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.�V��:');
  Memo2.Lines.Add('�V��spinous/Transverse process ���ΰ���'+#10);
  Memo2.Lines.Add('�����V�������ʰ���<20%');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.����:');
  Memo2.Lines.Add('�ж˾ɭP���ѡB�ݺΡB���w�����n���������F�L�N�ѱ��p<1�p��');
  Memo2.Lines.Add('�����g�ڷl��');
  Memo2.Lines.Add('�u���g�O�l��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.���:');
  Memo2.Lines.Add('�~�V�ʯߡB��հʯ�#���L������/��������/���F���V�R�߻��L������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.��L:');
  Memo2.Lines.Add('�Ҫ�������;��޻��L������/����');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.�n��´:');
  Memo3.Lines.Add('�Y�ּ����ˤζW�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.�Y��:');
  Memo3.Lines.Add('�Y�`����<2cm�`; �`���򩳰���F���H�����ʩΥW�����`������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.�V��:');
  Memo3.Lines.Add('�V�������ʰ���>20%�F�W����'+#10);
  Memo3.Lines.Add('�V�� lamina body/pedicle/ facet���ΰ���');
  Memo3.Lines.Add('�V���������');
  Memo3.Lines.Add('�ն��L��X�X�֯��g�g��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.����:');
  Memo3.Lines.Add('�L�N�� 1- 6�p�ɡF�L�N�ѱ��p<1�p�ɨæ��H���g�ǯʳ�');
  Memo3.Lines.Add('��');
  Memo3.Lines.Add('�j������<30cc�A���|<4cm�A�Τ��u����<5mm');
  Memo3.Lines.Add('�p������<15cc ���|<3cm');
  Memo3.Lines.Add('�j������U�X��');
  Memo3.Lines.Add('���׸����~');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.���:');
  Memo3.Lines.Add('�`�V�ʯ�#�B���V�ʯ�#���L������/�������}/���F�~�V�ʯߡB��հʯ�#�B�V�R���Y��������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.��L:');
  Memo3.Lines.Add('�Ҫ��������ˡF�|������/���L�����ˡF��ޯ}��');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.�n��´�B�Y��:');
  Memo4.Lines.Add('�W�����`������>2cm');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.�V��:');
  Memo4.Lines.Add('�V���褣�������g�l��');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.����:');
  Memo4.Lines.Add('�L�N�ѱ��p1-6�p�ɨæ��H���g�ǯʡF�L�N�ѱ��p6-24�p�ɡF�u��k�h��E������');
  Memo4.Lines.Add('�w���������γ�������´�ॢ');
  Memo4.Lines.Add('�w�����}�l�θ���´�ʷl');
  Memo4.Lines.Add('�w�����W�ΤU�X��<50cc<1cm�p');
  Memo4.Lines.Add('�j�����˹F30-50cc�Τ��u����>5mm');
  Memo4.Lines.Add('�p�����˹F15-30cc');
  Memo4.Lines.Add('�����X��<30cc');
  Memo4.Lines.Add('���Ǥ��X��F���׸����~(��������)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.���:');
  Memo4.Lines.Add('�`�V�ʯ�#�B���V�ʯ�#�Y��������');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.��L:');
  Memo4.Lines.Add('�|�}��');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.�n��´�B�Y��:');
  Memo5.Lines.Add('�Y�`����>2cm�`');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.�V��:');
  Memo5.Lines.Add('�V��W������');
  Memo5.Lines.Add('C4�Ψ�U���V���觹���l��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('3.����:');
  Memo5.Lines.Add('�L�N�ѱ��p>24�p��');
  Memo5.Lines.Add('�j�����ˮ���>50cc');
  Memo5.Lines.Add('�p������>30cc');
  Memo5.Lines.Add('�w�����W�ΤU�X��>50cc');
  Memo5.Lines.Add('�����X��>30cc');
  Memo5.Lines.Add('�Y�������~(���ǳQ�����Ӭݤ���)');
  Memo5.Lines.Add('�s�x�ʶb���l��Diffuse axonal injury');
  Memo5.Lines.Add('���F�l��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('4.���:');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.��L:');
  Memo5.Lines.Add('�Y���|��}�l');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('�`���Φӿ���´�Y���}�a�F���F�Y���l�ˡF�_�Y�FC3�Ψ�W���V����l��');
  Label1.Caption := '���G�Y�V���� # �O�����l�ˡA�Y�P�ɦ��H�D�Y���~�˾ɭP�����g�ʷl�AAIS�[1���C';
end;

procedure TFrmISS.BitBtn3Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn3);
  Choose := 2;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.�n��´:');
  Memo1.Lines.Add('������<10cm��<25���褽��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.�y��:');
  Memo1.Lines.Add('�󰩡B�U�X��*����');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.��L����:');
  Memo1.Lines.Add('�����B�զ��B��L�޼����ˡF�����_���β��');


  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.�n��´:');
  Memo2.Lines.Add('������>10cm��>25���褽��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.�y��:');
  Memo2.Lines.Add('�����B���۰�*����FLeFort I�BII ����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.��L����:');
  Memo2.Lines.Add('�޲`�������ˡF���y�}���F����������');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.�n��´:');
  Memo3.Lines.Add('�����˦X�֥����W�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.�y��:');
  Memo3.Lines.Add('LeFort III ����');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.��L����:');
  Memo3.Lines.Add('�����g����');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.�n��´:');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.�y��:');
  Memo4.Lines.Add('LeFort III ����X�֥����W�L20%��G�y��');

  Memo5.Lines.Clear;

  Memo6.Lines.Clear;

  Label1.Caption := '��:�� * �O��������A�Y���}��ʡB����ʩί��H�ʡAAIS�[1���C';
end;

procedure TFrmISS.BitBtn5Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn5);
  Choose := 3;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.�n��´:');
  Memo1.Lines.Add('�ݯ�զ٦שԶ�');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.�ذ�/�ݰ�:');
  Memo1.Lines.Add('�ݾ��B�ݰ�����');
  Memo1.Lines.Add('�@�ڦذ�����');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.�ݴ�:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.�ߡB��Ŧ�B���D:');
  Memo1.Lines.Add('�Ӥ��ޮ���');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.���:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.��L����:');
  Memo1.Lines.Add('�g�����g�l��');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.�n��´:');
  Memo2.Lines.Add('�ݰ�����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.�ذ�/�ݰ�:');
  Memo2.Lines.Add('�ݰ�����B�G�ܤT�ڦذ�����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.�ݴ�:');
  Memo2.Lines.Add('�ݴ� spinous/transverse process ���ΰ���');
  Memo2.Lines.Add('���ׯݴ������ʰ���<20%');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.�ߡB��Ŧ�B���D:');
  Memo2.Lines.Add('���D�B���ޮ���');
  Memo2.Lines.Add('�ؽ��B�ߥ]���ίݾɺ�(thoracic duct)������');
  Memo2.Lines.Add('��J����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.���:');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.��L����:');
  Memo2.Lines.Add('��j���g�l��');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.�n��´:');
  Memo3.Lines.Add('�����˦X�֥����W�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.�ذ�/�ݰ�:');
  Memo3.Lines.Add('���');
  Memo3.Lines.Add('���');
  Memo3.Lines.Add('���a�j��');
  Memo3.Lines.Add('�@���ذ�����>4��');
  Memo3.Lines.Add('�氼�ͮ��˩μ�����$');
  Memo3.Lines.Add('�s�E�ݵL�X�֪ͮ���');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.�ݴ�:');
  Memo3.Lines.Add('�ݴ������ʰ���(>20%)');
  Memo3.Lines.Add('�ݴ� lamina body/pedicle/facet���ΰ���');
  Memo3.Lines.Add('�ݯ�����˦��H�u�ȯ��g����');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.�ߡB��Ŧ�B���D:');
  Memo3.Lines.Add('��ޡB�D���ީέ��D�����ˡF���ޯ}�����_��');
  Memo3.Lines.Add('�氼�ͮ��˩μ�����$');
  Memo3.Lines.Add('�ߥ]�����');
  Memo3.Lines.Add('��Ŧ���L���˩μ�����');
  Memo3.Lines.Add('��j�������ά��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.���:');
  Memo3.Lines.Add('�갩�U�B�L�W�ΪͰ�/�R�ߡA�W�U���R�߻��L������/�������}/���');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.��L����:');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.�n��´:');
  Memo4.Lines.Add('�}��ʮ�� (�ݳ����}��ʧl�m�ʶˤf)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.�ذ�/�ݰ�');
  Memo4.Lines.Add('��������');
  Memo4.Lines.Add('���a�j��');
  Memo4.Lines.Add('�@���ذ�����>4�ڦX�֦���');
  Memo4.Lines.Add('�ⰼ�ذ������>4��');
  Memo4.Lines.Add('�s�E�ݦX�֪ͮ���');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.�ݴ�:');
  Memo4.Lines.Add('�ݯ���襼�����l�˯g�Ըs');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.�ߡB��Ŧ�B���D:');
  Memo4.Lines.Add('��ޡB�D���ީέ��D�}���F���ޥ��_��');
  Memo4.Lines.Add('�ⰼ�ͮ��˩μ�����$');
  Memo4.Lines.Add('�Y���ߦٮ���');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.���:');
  Memo4.Lines.Add('�D�ʯ߻��L������/�������}/���F�갩�U�B�L�W�ΪͰ�/�R�ߡA�W�U���R���Y��������');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.��L����:');


  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.�n��´:');
  Memo5.Lines.Add('�i�O�ʮ��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.�ذ�/�ݰ�:');
  Memo5.Lines.Add('�ⰼ�ذ�����>4�ڦX�֦���');
  Memo5.Lines.Add('�ⰼ�s�E�ݩ�<15���X�ֳs�E��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('3.�ݴ�:');
  Memo5.Lines.Add('�ݯ��輹���˩Χ����l�˯g�Ըs');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('4.�ߡB��Ŧ�B���D:');
  Memo5.Lines.Add('��ޡB�D���ީέ��D���_��');
  Memo5.Lines.Add('�ߥ]���l�˦X�֤�Ŧ�檷(herniation)');
  Memo5.Lines.Add('��Ŧ�}��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.���:');
  Memo5.Lines.Add('�D�ʯ��Y��������');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('6.��L:');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('�����ʤߦټ����ˡF�ݳ��Y�������(crush injury)');
  Label1.Caption := '���G�� $ �O�����l�ˡA�Y�X�֥X��W�L����20%��q�B�Y���|��Ψt�ΩʪŮ���AAIS�[1��';
end;

procedure TFrmISS.BitBtn2Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn2);
  Choose := 4;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.�n��´:');
  Memo1.Lines.Add('������<20cm��<100���褽��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.���:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.���:');
  Memo1.Lines.Add('�y��զ٦שԶ�');
  Memo1.Lines.Add('4.��Ŧ:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.�xŦ');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.�x�n:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('7.��Ŧ:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('8.��Ŧ:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('10.�H��:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('11.���D�B�駿��:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('12.�z�G�D:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('13.�ǤW��:');
  Memo1.Lines.Add('��L������');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('14.�ʹ޾��x:');
  Memo1.Lines.Add('���n�B�����B�A�Y�B���D�B�k���B�Z�_�B�|����L�����˩ή���');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.�n��´:');
  Memo2.Lines.Add('������>20cm��>100���褽��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.���:');
  Memo2.Lines.Add('���B�~�����R�߻��L������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.���:');
  Memo2.Lines.Add('���L�y�������ʰ���(<20%)');
  Memo2.Lines.Add('�y�դ�spinous/transverse process ���ΰ���');
  Memo2.Lines.Add('�y���g�ڷl��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.��Ŧ:');
  Memo2.Lines.Add('���L���˩μ����ˡF��~<50%�F������<2����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.�xŦ');
  Memo2.Lines.Add('���L���˩μ����ˡF��~<50%;������<2�����FOIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.�x�n:');
  Memo2.Lines.Add('�x�n���L���˩μ����ˡF�x�~�x��OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('7.��Ŧ:');
  Memo2.Lines.Add('���L���˩μ����ˡFOIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('8.��Ŧ:');
  Memo2.Lines.Add('���L���˩μ����ˡF��L����<1����OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('10.�H��:');
  Memo2.Lines.Add('�H�֮��˩Ϊ�L������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('11.���D�B�駿��:');
  Memo2.Lines.Add('���D�B�駿�ޮ��˩Ϊ�L�����ˡFOIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('12.�z�G�D:');
  Memo2.Lines.Add('�G�B�Q�G���z�B�zô���B�B�j�z�B���z���L���˩μ����ˡB�z����L������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('13.�ǤW��:');
  Memo2.Lines.Add('�Y�������ˡB�X�֤j�q��´�ʷl');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('14.�ʹ޾��x:');
  Memo2.Lines.Add('���n�B�����B�A�Y�B���D�B�k���B�Z�_�B�|���Y������');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.�n��´:');
  Memo3.Lines.Add('�����˥����W�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.���:');
  Memo3.Lines.Add('�`�����Ψ�L���R�W���ʡB�R�߻��L�����ˡF���İʯ�(celiac aretry)�������}�F���B�~�����R���Y�������ˡF�ḡ���Ħ�~');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.���:');
  Memo3.Lines.Add('�y�������ʰ���(>20%)');
  Memo3.Lines.Add('�y�� lamina body/pedicle/ facet���ΰ���');
  Memo3.Lines.Add('�y������˦��H�u�ȩΤ��������g����');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.��Ŧ:');
  Memo3.Lines.Add('���׮��˩μ����ˡF��~��50%�F�����ˡ�2�����F�X��q>1000cc�FOIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.�xŦ');
  Memo3.Lines.Add('���L���˩μ����ˡF��~��50%;�����ˡ�2�����F�X��q>1000cc�FOIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.�x�n:');
  Memo3.Lines.Add('�x�~�x��OIS3,4');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('7.��Ŧ:');
  Memo3.Lines.Add('���׮��˩μ�����(�]�t�غ�)�FOIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('8.��Ŧ:');
  Memo3.Lines.Add('���׮��˩μ����˦�~>50%;������>1�����FOIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('10.�H��:');
  Memo3.Lines.Add('�H�ֳ���������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('11.���D�B�駿��:');
  Memo3.Lines.Add('���D�_���β�´�ʷl(OIS4)�B�駿���_���FOIS3,4,5');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('12.�z�G�D:');
  Memo3.Lines.Add('�G�B�Q�G���z�B�zô���B�j�z�B���z�}��(OIS1,2)�B�z���Y��������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('13.�ǤW��:');
  Memo3.Lines.Add('�Y�������ˡB�X�֤j�q��´�ʷl�B�X��q>1000cc');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('14.�ʹ޾��x:');
  Memo3.Lines.Add('�|���Y�������ʼ�����');

  Memo4.Lines.Clear;
  //Memo4.Lines.Add('1.�n��´:');
  //Memo4.Lines.Add('');
  Memo4.Lines.Add('2.���:');
  Memo4.Lines.Add('���D�ʯߤ������}�λ��L�����ˡF���İʯ�(celiac artery)���L�����ˡF�`�����Ψ�L���R�W���ʡB�R���Y��������');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.���:');
  Memo4.Lines.Add('�y������˦��H�������g����');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.��Ŧ:');
  Memo4.Lines.Add('���פ����H���FOIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.�xŦ');
  Memo4.Lines.Add('�Y������(<50%��賡)�F�h�B����>3�����FOIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.�x�n:');
  Memo4.Lines.Add('�`�x�ީΨx���_���F�x�~�x��OIS5');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('7.��Ŧ:');
  Memo4.Lines.Add('�h�B���˩μ�����(�]�t��Ŧ�Y)�FOIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('8.��Ŧ:');
  Memo4.Lines.Add('���׮��˩μ����ˡB�A�ΥD�n��ޤζ����t�ΡFOIS=4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('10.�H��:');
  Memo4.Lines.Add('�H�֥��h�}���FOIS2,3,4,5');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('11.���D�B�駿��:');
  Memo4.Lines.Add('�y����B�A���ٳ����D�_���β�´�ʷl(OIS5)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('12.�z�G�D:');
  Memo4.Lines.Add('�G�B�Q�G���z�B�zô���B�j�z�B�p�z��I�_���B�z�����������ˡB�j�q��´�ʷl (OIS3,4,5)');
  Memo4.Lines.Add('');
  //Memo4.Lines.Add('13.�ǤW��:');
  //Memo4.Lines.Add('');
  Memo4.Lines.Add('14.�ʹ޾��x:');
  Memo4.Lines.Add('�L�L����');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('�n��´:');
  Memo5.Lines.Add('�i�O�ʮ��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.���:');
  Memo5.Lines.Add('���D�ʯߡB���İʯ�(celiac artery)�Y��������');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('3.���:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('4.��Ŧ:');
  Memo5.Lines.Add('�Y�����H�ʸH���F��Ŧ���R���_���FOIS5');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.�xŦ');
  Memo5.Lines.Add('�����ʯ}��(>50%��賡)�F�A�Ϊ��ߦ�ްϡB�x��U���R�߰ϡFOIS5');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('6.�x�n:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('7.��Ŧ:');
  Memo5.Lines.Add('�����ʯ}���B�j�q��´�ʷl�FOIS5');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('8.��Ŧ:');
  Memo5.Lines.Add('�����ʯ}���B�Ǫ��Ϧ���_��');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('10.�H��:');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('11.���D�B�駿��:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('12.�z�G�D:');
  Memo5.Lines.Add('�Q�G���z(���H��Ŧ�Y�B�غޡB�ťY���BOIS4,5)�B���z�Y�������˦��H��´�ॢ�Ω���ìV');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('13.�ǤW��:');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('14.�ʹ޾��x:');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('�xŦ�Ѧ�ޱ��X�B�����_������');
  Label1.Caption := '';
end;

procedure TFrmISS.BitBtn4Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn4);
  Choose := 5;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.���`:');
  Memo1.Lines.Add('�ӡB�y�B�áB���B����ˡFA-C joint�B�ӡB�y�B�áB����B�b�B��B�}�k��ˡF�W�Ϧٸx�l��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.����:');
  Memo1.Lines.Add('�����B�k������β��');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.���:');
  Memo1.Lines.Add('�u�R�ߪ�L�ʼ����ˡF�u�ʯߩΨ�L���R�W�ʯ߻��L������');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.���ְ�:');
  Memo1.Lines.Add('�Ӥ��ޮ���');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.���g:');
  Memo1.Lines.Add('�����g�B�������g�B�����g�B�د��g���˩λ��L������');
  //Memo1.Lines.Add('6.��L:');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.���`:');
  Memo2.Lines.Add('����ˡFA-C joint�B�ӡB�y�B�áB��B�ԡB���B����F�U�Ϧ٦שΦٸx�����ˡF�W�Ϧ٦׼�����');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.����:');
  Memo2.Lines.Add('�갩�B�ӭK���B�а�*�B����*�B�ذ�*�B�̰��B�ð��B�x���B�H��*�B�򰩡B ����(tarsal bone)�B����(metatarsal bone)�B�԰�����');
  Memo2.Lines.Add('����θ}�k�I�_');
  Memo2.Lines.Add('3.���:');
  Memo2.Lines.Add('���R�ߡB�u�R�ߡB���R�ߡB�A���R�ߤ������}�λ��L�����ˡF�u�ʯ��Y��������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.���ְ�:');
  Memo2.Lines.Add('²��ʰ��ְ���');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.���g:');
  Memo2.Lines.Add('�������g�B�����g�B�د��g�B�ѯ��g�B�H���g�B�̰����g������');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.��L:');
  Memo2.Lines.Add('�īǯg�Ըs(compartment syndrome)');
  Memo2.Lines.Add('���H�U����ˡF�W�u�B�e�u�B����B�j�L�B�p�L�θ}�k degloving injury');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.���`:');
  Memo3.Lines.Add('�����˦X�֥����W�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.����:');
  Memo3.Lines.Add('�Ѱ�����');
  Memo3.Lines.Add('���H�U�ΤW�ϳж˩ʺI�ϡF�����W�L20%��G�y��');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.���:');
  Memo3.Lines.Add('�Ѱʯߤ������}�λ��L�����ˡF��/�u/�A��/��L���R�W�ʩ��R�ߩΪ��R���Y��������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.���ְ�:');
  Memo3.Lines.Add('���H�ʰ��ְ���');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.���g:');
  Memo3.Lines.Add('�������g������');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.��L:');
  Memo3.Lines.Add('���H�W����ˡF��B��x�B���B��B���Ψ��� degloving injury');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.���`:');
  Memo4.Lines.Add('�}��ʮ�� (�ݳ����}��ʧl�m�ʶˤf)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.����');
  Memo4.Lines.Add('���H�W�ж˩ʺI��');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.���:');
  Memo4.Lines.Add('�Ѱʯ��Y��������');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.���ְ�:');
  Memo4.Lines.Add('�Y�������(crush)���ְ���X�֦�G�y��������<20%');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.���g:');
  Memo4.Lines.Add('�D�ʯ߻��L������/�������}/���F�갩�U�B�L�W�ΪͰ�/�R�ߡA�W�U���R���Y��������');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.��L:');


  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.���`:');
  Memo5.Lines.Add('�i�O�ʮ��');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.����:');
  Memo5.Lines.Add('�ⰼ�ذ�����>4�ڦX�֦���');
  Memo5.Lines.Add('�ⰼ�s�E�ݩ�<15���X�ֳs�E��');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('3.���:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('4.���ְ�:');
  Memo5.Lines.Add('�Y�������(crush)���ְ���X�֦�G�y��������>20%');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.���g:');
  Memo5.Lines.Add('�D�ʯ��Y��������');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('6.��L:');

  Memo6.Lines.Clear;
  Label1.Caption := '��:�� * �O��������A�Y���}��ʡB����ʩί��H�ʡAAIS�[1���C';
end;

procedure TFrmISS.BitBtn6Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn6);
  Choose := 6;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.�N�S��:');
  Memo1.Lines.Add('1�ר`�� <100%BSA�F2�ר`�� <10%BSA');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.���:');
  Memo1.Lines.Add('36~34�J');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.�N�S��:');
  Memo2.Lines.Add('2�ר`�� 10-19%BSA�F3�ר`�� <10%BSA');
  Memo2.Lines.Add('����S�q��,�L�٦��a��');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.���:');
  Memo2.Lines.Add('33~32�J');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.�N�S��:');
  Memo3.Lines.Add('�����W�L20%��G�y���F2�ש� 3�ר`�� 20-29%BSA@');
  Memo3.Lines.Add('����S�q��+�٦��a��');
  Memo3.Lines.Add('���קl�J�ʨ`��(<20% carboxyhemoglobulin)');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.���:');
  Memo3.Lines.Add('31~30�J');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.�N�S��:');
  Memo4.Lines.Add('2�ש� 3�ר`�� 30-39%BSA@');
  Memo4.Lines.Add('���קl�J�ʨ`��(20~40% carboxyhemoglobulin)');
  Memo4.Lines.Add('2.���:');
  Memo4.Lines.Add('28~29�J');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.�N�S��:');
  Memo5.Lines.Add('2�ש� 3�ר`�� 40-89%BSA@');
  Memo5.Lines.Add('���קl�J�ʨ`��(>40% carboxyhemoglobulin)');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.���:');
  Memo5.Lines.Add('��27�J');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('2�ש� 3�ר`�˭��n>90%BSA�F����S�q���X�֤�Ŧ����');
  Label1.Caption := '���G�� @ �O�����`�ˡA�Y�~��<5���A�Υ]�t�y�B��B�ʹ޾��AAIS�[1���C';
end;

procedure TFrmISS.Button3Click(Sender: TObject);
var
  i,j,num: integer;
  flag : Boolean;
begin
  inherited;
  flag :=  false;
  case Choose of
    1: MEdtHead.Text := TButton(Sender).Hint;
    2: MEdtFace.Text := TButton(Sender).Hint;
    3: MEdtThorax.Text := TButton(Sender).Hint;
    4: MEdtAbdomen.Text := TButton(Sender).Hint;
    5: MEdtExtremity.Text := TButton(Sender).Hint;
    6: MEdtExtrnal.Text := TButton(Sender).Hint;
  end;
  num := 0;
  firstcount.Clear;
  firstcount.Add('0');
  firstcount.Add('0');
  firstcount.Add('0');
  for i := 0 to 5 do
  begin
     case i of
        0: num := StrToInt(NullStrTo(trim(MEdtHead.Text),'0'));
        1: num := StrToInt(NullStrTo(trim(MEdtFace.Text),'0'));
        2: num := StrToInt(NullStrTo(trim(MEdtThorax.Text),'0'));
        3: num := StrToInt(NullStrTo(trim(MEdtAbdomen.Text),'0'));
        4: num := StrToInt(NullStrTo(trim(MEdtExtremity.Text),'0'));
        5: num := StrToInt(NullStrTo(trim(MEdtExtrnal.Text),'0'));
     end;
     if num > 5 then
       flag := True;
     for j := 0 to 2 do
     begin
       if StrToInt(NullStrTo(trim(firstcount.Strings[j]),'0')) <= num then
       begin
         firstcount.Insert(j,IntToStr(num));
         Break;
       end;
     end;
  end;

  if flag then
  begin
    EditIss.Text := '75';
  end
  else
  begin
    num := 0;
    num := (StrToInt(NullStrTo(trim(firstcount.Strings[0]),'0'))*StrToInt(NullStrTo(trim(firstcount.Strings[0]),'0')))+
           (StrToInt(NullStrTo(trim(firstcount.Strings[1]),'0'))*StrToInt(NullStrTo(trim(firstcount.Strings[1]),'0')))+
           (StrToInt(NullStrTo(trim(firstcount.Strings[2]),'0'))*StrToInt(NullStrTo(trim(firstcount.Strings[2]),'0')));
    if num >= 75 then
      EditIss.Text := '75'
    else
      EditIss.Text := IntToStr(num);
  end;
end;

procedure TFrmISS.clearstatus(Sender: TObject);
begin
  BitBtn1.Font.Color := clWindowText;
  BitBtn2.Font.Color := clWindowText;
  BitBtn3.Font.Color := clWindowText;
  BitBtn4.Font.Color := clWindowText;
  BitBtn5.Font.Color := clWindowText;
  BitBtn6.Font.Color := clWindowText;
  if Sender is TBitBtn then
    TBitBtn(Sender).Font.Color := clRed;
end;

end.
