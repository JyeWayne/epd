unit ICFunction;

interface

uses Classes, Dialogs, ADODB, SysUtils;

type
  pat = record
    card_no: array[0..11] of Byte;
    pat_name: array[12..31] of Byte;
    id_no: array[32..41] of Byte;
    bitrh_date: array[42..48] of Byte;
    sex: array[49..49] of Byte;
    get_date: array[50..56] of Byte;
    card_flag: array[57..57] of Byte;
    pat_code: array[58..59] of Byte;
    pat_mark: array[60..60] of Byte;
    end_date: array[61..67] of Byte;
    use_count: array[68..69] of Byte;
    new_born_birth: array[70..76] of Byte;
    new_born_flag: array[77..77] of Byte;
  end;

  //���j�˯f��
  ILL = record
    ILL_Code1: array[0..4] of Byte;
    ILL_SDATE1: array[5..11] of Byte;
    ILL_EDATE1: array[12..18] of Byte;
    ILL_Code2: array[19..23] of Byte;
    ILL_SDATE2: array[24..30] of Byte;
    ILL_EDATE2: array[31..37] of Byte;
    ILL_Code3: array[38..42] of Byte;
    ILL_SDATE3: array[43..49] of Byte;
    ILL_EDATE3: array[50..56] of Byte;
    ILL_Code4: array[57..61] of Byte;
    ILL_SDATE4: array[62..68] of Byte;
    ILL_EDATE4: array[69..75] of Byte;
    ILL_Code5: array[76..80] of Byte;
    ILL_SDATE5: array[81..87] of Byte;
    ILL_EDATE5: array[88..94] of Byte;
    ILL_Code6: array[95..99] of Byte;
    ILL_SDATE6: array[100..106] of Byte;
    ILL_EDATE6: array[107..113] of Byte;
  end;

  //�E�������[���j�˯f
  cure = record
    all_record: array [0..371] of Byte;
  end;

  //���j�˯f�P�N����
  treat = record
    all_treat_record: array [0..497] of Byte;
  end;

  //�s��
  ic_seq = record
    opd_date: array [0..12] of Byte;      //�ݶE���
    seq: array [13..16] of Byte;          //�N��Ǹ�
    hosp_code: array [17..26] of Byte;    //��|�N�X
    safe_sign: array [27..282] of Byte;   //�w��ñ��
    sam_id: array [283..294] of Byte;     //SAM ID
    re_reg: array [295..295] of Byte;     //�O�_�P��ݶE 'Y'��P��N�E�A'N'��D�P��N�E
  end;
//���E�B����
  OP = record
    OPD_Date: array [0..12] of Byte;
    Order_Kind: Byte;
    Treate_No: array [14..25] of Byte;
    Treate_Part: array [26..31] of Byte;
    method: array [32..49] of Byte;
    Days: array [50..51] of Byte;
    Total: array [52..58] of Byte;
    P_Note: array [59..60] of Byte;
  end;
  //�����B����
  LP = record
    OPD_Date: array [0..6] of Byte;
    Med_code: array [7..16] of Byte;
    Method: array [17..34] of Byte;
    Days: array [35..36] of Byte;
    TTL: array [37..43] of Byte;
  end;
  //���j��O�B����
  IT = record
    Exec_Date: array [0..6] of Byte;
    H_code: array [7..16] of Byte;
    Order_Code: array [17..22] of Byte;
    Exec_Part_Code: array[23..28] of Byte;
    TTL: array [29..35] of Byte;
  end;
  //�L��
  PD = record
    Med_name1: array[0..39] of Byte;
    Med_name2: array[40..79] of Byte;
    Med_name3: array[80..119] of Byte;
  end;

  //����
  ppreg = record
    opd_date: array[0..6] of Byte;
    hsop_code: array[7..16] of Byte;
    preg_code: array[17..18] of Byte;
  end;
  //�w���O��
  prev = record
    prev_mark: array[0..1] of Byte;
    opd_date: array[2..8] of Byte;
    hsop_code: array[9..18] of Byte;
    prev_code: array[19..20] of Byte;
  end;

  //�w������
  Inoculate = record
    Inoculate_kind: array[0..5] of Byte;
    Inoculate_date: array[6..12] of Byte;
    Inoculate_hsop: array[13..22] of Byte;
    Inoculate_no: array[23..34] of Byte;
  end;
  //���x����
  Donate = record
    Donate_flag: array[0..0] of Byte;
  end;
  icdate = record
    y: array [0..2] of Byte;
    m: array [3..4] of Byte;
    d: array [5..6] of Byte;
    h: array [7..8] of Byte;
    mi: array [9..10] of Byte;
    s: array [11..12] of Byte;
  end;

type
  ic_start = class(TThread)
  protected
    procedure Execute; override;
  end;

type
  ic_HPCstart = class(TThread)
  protected
    procedure Execute; override;
  end;

type
  ic_basic = class(TThread)
  protected
    procedure Execute; override;
  end;

type
  ic_data = class(TThread)
  protected
    procedure Execute; override;
  end;

  { 1.1 Ū�����ݭӤHPIN�X���}
function hisGetBasicData(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.2 �����γ����Ū���򥻸�� }
function hisGetRegisterBasic(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.3 �w���O�������@�~ }
function hisGetRegisterPrevent(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.4 �������e�ˬd�����@�~ }
function hisGetRegisterPregnant(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.5 Ū���N���Ƥ���HPC�d������ }
function hisGetTreatmentNoNeedHPC(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.6 Ū���N��֭p��� }
function hisGetCumulativeData(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.7 Ū�������O�νu�֭p }
function hisGetCumulativeFee(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.8 Ū���N���ƻ�HPC�d������ }
function hisGetTreatmentNeedHPC(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.9 ���o�N��Ǹ�}
function hisGetSeqNumber(CTreatItem: PChar; CBabyTreat: PChar; Buffer: Pbyte; BufLen: PInteger): Integer; stdcall;
  { 1.10 Ū���B���@�~ }
function hisReadPrescription(OutPatientPrescription: PByte; BufLenOutPatient: PInteger; LongTermPrescriptions: PByte; BufLenLongTerm: PInteger; ImportantTreatmentCode: PByte; BufLenImportant: PInteger; IrritationDrug: PByte; BufLenIrritation: PInteger): Integer; stdcall;
  { 1.11 Ū���w�����ظ�� }
function hisGetInoculateData(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.12 Ū�����x���ظ�� }
function hisGetOrganDonate(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.13  Ū������p���q�ܸ�� }
function hisGetEmergentTel(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.14  Ū���̪�@���N��Ǹ� }
function hisGetLastSeqNum(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 1.15  Ū���d�����A }
function hisGetCardStatus(CardType: Integer): Integer; stdcall;
  { 1.16 �N��E����Ƽg�J�@�~ }
function hisWriteTreatmentCode(DateTime: PChar; PatientID: PChar; PatientBirthDate: PChar; DataWrite: PChar; BufDocID: PChar): Integer; stdcall;
  { 1.17 �N��O�θ�Ƽg�J�@�~ }
function hisWriteTreatmentFee(DateTime: PChar; PatientID: PChar; PatientBirthDate: PChar; DataWrite: PChar): Integer; stdcall;
  { 1.18 �B���g�J�@�~	}
function hisWritePrescription(DateTime: PChar; PatientID: PChar; PatientBirthDate: PChar; DataWrite: PChar): Integer; stdcall;
  { 3.1  �B���g�J�@�~�æ^��ñ��	}
function hisWritePrescriptionSign(DateTime: PChar; PatientID: PChar; PatientBirthDate: PChar; DataWrite: PChar; Buffer: PByte; Len: PInteger): Integer; stdcall;
  { 1.19 �s�ͨ���O�g�J�@�~ }
function hisWriteNewBorn(DateTime: PChar; PatientID: PChar; PatientBirthDay: PChar; DateWrite: PChar): Integer; stdcall;
  { 1.20 �L���Ī��g�J�@�~ }
function hisWriteAllergicMedicines(PatientID: PChar; PatientBirthDate: PChar; DataWrite: PChar; BufferDocID: PChar): Integer; stdcall;
  { 1.21 �P�N���x���ؤΦw��w�M�������O�g�J�@�~}
function hisWriteOrganDonate(PatientID: PChar; PatientBirthDate: PChar; OrganDonate: PChar): Integer; stdcall;
  { 1.22 �w���O����Ƽg�J�@�~ }
function hisWriteHealthInsurance(PatientID: PChar; PatientBirthDate: PChar; ServiceItem: PChar; ServiceItemCode: PChar): Integer; stdcall;
  { 1.23 �g�J����p���q�� }
function hisWriteEmergentTel(PatientID: PChar; PatientBirthDate: PChar; EmergentTel: PChar): Integer; stdcall;
  { 1.24 �g�J���e�ˬd��� }
function hisWritePredeliveryCheckup(PatientID: PChar; PatientBirthDate: PChar; CheckupCode: PChar): Integer; stdcall;
  { 1.25 �M�����e�ˬd��� }
function hisDeletePredeliveryData(PatientID: PChar; PatientBirthDate: PChar): Integer; stdcall;
  { 1.26 �w�����ظ�Ƽg�J�@�~ }
function hisWriteInoculateData(PatientID: PChar; PatientBirthDate: PChar; Item: PChar; PackageNumber: PChar): Integer; stdcall;
  { 1.27 ���Ұ��OIC�d��PIN�� }
function csVerifyHCPIN(): Integer; stdcall;
  { 1.28 ��J�s�����OIC�dPIN�� }
function csInputHCPIN(): Integer; stdcall;
  { 1.29 ���ΰ��OIC�d��PIN�X��J�\�� }
function csDisableHCPIN(): Integer; stdcall;
  { 1.30 ���OIC�d�d�����e��s�@�~ }
function csUpdateHCContents(): Integer; stdcall;
  { 1.31 �}��COM�� }
function csOpenCom(ComPort: Integer): Integer; stdcall;
  { 1.32 ����COM�� }
function csCloseCom(): Integer; stdcall;
  { 1.33 Ū�����j�˯f���O��� }
function hisGetCriticalIllness(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  {1.34 Ū��Ū�d������ɶ�}
function csGetDateTime(pBuffer: PByte; iBufferLen: Pinteger): Integer; stdcall;
  { 1.37 ���o�N��Ǹ��s�� ***}
function hisGetSeqNumber256(CTreatItem: PChar; CBabyTreat: PChar; cTreatAfterCheck: PChar; Buffer: PByte; BufLen: PInteger): Integer; stdcall;

function csUnGetSeqNumber(Buffer: PByte): Integer; stdcall;

  {1.45 hisWriteMultiPrescript �h���B���g�J�@�~)}
function hisWriteMultiPrescript(pDateTime: PChar; pPatientID: PChar; pPatientBirthDate: PChar; pDataWrite: PChar; iWriteCount: PInteger): Integer; stdcall;


  { 2.1 SAM�PDC�{�� }
function csVerifySAMDC(): Integer; stdcall;
  { 3.1 ��ƤW�� }
function csUploadData(UploadFileName: PChar; FileSize: PChar; Number: PChar): Integer; stdcall;
  { 4.1 ���o��ƤH���d���A }
function hpcGetHPCStatus(Req: Integer; Status: PInteger): Integer; stdcall;
  { 4.2 �ˬd��ƤH���d��PIN�� }
function hpcVerifyHPCPIN(): Integer; stdcall;
  { 4.3 ��J�s����ƤH���d��PIN�� }
function hpcInputHPCPIN(): Integer; stdcall;
  { 4.4 �Ѷ}�����ƤH���d }
function hpcUnlockHPC(): Integer; stdcall;
  { 4.5 ���o��ƤH���d�Ǹ� }
function hpcGetHPCSN(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 4.6 ���o��ƤH���d�����Ҧr�� }
function hpcGetHPCSSN(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 4.7 ���o��ƤH���d����m�W }
function hpcGetHPCCNAME(Buffer: PByte; BufLen: PInteger): Integer; stdcall;
  { 4.8 ���o��ƤH���d�^��m�W }
function hpcGetHPCENAME(Buffer: PByte; BufLen: PInteger): Integer; stdcall;

  //*************************************

function card_status(Kind: Integer): Integer;     //�d�����A
function IC_date_time(Kind: Integer): string;     //�d���ɶ�
function IDC_CONNECT(): Integer; //�ˬdSAM�d
function HPC_check(): Integer;  //�ˬd��ƤH���d
function IC_check(): Integer;                     //�ˬdIC�d
function reupdate_ic(): Integer;                  //�d����s
function get_preg(temp_fee: string): Integer;  //�������˸��
function get_prev(temp_fee: string): Integer;//���o�w���O��
function get_Inoculate(temp_fee: string): Integer;  //�����w�����ظ��
function get_CRITICALILLNESS(temp_fee, temp_chr: string): Integer;
function error_list(Kind, code: Integer): string;
procedure ic_error_log(Kind, code, doc: string);
function Write_TreatmentCode(): Integer;
procedure insert_card_med();   //���ݼg�d
procedure insert_card_fee();   //���ݼg�d
function insert_med(): Integer;
function insert_fee(): Integer;
function get_seq(treatIte: PChar; ac_code: string; baby_kind: string; card_kind: string): Integer;

procedure insert_preg(fee_no, id_no, opd_date, hosp_code, preg_code: string);//�g�^���ˬ���
procedure insert_prev(fee_no, id_no, prev_mark, opd_date, hosp_code, preg_code: string);//�g�^�w���O��
procedure insert_Inoculate(temp_fee, Inoculate_kind, Inoculate_date, Inoculate_hsop, Inoculate_no: string);
procedure insert_allergy(Med_name1, Med_name2, Med_name3: string);   //�����L��
procedure inser_PRESCRIPTION(fee_no, OPD_DATE, ORDER_KIND, INS_FEE_CODE, PART_CODE, PATH_CODE, MED_DAYS, TTL_QTY, MARK_CODE, CHR_NO: string); //�g�^���j��O
procedure inser_CRITICALILLNESS(fee_no, ILL, bdate, edate, CHR_NO: string); //�g�^���j�˯f
procedure insert_cure_record(fee_no, opd_Date, A_CODE1, A_CODE2, A_CODE3, A_CODE4, A_CODE5, A_CODE6: string);//�E�������g�J
procedure insert_treat_record(FEE_NO, TREATITEM, BABYTREAT, OPD_DATE, CARD_COMP, IC_SEQ_NO, HOSP_ID, OPD_FEE_AMT, OPD_PART_AMT, IPD_FEE_AMT, IPD_PART_AMT_MORE, IPD_PART_AMT_LESS: string); //�N���T
procedure insert_ic_treat_dtl(med_Code, pich_code, seq_no, MED_TTL_QTY, sing_code: string); //ic_treat_Dtl
procedure insert_ic_med_warning_log(WARNING_KIND,INS_MED_CODE1,PER_QTY1,CIR_CODE1,MED_DAYS1,SELF_PAY_FLAG,OPD_DATE2,INS_MED_CODE2,MED_DAYS2,PATH_CODE2,HOSP_CODE2,DDI_SEQ,PREG_CATE,PREG_SEQ,DR_ACTION,ALERT_DATE,ALERT_TIME:string);

function GetFromBuffer(Buffer: array of Byte): string; //buffer
procedure GetnilBuffer(Buffer: array of Byte); //�M��buffer
function UnGetSeqNum(fee_no:string):Boolean;
function Write_HealthInsurance(ServiceItem,ServiceItemCode:string): Integer;//�w���O�����O
procedure nil_ic_all();  //�M��
function ic_HPCcheck:string;//��ƤH���d�T�{

function write_right(Kind, spec_kind, fee_no: string): Boolean;
var
  pat_Record: array [0..0] of pat;    //�f�HIC�d�򥻸�Ƭq
  ILL_Record: array [0..0] of ILL;    //IC�d���j�˯f�q

  cure_record: array [0..0] of cure;        //�N�E����
  treat_record: array [0..0] of treat;      //�N���T
  ic_seq_record: array[0..0] of ic_seq;     //���o�d�Ǭq
  ic_date_record: array [0..0] of icdate;   //���
  ic_med_record: array of array of string;  //�ī~����
  IC_fee_record: array of array of string;  //�B�m����
  sing_buffer: array[0..39] of Byte;        //�ī~ñ��

  OP_Record: array[0..59] of OP; //���Q����O
  LP_Record: array[0..29] of LP; //�����B��
  IT_Record: array[0..9] of IT; //���j��O
  PD_Record: PD;//�L��
  preg_record: array [0..10] of ppreg; //����
  prev_record: array [0..4] of prev; //�w���O��
  Inoculate_record: array [0..39] of Inoculate;
  Donate_record: array [0..0] of Donate; //���x����

  //�d�������f�H�򥻸��
  card_no, pat_name, id_no, sex, birth_date, card_end_date, get_date, card_flag, pat_code, pat_mark, use_count, new_born_birth, new_born_flag: string;
  //���x����
  Donate_flag: string;
  //���o�d�ǫᤧ��T
  opd_date, seq, hosp_code, safe_sign, sam_id, re_reg: string;
  //���j�˯f�ܼ�
  ILL_Code1, ILL_SDATE1, ILL_EDATE1, ILL_Code2, ILL_SDATE2, ILL_EDATE2, ILL_Code3, ILL_SDATE3, ILL_EDATE3: string;
  ILL_Code4, ILL_SDATE4, ILL_EDATE4, ILL_Code5, ILL_SDATE5, ILL_EDATE5, ILL_Code6, ILL_SDATE6, ILL_EDATE6: string;
  //�L�ӥv����
  Med_name1, Med_name2, Med_name3: string;
  //���d���ɶ�
  yy, mm, dd, hh, Min1, sec: string;
  //�̪��L��
  ic_bc: Integer;      //�ഫbb�����ƭ�

  ic_error_count: Integer;  //���~����;

  isExecute : Boolean;
  ErrStr : String;


  ic_start_thread: tthread;
  ic_HPCstart_thread: tthread;
  ic_basic_thread: tthread;
  ic_data_thread: tthread;
implementation

uses Global, DBDM, Commfunc,
  Order, MySQLc, insertIcInfor;

function hisGetBasicData; stdcall; external 'cshis.dll';

function hisGetRegisterBasic; stdcall; external 'cshis.dll';

function hisGetRegisterPrevent; stdcall; external 'cshis.dll';

function hisGetRegisterPregnant; stdcall; external 'cshis.dll';

function hisGetTreatmentNoNeedHPC; stdcall; external 'cshis.dll';

function hisGetCumulativeData; stdcall; external 'cshis.dll';

function hisGetCumulativeFee; stdcall; external 'cshis.dll';

function hisGetTreatmentNeedHPC; stdcall; external 'cshis.dll';

function hisGetSeqNumber; stdcall; external 'cshis.dll';

function hisReadPrescription; stdcall; external 'cshis.dll';

function hisGetInoculateData; stdcall; external 'cshis.dll';

function hisGetOrganDonate; stdcall; external 'cshis.dll';

function hisGetEmergentTel; stdcall; external 'cshis.dll';

function hisGetLastSeqNum; stdcall; external 'cshis.dll';

function hisGetCardStatus; stdcall; external 'cshis.dll';

function hisWriteTreatmentCode; stdcall; external 'cshis.dll';

function hisWriteTreatmentFee; stdcall; external 'cshis.dll';

function hisWritePrescription; stdcall; external 'cshis.dll';

function hisWriteNewBorn; stdcall; external 'cshis.dll';

function hisWriteAllergicMedicines; stdcall; external 'cshis.dll';

function hisWriteOrganDonate; stdcall; external 'cshis.dll';

function hisWriteHealthInsurance; stdcall; external 'cshis.dll';

function hisWriteEmergentTel; stdcall; external 'cshis.dll';

function hisWritePredeliveryCheckup; stdcall; external 'cshis.dll';

function hisDeletePredeliveryData; stdcall; external 'cshis.dll';

function hisWriteInoculateData; stdcall; external 'cshis.dll';

function csVerifyHCPIN; stdcall; external 'cshis.dll';

function csInputHCPIN; stdcall; external 'cshis.dll';

function csDisableHCPIN; stdcall; external 'cshis.dll';

function csUpdateHCContents; stdcall; external 'cshis.dll';

function csOpenCom; stdcall; external 'cshis.dll';

function csCloseCom; stdcall; external 'cshis.dll';

function hisGetCriticalIllness; stdcall; external 'cshis.dll';

function csGetDateTime; stdcall; external 'cshis.dll';

function hisGetSeqNumber256; stdcall; external 'cshis.dll';

function hisWriteMultiPrescript; stdcall; external 'cshis.dll';

function csVerifySAMDC; stdcall; external 'cshis.dll';

function csUploadData; stdcall; external 'cshis.dll';

function hpcGetHPCStatus; stdcall; external 'cshis.dll';

function hpcVerifyHPCPIN; stdcall; external 'cshis.dll';

function hpcInputHPCPIN; stdcall; external 'cshis.dll';

function hpcUnlockHPC; stdcall; external 'cshis.dll';

function hpcGetHPCSN; stdcall; external 'cshis.dll';

function hpcGetHPCSSN; stdcall; external 'cshis.dll';

function hpcGetHPCCNAME; stdcall; external 'cshis.dll';

function hpcGetHPCENAME; stdcall; external 'cshis.dll';

function hisWritePrescriptionSign; stdcall; external 'cshis.dll';

function csUnGetSeqNumber; stdcall; external 'cshis.dll';

function UnGetSeqNum(fee_no:string):Boolean;
var
  tmpSql,icDT,err_msg :String;
  ErrCode:Integer;
  SQLs :TStrings;
  Qrys:TADOQuery;
begin
  SQLs:=TStringList.Create;
  Result:=true;
  tmpSql:='select ic_date||ic_time icDT,ic_seq_no from ic_treat_temp where fee_no=$FEE_NO$ and del_flag=''N''';
  SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
  SQLs.Text := tmpSql;
  try
    if DM.OpenSQL(SQLs,Qrys) then
      if Qrys.FieldByName('ic_seq_no').AsString <> 'Z000' then
      begin
        icDT:=Qrys.FieldByName('icDT').AsString;
        ErrCode:=csUnGetSeqNumber(PByte(icDT));
        if ErrCode <> 0 then
        begin
          err_msg := error_list(1, ErrCode); //�ǤJ���~�N�X
          ic_error_log('2', err_msg, getUserId);
          Result:=false;
        end;
      end;
  except
    SQLs.Free;
  end;
  SQLs.Free;
end;

procedure ic_error_log(Kind, code, doc: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(9);
  SetParamter(tmpSql,'$ERROR_KIND$',Qt(Kind));
  SetParamter(tmpSql,'$OPD_DATE$',qt(getOpdDate));
  SetParamter(tmpSql,'$OPD_TIME$',Qt(ROCTime(now,'')));
  SetParamter(tmpSql,'$CHR_NO$',Qt(getChrNo));
  SetParamter(tmpSql,'$FEE_NO$',qt(getFeeNo));
  SetParamter(tmpSql,'$ERROR_CODE$',Qt(code));
  SetParamter(tmpSql,'$DOC_CODE$',Qt(doc));
  SetParamter(tmpSql,'$upd_oper$',Qt(doc));
  SetParamter(tmpSql,'$upd_date$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$upd_time$',Qt(ROCTime(now,'')));
  SQLs.Text:=tmpSql;
  DM.ExecSQL(SQLs);}
end;

function Write_HealthInsurance(ServiceItem,ServiceItemCode:string): Integer;
var
  ErrCode:integer;
begin
  ErrCode:=hisWriteHealthInsurance(PChar(getIdNo),PChar(GetBirth),PChar(ServiceItem),PChar(ServiceItemCode));
  result:=ErrCode;
end;

function insert_fee(): Integer;
var
  i: Integer;
  ins_fee_code, opd_datetime, order_kind, fee_code, order_set, fee_path, fee_day, fee_ttl, fee_mark, code: string;
  w_pre: Integer;
  k: Integer;
  h: array [0..0] of Integer;
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  try
    begin
      k := 0;
      SQLs:=TStringList.Create;
      code := '';
      for i := 0 to (High(icfunction.ic_fee_record)) do
      begin
        GetnilBuffer(sing_buffer);
        SQLs.Clear;
        SQLs.Add('select * from orderitem_basic where fee_code=' + QuotedStr(icfunction.ic_fee_record[i][0]));
        if DM.OpenSQL(SQLs,Qrys) then
          ins_fee_code := Trim(Qrys.FieldByName('ins_feecode').AsString)
        else
          ins_fee_code := '';

        //opd_datetime := IC_date_time(1);
        opd_datetime := CharAdd(ICfunction.opd_date,' ', 13);
        if StrToInt(icfunction.ic_fee_record[i][2]) >= 14 then
        begin
          order_kind := '2';
        end
        else
        begin
          order_kind := '1';
        end;

        fee_code := CharAdd(ins_fee_code,' ', 12);
        order_set := '      ';
        fee_path := CharAdd(icfunction.ic_fee_record[i][1],' ', 18);
        fee_day := CharAdd(icfunction.ic_fee_record[i][2],' ', 2);
        fee_ttl := CharAdd(FloatToStr(StrToFloat(icfunction.ic_fee_record[i][3]) * 100),' ', 7);
        fee_mark := '01';
        code := code + opd_datetime + order_kind + fee_code + order_set + fee_path + fee_day + fee_ttl + fee_mark;
        k := k + 1;

        k := SizeOf(sing_buffer);

                 //hisWritePrescriptionSign(PChar(ADSpace(ICfunction.opd_date,14)), PChar(id_no), PChar(birth_date), PChar(code), PByte(@sing_buffer), Pinteger(@k))
        w_pre := hisWritePrescriptionSign(PChar(CharAdd(ICfunction.opd_date,' ',14)), PChar(id_no), PChar(birth_date), PChar(code), PByte(@sing_buffer), Pinteger(@k));

        insert_ic_treat_dtl(ins_fee_code,'',icfunction.ic_med_record[i][4],fee_ttl,GetFromBuffer(sing_buffer));
      end;
    end;

    if w_pre = 0 then
    begin
      Result := 0;
    end
    else
    begin
      ic_error_log('R', IntToStr(k) + ',' + IntToStr(High(icfunction.ic_fee_record) + 1), getUserId);
      Result := 1; //���~
    end;

  except
    ic_error_log('M', IntToStr(k) + ',' + IntToStr(High(icfunction.ic_fee_record) + 1), getUserId);
    Result := 1;
    SQLs.Free;
  end;
  SQLs.Free;
end;

procedure insert_card_fee();   //���ݼg�d
var
  ComRet, DC_V, IC_V: Integer;
  insert_fee: Integer;
  temp_chr: string;
  i: Integer;
begin
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
    begin
      csCloseCom();
    end
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V > 2) then
      begin
        //���~���B�z
      end
      else
      begin
        //IC_V := IC_CHECK();//�ˬdIC�d

        if (IC_V > 2) then
        begin
          //���~���B�z
        end
        else
        begin
          insert_fee := icfunction.insert_fee();
        end;
      end;
    end;

  except
    csCloseCom();
  end;
  csCloseCom();
end;

function insert_med(): Integer;
var
  i: Integer;
  ins_med_code, opd_datetime, order_kind, med_code, order_set, med_path, med_day, med_ttl, med_mark, code: string;
  w_pre: Integer;
  k: Integer;
  h: array [0..0] of Integer;
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  try
    begin
      k := 0;
      SQLs:=TStringList.Create;
      code := '';
      for i := 0 to (High(icfunction.ic_med_record)) do
      begin
        GetnilBuffer(sing_buffer);
        SQLs.Clear;
        SQLs.Add('select * from orderitem_basic where fee_code=' + QuotedStr(icfunction.ic_med_record[i][0]));
        if DM.OpenSQL(SQLs,Qrys) then
          ins_med_code := Trim(Qrys.FieldByName('ins_feecode').AsString)
        else
          ins_med_code := '';

        opd_datetime := CharAdd(ICfunction.opd_date,' ', 13);
        if StrToInt(icfunction.ic_med_record[i][2]) >= 14 then
        begin
          order_kind := '2';
        end
        else
        begin
          order_kind := '1';
        end;

        med_code := CharAdd(ins_med_code,' ', 12);
        order_set := '      ';
        med_path := CharAdd(icfunction.ic_med_record[i][1],' ', 18);
        med_day := CharAdd(icfunction.ic_med_record[i][2],' ', 2);
        med_ttl := CharAdd(FloatToStr(StrToFloat(icfunction.ic_med_record[i][3]) * 100),' ', 7);
        med_mark := '01';
        code := code + opd_datetime + order_kind + med_code + order_set + med_path + med_day + med_ttl + med_mark;

        k := SizeOf(sing_buffer);
        w_pre:=hisWritePrescriptionSign(PChar(CharAdd(ICfunction.opd_date,' ',14)), PChar(id_no), PChar(birth_date), PChar(code), PByte(@sing_buffer), @k);


        insert_ic_treat_dtl(ins_med_code,icfunction.ic_med_record[i][1],icfunction.ic_med_record[i][4],med_ttl,GetFromBuffer(sing_buffer));

      end;
    end;
    if w_pre = 0 then
    begin
      Result := 0;
    end
    else
    begin
      ic_error_log('R', IntToStr(k) + ',' + IntToStr(High(icfunction.ic_med_record) + 1), getUserId);
      Result := 1; //���~
    end;

  except
    ic_error_log('M', IntToStr(k) + ',' + IntToStr(High(icfunction.ic_med_record) + 1), getUserId);
    Result := 1;
    SQLs.Free;
  end;
  SQLs.Free;
end;

procedure insert_card_med();   //���ݼg�d
var
  ComRet, DC_V, IC_V: Integer;
  insert_med: Integer;
  temp_chr: string;
  i: Integer;
begin
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
    begin
      csCloseCom();
    end
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V > 2) then
      begin
        //���~���B�z
      end
      else
      begin
        //IC_V := IC_CHECK();//�ˬdIC�d

        if (IC_V > 2) then
        begin
          //���~���B�z
        end
        else
          insert_med := icfunction.insert_med();
      end;
    end;

  except
    csCloseCom();
  end;
  csCloseCom();
end;

procedure insert_ic_treat_dtl(med_Code, pich_code, seq_no, MED_TTL_QTY, sing_code: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=getChkSqlStr(1);
  SetParamter(tmpSql,'$FEE_NO$',QT(getFeeNo));
  SetParamter(tmpSql,'$FEE_CODE$',QT(med_Code));
  SQLs.Text:=tmpSql;
  try
    if not DM.OpenSQL(SQLs) then
    begin
      SQLs.Clear;
      tmpSql:=insertICdata(10);
      SetParamter(tmpSql,'$SOUR_TYPE$',QT(getOpdKind));
      SetParamter(tmpSql,'$FEE_NO$',QT(getFeeNo));
      if Trim(IC_date_time(2)) = '' then
        SetParamter(tmpSql,'$IC_DATE$',QT(ROCDate(now,'')))
      else
        SetParamter(tmpSql,'$IC_DATE$',QT(IC_date_time(2)));

      if Trim(IC_date_time(3)) = '' then
        SetParamter(tmpSql,'$IC_TIME$',QT(ROCTime(now,'')))
      else
        SetParamter(tmpSql,'$IC_TIME$',QT(IC_date_time(3)));

      SetParamter(tmpSql,'$TREATITEM$',Qt(''));

      if Trim(icfunction.card_no) = '' then
        SetParamter(tmpSql,'$CARD_NO$',QT(getFeeNo))
      else
        SetParamter(tmpSql,'$CARD_NO$',QT(icfunction.card_no));
      SetParamter(tmpSql,'$CHR_NO$',QT(getChrNo));
      if Trim(icfunction.id_no) = '' then
        SetParamter(tmpSql,'$ID_NO$',QT(getIdNo))
      else
        SetParamter(tmpSql,'$ID_NO$',QT(icfunction.id_no));

      SetParamter(tmpSql,'$FEE_TYPE$',QT('2'));
      SetParamter(tmpSql,'$FEE_CODE$',QT(med_code));
      SetParamter(tmpSql,'$MED_LOCATION$',QT(' '));
      SetParamter(tmpSql,'$MED_METHOD$',QT(pich_code));
      SetParamter(tmpSql,'$MED_DAYS$',QT('1'));
      SetParamter(tmpSql,'$MED_TTL_QTY$',QT(MED_TTL_QTY));
      SetParamter(tmpSql,'$MED_INS_SEQ_NO$',QT(''));
      SetParamter(tmpSql,'$UPD_OPER$',QT(getDocCode1));
      SetParamter(tmpSql,'$UPD_DATE$',QT(ROCDate(now,'')));
      SetParamter(tmpSql,'$UPD_TIME$',QT(ROCTime(now,'')));
      SetParamter(tmpSql,'$SEQ_NO$',QT(seq_no));
      SetParamter(tmpSql,'$OK_FLAG$',QT('F'));
      if trim(ICfunction.hosp_code) <> '' then
        SetParamter(tmpSql,'$HOS_CODE$',QT(ICfunction.hosp_code))
      else
        SetParamter(tmpSql,'$HOS_CODE$',QT(''));
      if sing_code <> '' then
        SetParamter(tmpSql,'$signature$',QT(sing_code))
      else
        SetParamter(tmpSql,'$signature$',QT(getFeeNo));

      SQLs.Text:=tmpSql;
      DM.ExecSQL(SQLs);
    end;
  except
    SQLs.Free;
  end;
  SQLs.Free;}
end;



function Write_TreatmentCode(): Integer;
var
  wt: Integer;
  i: Integer;
  icd9_str: string;
  doc_code: string;
  doc_id: array [0..10] of Byte;
  a_code: string;
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  SQLs:=TStringList.Create;
  try
    begin
      icd9_str := '';
      icd9_str := icd9_Str + '1';
      for i := 0 to 4 do
      begin
        a_code := '';
        SQLs.Clear;
        SQLs.Add('select * from icd9_basic where op_flag=''N'' and final_flag=''Y'' and icd9_code=' + QuotedStr(FrmOrder.SGIcd.Cells[0, i]));
        if DM.OpenSQL(SQLs,Qrys) then
        begin
          a_code := Trim(Qrys.FieldByName('a_code').AsString);
          if Length(a_code) > 5 then
          begin
            a_code := Copy(a_code, 1, 5);
          end;
          icd9_str := icd9_str + CharAdd(a_code,' ', 5);
        end;
      end;
      wt := hisWriteTreatmentCode(PChar(icfunction.opd_Date), PChar(icfunction.id_no), PChar(icfunction.birth_date), PChar(icd9_str), PChar(@doc_id));
      if wt = 0 then
      begin
        Result := 0;
      end;
    end
  except
    Result := 1;
  end;

end;

function get_seq(treatIte: PChar; ac_code: string; baby_kind: string; card_kind: string): Integer;
var
  card_s2: Integer;  //�d�����A�Ǧ^��
  seq_code: Integer; //���d�ǶǦ^��
  seq_len: Integer;  //���d�ݩһݪ���
  bab: PChar;        //�ǤJ���d�Ǫ��L�ǰѼ�
  car: PChar;        //�ɥd���O�A��O�ұa 1
  fin: Integer;      //�g�J���˩ιw���O���κC�B�Ǧ^��
  recod_row :Integer;//�O���O�_���}�߰��O����
  bb: string;        //��v��J���L�ǵ��O��
  i: Integer;
begin
  try
    begin
      card_s2 := card_status(2); //�ˬdIC�d���A

      if baby_kind = 'B' then   //B�N��2�L�H�W
      begin
        bb := inputbox('�L�ǵ��O', '�п�J�����N�E���ĴX�Ӥp��        .', '');
        if bb <> '' then
        begin
          try
            ic_bc := StrToInt(bb);    // bc�ŧi��ic_function����
          except
            ShowMessage('�п�J�Ʀr�I');
            Abort;
          end;

          if ic_bc > StrToInt(new_born_flag) then
          begin
            ShowMessage('�п�J���T���L�ǡI');
            Abort;
          end
          else
          begin
            bab := PChar(bb);
          end;
        end
        else
        begin
          ShowMessage('�п�J�L��');
          Abort;
        end;
      end
      else
      begin
        if baby_kind = 'A' then
        begin
          bab := '1';
        end
        else
        begin
          bab := ' ';
        end
      end;
      car := '1';

      if (card_s2 >= 2) and (card_s2 <= 5) then
      begin
        seq_len := SizeOf(ic_seq_Record);
        seq_code := hisGetSeqNumber256(treatIte, bab, car, PByte(@ic_seq_Record), @seq_len); //�s�����d��
        if (seq_code = 0) or (seq_code = 5010) then
        begin
          opd_date := GetFromBuffer(ic_seq_Record[0].opd_date);
          seq := GetFromBuffer(ic_seq_Record[0].seq);
          hosp_code := GetFromBuffer(ic_seq_Record[0].hosp_code);
          safe_sign := GetFromBuffer(ic_seq_Record[0].safe_sign);
          sam_id := GetFromBuffer(ic_seq_Record[0].sam_id);
          re_reg := GetFromBuffer(ic_seq_Record[0].re_reg); //�s���~��
          //safe_sign:=tran_safe_sign();

          fin := 0;

          SetLength(IC_med_record, 0, 5);
          SetLength(IC_med_record, FrmOrder.SGMed.RowCount - 1, 5);
          recod_row := 0;
          for i := 0 to (FrmOrder.SGMed.RowCount - 1) do
          begin
            if FrmOrder.SGMed.Cells[Del, i] <> 'X' then
            begin
              if FrmOrder.SGMed.Cells[M_Ins, i] = 'G' then
              begin
                icfunction.ic_med_record[i][0] := FrmOrder.SGMed.Cells[M_Code, i];
                icfunction.ic_med_record[i][1] := FrmOrder.SGMed.Cells[M_Path, i];
                icfunction.ic_med_record[i][2] := FrmOrder.SGMed.Cells[M_days, i];
                icfunction.ic_med_record[i][3] := FrmOrder.SGMed.Cells[M_ttl_qty, i];
                icfunction.ic_med_record[i][4] := FrmOrder.SGMed.Cells[1, i];
                recod_row := recod_row + 1;
              end;
            end;
          end;
          if recod_row = 0 then
          begin
            SetLength(IC_med_record, 0, 5);
          end;

          SetLength(IC_fee_record, 0, 5);
          SetLength(IC_fee_record, FrmOrder.SGFee.RowCount - 1, 5);
          recod_row := 0;
          for i := 0 to (FrmOrder.SGFee.RowCount - 1) do
          begin
            if FrmOrder.SGFee.Cells[0, i] <> 'X' then
            begin
              if FrmOrder.SGFee.Cells[F_Ins, i] = 'Y' then
              begin
                icfunction.ic_fee_record[i][0] := FrmOrder.SGFee.Cells[F_Code, i];
                icfunction.ic_fee_record[i][1] := 'STAT';
                icfunction.ic_fee_record[i][2] := '1';
                icfunction.ic_fee_record[i][3] := FrmOrder.SGFee.Cells[F_Qty, i];
                icfunction.ic_fee_record[i][4] := FrmOrder.SGFee.Cells[1, i];
                recod_row := recod_row + 1;
              end;
            end;
          end;
          if recod_row = 0 then
          begin
            SetLength(ic_fee_record, 0, 5);
          end;

          if (treatIte = 'AC') and (card_kind = 'B') then //���ˬ���
          begin
            fin := hisWritePredeliveryCheckup(PChar(id_no), PChar(birth_date), PChar(ac_code));
          end;
          if (treatIte = 'AC') and (Copy(card_kind, 1, 1) = 'A') then //�w���O��
          begin
            if baby_kind = 'A' then
            begin
              fin := hisWriteHealthInsurance(PChar(id_no), PChar(new_born_birth), PChar(Copy(card_kind, 2, 2)), PChar(ac_code));
            end
            else
            begin
              fin := hisWriteHealthInsurance(PChar(id_no), PChar(birth_date), PChar(Copy(card_kind, 2, 2)), PChar(ac_code));
            end;
          end;
      
          if fin = 0 then
          begin
            Result := 0;
          end
          else
          begin
            Result := fin;
          end;
        end
        else
        begin
          Result := seq_code;
        end;  
      end
      else
      begin
        Result := card_s2;
      end;
    end;
  except
    Result := -1;
  end;
end;

function reupdate_ic(): Integer; //��s�d��
var
  up: Integer;
begin
  up := csUpdateHCContents();
  Result := up;
end;

function GetFromBuffer(Buffer: array of Byte): string; //buffer
var
  i: Integer;
  tmp: string;
begin
  for i := Low(Buffer) to High(Buffer) do
  begin
    tmp := tmp + Chr(Buffer[i]);
  end;

  Result := tmp;
end;

function IC_date_time(Kind: Integer): string;
var
  da_length, d: Integer;
begin
  try
    da_length := SizeOf(ic_date_record);
    if csGetDateTime(PByte(@ic_date_record), @da_length) = 0 then
    begin
      yy := GetFromBuffer(ic_date_record[0].y);
      mm := GetFromBuffer(ic_date_record[0].m);
      dd := GetFromBuffer(ic_date_record[0].d);
      hh := GetFromBuffer(ic_date_record[0].h);
      Min1 := GetFromBuffer(ic_date_record[0].mi);
      sec := GetFromBuffer(ic_date_record[0].s);
      case Kind of
        1:
          Result := (yy + mm + dd + hh + Min1 + sec);
        2:
          Result := (yy + mm + dd);
        3:
          Result := (hh + Min1 + sec);
      end;
    end;
  except
  end;
end;

procedure GetnilBuffer(Buffer: array of Byte); //buffer
var
  i: Integer;
  tmp: string;
begin
  for i := Low(Buffer) to High(Buffer) do
  begin
    tmp := '';//tmp + chr(Buffer[i]);
  end;
end;

procedure nil_ic_all();
begin
  GetnilBuffer(pat_Record[0].card_no);
  GetnilBuffer(pat_Record[0].pat_name);
  GetnilBuffer(pat_Record[0].id_no);
  GetnilBuffer(pat_Record[0].sex);
  GetnilBuffer(pat_Record[0].bitrh_date);
  GetnilBuffer(pat_Record[0].end_date);
  GetnilBuffer(pat_Record[0].use_count);
  GetnilBuffer(pat_Record[0].pat_mark);
  GetnilBuffer(pat_Record[0].new_born_birth);
  GetnilBuffer(pat_Record[0].new_born_flag);

  GetnilBuffer(ic_seq_Record[0].opd_date);
  GetnilBuffer(ic_seq_Record[0].seq);
  GetnilBuffer(ic_seq_Record[0].hosp_code);
  GetnilBuffer(ic_seq_Record[0].safe_sign);
  GetnilBuffer(ic_seq_Record[0].sam_id);

  ICFunction.card_no := '';
  ICFunction.pat_name := '';
  ICFunction.id_no := '';
  ICFunction.sex := '';
  ICFunction.birth_date := '';
  ICFunction.card_end_date := '';
  ICFunction.get_date := '';
  ICFunction.card_flag := '';
  ICFunction.pat_code := '';
  ICFunction.pat_mark := '';
  ICFunction.use_count := '';
  ICFunction.new_born_birth := '';
  ICFunction.new_born_flag := '';

  ICFunction.opd_date := '';
  ICFunction.seq := '';
  ICFunction.hosp_code := '';
  ICFunction.safe_sign := '';
  ICFunction.sam_id := '';
  ICFunction.re_reg := '';
end;

function card_status(Kind: Integer): Integer;  // �ˬd�d�����A
var
  card_code: Integer;
begin
  card_code := hisGetCardStatus(Kind);
  Result := card_code;
end;

function error_list(Kind, code: Integer): string;
var
  ERR_DESC, ERR_PLAN, ERR_RETURN_CODE: string;
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=getICSql(1);
  SetParamter(tmpSql,'$ERROR_CODE$',IntToStr(code));
  SQLs.Text:=tmpSql;

  if DM.OpenSQL(SQLs,Qrys) then
  begin
    ERR_DESC := Qrys.FieldByName('ERR_DESC').AsString;
    ERR_PLAN := Qrys.FieldByName('ERR_PLAN').AsString;
    ERR_RETURN_CODE := Qrys.FieldByName('ERR_RETURN_CODE').AsString;
    case Kind of
      0:
        Result := IntToStr(code) + ':' + ERR_DESC + '#' + ERR_PLAN;
      1:
        Result := ERR_RETURN_CODE;
    end;
  end;

  SQLs.Free;}
end;

function IDC_CONNECT(): Integer; //�ˬdSAM�d
var
  card_s1, IDC: Integer;
begin
  card_s1 := card_status(1); //�ˬdSAM�d���A

  if card_s1 = 1 then
  begin
    IDC := csVerifySAMDC();
    if (IDC <> 0) or (IDC <> 4050) then
    begin
      if IDC <> 0 then
      begin
        IDC := csVerifySAMDC();
        if IDC <> 0 then
        begin
          Result := IDC;//�ǤJ���~�N�X
        end
        else
        begin
          Result := 0;
        end;
      end
      else
      begin
        Result := 0;
      end;
    end
    else
    begin
      Result := IDC;//�ǤJ���~�N�X
    end;
  end
  else if card_s1 = 2 then
  begin
    Result := 0;
  end
  else
    Result := card_s1;

end;

function HPC_check(): Integer;  //�ˬd��ƤH���d
var
  card_s3, HPC: Integer;
begin
  card_s3 := card_status(3); //�ˬd��ƤH���d���A
  if (card_s3 <> 2) or (card_s3 <> 3) then
  begin
    card_s3 := 2;
    if card_s3 = 2 then
    begin
      HPC := hpcVerifyHPCPIN();
      if (HPC <> 0) or (HPC <> 4050) then
      begin
        if HPC <> 0 then
        begin
          HPC := hpcVerifyHPCPIN();
          if HPC <> 0 then
          begin
            Result := HPC;//�ǤJ���~�N�X
          end
          else
          begin
            Result := 0;
          end;
        end
        else
        begin
          Result := 0;
        end;
      end
      else
      begin
        Result := HPC;//�ǤJ���~�N�X
      end;
    end
    else
    begin
      Result := 0;
    end;
  end;
end;

function ic_HPCcheck:string;
var
  ComRet, DC_V, HPC_V: Integer;//ComRet...comport�Ǧ^��; DC_V....IDC�{�ҶǦ^��;
  err_msg: string;
begin
  Result := '';
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
    begin
      csCloseCom();
      Result:='�}��Ū�d������!! ���p����T��';
    end
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V <> 0) then
      begin
        err_msg := error_list(0, DC_V); //�ǤJ���~�N�X
        Result:='�нT�{�z���d���I�I'+err_msg;
      end
      else
      begin
        HPC_V := HPC_check(); //��ƤH���d�ˬd
        if HPC_V <> 0 then
        begin
          err_msg := error_list(0, HPC_V); //�ǤJ���~�N�X
          Result:='��v�d�{�ҥ��ѡI�Э��s�{�ҡI'+err_msg;
        end
        else
        begin
          Result:='��v�d�{�Ҧ��\�I';
        end;
      end;
    end;
  finally
    csCloseCom();
  end;
end;

procedure ic_HPCstart.Execute;
var
  ComRet, DC_V, HPC_V: Integer;//ComRet...comport�Ǧ^��; DC_V....IDC�{�ҶǦ^��;
  err_msg: string;
begin
  FreeOnTerminate := true;
  isExecute:=false;
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
    begin
      csCloseCom();
      ErrStr:='�}��Ū�d������!! ���p����T��';
    end
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V <> 0) then
      begin
        err_msg := error_list(0, DC_V); //�ǤJ���~�N�X
        ErrStr:='�нT�{�z���d���I�I'+err_msg;
      end
      else
      begin
        HPC_V := HPC_check(); //��ƤH���d�ˬd
        if HPC_V <> 0 then
        begin
          err_msg := error_list(0, HPC_V); //�ǤJ���~�N�X
          ErrStr:='��v�d�{�ҥ��ѡI�Э��s�{�ҡI'+err_msg;
        end
        else
        begin
          ErrStr:='��v�d�{�Ҧ��\�I';
        end;
      end;
    end;
  finally
    csCloseCom();
    isExecute:=true;
  end;
end;

procedure ic_start.Execute;
var
  ComRet, DC_V: Integer;//ComRet...comport�Ǧ^��; DC_V....IDC�{�ҶǦ^��;
  err_msg: string;
begin
  FreeOnTerminate := true;
  isExecute:=false;
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
        ErrStr:='�}��Ū�d������!'+#13+'���p����T��'
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V <> 0) then
      begin
        err_msg := error_list(0, DC_V); //�ǤJ���~�N�X
        ErrStr:='�нT�{�z���d���I�I'+err_msg;
      end
      else
        ErrStr:='�d���{�Ҧ��\�I�I';
    end;
  finally
    csCloseCom();
    isExecute:=true;
  end;
end;

function IC_check(): Integer;
var
  card_s2: Integer;
  //reg:integer;
  basic_Len: Integer;
  use: Integer;
  n: Integer;
  Donate_Len: Integer;
  d: Integer;
begin
  card_s2 := card_status(2); //�ˬdIC�d���A
  if (card_s2 >= 2) and (card_s2 <= 5) then
  begin
    basic_Len := SizeOf(pat_Record);
    n         := hisGetRegisterBasic(PByte(@pat_Record), @basic_Len);
    if n = 0 then
    begin
      card_no := GetFromBuffer(pat_Record[0].card_no);
      pat_name := GetFromBuffer(pat_Record[0].pat_name);

      id_no := GetFromBuffer(pat_Record[0].id_no);
      sex := GetFromBuffer(pat_Record[0].sex);
      birth_date := GetFromBuffer(pat_Record[0].bitrh_date);

      get_date := GetFromBuffer(pat_Record[0].get_date);
      card_flag := GetFromBuffer(pat_Record[0].card_flag);
      pat_code := GetFromBuffer(pat_Record[0].pat_code);

      card_end_date := GetFromBuffer(pat_Record[0].end_date);
      use_count := GetFromBuffer(pat_Record[0].use_count);
      pat_mark := GetFromBuffer(pat_Record[0].pat_mark);
      new_born_birth := GetFromBuffer(pat_Record[0].new_born_birth);
      new_born_flag := GetFromBuffer(pat_Record[0].new_born_flag);
    end;

    Donate_Len := SizeOf(Donate_record);
    D          := hisGetOrganDonate(PByte(@Donate_record), @Donate_Len);
    if d = 0 then
    begin
      Donate_flag := GetFromBuffer(Donate_record[0].Donate_flag);
    end;

    try
      if id_no = trim(getIdNo) then
      begin
        if StrToInt(card_end_Date) > StrToInt(IC_date_time(2)) then
        begin
          if StrToInt(use_count) > 0 then
          begin
            Result := 0;
          end
          else
          begin
            use := reupdate_ic();
            if use = 0 then
            begin
              Result := 0;
            end
            else
            begin
              Result := use;
            end;
          end;
        end
        else
        begin
          //�p�󤵤�
          use := reupdate_ic();
          if use = 0 then
          begin
            Result := 0;
          end
          else
          begin
            Result := use;
          end;
        end;
      end
      else
      begin
        nil_ic_all;
        Result := 9999; //�D���H
      end;
    except
    end;
  end
  else
  begin
    case card_s2 of
      0:
        Result := 4013;
      1:
        Result := 4050;
      9:
        Result := 4033;
    end;
  end;
end;

function write_right(Kind, spec_kind, fee_no: string): Boolean;
var
  tmpSql :String;
  SQLs :TStrings;
  Qrys :TADOQuery;
begin
  {SQLs:=TStringList.Create;
  case StrToInt(Kind) of
    1:
    begin
      tmpSql:=getChkSqlStr(3);
      SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
    end;
    2:
    begin
      tmpSql:=getChkSqlStr(4);
      SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
    end;
    3:
    begin
      tmpSql:=getChkSqlStr(5);
      SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
      if spec_kind = '1' then
        SetParamter(tmpSql,'$PREVENT_KIND$',Qt('P'))
      else
        SetParamter(tmpSql,'$PREVENT_KIND$',Qt('C'));
    end;
    4:
    begin
      tmpSql:=getChkSqlStr(6);
      SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
    end;
  end;
  SQLs.Text:=tmpSql;
  if DM.OpenSQL(SQLs,Qrys) then
    Result:=true
  else
    Result:=false;}
end;

procedure insert_preg(fee_no, id_no, opd_date, hosp_code, preg_code: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(2);
  SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
  SetParamter(tmpSql,'$ID_NO$',Qt(id_no));
  SetParamter(tmpSql,'$Prevent_kind$',Qt('P'));
  SetParamter(tmpSql,'$Prevent_mark$',Qt(''));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(opd_date));
  SetParamter(tmpSql,'$hosp_code$',Qt(hosp_code));
  SetParamter(tmpSql,'$preg_code$',Qt(preg_code));
  SetParamter(tmpSql,'$upd_oper$',Qt(getDocCode));
  SetParamter(tmpSql,'$upd_date$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$upd_time$',Qt(ROCTime(now,'')));
  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end;
  except
  end;
  SQLs.Free;}
end;

function get_preg(temp_fee: string): Integer;  //�������˸��
var
  preg_len: Integer;
  preg: Integer;
  preg_opd_date, preg_hosp_code, preg_preg_code: string;
  i: Integer;
begin
  preg_len := SizeOf(preg_Record);
  preg := hisGetRegisterPregnant(Pbyte(@preg_Record), @preg_Len);
  if preg = 0 then
  begin
    for i := 0 to 10 do
    begin
      preg_opd_Date := GetFromBuffer(preg_Record[i].opd_date);
      if Trim(preg_opd_Date) <> '' then
      begin
        preg_hosp_code := GetFromBuffer(preg_Record[i].hsop_code);
        preg_preg_code := GetFromBuffer(preg_Record[i].preg_code);
        insert_preg(temp_fee, getIdNo, preg_opd_date, preg_hosp_code, preg_preg_code);
      end
      else
      begin
        Result := 0;
        Break;
      end;
      Result := 0
    end;
  end
  else
  begin
    Result := 1;
  end;
end;

procedure insert_prev(fee_no, id_no, prev_mark, opd_date, hosp_code, preg_code: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(2);
  SetParamter(tmpSql,'$FEE_NO$',Qt(fee_no));
  SetParamter(tmpSql,'$ID_NO$',Qt(id_no));
  SetParamter(tmpSql,'$Prevent_kind$',Qt('C'));
  SetParamter(tmpSql,'$Prevent_mark$',Qt(prev_mark));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(opd_date));
  SetParamter(tmpSql,'$hosp_code$',Qt(hosp_code));
  SetParamter(tmpSql,'$preg_code$',Qt(preg_code));
  SetParamter(tmpSql,'$upd_oper$',Qt(getDocCode1));
  SetParamter(tmpSql,'$upd_date$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$upd_time$',Qt(ROCTime(now,'')));
  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end;
  except
  end;
  SQLs.Free;}
end;

function get_prev(temp_fee: string): Integer;//���o�w���O��
var
  prev_len: Integer;
  prev: Integer;
  prev_opd_date, prev_hosp_code, prev_prev_code, prev_prev_mark: string;
  i: Integer;
begin
  prev_len := SizeOf(prev_Record);
  prev := hisGetRegisterPrevent(Pbyte(@prev_Record), @prev_Len);
  if prev = 0 then
  begin
    for i := 0 to 5 do
    begin
      prev_prev_mark := GetFromBuffer(prev_Record[i].prev_mark);
      if Trim(prev_prev_mark) <> '' then
      begin
        prev_opd_Date := GetFromBuffer(prev_Record[i].opd_date);
        prev_hosp_code := GetFromBuffer(prev_Record[i].hsop_code);
        prev_prev_code := GetFromBuffer(prev_Record[i].prev_code);
        insert_prev(temp_fee, getIdNo, prev_prev_mark, prev_opd_date, prev_hosp_code, prev_prev_code);
      end
      else
      begin
        Result := 0;
        Break;
      end;
    end;
  end
  else
  begin
    Result := 1;
  end;
end;

procedure insert_Inoculate(temp_fee, Inoculate_kind, Inoculate_date, Inoculate_hsop, Inoculate_no: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(3);
  SetParamter(tmpSql,'$FEE_NO$',Qt(temp_fee));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(getOpdDate));
  SetParamter(tmpSql,'$Inoculate_kind$',Qt(Inoculate_kind));
  SetParamter(tmpSql,'$Inoculate_date$',Qt(Inoculate_date));
  SetParamter(tmpSql,'$HOSP_CODE$',Qt(Inoculate_hsop));
  SetParamter(tmpSql,'$Inoculate_no$',Qt(Inoculate_no));
  SetParamter(tmpSql,'$upd_oper$',Qt(getDocCode1));
  SetParamter(tmpSql,'$upd_date$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$upd_time$',Qt(ROCTime(now,'')));
  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end;
  except
  end;
  SQLs.Free;}

end;

function get_Inoculate(temp_fee: string): Integer;  //�����w�����ظ��
var
  Inoculate_len: Integer;
  Inoculate: Integer;
  Inoculate_kind, Inoculate_date, Inoculate_hsop, Inoculate_no: string;
  i: Integer;
begin
  Inoculate_len := SizeOf(Inoculate_Record);

  Inoculate := hisGetInoculateData(Pbyte(@Inoculate_Record), @Inoculate_Len);

  if Inoculate = 0 then
  begin
    for i := 0 to 39 do
    begin
      Inoculate_kind := GetFromBuffer(Inoculate_Record[i].Inoculate_kind);
      if Trim(Inoculate_kind) <> '' then
      begin
        Inoculate_date := GetFromBuffer(Inoculate_Record[i].Inoculate_date);
        Inoculate_hsop := GetFromBuffer(Inoculate_Record[i].Inoculate_hsop);
        Inoculate_no := GetFromBuffer(Inoculate_Record[i].Inoculate_no);
        insert_Inoculate(temp_fee, Inoculate_kind, Inoculate_date, Inoculate_hsop, Inoculate_no);
      end
      else
      begin
        Result := 0;
        Break;
      end;
      Result := 0
    end;
  end
  else
  begin
    Result := 1;
  end;
end;

procedure insert_allergy(Med_name1, Med_name2, Med_name3: string);
var
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=getChkSqlStr(7);
  SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
  SQLs.Clear;
  SQLs.Text:=tmpSql;
  if not DM.OpenSQL(SQLs,Qrys) then
  begin
    tmpSql:=insertICdata(4);
    SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
    SetParamter(tmpSql,'$ID_NO$',Qt(getIdNo));
    SetParamter(tmpSql,'$OPD_DATE$',Qt(getOpdDate));
    SetParamter(tmpSql,'$CHR_NO$',Qt(getChrNo));
    SetParamter(tmpSql,'$allergy1$',Qt(Med_name1));
    SetParamter(tmpSql,'$allergy2$',Qt(Med_name2));
    SetParamter(tmpSql,'$allergy3$',Qt(Med_name3));
    SetParamter(tmpSql,'$UPD_OPER$',Qt(getDocCode1));
    SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
    SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTime(now,'')));
    SQLs.Clear;
    SQLs.Text:=tmpSql;
    try
      begin
        DM.ExecSQL(SQLs);
      end;
    except
    end;
  end;
  SQLs.Free;}
end;

procedure inser_PRESCRIPTION(fee_no, OPD_DATE, ORDER_KIND, INS_FEE_CODE, PART_CODE, PATH_CODE, MED_DAYS, TTL_QTY, MARK_CODE, CHR_NO: string); //�g�J���j��O
var
  Qrys :TADOQuery;
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(5);
  SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(OPD_DATE));
  SetParamter(tmpSql,'$ORDER_KIND$',Qt(ORDER_KIND));
  SetParamter(tmpSql,'$INS_FEE_CODE$',Qt(INS_FEE_CODE));
  SetParamter(tmpSql,'$PART_CODE$',Qt(PART_CODE));
  SetParamter(tmpSql,'$PATH_CODE$',Qt(PATH_CODE));
  SetParamter(tmpSql,'$MED_DAYS$',Qt(MED_DAYS));
  SetParamter(tmpSql,'$TTL_QTY$',Qt(TTL_QTY));
  SetParamter(tmpSql,'$MARK_CODE$',Qt(MARK_CODE));
  SetParamter(tmpSql,'$CHR_NO$',Qt(CHR_NO));
  SQLs.Clear;
  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end;
  except
  end;
  SQLs.Free;}
end;

function get_PRESCRIPTION(temp_chr, temp_fee: string): Integer;
var
  op_len, lp_len, it_len, pd_len: Integer;
  Order_Ret: Integer;
  i, j: Integer;
  op_OPD_DATE, op_ORDER_KIND, op_INS_FEE_CODE, op_PART_CODE, op_PATH_CODE, op_MED_DAYS, op_TTL_QTY, op_MARK_CODE: string;
begin
  OP_Len := SizeOf(OP_Record);
  LP_Len := SizeOf(LP_Record);
  IT_Len := SizeOf(IT_Record);
  PD_Len := SizeOf(PD_Record);
  Order_Ret := hisReadPrescription(Pbyte(@OP_Record), @OP_Len, Pbyte(@LP_Record), @LP_Len, Pbyte(@IT_Record), @IT_Len, Pbyte(@PD_Record), @PD_Len);

  if Order_Ret = 0 then
  begin
    for i := 0 to 59 do
    begin
      op_opd_Date := GetFromBuffer(op_Record[i].OPD_Date);
      if Trim(op_opd_Date) <> '' then
      begin
        op_ORDER_KIND := GetFromBuffer(op_Record[i].Order_Kind);
        op_INS_FEE_CODE := GetFromBuffer(op_Record[i].Treate_No);
        op_PART_CODE := GetFromBuffer(op_Record[i].Treate_Part);
        op_PATH_CODE := GetFromBuffer(op_Record[i].method);
        op_MED_DAYS := GetFromBuffer(op_Record[i].Days);

        Med_name1 := GetFromBuffer(PD_Record.Med_name1);
        Med_name2 := GetFromBuffer(PD_Record.Med_name2);
        Med_name3 := GetFromBuffer(PD_Record.Med_name3);

        if ((Trim(Med_name1) <> '') or (Trim(Med_name2) <> '') or (Trim(Med_name3) <> '')) then
        begin
          insert_allergy(Trim(Med_name1), Trim(Med_name2), Trim(Med_name3));    //�g�J�L�ӥv
        end;

        if GetFromBuffer(op_Record[i].Total) = '' then
        begin
          op_TTL_QTY := '   ';
        end
        else
        begin
          op_TTL_QTY := FloatToStr(StrToFloat(GetFromBuffer(op_Record[i].Total)) / 100);
        end;
        op_MARK_CODE := GetFromBuffer(op_Record[i].P_Note);
        inser_PRESCRIPTION(temp_fee, op_OPD_DATE, op_ORDER_KIND, op_INS_FEE_CODE, op_PART_CODE, op_PATH_CODE, op_MED_DAYS, op_TTL_QTY, op_MARK_CODE, temp_chr);
      end
      else
      begin
        Result := 0;
        Break;
      end;
    end;
    Result := 0;
  end
  else
  begin
    Result := 1;
  end;

end;

procedure inser_CRITICALILLNESS(fee_no, ILL, bdate, edate, CHR_NO: string);  //�g�J���j�˯f
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(6);
  SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
  SetParamter(tmpSql,'$CRITICAL_CODE$',Qt(ILL));
  SetParamter(tmpSql,'$BEGIN_DATE$',Qt(bdate));
  SetParamter(tmpSql,'$END_DATE$',Qt(edate));
  SetParamter(tmpSql,'$CHR_NO$',Qt(CHR_NO));
  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end
  except
  end;
  SQLs.Free;}
end;

procedure insert_cure_record(fee_no, opd_Date, A_CODE1, A_CODE2, A_CODE3, A_CODE4, A_CODE5, A_CODE6: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(7);
  SetParamter(tmpSql,'$FEE_NO$',Qt(FEE_NO));
  SetParamter(tmpSql,'$ID_NO$',Qt(trim(getIdNo)));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(OPD_DATE));
  SetParamter(tmpSql,'$A_CODE1$',Qt(A_CODE1));
  SetParamter(tmpSql,'$A_CODE2$',Qt(A_CODE2));
  SetParamter(tmpSql,'$A_CODE3$',Qt(A_CODE3));
  SetParamter(tmpSql,'$A_CODE4$',Qt(A_CODE4));
  SetParamter(tmpSql,'$A_CODE5$',Qt(A_CODE5));
  SetParamter(tmpSql,'$A_CODE6$',Qt(A_CODE6));
  SetParamter(tmpSql,'$upd_oper$',Qt(getDocCode1));
  SetParamter(tmpSql,'$upd_date$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$upd_time$',Qt(ROCTime(now,'')));

  SQLs.Text:=tmpSql;
  try
    begin
      DM.ExecSQL(SQLs);
    end
  except
  end;
  SQLs.Free;}
end;

procedure insert_treat_record(FEE_NO, TREATITEM, BABYTREAT, OPD_DATE, CARD_COMP, IC_SEQ_NO, HOSP_ID, OPD_FEE_AMT, OPD_PART_AMT, IPD_FEE_AMT, IPD_PART_AMT_MORE, IPD_PART_AMT_LESS: string);
var
  tmpSql :String;
  SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(8);
  SetParamter(tmpSql,'$FEE_NO$',Qt(FEE_NO));
  SetParamter(tmpSql,'$TREATITEM$',Qt(TREATITEM));
  SetParamter(tmpSql,'$BABYTREAT$',Qt(BABYTREAT));
  SetParamter(tmpSql,'$OPD_DATE$',Qt(OPD_DATE));
  SetParamter(tmpSql,'$CARD_COMP$',Qt(CARD_COMP));
  SetParamter(tmpSql,'$IC_SEQ_NO$',Qt(IC_SEQ_NO));
  SetParamter(tmpSql,'$HOSP_ID$',Qt(HOSP_ID));
  SetParamter(tmpSql,'$OPD_FEE_AMT$',Qt(OPD_FEE_AMT));
  SetParamter(tmpSql,'$OPD_PART_AMT$',Qt(OPD_PART_AMT));
  SetParamter(tmpSql,'$IPD_FEE_AMT$',Qt(IPD_FEE_AMT));
  SetParamter(tmpSql,'$IPD_PART_AMT_MORE$',Qt(IPD_PART_AMT_MORE));
  SetParamter(tmpSql,'$IPD_PART_AMT_LESS$',Qt(IPD_PART_AMT_LESS));
  SetParamter(tmpSql,'$UPD_OPER$',Qt(getDocCode1));
  SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTime(now,'')));
  SQLs.Text:=tmpSql;
  try
    DM.ExecSQL(SQLs);
  except
  end;
  SQLs.Free;}
end;



procedure insert_ic_med_warning_log(WARNING_KIND,INS_MED_CODE1,PER_QTY1,CIR_CODE1,MED_DAYS1,SELF_PAY_FLAG,OPD_DATE2,INS_MED_CODE2,MED_DAYS2,PATH_CODE2,HOSP_CODE2,DDI_SEQ,PREG_CATE,PREG_SEQ,DR_ACTION,ALERT_DATE,ALERT_TIME:string);
var
 tmpSql :String;
 SQLs :TStrings;
begin
  {SQLs:=TStringList.Create;
  tmpSql:=insertICdata(1);
  SetParamter(tmpSql,'$SOURCE_KIND$',Qt('O'));
  SetParamter(tmpSql,'$WARNING_KIND$',Qt(WARNING_KIND));
  SetParamter(tmpSql,'$CHR_NO$',Qt(getChrNo));
  SetParamter(tmpSql,'$SEX_TYPE$',Qt(getPSex));
  SetParamter(tmpSql,'$AGE$',Qt(getPAge));
  SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
  SetParamter(tmpSql,'$DEPT_CODE$',Qt(getDeptCode));
  SetParamter(tmpSql,'$OPD_DATE1$',Qt(getOpdDate));
  SetParamter(tmpSql,'$INS_MED_CODE1$',Qt(INS_MED_CODE1));
  SetParamter(tmpSql,'$PER_QTY1$',Qt(PER_QTY1));
  SetParamter(tmpSql,'$CIR_CODE1$',Qt(CIR_CODE1));
  SetParamter(tmpSql,'$MED_DAYS1$',Qt(MED_DAYS1));
  SetParamter(tmpSql,'$PATH_CODE1$',Qt(''));
  SetParamter(tmpSql,'$SELF_PAY_FLAG$',Qt(SELF_PAY_FLAG));
  SetParamter(tmpSql,'$DOC_CODE1$',Qt(getDocCode));
  SetParamter(tmpSql,'$OPD_DATE2$',Qt(OPD_DATE2));
  SetParamter(tmpSql,'$INS_MED_CODE2$',Qt(INS_MED_CODE2));
  SetParamter(tmpSql,'$PER_QTY2$',Qt(''));
  SetParamter(tmpSql,'$CIR_CODE2$',Qt(''));
  SetParamter(tmpSql,'$MED_DAYS2$',Qt(MED_DAYS2));
  SetParamter(tmpSql,'$PATH_CODE2$',Qt(PATH_CODE2));
  SetParamter(tmpSql,'$HOSP_CODE2$',Qt(HOSP_CODE2));
  SetParamter(tmpSql,'$DDI_SEQ$',Qt(DDI_SEQ));
  SetParamter(tmpSql,'$PREG_CATE$',Qt(PREG_CATE));
  SetParamter(tmpSql,'$PREG_SEQ$',Qt(PREG_SEQ));
  SetParamter(tmpSql,'$DR_ACTION$',Qt(DR_ACTION));
  SetParamter(tmpSql,'$ALERT_DATE$',Qt(ALERT_DATE));
  SetParamter(tmpSql,'$ALERT_TIME$',Qt(ALERT_TIME));
  SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTime(now,'')));
  SetParamter(tmpSql,'$UPD_OPER$',Qt(getDocCode));
  SQLs.Text:=tmpSql;

  try
  begin
    DM.ExecSQL(SQLs);
  end
  finally
    SQLs.Free;
  end;
  }
end;


function get_CRITICALILLNESS(temp_fee, temp_chr: string): Integer;
var
  ILL_len: Integer;
  ILL_code: Integer;
  cure_len: Integer;
  cure_code: Integer;
  cure_str: string;
  ills: string;
  cures: string;
  ill_b: Integer;
  ill_codeA, ill_dateA, ill_dateB, cure_Date1, cure_code1, cure_Code2, cure_Code3, cure_Code4, cure_Code5, cure_Code6: string;
  i, j: Integer;
  cures_b: Integer;
  treat_len: Integer;
  treat_code: Integer;
  treat_str: string;
  treats: string;
  treat_b: Integer;
  TREATITEM, BABYTREAT, OPD_DATE, CARD_COMP, IC_SEQ_NO, HOSP_ID, OPD_FEE_AMT, OPD_PART_AMT, IPD_FEE_AMT, IPD_PART_AMT_MORE, IPD_PART_AMT_LESS: string;
begin
  try
    cure_len  := SizeOf(cure_Record);
    cure_code := hisGetTreatmentNeedHPC(PByte(@cure_record), @cure_len);
    if cure_code = 0 then
    begin
      cure_str := GetFromBuffer(cure_Record[0].all_record);

      ills := Copy(cure_str, 1, 114);
      cures := Copy(cure_str, 115, 258);
      ill_b := 1;


      for i := 0 to ((Length(ills)) div 19) - 1 do   //���j�˯f
      begin
        ill_codeA := Copy(ills, ill_b, 5);
        ill_dateA := Copy(ills, ill_b + 5, 7);
        ill_dateB := Copy(ills, ill_b + 12, 7);
        if Trim(ill_codeA) <> '' then
        begin
          inser_CRITICALILLNESS(getFeeNo, ill_codeA, ill_dateA, ill_dateB, getChrNo);
        end
        else
        begin
          Break;
        end;
        ill_b := ill_b + 19;
      end;

      cures_b := 1;
      for j := 0 to 5 do   //�N�E����
      begin
        cure_date1 := Copy(cures, cures_b, 13);
        cures_b := cures_b + 13;
        if Trim(cure_date1) <> '' then
        begin
          cure_code1 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;
          cure_code2 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;
          cure_code3 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;
          cure_code4 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;
          cure_code5 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;
          cure_code6 := Copy(cures, cures_b, 5);
          cures_b := cures_b + 5;

          insert_cure_record(getFeeNo, cure_date1, cure_code1, cure_code2, cure_code3, cure_code4, cure_code5, cure_code6);
        end
        else
        begin
          cures_b := cures_b + 30;
        end;
      end;

      treat_len := SizeOf(treat_Record);
      treat_code := hisGetTreatmentNoNeedHPC(PByte(@treat_Record), @treat_len);
      if treat_code = 0 then
      begin
        treat_str := GetFromBuffer(treat_record[0].all_treat_record);
        treats := Copy(treat_str, 85, 414);
        treat_b := 1;
        for j := 0 to 5 do
        begin
          TREATITEM := Copy(treats, treat_b, 2);
          if Trim(TREATITEM) <> '' then
          begin
            treat_b := treat_b + 2;
            BABYTREAT := Copy(treats, treat_b, 1);
            treat_b := treat_b + 1;
            OPD_DATE := Copy(treats, treat_b, 13);
            treat_b := treat_b + 13;
            CARD_COMP := Copy(treats, treat_b, 1);
            treat_b := treat_b + 1;
            IC_SEQ_NO := Copy(treats, treat_b, 4);
            treat_b := treat_b + 4;
            HOSP_ID := Copy(treats, treat_b, 10);
            treat_b := treat_b + 10;
            OPD_FEE_AMT := Copy(treats, treat_b, 8);
            treat_b := treat_b + 8;
            OPD_PART_AMT := Copy(treats, treat_b, 8);
            treat_b := treat_b + 8;
            IPD_FEE_AMT := Copy(treats, treat_b, 8);
            treat_b := treat_b + 8;
            IPD_PART_AMT_MORE := Copy(treats, treat_b, 7);
            treat_b := treat_b + 7;
            IPD_PART_AMT_LESS := Copy(treats, treat_b, 7);
            treat_b := treat_b + 7;
            insert_treat_record(getFeeNo, TREATITEM, BABYTREAT, OPD_DATE, CARD_COMP, IC_SEQ_NO, HOSP_ID, OPD_FEE_AMT, OPD_PART_AMT, IPD_FEE_AMT, IPD_PART_AMT_MORE, IPD_PART_AMT_LESS);
          end
          else
          begin
            Break;
          end;
        end;
      end
      else
      begin
        Result := treat_code;
      end;

      Result := 0;
    end
    else
    begin
      Result := ILL_code;
    end;
  except
    if ILL_code <> 0 then
    begin
      Result := ILL_code;
    end
    else
    begin
      Result := treat_code;
    end;
  end;
end;

procedure ic_data.Execute;
var
  ComRet, ILL_Ret, pre_code, preg_code, prev_code, Inoculate_code: Integer;//ComRet...comport�Ǧ^��,ILL_RET..�C�B,pre_code..�g�J�C�B,preg_code...����,prev_code..�w���O��;Inoculate_code..�w������
  err_msg: string;
  temp_chr: string;
begin
  FreeOnTerminate := true;
  ErrStr:='';
  isExecute:=false;
  ILL_Ret := 0;
  preg_code := 0;
  prev_code := 0;
  Inoculate_code := 0;
  pre_code := 0;

  if Trim(getChrNo) <> '' then
  begin
    try
      csCloseCom();
      ComRet := csOpenCom(0);
      if ComRet = -1 then
      begin
        csCloseCom();
      end
      else
      begin
        FrmOrder.SetICINFOR(20,'IC�dŪ���i�� 20%');
        try
          begin
            insert_ic_med_warning_log('R', 'X', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X'); //IC�dŪ��LOG
          end
        except
        end;

        FrmOrder.SetICINFOR(35,'IC�dŪ���i�� 35%');

        if ILL_Ret = 0 then
        begin
          if write_right('3', '1', getFeeNo) = false then
          begin

            preg_code := get_preg(getFeeNo);
            if preg_code <> 0 then
            begin
              ErrStr:='���o���˸�ƥ���';
              isExecute:=true;
            end;

          end;
        end
        else
        begin
          preg_code := 0;
        end;
        FrmOrder.SetICINFOR(40,'IC�dŪ���i�� 40%');

        if preg_code = 0 then
        begin
          if write_right('3', '2', getFeeNo) = false then
          begin
            prev_code := get_prev(getFeeNo);
            if prev_code <> 0 then
            begin
              ErrStr:='���o�w���O������';
              isExecute:=true;
            end;
          end
          else
          begin
            prev_code := 0;
          end;
        end;

        if prev_code = 0 then
        begin
          if write_right('4', '', getFeeNo) = false then
          begin
            Inoculate_code := get_Inoculate(getFeeNo);
            if Inoculate_code <> 0 then
            begin
              ErrStr:='���o�w�����ظ�ƥ���';
              isExecute:=true;
            end;
          end
          else
          begin
            Inoculate_code := 0;
          end;
        end;

        FrmOrder.SetICINFOR(50,'IC�dŪ���i�� 50%');

        if write_right('2', '', getFeeNo) = false then
        begin
          if Inoculate_code = 0 then
          begin
            FrmOrder.SetICINFOR(55,'IC�dŪ���i�� 55%');

            pre_code := get_PRESCRIPTION(getChrNo, getFeeNo);

            FrmOrder.SetICINFOR(85,'IC�dŪ���i�� 85%');

            if pre_code <> 0 then
            begin
              ErrStr:='���o�L�ӥv��ƥ���';
              isExecute:=true;
            end;
          end;
        end
        else
        begin
          pre_code := 0;
        end;
      end;  

      if write_right('1', '', getFeeNo) = false then
        begin
          ILL_Ret := get_CRITICALILLNESS(getFeeNo, getChrNo); //���j�˯f
          //Synchronize(call);
        end
        else
        begin
          ILL_Ret := 0;
          //Synchronize(call);
        end;
    except
      isExecute:=true;
    end;
  end;
  isExecute:=true;
end;

procedure ic_basic.Execute;
var
  ComRet, DC_V, HPC_V, IC_V: Integer;//ComRet...comport�Ǧ^��; DC_V....IDC�{�ҶǦ^��;IC_V...IC�d�^�ǭ�; HPC_V...��ƤH��PIN��;
  err_msg: string;
begin
  FreeOnTerminate := true;
  ErrStr:='';
  isExecute:=false;
  try
    csCloseCom();
    ComRet := csOpenCom(0);
    if ComRet = -1 then
    begin
      csCloseCom();
      err_msg := error_list(0, 4000);
      ErrStr:=err_msg;
      isExecute:=true;
    end
    else
    begin
      DC_V := IDC_CONNECT();  //SAM�d�ˬd
      if (DC_V <> 0) then
      begin
        csCloseCom();
        err_msg := error_list(0, DC_V); //�ǤJ���~�N�X
        ErrStr:=err_msg;
        isExecute:=true;
      end
      else
      begin
        HPC_V := HPC_check();   //��ƤH���d�ˬd
        if HPC_V <> 0 then
        begin
          err_msg := error_list(0, HPC_V); //�ǤJ���~�N�X
          ErrStr:=err_msg;
          isExecute:=true;
        end
        else
        begin
          IC_V := IC_CHECK();//�ˬdIC�d

          if (IC_V > 2) then
          begin
            err_msg := error_list(0, IC_V); //�ǤJ���~�N�X
            ErrStr:=err_msg;
            csCloseCom();
            if (IntToStr(IC_V) = '9999') then
              ErrStr:= err_msg + #13 + '�D�ӯf�H���O�d';
            isExecute:=true;
            self.Terminate;
          end
          else
          begin
            csCloseCom();
            ic_data_thread := ic_data.Create(false);
          end;
        end;
      end;
    end;
  except
    csCloseCom();
    isExecute:=true;
  end;
end;

end.

