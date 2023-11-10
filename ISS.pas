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
      //舊資料做dc註記
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
  Memo1.Lines.Add('1.軟組織:');
  Memo1.Lines.Add('頭皮撕裂傷<10cm或<100平方公分');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.頭骨:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.頸椎:');
  Memo1.Lines.Add('頸椎損傷但無骨折或脫位');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.腦部:');
  Memo1.Lines.Add('創傷導致頭痛或二度眩暈但無意識喪');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.血管:');
  Memo1.Lines.Add('輕度之外頸靜脈撕裂傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.其他:');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.軟組織:');
  Memo2.Lines.Add('頭皮撕裂傷>10cm或 >100平方公分');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.頭骨:');
  Memo2.Lines.Add('單純頭蓋骨骨折');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.頸椎:');
  Memo2.Lines.Add('頸椎spinous/Transverse process 脫位或骨折'+#10);
  Memo2.Lines.Add('輕度頸椎壓迫性骨折<20%');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.腦部:');
  Memo2.Lines.Add('創傷導致健忘、嗜睡、僵鈍但對聲音有反應；無意識情況<1小時');
  Memo2.Lines.Add('腦神經根損傷');
  Memo2.Lines.Add('臂神經叢損傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.血管:');
  Memo2.Lines.Add('外頸動脈、脊椎動脈#輕微撕裂傷/內膜撕裂/栓塞；內頸靜脈輕微撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.其他:');
  Memo2.Lines.Add('甲狀腺挫傷;喉管輕微撕裂傷/挫傷');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.軟組織:');
  Memo3.Lines.Add('頭皮撕裂傷及超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.頭骨:');
  Memo3.Lines.Add('頭顱穿刺傷<2cm深; 顱骨基底骨折；粉碎複雜性或凹陷性顱骨骨折');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.頸椎:');
  Memo3.Lines.Add('頸椎壓迫性骨折>20%；柱挫傷'+#10);
  Memo3.Lines.Add('頸椎 lamina body/pedicle/ facet脫位或骨折');
  Memo3.Lines.Add('頸脊脊髓壓迫');
  Memo3.Lines.Add('椎間盤突出合併神經症狀');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.腦部:');
  Memo3.Lines.Add('無意識 1- 6小時；無意識情況<1小時並伴隨神經學缺陷');
  Memo3.Lines.Add('氣腦');
  Memo3.Lines.Add('大腦挫傷<30cc，直徑<4cm，或中線偏移<5mm');
  Memo3.Lines.Add('小腦挫傷<15cc 直徑<3cm');
  Memo3.Lines.Add('蜘蛛網膜下出血');
  Memo3.Lines.Add('輕度腦水腫');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.血管:');
  Memo3.Lines.Add('總頸動脈#、內頸動脈#輕微撕裂傷/內膜裂開/栓塞；外頸動脈、脊椎動脈#、頸靜脈嚴重撕裂傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.其他:');
  Memo3.Lines.Add('甲狀腺撕裂傷；咽部挫傷/輕微撕裂傷；喉管破裂');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.軟組織、頭骨:');
  Memo4.Lines.Add('凹陷性顱骨骨折>2cm');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.頸椎:');
  Memo4.Lines.Add('頸脊髓不完全神經損傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.腦部:');
  Memo4.Lines.Add('無意識情況1-6小時並伴隨神經學缺；無意識情況6-24小時；只對疼痛刺激有反應');
  Memo4.Lines.Add('硬腦膜撕裂或部分腦組織喪失');
  Memo4.Lines.Add('硬腦膜破損或腦組織缺損');
  Memo4.Lines.Add('硬腦膜上或下出血<50cc<1cm厚');
  Memo4.Lines.Add('大腦挫傷達30-50cc或中線偏移>5mm');
  Memo4.Lines.Add('小腦挫傷達15-30cc');
  Memo4.Lines.Add('腦內出血<30cc');
  Memo4.Lines.Add('腦室內出血；中度腦水腫(腦室壓迫)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.血管:');
  Memo4.Lines.Add('總頸動脈#、內頸動脈#嚴重撕裂傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.其他:');
  Memo4.Lines.Add('咽破裂');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.軟組織、頭骨:');
  Memo5.Lines.Add('頭顱穿刺傷>2cm深');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.頸椎:');
  Memo5.Lines.Add('頸脊柱撕裂傷');
  Memo5.Lines.Add('C4或其下的頸脊髓完全損傷');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('3.腦部:');
  Memo5.Lines.Add('無意識情況>24小時');
  Memo5.Lines.Add('大腦挫傷挫傷>50cc');
  Memo5.Lines.Add('小腦挫傷>30cc');
  Memo5.Lines.Add('硬腦膜上或下出血>50cc');
  Memo5.Lines.Add('腦內出血>30cc');
  Memo5.Lines.Add('嚴重腦水腫(腦室被壓迫而看不見)');
  Memo5.Lines.Add('廣泛性軸索損傷Diffuse axonal injury');
  Memo5.Lines.Add('腦幹損傷');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('4.血管:');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.其他:');
  Memo5.Lines.Add('嚴重咽喉破損');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('顱骨及而膩組織嚴重破壞；膩幹嚴重損傷；斷頭；C3或其上的頸脊髓損傷');
  Label1.Caption := '註：頭頸部有 # 記號之損傷，若同時伴隨非頭部外傷導致之神經缺損，AIS加1分。';
end;

procedure TFrmISS.BitBtn3Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn3);
  Choose := 2;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.軟組織:');
  Memo1.Lines.Add('撕裂傷<10cm或<25平方公分');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.臉骨:');
  Memo1.Lines.Add('鼻骨、下頷骨*骨折');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.其他部位:');
  Memo1.Lines.Add('眼睛、耳朵、表淺舌撕裂傷；牙齒斷裂或脫位');


  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.軟組織:');
  Memo2.Lines.Add('撕裂傷>10cm或>25平方公分');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.臉骨:');
  Memo2.Lines.Add('顴骨、眼窩骨*骨折；LeFort I、II 骨折');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.其他部位:');
  Memo2.Lines.Add('舌深部撕裂傷；眼球破裂；視網膜剝離');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.軟組織:');
  Memo3.Lines.Add('撕裂傷合併全身超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.臉骨:');
  Memo3.Lines.Add('LeFort III 骨折');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.其他部位:');
  Memo3.Lines.Add('視神經撕裂');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.軟組織:');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.臉骨:');
  Memo4.Lines.Add('LeFort III 骨折合併全身超過20%血液流失');

  Memo5.Lines.Clear;

  Memo6.Lines.Clear;

  Label1.Caption := '註:有 * 記號之骨折，若為開放性、移位性或粉碎性，AIS加1分。';
end;

procedure TFrmISS.BitBtn5Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn5);
  Choose := 3;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.軟組織:');
  Memo1.Lines.Add('胸脊椎肌肉拉傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.肋骨/胸骨:');
  Memo1.Lines.Add('胸壁、胸骨挫傷');
  Memo1.Lines.Add('一根肋骨骨折');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.胸椎:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.心、肺臟、食道:');
  Memo1.Lines.Add('細支氣管挫傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.血管:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.其他部位:');
  Memo1.Lines.Add('迷走神經損傷');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.軟組織:');
  Memo2.Lines.Add('胸骨骨折');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.肋骨/胸骨:');
  Memo2.Lines.Add('胸骨骨折、二至三根肋骨骨折');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.胸椎:');
  Memo2.Lines.Add('胸椎 spinous/transverse process 脫位或骨折');
  Memo2.Lines.Add('輕度胸椎壓迫性骨折<20%');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.心、肺臟、食道:');
  Memo2.Lines.Add('食道、支氣管挫傷');
  Memo2.Lines.Add('肋膜、心包膜或胸導管(thoracic duct)撕裂傷');
  Memo2.Lines.Add('橫膈挫傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.血管:');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.其他部位:');
  Memo2.Lines.Add('橫隔神經損傷');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.軟組織:');
  Memo3.Lines.Add('撕裂傷合併全身超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.肋骨/胸骨:');
  Memo3.Lines.Add('氣胸');
  Memo3.Lines.Add('血胸');
  Memo3.Lines.Add('氣縱隔腔');
  Memo3.Lines.Add('一側肋骨骨折>4根');
  Memo3.Lines.Add('單側肺挫傷或撕裂傷$');
  Memo3.Lines.Add('連枷胸無合併肺挫傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.胸椎:');
  Memo3.Lines.Add('胸椎壓迫性骨折(>20%)');
  Memo3.Lines.Add('胸椎 lamina body/pedicle/facet脫位或骨折');
  Memo3.Lines.Add('胸脊髓挫傷伴隨短暫神經失能');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.心、肺臟、食道:');
  Memo3.Lines.Add('氣管、主支氣管或食道撕裂傷；支氣管破裂或斷裂');
  Memo3.Lines.Add('單側肺挫傷或撕裂傷$');
  Memo3.Lines.Add('心包膜填塞');
  Memo3.Lines.Add('心臟輕微挫傷或撕裂傷');
  Memo3.Lines.Add('橫隔膜撕裂或穿孔');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.血管:');
  Memo3.Lines.Add('鎖骨下、無名及肺動/靜脈，上下腔靜脈輕微撕裂傷/內膜裂開/栓塞');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.其他部位:');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.軟組織:');
  Memo4.Lines.Add('開放性氣胸 (胸部有開放性吸吮性傷口)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.肋骨/胸骨');
  Memo4.Lines.Add('雙側血氣胸');
  Memo4.Lines.Add('血縱隔腔');
  Memo4.Lines.Add('一側肋骨骨折>4根合併血氣胸');
  Memo4.Lines.Add('兩側肋骨骨折皆>4根');
  Memo4.Lines.Add('連枷胸合併肺挫傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.胸椎:');
  Memo4.Lines.Add('胸脊脊髓未完全損傷症候群');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.心、肺臟、食道:');
  Memo4.Lines.Add('氣管、主支氣管或食道破裂；支氣管全斷裂');
  Memo4.Lines.Add('兩側肺挫傷或撕裂傷$');
  Memo4.Lines.Add('嚴重心肌挫傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.血管:');
  Memo4.Lines.Add('主動脈輕微撕裂傷/內膜裂開/栓塞；鎖骨下、無名或肺動/靜脈，上下腔靜脈嚴重撕裂傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.其他部位:');


  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.軟組織:');
  Memo5.Lines.Add('張力性氣胸');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.肋骨/胸骨:');
  Memo5.Lines.Add('兩側肋骨骨折>4根合併血氣胸');
  Memo5.Lines.Add('兩側連枷胸或<15歲合併連枷胸');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('3.胸椎:');
  Memo5.Lines.Add('胸脊髓撕裂傷或完全損傷症候群');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('4.心、肺臟、食道:');
  Memo5.Lines.Add('氣管、主支氣管或食道全斷裂');
  Memo5.Lines.Add('心包膜損傷合併心臟脫疝(herniation)');
  Memo5.Lines.Add('心臟破裂');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.血管:');
  Memo5.Lines.Add('主動脈嚴重撕裂傷');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('6.其他:');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('複雜性心肌撕裂傷；胸部嚴重壓軋傷(crush injury)');
  Label1.Caption := '註：有 $ 記號之損傷，若合併出血超過全身20%血量、嚴重漏氣或系統性空氣栓塞，AIS加1分';
end;

procedure TFrmISS.BitBtn2Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn2);
  Choose := 4;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.軟組織:');
  Memo1.Lines.Add('撕裂傷<20cm或<100平方公分');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.血管:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.脊椎:');
  Memo1.Lines.Add('腰脊椎肌肉拉傷');
  Memo1.Lines.Add('4.脾臟:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.肝臟');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('6.膽囊:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('7.胰臟:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('8.腎臟:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('10.膀胱:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('11.尿道、輸尿管:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('12.腸胃道:');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('13.腎上腺:');
  Memo1.Lines.Add('表淺撕裂傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('14.生殖器官:');
  Memo1.Lines.Add('陰囊、陰莖、睪丸、陰道、女陰、卵巢、會陰表淺撕裂傷或挫傷');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.軟組織:');
  Memo2.Lines.Add('撕裂傷>20cm或>100平方公分');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.血管:');
  Memo2.Lines.Add('內、外髂骨靜脈輕微撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('3.脊椎:');
  Memo2.Lines.Add('輕微腰椎壓迫性骨折(<20%)');
  Memo2.Lines.Add('腰椎之spinous/transverse process 脫位或骨折');
  Memo2.Lines.Add('腰神經根損傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.脾臟:');
  Memo2.Lines.Add('輕微挫傷或撕裂傷；血腫<50%；實質裂傷<2公分');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.肝臟');
  Memo2.Lines.Add('輕微挫傷或撕裂傷；血腫<50%;實質裂傷<2公分；OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.膽囊:');
  Memo2.Lines.Add('膽囊輕微挫傷或撕裂傷；肝外膽管OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('7.胰臟:');
  Memo2.Lines.Add('輕微挫傷或撕裂傷；OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('8.腎臟:');
  Memo2.Lines.Add('輕微挫傷或撕裂傷；表淺裂傷<1公分OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('10.膀胱:');
  Memo2.Lines.Add('膀胱挫傷或表淺撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('11.尿道、輸尿管:');
  Memo2.Lines.Add('尿道、輸尿管挫傷或表淺撕裂傷；OIS1,2');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('12.腸胃道:');
  Memo2.Lines.Add('胃、十二指腸、腸繫膜、、大腸、結腸輕微挫傷或撕裂傷、肛門表淺撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('13.腎上腺:');
  Memo2.Lines.Add('嚴重撕裂傷、合併大量組織缺損');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('14.生殖器官:');
  Memo2.Lines.Add('陰囊、陰莖、睪丸、陰道、女陰、卵巢、會陰嚴重裂傷');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.軟組織:');
  Memo3.Lines.Add('撕裂傷全身超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.血管:');
  Memo3.Lines.Add('總髂骨或其他有命名之動、靜脈輕微撕裂傷；腹腔動脈(celiac aretry)內膜裂開；內、外髂骨靜脈嚴重撕裂傷；後腹膜腔血腫');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.脊椎:');
  Memo3.Lines.Add('腰椎壓迫性骨折(>20%)');
  Memo3.Lines.Add('腰椎 lamina body/pedicle/ facet脫位或骨折');
  Memo3.Lines.Add('腰脊髓挫傷伴隨短暫或不完全神經失能');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.脾臟:');
  Memo3.Lines.Add('中度挫傷或撕裂傷；血腫≧50%；實質裂傷≧2公分；出血量>1000cc；OIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.肝臟');
  Memo3.Lines.Add('輕微挫傷或撕裂傷；血腫≧50%;實質裂傷≧2公分；出血量>1000cc；OIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.膽囊:');
  Memo3.Lines.Add('肝外膽管OIS3,4');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('7.胰臟:');
  Memo3.Lines.Add('重度挫傷或撕裂傷(包含胰管)；OIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('8.腎臟:');
  Memo3.Lines.Add('重度挫傷或撕裂傷血腫>50%;實質裂傷>1公分；OIS3');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('10.膀胱:');
  Memo3.Lines.Add('膀胱部分撕裂傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('11.尿道、輸尿管:');
  Memo3.Lines.Add('尿道斷裂及組織缺損(OIS4)、輸尿管斷裂；OIS3,4,5');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('12.腸胃道:');
  Memo3.Lines.Add('胃、十二指腸、腸繫膜、大腸、結腸破裂(OIS1,2)、肛門嚴重撕裂傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('13.腎上腺:');
  Memo3.Lines.Add('嚴重撕裂傷、合併大量組織缺損、出血量>1000cc');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('14.生殖器官:');
  Memo3.Lines.Add('會陰嚴重複雜性撕裂傷');

  Memo4.Lines.Clear;
  //Memo4.Lines.Add('1.軟組織:');
  //Memo4.Lines.Add('');
  Memo4.Lines.Add('2.血管:');
  Memo4.Lines.Add('腹主動脈內膜裂開或輕微撕裂傷；腹腔動脈(celiac artery)輕微撕裂傷；總髂骨或其他有命名之動、靜脈嚴重撕裂傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.脊椎:');
  Memo4.Lines.Add('腰脊髓挫傷伴隨完全神經失能');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.脾臟:');
  Memo4.Lines.Add('重度分葉碎裂；OIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.肝臟');
  Memo4.Lines.Add('嚴重裂傷(<50%實質部)；多處裂傷>3公分；OIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.膽囊:');
  Memo4.Lines.Add('總膽管或肝管斷裂；肝外膽管OIS5');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('7.胰臟:');
  Memo4.Lines.Add('多處挫傷或撕裂傷(包含胰臟頭)；OIS4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('8.腎臟:');
  Memo4.Lines.Add('重度挫傷或撕裂傷、涉及主要血管及集尿系統；OIS=4');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('10.膀胱:');
  Memo4.Lines.Add('膀胱全層破裂；OIS2,3,4,5');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('11.尿道、輸尿管:');
  Memo4.Lines.Add('球狀體、括約肌部尿道斷裂及組織缺損(OIS5)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('12.腸胃道:');
  Memo4.Lines.Add('胃、十二指腸、腸繫膜、大腸、小腸橫截斷裂、肛門複雜撕裂傷、大量組織缺損 (OIS3,4,5)');
  Memo4.Lines.Add('');
  //Memo4.Lines.Add('13.腎上腺:');
  //Memo4.Lines.Add('');
  Memo4.Lines.Add('14.生殖器官:');
  Memo4.Lines.Add('胎盤剝離');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('軟組織:');
  Memo5.Lines.Add('張力性氣胸');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.血管:');
  Memo5.Lines.Add('腹主動脈、腹腔動脈(celiac artery)嚴重撕裂傷');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('3.脊椎:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('4.脾臟:');
  Memo5.Lines.Add('嚴重粉碎性碎裂；脾臟動靜脈斷裂；OIS5');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.肝臟');
  Memo5.Lines.Add('複雜性破裂(>50%實質部)；涉及門脈血管區、肝後下腔靜脈區；OIS5');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('6.膽囊:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('7.胰臟:');
  Memo5.Lines.Add('複雜性破裂、大量組織缺損；OIS5');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('8.腎臟:');
  Memo5.Lines.Add('複雜性破裂、腎門區血管斷裂');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('10.膀胱:');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('11.尿道、輸尿管:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('12.腸胃道:');
  Memo5.Lines.Add('十二指腸(伴隨胰臟頭、胰管、乳凸部、OIS4,5)、直腸嚴重撕裂傷伴隨組織喪失或明顯污染');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('13.腎上腺:');
  //Memo5.Lines.Add('');
  //Memo5.Lines.Add('14.生殖器官:');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('肝臟由血管接合處完全斷裂分離');
  Label1.Caption := '';
end;

procedure TFrmISS.BitBtn4Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn4);
  Choose := 5;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.關節:');
  Memo1.Lines.Add('肩、肘、腕、膝、踝挫傷；A-C joint、肩、肘、腕、手指、髖、踝、腳趾扭傷；上肢肌腱損傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.骨折:');
  Memo1.Lines.Add('指骨、趾骨骨折或脫位');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('3.血管:');
  Memo1.Lines.Add('臂靜脈表淺性撕裂傷；臂動脈或其他有命名動脈輕微撕裂傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('4.骨盆骨:');
  Memo1.Lines.Add('細支氣管挫傷');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('5.神經:');
  Memo1.Lines.Add('指神經、正中神經、橈神經、尺神經挫傷或輕微撕裂傷');
  //Memo1.Lines.Add('6.其他:');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.關節:');
  Memo2.Lines.Add('膝扭傷；A-C joint、肩、肘、腕、手、髕、膝、踝脫位；下肢肌肉或肌腱撕裂傷；上肢肌肉撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.骨折:');
  Memo2.Lines.Add('鎖骨、肩胛骨、肱骨*、橈骨*、尺骨*、腓骨、腕骨、掌骨、脛骨*、跟骨、 跗骨(tarsal bone)、蹠骨(metatarsal bone)、髕骨骨折');
  Memo2.Lines.Add('手指或腳趾截斷');
  Memo2.Lines.Add('3.血管:');
  Memo2.Lines.Add('腋靜脈、臂靜脈、股靜脈、膕窩靜脈內膜裂開或輕微撕裂傷；臂動脈嚴重撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('4.骨盆骨:');
  Memo2.Lines.Add('簡單性骨盆骨折');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('5.神經:');
  Memo2.Lines.Add('正中神經、橈神經、尺神經、股神經、脛神經、腓骨神經撕裂傷');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('6.其他:');
  Memo2.Lines.Add('腔室症候群(compartment syndrome)');
  Memo2.Lines.Add('膝以下壓軋傷；上臂、前臂、手指、大腿、小腿或腳趾 degloving injury');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.關節:');
  Memo3.Lines.Add('撕裂傷合併全身超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.骨折:');
  Memo3.Lines.Add('股骨骨折');
  Memo3.Lines.Add('膝以下或上肢創傷性截肢；全身超過20%血液流失');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('3.血管:');
  Memo3.Lines.Add('股動脈內膜裂開或輕微撕裂傷；腋/臂/膕窩/其他有命名動或靜脈或股靜脈嚴重撕裂傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('4.骨盆骨:');
  Memo3.Lines.Add('粉碎性骨盆骨折');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('5.神經:');
  Memo3.Lines.Add('坐骨神經撕裂傷');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('6.其他:');
  Memo3.Lines.Add('膝以上壓軋傷；手、手掌、膝、踝、足或足底 degloving injury');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.關節:');
  Memo4.Lines.Add('開放性氣胸 (胸部有開放性吸吮性傷口)');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('2.骨折');
  Memo4.Lines.Add('膝以上創傷性截肢');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('3.血管:');
  Memo4.Lines.Add('股動脈嚴重撕裂傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('4.骨盆骨:');
  Memo4.Lines.Add('嚴重壓軋性(crush)骨盆骨折合併血液流失佔全身<20%');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('5.神經:');
  Memo4.Lines.Add('主動脈輕微撕裂傷/內膜裂開/栓塞；鎖骨下、無名或肺動/靜脈，上下腔靜脈嚴重撕裂傷');
  Memo4.Lines.Add('');
  Memo4.Lines.Add('6.其他:');


  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.關節:');
  Memo5.Lines.Add('張力性氣胸');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.骨折:');
  Memo5.Lines.Add('兩側肋骨骨折>4根合併血氣胸');
  Memo5.Lines.Add('兩側連枷胸或<15歲合併連枷胸');
  Memo5.Lines.Add('');
  //Memo5.Lines.Add('3.血管:');
  //Memo5.Lines.Add('');
  Memo5.Lines.Add('4.骨盆骨:');
  Memo5.Lines.Add('嚴重壓軋性(crush)骨盆骨折合併血液流失佔全身>20%');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('5.神經:');
  Memo5.Lines.Add('主動脈嚴重撕裂傷');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('6.其他:');

  Memo6.Lines.Clear;
  Label1.Caption := '註:有 * 記號之骨折，若為開放性、移位性或粉碎性，AIS加1分。';
end;

procedure TFrmISS.BitBtn6Click(Sender: TObject);
begin
  inherited;
  clearstatus(BitBtn6);
  Choose := 6;
  Label3.Caption := TBitBtn(Sender).Caption;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('1.燒燙傷:');
  Memo1.Lines.Add('1度灼傷 <100%BSA；2度灼傷 <10%BSA');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('2.體溫:');
  Memo1.Lines.Add('36~34℃');

  Memo2.Lines.Clear;
  Memo2.Lines.Add('1.燒燙傷:');
  Memo2.Lines.Add('2度灼傷 10-19%BSA；3度灼傷 <10%BSA');
  Memo2.Lines.Add('高伏特電擊,無肌肉壞死');
  Memo2.Lines.Add('');
  Memo2.Lines.Add('2.體溫:');
  Memo2.Lines.Add('33~32℃');

  Memo3.Lines.Clear;
  Memo3.Lines.Add('1.燒燙傷:');
  Memo3.Lines.Add('全身超過20%血液流失；2度或 3度灼傷 20-29%BSA@');
  Memo3.Lines.Add('高伏特電擊+肌肉壞死');
  Memo3.Lines.Add('輕度吸入性灼傷(<20% carboxyhemoglobulin)');
  Memo3.Lines.Add('');
  Memo3.Lines.Add('2.體溫:');
  Memo3.Lines.Add('31~30℃');

  Memo4.Lines.Clear;
  Memo4.Lines.Add('1.燒燙傷:');
  Memo4.Lines.Add('2度或 3度灼傷 30-39%BSA@');
  Memo4.Lines.Add('中度吸入性灼傷(20~40% carboxyhemoglobulin)');
  Memo4.Lines.Add('2.體溫:');
  Memo4.Lines.Add('28~29℃');

  Memo5.Lines.Clear;
  Memo5.Lines.Add('1.燒燙傷:');
  Memo5.Lines.Add('2度或 3度灼傷 40-89%BSA@');
  Memo5.Lines.Add('重度吸入性灼傷(>40% carboxyhemoglobulin)');
  Memo5.Lines.Add('');
  Memo5.Lines.Add('2.體溫:');
  Memo5.Lines.Add('≦27℃');

  Memo6.Lines.Clear;
  Memo6.Lines.Add('2度或 3度灼傷面積>90%BSA；高伏特電擊合併心臟停止');
  Label1.Caption := '註：有 @ 記號之灼傷，若年齡<5歲，或包含臉、手、生殖器，AIS加1分。';
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
