program ED;

uses
  ShareMem,
  Forms,
  Main in '..\Pubform\Main.pas' {FrmMain},
  Login in 'Login.pas' {FrmLogin},
  Commfunc in '..\Pubform\Commfunc.pas',
  MyMsgs in '..\Pubform\MyMsgs.pas' {EvenMessage},
  Global in 'Global.pas',
  MyUser in 'MyUser.pas',
  DBDM in '..\Pubform\DBDM.pas' {DM: TDataModule},
  PubPrintMain in 'PubPrintMain.pas' {FrmPubPrintMain},
  PatList in 'PatList.pas' {FrmPatList},
  MySQLc in 'MySQLc.pas',
  Order in 'Order.pas' {FrmOrder},
  ERsFunc in 'ERsFunc.pas',
  NurseOrder in 'NurseOrder.pas' {FrmNurseOrder},
  LabOrder in 'LabOrder.pas' {FrmLabOrder},
  ChkOrder in 'ChkOrder.pas' {FrmChkOrder},
  XRayOrder in 'XRayOrder.pas' {FrmXRayOrder},
  IPDCertificate in '..\Pubform\IPDCertificate.pas' {FrmIPDCertificate},
  IPDCertificatePkg in '..\Pubform\IPDCertificatePkg.pas' {FrmIPDCertificatePkg},
  PrintCeificate in '..\Pubform\PrintCeificate.pas' {FrmPrintCericifate},
  DNRList in '..\Pubform\DNRList.pas' {FrmPubDNRList},
  HosPiceList in '..\Pubform\HosPiceList.pas' {FrmHosPiceList},
  UsePKG in 'UsePKG.pas' {FrmUsePkg},
  PkgSet in 'PkgSet.pas' {FrmPkgSet},
  PrintPatData in 'PrintPatData.pas' {FrmPrintPatData},
  userpsw in 'userpsw.pas' {Frmuserpsw},
  FirstRecord in 'FirstRecord.pas' {FrmFirsrRecord},
  SetPhrase in 'SetPhrase.pas' {FrmSetPhrase},
  PrintFirstRecord in 'PrintFirstRecord.pas' {FrmPrintFirstRecord},
  warning in 'warning.pas' {FrmWarning},
  DataReport in 'DataReport.pas' {FrmDataReport},
  Ditto in 'Ditto.pas' {FrmDitto},
  GetICD9 in 'GetICD9.pas' {FrmGetICD9},
  ExitHosp in 'ExitHosp.pas' {FrmExitHosp},
  SMSsend in 'SMSsend.pas' {FrmSMSsend},
  MAJOR in 'MAJOR.pas' {FrmMAJOR},
  AreaBed in 'AreaBed.pas' {FrmAreaBed},
  Trauma in 'Trauma.pas' {FrmTrauma},
  ReportTrauma in 'ReportTrauma.pas' {Frmfirstrecord2},
  ReportTrauma1 in 'ReportTrauma1.pas' {FrmReportTrauma1},
  SaveData in 'SaveData.pas',
  chdocprnt in 'chdocprnt.pas' {Frmchdocprnt},
  Transfernote in 'Transfernote.pas' {FrmTransfernote},
  qrydate in 'qrydate.pas' {Frmqrydate},
  shift_note in 'shift_note.pas' {Frmshift_note},
  often in 'often.pas' {Frmoften},
  ErThread in 'ErThread.pas',
  PatInf in 'PatInf.pas' {FrmPatInf},
  MECHANISM in 'MECHANISM.pas' {FrmMECHANISM},
  MajorRept in 'MajorRept.pas' {FrmMajorRept},
  MAJOR2 in 'MAJOR2.pas' {FrmAMI},
  DDI in 'DDI.pas' {FrmDDI},
  PIC in 'PIC.pas' {Frmpic},
  CVAtPA in 'CVAtPA.pas' {FrmCVAtPA},
  CVAReport in 'CVAReport.pas' {FrmCVAReport},
  NIHSS in 'NIHSS.pas' {FrmNIHSS},
  BedEmpty in 'BedEmpty.pas' {FrmBedEmpty},
  Pain in '..\Pubform\Pain.pas' {FrmPain},
  MedProved in 'MedProved.pas' {FrmMedProved},
  RDShift in 'RDShift.pas' {FrmRDShift},
  outproms in 'outproms.pas' {Frmoutproms},
  EDPROCESS in 'EDPROCESS.pas' {FrmEDPROCESS},
  MAJORTRA in 'MAJORTRA.pas' {FrmMAJORTRA},
  REFERRAL_Rept in 'REFERRAL_Rept.pas' {FrmREFERRAL_Rept},
  warningdesc in 'warningdesc.pas' {FrmWarningdesc},
  NurseOrderRpt in 'NurseOrderRpt.pas' {FrmNurseOrderRpt},
  IPDDupMed in 'IPDDupMed.pas' {FrmIPDDupMed},
  instruction in 'instruction.pas' {frm_instruction},
  leave_diagnosis in 'leave_diagnosis.pas' {Frmleave_diagnosis},
  ICFunction in 'ICFunction.pas',
  insertIcInfor in 'insertIcInfor.pas' {FrmInsertIcInfor},
  Pkg in 'Pkg.pas' {FrmPKG},
  PrintTransfernote in 'PrintTransfernote.pas' {FrmPrintTransfernote},
  EMGLeve in 'EMGLeve.pas' {FrmEMGLeve},
  ISS in 'ISS.pas' {FrmISS},
  NurseEisai in 'NurseEisai.pas' {FrmNurseEisai},
  VCLFixes in 'VCLFixes.pas',
  NursEMR in 'NursEMR.pas' {FrmNursEMR},
  EMRRecord in 'EMRRecord.pas' {FrmEMRRecord},
  PreliminaryReport in 'PreliminaryReport.pas' {FrmPreliminaryReport},
  tnpdf in 'tnpdf.pas',
  PathDraw in 'PathDraw.pas' {FrmPathDraw},
  PathPic in 'PathPic.pas' {FrmPathPic},
  prdliminaryprt_U in 'prdliminaryprt_U.pas' {prdliminaryprt: TQuickRep},
  MTRL_LIST_PRINT in 'MTRL_LIST_PRINT.pas' {FrmMTRLListPrint},
  TriageData in 'TriageData.pas' {FrmTriage};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '��E��O';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TFrmInsertIcInfor, FrmInsertIcInfor);
  Application.CreateForm(TFrmPathDraw, FrmPathDraw);
  Application.CreateForm(TFrmPathPic, FrmPathPic);
  Application.CreateForm(TFrmMTRLListPrint, FrmMTRLListPrint);
  Application.CreateForm(TFrmTriage, FrmTriage);
  Application.Run;
end.