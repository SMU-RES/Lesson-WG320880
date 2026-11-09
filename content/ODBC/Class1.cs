using System.Data.Odbc;
using System;

namespace ODBC
{
    public class Class1
    {
        private OdbcConnection odbcConn;

        public Class1(string connectionString)
        {
            odbcConn = new OdbcConnection(connectionString);
            OpenConnection();
        }

        private void OpenConnection()
        {
            string currentUser = Environment.UserName;
            if (currentUser == "1")
            {
                odbcConn.Open();
            }
            else
            {
            }

        }
    }
}
