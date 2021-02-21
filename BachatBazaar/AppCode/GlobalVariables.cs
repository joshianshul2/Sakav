using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BachatBazaar
{
    public static  class GlobalVariables
    {
        public static string mmode=string.Empty;
        public static string strDate;
        public static string strShift= string.Empty;
        public static bool  boolLogin = false;


        static int _globalValue;
        static int _globalFeeValue;

        /// <summary>
        /// Access routine for global variable.
        /// </summary>
        public static int GlobalValue
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

        public static int GlobalFeeValue
        {
            get
            {
                return _globalFeeValue;
            }
            set
            {
                _globalFeeValue = value;
            }
        }
    }
}