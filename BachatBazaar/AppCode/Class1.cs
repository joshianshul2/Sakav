using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>


public class ConnectionManager
{
    public string cntrString = ConfigurationManager.ConnectionStrings["kirana"].ToString(); // "Server=Win10;Database=WasteManagement;Uid=sa;Pwd=sa@2008";
    //public string cntrString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/HIS/Database/DrClinic.mdb";
    // public string cntrString = "Provider=SQLNCLI10;Server=hssonline.db.11492269.hostedresource.com;Database=hssonline;Pwd=Anandguru@108;";
    //public string cntrString = "Data Source=hssonline.db.11492269.hostedresource.com; Initial Catalog=hssonline; User ID=hssonline; Password='Anandguru@108'";
    public static ConnectionManager inst;
    public System.Data.SqlClient.SqlConnection   CreateNewConnection()
    {
        return new System.Data.SqlClient.SqlConnection(cntrString);
    }
    public static ConnectionManager Inst
    {
        get
        {
            if (inst == null)
                inst = new ConnectionManager();
            return inst;
        }
    }
    public ConnectionManager()
    {
        //using (var cnt = ConnectionManager.Inst.CreateNewConnection())
    }
}

public static class GlobalVar
{
    /// <summary>
    /// Global variable that is constant.
    /// </summary>
    public const string GlobalString = "Important Text";

    /// <summary>
    /// Static value protected by access routine.
    /// </summary>
    static string _globalValue;

    /// <summary>
    /// Access routine for global variable.
    /// </summary>
    public static string GlobalValue
    {
        get
        {
            return _globalValue;
        }
        set
        {
            _globalValue = value;
        }
    }

    /// <summary>
    /// Global static field.
    /// </summary>
    public static bool GlobalBoolean;
}






public static class GlobalVarNE
{
    /// <summary>
    /// Global variable that is constant.
    /// </summary>
    public const string GlobalStringNE = "Important Text";

    /// <summary>
    /// Static value protected by access routine.
    /// </summary>
    static string _globalValueNE;

    /// <summary>
    /// Access routine for global variable.
    /// </summary>
    public static string GlobalValueNE
    {
        get
        {
            return _globalValueNE;
        }
        set
        {
            _globalValueNE = value;
        }
    }

    /// <summary>
    /// Global static field.
    /// </summary>
    public static bool GlobalBooleanNE;
}




public static class GlobalVaropdid
{
    /// <summary>
    /// Global variable that is constant.
    /// </summary>
    public const string GlobalStringopdid = "Important Text";

    /// <summary>
    /// Static value protected by access routine.
    /// </summary>
    static string _globalValueopdid;

    /// <summary>
    /// Access routine for global variable.
    /// </summary>
    public static string GlobalValueopdid
    {
        get
        {
            return _globalValueopdid;
        }
        set
        {
            _globalValueopdid = value;
        }
    }

    /// <summary>
    /// Global static field.
    /// </summary>
    public static bool GlobalBooleanopdid;
}
public static class GlobalVar3
{

    public const string GlobalString3 = "Important Text";


    static string _globalValue3;


    public static string GlobalValue3
    {
        get
        {
            return _globalValue3;
        }
        set
        {
            _globalValue3 = value;
        }
    }

    public static bool GlobalBoolean3;
}


public class Globalusername
{

    static string _Globalusername;

    public static string Globalusername1
    {
        get
        {
            return _Globalusername;
        }
        set
        {
            _Globalusername = value;
        }
    }


}



public class GlobalSrno
{

    static int _GlobalSrno;

    public static int GlobalSrno1
    {
        get
        {
            return _GlobalSrno;
        }
        set
        {
            _GlobalSrno = value;
        }
    }


}


public class uuclass
{

    static string _newglobal;

    public static string uuclassobj
    {
        get { return _newglobal; }
        set { _newglobal = value; }

    }

}


public class fyear
{
    static string _fyear;
    public static string f
    {
        get { return _fyear; }
        set { _fyear = value; }

    }
}

public class globalopd
{
    static string _globalopd;
    public static string globalopdid
    {

        get { return _globalopd; }
        set { _globalopd = value; }


    }

}

public class globalipd
{
    static string _globalipd;
    public static string globalipdid
    {

        get { return _globalipd; }
        set { _globalipd = value; }


    }

}



public class globaluhid
{
    static string _globaluhid;
    public static string globaluhidno
    {

        get { return _globaluhid; }
        set { _globaluhid = value; }


    }

}


public class globaltoken
{
    static string _globaltoken;
    public static string globaltokenno
    {

        get { return _globaltoken; }
        set { _globaltoken = value; }


    }

}
public class globalRegDate
{
    static DateTime _globalRegDate;
    public static DateTime globalRegdateno
    {

        get { return _globalRegDate; }
        set { _globalRegDate = value; }


    }

}

public class formula1
{
    static String _f1;
    public static string f1
    {
        get { return _f1; }
        set { _f1 = value; }
    }
}


public class Path
{
    static String _pa1;
    public static string pa1
    {
        get { return _pa1; }
        set { _pa1 = value; }
    }
}

public class P1
{
    static String _p1;
    public static string p1
    {
        get { return _p1; }
        set { _p1 = value; }
    }
}


public class P2
{
    static String _p2;
    public static string p2
    {
        get { return _p2; }
        set { _p2 = value; }
    }
}

public class P3
{
    static String _p3;
    public static string p3
    {
        get { return _p3; }
        set { _p3 = value; }
    }
}


public class P4
{
    static String _p4;
    public static string p4
    {
        get { return _p4; }
        set { _p4 = value; }
    }
}


public class P5
{
    static String _p5;
    public static string p5
    {
        get { return _p5; }
        set { _p5 = value; }
    }
}

public class P6
{
    static String _p6;
    public static string p6
    {
        get { return _p6; }
        set { _p6 = value; }
    }
}

public class P7
{
    static String _p7;
    public static string p7
    {
        get { return _p7; }
        set { _p7 = value; }
    }
}
public class P8
{
    static String _p8;
    public static string p8
    {
        get { return _p8; }
        set { _p8 = value; }
    }
}

public class CR
{
    static String _cr;
    public static string cr
    {
        get { return _cr; }
        set { _cr = value; }
    }
}

public class NAME
{
    static String _name;
    public static string name
    {
        get { return _name; }
        set { _name = value; }
    }
}
public class SNAME
{
    static String _sname;
    public static string sname
    {
        get { return _sname; }
        set { _sname = value; }
    }
}
public class ADD
{
    static String _add;
    public static string add
    {
        get { return _add; }
        set { _add = value; }
    }
}
public class CON
{
    static String _con;
    public static string con
    {
        get { return _con; }
        set { _con = value; }
    }
}

public class CITY
{
    static String _city;
    public static string city
    {
        get { return _city; }
        set { _city = value; }
    }
}

public class STATE
{
    static String _state;
    public static string state
    {
        get { return _state; }
        set { _state = value; }
    }
}

public class AGE
{
    static String _age;
    public static string age
    {
        get { return _age; }
        set { _age = value; }
    }
}

public class GENDER
{
    static String _gender;
    public static string gender
    {
        get { return _gender; }
        set { _gender = value; }
    }
}

public class MOBILE
{
    static String _mobile;
    public static string mobile
    {
        get { return _mobile; }
        set { _mobile = value; }
    }
}


public class TELE
{
    static String _tele;
    public static string tele
    {
        get { return _tele; }
        set { _tele = value; }
    }
}

public class REFF
{
    static String _reff;
    public static string reff
    {
        get { return _reff; }
        set { _reff = value; }
    }
}

public class REG_ID
{
    static String _regid;
    public static string regid
    {
        get { return _regid; }
        set { _regid = value; }
    }
}

public class FNAME
{
    static String _fname;
    public static string fname
    {
        get { return _fname; }
        set { _fname = value; }
    }
}

public class ADD2
{
    static String _add2;
    public static string add2
    {
        get { return _add2; }
        set { _add2 = value; }
    }
}

public class Token
{
    static String _token;
    public static string token
    {
        get { return _token; }
        set { _token = value; }
    }
}

public class Patype
{
    static String _patype;
    public static string patype
    {
        get { return _patype; }
        set { _patype = value; }
    }
}

public class Time1
{
    static String _time1;
    public static string time1
    {
        get { return _time1; }
        set { _time1 = value; }
    }
}

public class PatSubCat
{
    static String _patSubCat;
    public static string patSubCat
    {
        get { return _patSubCat; }
        set { _patSubCat = value; }
    }
}

public class PatCat
{
    static String _patCat;
    public static string patCat
    {
        get { return _patCat; }
        set { _patCat = value; }
    }
}

public class PTitle
{
    static String _title;
    public static string title
    {
        get { return _title; }
        set { _title = value; }
    }
}

public class MNAME
{
    static String _mname;
    public static string mname
    {
        get { return _mname; }
        set { _mname = value; }
    }
}

public class GlobalMonth
{
    static String _globalMonth;
    public static string globalMonth
    {
        get { return _globalMonth; }
        set { _globalMonth = value; }
    }
}

public class GlobalDOB
{
    static String _dob;
    public static string dob
    {
        get { return _dob; }
        set { _dob = value; }
    }
}

public class GlobalDay
{
    static String _globalday;
    public static string globalday
    {
        get { return _globalday; }
        set { _globalday = value; }
    }
}


public class GlobalMarrital
{
    static String _globalMarrital;
    public static string globalMarrital
    {
        get { return _globalMarrital; }
        set { _globalMarrital = value; }
    }
}


public class GlobalOccupat
{
    static String _globalOccupat;
    public static string globalOccupat
    {
        get { return _globalOccupat; }
        set { _globalOccupat = value; }
    }
}


public class GlobalBloodgp
{
    static String _globalBloodgp;
    public static string globalBloodgp
    {
        get { return _globalBloodgp; }
        set { _globalBloodgp = value; }
    }
}

public class GlobalCountry
{
    static String _globalCountry;
    public static string globalCountry
    {
        get { return _globalCountry; }
        set { _globalCountry = value; }
    }
}

public class GlobalPincode
{
    static String _globalPincode;
    public static string globalPincode
    {
        get { return _globalPincode; }
        set { _globalPincode = value; }
    }
}

public class GlobalStdcode
{
    static String _globalStdcode;
    public static string globalStdcode
    {
        get { return _globalStdcode; }
        set { _globalStdcode = value; }
    }
}


public class Globalemail
{
    static String _globalemail;
    public static string globalemail
    {
        get { return _globalemail; }
        set { _globalemail = value; }
    }
}


public class Globalaname
{
    static String _globalaname;
    public static string globalaname
    {
        get { return _globalaname; }
        set { _globalaname = value; }
    }
}

public class GlobalContact
{
    static String _globalContact;
    public static string globalContact
    {
        get { return _globalContact; }
        set { _globalContact = value; }
    }
}

public class GlobalRelation
{
    static String _globalRelation;
    public static string globalRelation
    {
        get { return _globalRelation; }
        set { _globalRelation = value; }
    }
}

public class GlobalRemark
{
    static String _globalRemark;
    public static string globalRemark
    {
        get { return _globalRemark; }
        set { _globalRemark = value; }
    }
}

public class GlobalHospitalCharge
{
    static String _globalHospitalCharge;
    public static string globalHospitalCharge
    {
        get { return _globalHospitalCharge; }
        set { _globalHospitalCharge = value; }
    }
}

public class GlobalConsultCharge
{
    static String _globalConsultCharge;
    public static string globalConsultCharge
    {
        get { return _globalConsultCharge; }
        set { _globalConsultCharge = value; }
    }
}

public class GlobalDiscount
{
    static String _globaldiscount;
    public static string globaldiscount
    {
        get { return _globaldiscount; }
        set { _globaldiscount = value; }
    }
}

public class GlobalRDiscount
{
    static String _globalRdiscount;
    public static string globalRdiscount
    {
        get { return _globalRdiscount; }
        set { _globalRdiscount = value; }
    }
}

public class GlobalPaymode
{
    static String _globalPaymode;
    public static string globalPaymode
    {
        get { return _globalPaymode; }
        set { _globalPaymode = value; }
    }
}

public class GlobalPaydetail
{
    static String _globalPaydetail;
    public static string globalPaydetail
    {
        get { return _globalPaydetail; }
        set { _globalPaydetail = value; }
    }
}

public class GlobalTotalPay
{
    static String _globalTotalPay;
    public static string globalTotalPay
    {
        get { return _globalTotalPay; }
        set { _globalTotalPay = value; }
    }
}

public class globalReport1
{
    static String _globalreport1;
    public static string globalreport1
    {
        get { return _globalreport1; }
        set { _globalreport1 = value; }
    }
}

public class globalReport2
{
    static String _globalreport2;
    public static string globalreport2
    {
        get { return _globalreport2; }
        set { _globalreport2 = value; }
    }
}
public class globalReport3
{
    static DateTime _globalreport3;
    public static DateTime globalreport3
    {
        get { return _globalreport3; }
        set { _globalreport3 = value; }
    }
}
public class globalReport4
{
    static DateTime _globalreport4;
    public static DateTime globalreport4
    {
        get { return _globalreport4; }
        set { _globalreport4 = value; }
    }
}



public class GDate
{
    static string _abdate;
    public static string abdate
    {
        get { return _abdate = string.Format("{0:yyyyMMdd}", DateTime.Now); }
        set { _abdate = value; }
    }
}

public class Usertype
{
    static string _Usertype;
    public static string usertype
    {
        get { return _Usertype; }
        set { _Usertype = value; }

    }

}

