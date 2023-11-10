unit ErThread;

interface

uses  Classes, SysUtils, DateUtils,ADODB;

type
  TMajorcont = Class(TThread)
  Protected
    Procedure Execute;Override;
  end;

  TReportstatus = Class(TThread)
  Protected
    Procedure Execute;Override;
    Procedure call;
  private
    infee: string;
  end;

  TransOrder= Class(TThread)
  Protected
    procedure Execute;Override;
  end;

implementation

uses PatList, ERsFunc, MySQLc, Commfunc, Global, DBDM;

Procedure TMajorcont.Execute;
var
  sqlstr,t_name,stemp : string;
  h,m,totaltime,Aftertime,l_time,i :integer;
  Qry1,Qry2,Qry3 : TAdoQuery;
begin
  threadMajorcont := 'Y';
  totaltime := 0;
  Aftertime := 0;
  l_time := 0;
  h := 0;
  m := 0;
  Qry1 := TAdoQuery.Create(nil);
  Qry1.Connection := DM.ADOLink;
  Qry2 := TAdoQuery.Create(nil);
  Qry2.Connection := DM.ADOLink;
  Qry3 := TAdoQuery.Create(nil);
  Qry3.Connection := DM.ADOLink;
  for i :=0 to FrmPatList.SgMajor.RowCount-1 do
  begin
    FrmPatList.SgMajor.Cells[28,i] := '';
    FrmPatList.SgMajor.Cells[29,i] := '';
  end;
  try
    Qry1.Close;
    Qry1.SQL.Add('select c.* ');
    Qry1.SQL.Add('from reg_basic a,opd_basic b,er_status c ');
    Qry1.SQL.Add('where a.opd_date='+qt(epd_date)+' and a.OPD_KIND=''E''  and a.cncl_flag=''N'' ');
    Qry1.SQL.Add('      and a.opd_date=b.opd_date and a.fee_no=b.fee_no and a.fee_no=c.fee_no and ');
    Qry1.SQL.Add('trim(c.status) = ''9'' and c.CNCL_FLAG=''N'' ' +qstr);
    Qry1.SQL.Text;
    Qry1.Open;
    while not Qry1.Eof do
    begin
      totaltime := Qry1.fieldbyname('LIMIT_TATOL').AsInteger;
      t_name := trim(Qry1.fieldbyname('ILL_NAME').AsString);
      l_time := Qry1.fieldbyname('LIMIT_TIME').AsInteger;
      Aftertime := totaltime-MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime);
      sqlstr := '';
      if Qry1.fieldbyname('s_date').AsString <> '' then
      begin
        h := (MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime)) div 60 ;
        m := (MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime)) mod 60;
        t_name := t_name+'_'+IntToStr(h)+'小時又'+AddChar(IntToStr(m),'0',2)+'分';
      end;
      if Aftertime > (totaltime-l_time) then
        stemp := '_N'
      else if Aftertime >= 0 then
        stemp := '_C'
      else
        stemp := '_Y';
      FrmPatList.setsgmajor(Qry1.fieldbyname('fee_no').AsString, trim(Qry1.fieldbyname('ILL_NAME').AsString)+sTemp,28);
      FrmPatList.setsgmajor(Qry1.fieldbyname('fee_no').AsString, t_name,29);
      Qry1.Next;
    end;
  except

  end;
  repatlistprait := True;
  threadMajorcont := 'N';
end;


procedure TReportstatus.Execute;
var
  reb,strq,t_name,sqlstr,stemp,fee : String;
  Qry1 : TAdoQuery;
  vh,h,m,totaltime,Aftertime,l_time,i :integer;
  ordtype : TStringList;
begin
  threadReportstatus := 'Y';
  Qry1 := TAdoQuery.Create(nil);
  Qry1.Connection := DM.ADOLink;
  ordtype := TStringList.Create;
  ordtype.Clear;
  ordtype.Add('M');
  ordtype.Add('C');
  ordtype.Add('L');
  ordtype.Add('T');
  ordtype.Add('X');
  ordtype.Add('MRI');
  ordtype.Add('CT');
  threadMajorcont := 'Y';
  totaltime := 0;
  Aftertime := 0;
  l_time := 0;
  h := 0;
  m := 0;
  Qry1.Close;
  Qry1.SQL.Add('select c.* ');//a.opd_date='+qt(epd_date)+' and
  Qry1.SQL.Add('from reg_basic a,opd_basic b,er_status c ');
  Qry1.SQL.Add('where '+qstr+' a.OPD_KIND=''E''  and a.cncl_flag=''N'' ');
  Qry1.SQL.Add('      and a.opd_date=b.opd_date and a.fee_no=b.fee_no and a.fee_no=c.fee_no and ');
  Qry1.SQL.Add('trim(c.status) = ''9'' and c.CNCL_FLAG=''N''');
  Qry1.SQL.Text;
  sql_Waiting_log('OPEN',Qry1.SQL.Text);
  Qry1.Open;
  sql_Waiting_log('CLOSE','');
  while not Qry1.Eof do
  begin
    totaltime := Qry1.fieldbyname('LIMIT_TATOL').AsInteger;
    t_name := trim(Qry1.fieldbyname('ILL_NAME').AsString);
    l_time := Qry1.fieldbyname('LIMIT_TIME').AsInteger;
    Aftertime := totaltime-MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime);
    sqlstr := '';
    if Qry1.fieldbyname('s_date').AsString <> '' then
    begin
      h := (MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime)) div 60 ;
      m := (MinutesBetween(now,Qry1.fieldbyname('s_date').AsDateTime)) mod 60;
      t_name := t_name+'_'+IntToStr(h)+'小時又'+AddChar(IntToStr(m),'0',2)+'分';
    end;
    if Aftertime > (totaltime-l_time) then
      stemp := '_N'
    else if Aftertime >= 0 then
      stemp := '_C'
    else
      stemp := '_Y';
    FrmPatList.setsgmajor(Qry1.fieldbyname('fee_no').AsString, trim(Qry1.fieldbyname('ILL_NAME').AsString)+sTemp,28);
    FrmPatList.setsgmajor(Qry1.fieldbyname('fee_no').AsString, t_name,29);
    Qry1.Next;
  end;

  Qry1.Close;
  Qry1.SQL.Clear;                                                                            //a.opd_date='+qt(epd_date)+' and
  Qry1.SQL.Add('select distinct a.fee_no from reg_basic a,opd_basic b,seen_reportdata c where '+qstr+' a.OPD_KIND=''E''  and a.cncl_flag=''N'' ');
  Qry1.SQL.Add(' and a.opd_date=b.opd_date and a.fee_no=b.fee_no and a.fee_no=c.fee_no ');
  Qry1.SQL.Text;
  sql_Waiting_log('OPEN',Qry1.SQL.Text);
  Qry1.Open;
  sql_Waiting_log('CLOSE','');
  while not Qry1.Eof do
  begin //檢驗看過報告
    FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'4',18); //完成
    infee := Trim(Qry1.FieldByName('fee_no').AsString);
    Qry1.Next;
  end;

  Qry1.Close;
  Qry1.SQL.Clear;                                                                     //a.opd_date='+qt(epd_date)+' and
  Qry1.SQL.Add('select distinct a.fee_no from reg_basic a,opd_basic b,Lab_list c where '+qstr+' a.OPD_KIND=''E''  and a.cncl_flag=''N'' ');
  Qry1.SQL.Add(' and a.opd_date=b.opd_date and a.fee_no=b.fee_no and a.fee_no=c.fee_no and c.order_date between (select opd_date from opd_basic where fee_no=a.fee_no and Rownum=1) and '+Qt(ROCDate(myDate,'')));
  Qry1.SQL.Add(' and not exists(select * from seen_reportdata d where a.fee_no=d.fee_no and trim(c.sp_no)=trim(d.single_no))');
  Qry1.SQL.Add(' and nvl(trim(c.sp_no),''0'')<>''0'' '); //like ''E%''                                           // '+qt(epd_date)+'
  Qry1.SQL.Text;
  sql_Waiting_log('OPEN',Qry1.SQL.Text);
  Qry1.Open;
  sql_Waiting_log('CLOSE','');
  while not Qry1.Eof do
  begin //有檢驗報告
    FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'3',18); //完成
    infee := Trim(Qry1.FieldByName('fee_no').AsString);
    //Synchronize(call);
    Qry1.Next;
  end;
  Qry1.Close;
  Qry1.SQL.Clear; //a.opd_date='+qt(epd_date)+' and 
  strq := 'select c.*,a.fee_no as nfeeno,a.reg_date as now_reg_date,a.rsv_opd_time as now_reg_time from reg_basic a,opd_basic b,epd_his c '+
          'where '+qstr+' a.OPD_KIND=''E'' and a.cncl_flag=''N'' '+              //  '+Qt(ROCDate(ROCToDate(epd_date)-3,''))+'
          'and a.opd_date=b.opd_date and a.fee_no=b.fee_no and c.end_date >= to_char(to_date(trim(a.opd_date)+19110000,''YYYYMMDD'')-3,''YYYYMMDD'')-19110000 '+                                                                    //  +Qt(epd_date)
          //'and a.opd_date=b.opd_date and a.fee_no=b.fee_no and c.end_date between to_char(to_date(trim(a.opd_date)+19110000,''YYYYMMDD'')-3,''YYYYMMDD'')-19110000 and a.opd_date'+
          ' and a.chr_no=c.chr_no and a.fee_no<>c.fee_no ' ;

  Qry1.SQL.Text := strq;
  sql_Waiting_log('OPEN',Qry1.SQL.Text);
  Qry1.Open;
  sql_Waiting_log('CLOSE','');
  //fee := '';
  while not Qry1.Eof do
  begin
    if fee <> trim(Qry1.fieldbyname('nfeeno').AsString) then
    begin
      //vh := (MinutesBetween(ROCToDate(trim(Qry1.fieldbyname('reg_date').AsString))+ROCToTime(trim(Qry1.fieldbyname('reg_time').AsString)),ROCToDate(trim(Qry1.fieldbyname('end_date').AsString))+ROCToTime(trim(Qry1.fieldbyname('end_time').AsString)))) div 60 ;
      vh := (MinutesBetween(ROCToDate(trim(Qry1.fieldbyname('now_reg_date').AsString))+ROCToTime(trim(Qry1.fieldbyname('now_reg_time').AsString)),ROCToDate(trim(Qry1.fieldbyname('end_date').AsString))+ROCToTime(trim(Qry1.fieldbyname('end_time').AsString)))) div 60 ;

      if now < (ROCToDate(trim(Qry1.fieldbyname('end_date').AsString))+ROCToTime(trim(Qry1.fieldbyname('end_time').AsString))) then
        vh := vh * -1;
      if (vh < 24) and (vh >= 0) then
        FrmPatList.setsgmajor(Qry1.fieldbyname('nfeeno').AsString,'24H回診',27)
      else if (vh > 24) and ( vh < 48) then
        FrmPatList.setsgmajor(Qry1.fieldbyname('nfeeno').AsString,'48H回診',27)
      else if (vh > 48)  and ( vh <= 72) then
        FrmPatList.setsgmajor(Qry1.fieldbyname('nfeeno').AsString,'72H回診',27)
      else
        FrmPatList.setsgmajor(Qry1.fieldbyname('nfeeno').AsString,' ',27);
    end;
    fee := trim(Qry1.fieldbyname('nfeeno').AsString);
    Qry1.Next;
  end;
 { Qry1.Close;
  Qry2.SQL.Clear;
  Qry2.SQL.Add('select distinct fee_no from Lab_list where order_date between '+Qt(epd_date)+' and '+Qt(ROCDate(ROCToDate(epd_date)+1,''))+' and ');
  Qry2.SQL.Add('nvl(trim(sp_no),''0'')<>''0'' and fee_no ='+qt(fee_no)); //like ''E%''
  Qry2.Open;
  while not Qry2.Eof do
  begin //檢查
    FrmPatList.setsgmajor(Qry2.FieldByName('fee_no').AsString,'2',16); //完成
    setstatus(Qry2.FieldByName('fee_no').AsString,'7','');//動向
    Qry2.Next;
  end;}
    //放射
    //FrmPatList.setsgmajor(Qry2.FieldByName('fee_no').AsString,'2',20);
    //FrmPatList.setstatus(Qry2.FieldByName('fee_no').AsString,'7','');
    //mri
    //FrmPatList.setsgmajor(Qry2.FieldByName('fee_no').AsString,'2',24);
    //FrmPatList.setstatus(Qry2.FieldByName('fee_no').AsString,'7','');//動向
    //CT
    //FrmPatList.setsgmajor(Qry2.FieldByName('fee_no').AsString,'2',22);
    //FrmPatList.setstatus(Qry2.FieldByName('fee_no').AsString,'7','');
  //狀態筆數

  Qry1.Close;
  Qry1.SQL.Clear;
  Qry1.SQL.Add('select Fee_no,decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag) as so_flag, count(*) as cout, ');
  Qry1.SQL.Add('sum(decode(nvl(nus_oper,''0''),''0'',0,1)) as nuschk, ');
  Qry1.SQL.Add('sum(decode(order_status,''Y'',1,0)) as confchk from epd_all_order where');
  Qry1.SQL.Add(' order_date between (select opd_date from opd_basic where fee_no=epd_all_order.fee_no and Rownum=1) and '+Qt(ROCDate(myDate,''))+' AND DEL_FLAG=''N'' group by Fee_no,decode(order_type,''X3'',''CT'',''X2'',''MRI'',So_flag)');
  Qry1.SQL.Text;
  sql_Waiting_log('OPEN',Qry1.SQL.Text);
  Qry1.Open;
  sql_Waiting_log('CLOSE','');
  while not Qry1.Eof do //開單-->護理-->簽收-->報告
  begin
    case  ordtype.IndexOf(Qry1.FieldByName('so_flag').AsString) of
      0:// 'M'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,1);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('nuschk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'3',2) //完成or發報告
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('nuschk').AsInteger) and (Qry1.FieldByName('nuschk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',2) //執行中
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',2);//開立
        end;
      1: // 'C'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,5);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString,6);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('confchk').AsString,15);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('confchk').AsInteger then
          begin
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'2',16) //已簽收
          end
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('confchk').AsInteger) and (Qry1.FieldByName('confchk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',16) //部分完成
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',16);//開單
        end;
      2: // 'L'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,7);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString,8);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('confchk').AsString,17);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('confchk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'2',18) //已簽收
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('confchk').AsInteger) and (Qry1.FieldByName('confchk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',18) //部分完成
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',18);//開單
        end;
      3: // 'T'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,3);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('nuschk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'3',4) //完成
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('nuschk').AsInteger) and (Qry1.FieldByName('nuschk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',4) //部分完成
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',4);//開單
        end;
      4: // 'X'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,9);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString,10);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('confchk').AsString,19);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('confchk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'2',20)//已簽收
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('confchk').AsInteger) and (Qry1.FieldByName('confchk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',20)
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',20);
        end;
      5: // 'MRI'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,13);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString,14);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('confchk').AsString,23);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('confchk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'2',24)
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('confchk').AsInteger) and (Qry1.FieldByName('confchk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',24)
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',24);
        end;
      6: // 'CT'
        begin
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString+'/'+Qry1.FieldByName('cout').AsString,11);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('nuschk').AsString,12);
          FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,Qry1.FieldByName('confchk').AsString,21);
          if Qry1.FieldByName('cout').AsInteger = Qry1.FieldByName('confchk').AsInteger then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'2',22)
          else if (Qry1.FieldByName('cout').AsInteger > Qry1.FieldByName('confchk').AsInteger) and (Qry1.FieldByName('confchk').AsInteger > 0) then
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'1',22)
          else
            FrmPatList.setsgmajor(Qry1.FieldByName('fee_no').AsString,'0',22);
        end;
    end;
    Qry1.Next;
  end;
  threadReportstatus := 'N';
  repatlistprait := True;
end;

Procedure TReportstatus.call;
begin
  //setstatus(infee,'7','');//動向
end;

procedure TransOrder.Execute;
var
  i : Integer;
  reb,strq : String;
  Qry : TAdoQuery;
  vh : integer;
begin
  threadransOrder:= 'Y';
  Qry := TAdoQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  Qry.Close;
  Qry.SQL.Clear;
  strq := 'select c.*,a.fee_no as nfeeno from reg_basic a,opd_basic b,epd_his c '+
          'where a.opd_date='+qt(epd_date)+' and a.OPD_KIND=''E'' and a.cncl_flag=''N'' '+
          'and a.opd_date=b.opd_date and a.fee_no=b.fee_no and c.end_date between '+Qt(ROCDate(myDate-3,''))+' and '+Qt(ROCDate(myDate,''))+
          ' and a.chr_no=c.chr_no and a.fee_no<>c.fee_no '+qstr;
  Qry.SQL.Text := strq;
  Qry.Open;
  while not qry.Eof do
  begin
    vh := (MinutesBetween(now,ROCToDate(trim(Qry.fieldbyname('end_date').AsString))+ROCToTime(trim(Qry.fieldbyname('end_time').AsString)))) div 60 ;
    if now < (ROCToDate(trim(Qry.fieldbyname('end_date').AsString))+ROCToTime(trim(Qry.fieldbyname('end_time').AsString))) then
      vh := vh * -1;
    if (vh < 24) and (vh > 0) then
      FrmPatList.setsgmajor(Qry.fieldbyname('nfeeno').AsString,'24H回診',27)
    else if (vh > 24) and ( vh < 48) then
      FrmPatList.setsgmajor(Qry.fieldbyname('nfeeno').AsString,'48H回診',27)
    else if (vh > 48)  and ( vh <= 72) then
      FrmPatList.setsgmajor(Qry.fieldbyname('nfeeno').AsString,'72H回診',27)
    else
      FrmPatList.setsgmajor(Qry.fieldbyname('nfeeno').AsString,' ',27);
    Qry.Next;
  end;
  threadransOrder:= 'N';
  repatlistprait := True;
end;

end.
 