using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Security.Cryptography;
using System.Text;


    public class MyDataConnection
    {
        public SqlConnection SqlCon = new SqlConnection();
        public MyDataConnection()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public bool OpenConnetion()
        {
            if (SqlCon.State != System.Data.ConnectionState.Open)
            {
                try
                {
                    SqlCon.ConnectionString = ConfigurationManager.ConnectionStrings["kirana"].ToString();
                    SqlCon.Open();
                    return true;
                }
                catch (Exception err)
                {
                    return false;
                }
            }
            return true;
        }
        public bool CloseConnection()
        {
            try
            {
                if (SqlCon.State == ConnectionState.Open)
                    SqlCon.Close();
            }
            catch (Exception err)
            {
                return false;
            }
            return true;
        }
    public bool  InsertData(DataTable dt,DataRow dr,string sSql)
    {
        bool x = false;
      //  DataTable dt = new DataTable();
        try
        {
            if (OpenConnetion())
            {
                 SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                SqlCommandBuilder  cmb = new SqlCommandBuilder(da);
                da.Update(dt);
                x = true;
                CloseConnection();
            }
        }
        catch (Exception err)
        {
        }
        return x;
    }
    public DataTable getDataTable(string sSql)
        {
            DataTable dt = new DataTable();
            try
            {
                if (OpenConnetion())
                {
                    SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    CloseConnection();
                }
            }
            catch (Exception err)
            {
            }
            return dt;
        }
        public DataSet getStoreProcedure(string L_ProcName, string[] L_ParName, string[] L_ParValue)
        {
            DataSet ds = new DataSet();
            try
            {
                if (OpenConnetion())
                {
                    SqlCommand cmd = new SqlCommand(L_ProcName, SqlCon);
                    cmd.CommandType = CommandType.StoredProcedure;

                    int length = 0;
                    if (L_ParValue.Count() > 0) length = Convert.ToInt32(L_ParValue.Count());
                    if (length > 0)
                    {
                        for (var i = 0; i <= length - 1; i++)
                        {
                            cmd.Parameters.AddWithValue(L_ParName[i], L_ParValue[i]);
                        }
                    }
                    else if (length == 1)
                    {
                        cmd.Parameters.AddWithValue(L_ParName[0], L_ParValue[0]);
                    }
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    CloseConnection();
                }
            }
            catch (Exception err)
            {
            }
            return ds;
        }
        public SqlDataReader getDatareader(string sSql)
        {
            try
            {
                if (OpenConnetion())
                {
                    SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    CloseConnection();
                    return rdr;
                }
            }
            catch (Exception err)
            {
            }
            return null;
        }
        public int getMaxID(string sSql)
        {
            OpenConnetion();
            DataTable dt = new DataTable();
            if (OpenConnetion())
            {
                SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            return 0;
        }
        public DataSet getDataSet(string sSql)
        {
            OpenConnetion();
            DataSet dt = new DataSet();
            if (OpenConnetion())
            {
                SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                CloseConnection();
            }
            return dt;
        }
        public bool MyExecuteQuery(string sSql)
        {
            if (OpenConnetion())
            {
                SqlCommand cmd = new SqlCommand(sSql, SqlCon);
                cmd.ExecuteNonQuery();
                CloseConnection();
                return true;
            }
            else
            {
                return false;
            }
        }
        //public string PageHeaderString(int M_BranchId, string M_BillCompanyName)
        //{
        //    DataTable DT;
        //    DataTable DTC;
        //    string htmlStr;
        //    string CINNO;
        //    string IsLogo = "N";
        //    int MyRow = 1;
        //    htmlStr = "";
        //    DT = getDataTable("SELECT * FROM tblbranchmaster Where PK_BranchId=" + M_BranchId);
        //    DTC = getDataTable("SELECT * FROM tblcompanymaster Where CompanyName='" + M_BillCompanyName.ToString() + "'");
        //    CINNO = "";
        //    if (DTC.Rows.Count > 0)
        //    {
        //        CINNO = DTC.Rows[0]["CINNO"].ToString();
        //    }
        //    if (DT.Rows.Count > 0)
        //    {
        //                        //<img src='Images/LogoThind.png' width='100%' height='80' align='top'></img>

        //        IsLogo = GlobalFunction.getString(DT.Rows[0]["ImageLogo"].ToString().ToUpper());
        //        if (IsLogo == "Y")
        //        {
        //            if (M_BillCompanyName.ToString().Length > 1)
        //            {
        //                MyRow = MyRow + 1;        
        //            }
        //            if (DT.Rows[0]["Line1"].ToString().Length > 1)
        //            {
        //                MyRow = MyRow + 1;
        //            }
        //            if (DT.Rows[0]["Line2"].ToString().Length > 1)
        //            {
        //                MyRow = MyRow + 1;
        //            }
        //            if (DT.Rows[0]["Line3"].ToString().Length > 1)
        //            {
        //                MyRow = MyRow + 1;
        //            }
        //            if (DT.Rows[0]["Line4"].ToString().Length > 1)
        //            {
        //                MyRow = MyRow + 1;
        //            }

        //            //htmlStr += "<div><table width=100% class=gridtable1><tr><td width=20% rowspan=" + MyRow + "><img src='Images/Logo.png' width='100%' height=" + (MyRow * 16) + "px align='top'></img></tr>";
        //            htmlStr += "<div style='position:absolute' width 100%><img src='Images/Logo.png' width='20%' height=" + (MyRow * 16) + "px align='top'></img></div><table width=100% align=center class=gridtable1>";
        //            if (M_BillCompanyName.ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:16px>" + M_BillCompanyName.ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line1"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:14px>" + DT.Rows[0]["Line1"].ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line2"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:12px>" + DT.Rows[0]["Line2"].ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line3"].ToString().Length > 1)
        //            {
        //                if (CINNO.ToString().Length > 0)
        //                {
        //                    htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line3"].ToString() + ", CIN : " + CINNO.ToString() + "</td></tr>";
        //                }
        //                else
        //                {
        //                    htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line3"].ToString() + "</td></tr>";
        //                }
        //            }
        //            if (DT.Rows[0]["Line4"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line4"].ToString() + "</td></tr>";
        //            }

        //            htmlStr += "</table>";

        //        }
        //        else

        //        {
        //            htmlStr += "<table width=100% class=gridtable1>";
        //            if (M_BillCompanyName.ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:16px>" + M_BillCompanyName.ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line1"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:14px>" + DT.Rows[0]["Line1"].ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line2"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:12px>" + DT.Rows[0]["Line2"].ToString() + "</td></tr>";
        //            }
        //            if (DT.Rows[0]["Line3"].ToString().Length > 1)
        //            {
        //                if (CINNO.ToString().Length > 0)
        //                {
        //                    htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line3"].ToString() + ", CIN : " + CINNO.ToString() + "</td></tr>";
        //                }
        //                else
        //                {
        //                    htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line3"].ToString() + "</td></tr>";
        //                }
        //            }
        //            if (DT.Rows[0]["Line4"].ToString().Length > 1)
        //            {
        //                htmlStr += "<tr><td width=100% align=center style=font-size:11px>" + DT.Rows[0]["Line4"].ToString() + "</td></tr>";
        //            }

        //            htmlStr += "</table>";


        //        }


        //    }
        //    else
        //    {
        //        if (M_BillCompanyName.ToString().Length > 1)
        //        {
        //            htmlStr += "<table width=100% class=gridtable>";
        //            htmlStr += "<tr><td width=100% align=center style=font-size:16px>" + M_BillCompanyName.ToString() + "</td></tr>";
        //            htmlStr += "</table>";
        //        }
        //    }
        //    return htmlStr;
        //}

        public string encrypt(string encryptString)
        {
            string EncryptionKey = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            byte[] clearBytes = Encoding.Unicode.GetBytes(encryptString);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] {
            0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76
        });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    encryptString = Convert.ToBase64String(ms.ToArray());
                }
            }
            return encryptString;
        }

        public string Decrypt(string cipherText)
        {
            string EncryptionKey = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            cipherText = cipherText.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] {
            0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76
        });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
    }

