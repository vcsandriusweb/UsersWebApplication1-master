using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace UsersWebApplication1.Models
{
    public static class ConfigSettings
    {
        public const string LineBreak = "<br />";

        internal static string ConnectionString { get; private set; }
        public static string UpdatedBySystem { get; private set; }
        public static string AppUrl { get; private set; }

        static ConfigSettings()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString;
            AppUrl = ConfigurationManager.AppSettings["AppUrl"];

            UpdatedBySystem = "SYSTEM";
        }
    }
}