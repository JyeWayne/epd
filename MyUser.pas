unit MyUser;

interface
uses
Sysutils;

type Roper = record
  ID,Name,Dept,Level,Password,Cost,PassWord2,BeginDate,Id_no: String;
end;

type Rpat = record
  chr_no,fee_no,id_no,bed_no,sex,dept,vscode,Epd_date,Epd_time,cost,Birth_date,Pat_name,PAT_ID,ACType,CPD_DATE,MDR,themoney,
  shiftno,deptRoom,opdstatus,vsfeatcode,orderdoc,partid,patweight,vsidno: String;
  HasPat : Boolean;
end;

type TUser = Class
private
  myUser : Roper;
public

  procedure Clear;
  function SetUser(id,name,level,dept,pwd,Cost,Pwd2, BDate,Id_no : string) : Boolean;
  property GetUserID : String read myUser.ID ;
  property GetUserName : String read myUser.Name;
  property GetUserLevel : String read myUser.Level;
  property GetUserDept : String read myUser.Dept;
  property GetUserPW : String read myUser.PassWord;
  property GetUserCost : String read myUser.Cost;
  property GetUserPw2 : String read myUser.PassWord2;
  property GetUserBeginDate : String read myUser.BeginDate;
  property GetUserIdno :string read myuser.Id_no;
end;

type TPat = Class
private  
  myPat : Rpat;
  procedure Setvscode(value:string);
  procedure Setvsfeatcode(value:string);
  Procedure Setpartid(value:string);
  Procedure Setorderdoc(value:string);
  Procedure Setpatweight(value:string);
  procedure Setvsidno(value:string);
public
  Procedure Clear;

  function SetPat(chrno,feeno,idno,bedno,sex,dept,Epddate,Epdtime,cost,Birthdate,patname,patid,ACType,cpddate,shiftno,deptRoom,opdstatus : String): Boolean;
  property GetChrNo : String Read myPat.Chr_no;
  property GetFeeNo : String Read myPat.Fee_no;
  property GetIdNo : String Read myPat.ID_No;
  property GetBedNo : String Read myPat.Bed_no;
  property Getsex01 : String Read myPat.sex;
  property GetPatDept : String Read myPat.Dept;
  property GetEpdDate : String Read myPat.Epd_date;
  property GetEpdTime : String Read myPat.Epd_Time;
  property GetCost : String Read myPat.Cost;
  property GetBirth : String Read myPat.Birth_date;
  property GetPatName : String Read myPat.Pat_Name;
  property GetPatId : String Read myPat.Pat_ID;
  property GetACType : String Read myPat.ACType;
  property CPD_DATE : String read myPat.CPD_DATE;
  property HvaePat : boolean Read MyPat.HasPat;
  property Getshiftno : String read myPat.shiftno;
  property GetdeptRoom : String read myPat.deptroom;
  property Getopdstatus : string read mypat.opdstatus;

  property GetVsCode: string read myPat.vscode write Setvscode;
  property Getvsfeatcode: string read myPat.vsfeatcode write Setvsfeatcode;
  property Getpartid: string read myPat.partid write Setpartid;
  property Getorderdoc: string read myPat.orderdoc write Setorderdoc;
  property Getpatweight: string read myPat.patweight write Setpatweight;
  property getvsidno: string read mypat.vsidno write Setvsidno;
end;


var
  SHEETNO, ICD91, ICD92, ICD93, CONMAJOR, CONSTR1, CONSTR2, CONDEPT,
  CONCLA, CLINIC, Prtcnt, PCHRNOTOINT, MAJORTYPE, USERPWS: string;

implementation

uses Commfunc;

{ User }

procedure TUser.Clear;
begin
  myUser.ID := '';
  myUser.Name := '';
  myUser.Dept := '';
  myUser.Level := '';
  myUser.Password := '';
  myUser.Cost := '';
  myUser.PassWord2 := '';
  myUser.BeginDate := '';
end;

function TUser.SetUser(id, name, level, dept, pwd, Cost,Pwd2, BDate,Id_no: string): Boolean;
begin
  if (Trim(id)<>'') or
     (Trim(name)<>'') or
     (Trim(level)<>'') or
     (Trim(Pwd)<>'') then
  begin
    myUser.ID   := trim(id);
    myUser.name := Trim(Name);
    myUser.dept := Trim(dept);
    myUser.Level := Trim(Level);
    myUser.password := Trim(PWD);
    myUser.Cost := Trim(Cost);
    myUser.BeginDate := Trim(BDate);
    if Trim(Pwd2)='' then
      myUser.Password2 :=Trim(PWD)
    else
      myUser.Password2 :=Trim(Pwd2);
    myuser.Id_no := trim(Id_no);
    SetUser := True;
  end
  else
  begin
    SetUser := False;
  end
end;

{ TPat }

procedure TPat.Clear;
begin
  myPat.chr_no:='';
  myPat.fee_no:='';
  myPat.id_no:='';
  myPat.bed_no:='';
  myPat.sex:='';
  myPat.dept:='';
  myPat.vscode:='';
  myPat.Epd_date:='';
  myPat.Epd_time:='';
  myPat.cost:='';
  myPat.Birth_date:='';
  myPat.Pat_name:='';
  myPat.PAT_ID:='';
  myPat.ACType:='';
  myPat.CPD_DATE:='';
  myPat.MDR:='';
  myPat.themoney:='';
  myPat.HasPat := False;
end;




function TPat.SetPat(chrno, feeno, idno, bedno, sex, dept, Epddate,
  Epdtime, cost, Birthdate, patname, patid, ACType,cpddate,shiftno,deptRoom,opdstatus: String): Boolean;
begin
  myPat.chr_no:=Trim(chrno);
  myPat.fee_no:=Trim(feeno);
  myPat.id_no:=Trim(idno);
  myPat.bed_no:=Trim(bedno);
  myPat.sex:=sex;
  myPat.dept:=Trim(dept);
  myPat.Epd_date:=AddChar(Trim(Epddate),'0',7);
  myPat.Epd_time:=Epdtime;
  myPat.cost:=Trim(cost);
  myPat.Birth_date:=AddChar(Trim(birthdate),'0',7);
  myPat.Pat_name:=Trim(patname);
  myPat.PAT_ID:=patid;
  myPat.ACType:=ACType;
  myPat.CPD_DATE:=Trim(cpddate);
  if myPat.CPD_DATE <> ''then
    myPat.CPD_DATE := AddChar(Trim(myPat.CPD_DATE),'0',7);
  myPat.MDR:='';
  myPat.themoney:='';
  mypat.shiftno := Trim(shiftno);
  myPat.deptRoom := Trim(deptRoom);
  myPat.opdstatus := Trim(opdstatus);
  myPat.HasPat := True;
  Result := True;
end;

procedure TPat.Setvscode(value: string);
begin
  mypat.vscode := value;
end;

procedure TPat.Setvsfeatcode(value: string);
begin
  mypat.vsfeatcode := value;
end;

procedure TPat.Setpartid(value: string);
begin
  mypat.partid := value;
end;

procedure TPat.Setorderdoc(value: string);
begin
  mypat.orderdoc := value;
end;

procedure TPat.Setpatweight(value: string);
begin
  mypat.patweight := value;
end;

procedure TPat.Setvsidno(value: string);
begin
  myPat.vsidno := value;
end;

end.
