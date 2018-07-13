using System;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace GROUP.travel
{
    /// <summary>
    /// DataBase 的摘要说明。
    /// </summary>
    public class DataBase : System.Web.UI.Page
    {
        string ConnectionString;
        public DataBase()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        }

        //读写数据表--DataTable
        public DataTable ReadTable(string strSql)
        {
            DataTable dd = new DataTable();//创建一个数据表dd
            OleDbConnection dbconn = new OleDbConnection(ConnectionString);//定义新的数据连接控件并初始化
            dbconn.Open();//打开连接
            OleDbDataAdapter adapter = new OleDbDataAdapter(strSql, dbconn);//定义并初始化数据适配器
            adapter.Fill(dd);                               //将数据适配器中的数据填充到数据集dd中
            dbconn.Close();//关闭连接
            return dd;
        }

        //读写数据集--DataSet
        public DataSet Readdate(string strSql)
        {
            DataSet dd = new DataSet();//创建一个数据集dd
            OleDbConnection dbconn = new OleDbConnection(ConnectionString);//定义新的数据连接控件并初始化
            dbconn.Open();//打开连接
            OleDbDataAdapter adapter = new OleDbDataAdapter(strSql, dbconn);//定义并初始化数据适配器
            adapter.Fill(dd);                               //将数据适配器中的数据填充到数据集dd中
            dbconn.Close();//关闭连接
            return dd;
        }
        //
        public DataSet GetDataSet(string strSql, string tableName)
        {
            DataSet dataSet = new DataSet();    //定义一个数据集，用来赋值给应用程序的一个数据集
            OleDbConnection conn = new OleDbConnection(ConnectionString);
            System.Data.OleDb.OleDbDataAdapter dataAdapter = new OleDbDataAdapter(strSql, conn);
            dataAdapter.Fill(dataSet, tableName);
            return dataSet;                     //返回这个数据集
        }

        public OleDbDataReader readrow(string sql)
        {
            OleDbConnection Con = new OleDbConnection(ConnectionString);
            OleDbCommand objCommand = new OleDbCommand(sql, Con);
            OleDbDataReader objDataReader;
            objCommand.Connection.Open();
            objDataReader = objCommand.ExecuteReader();

            if (objDataReader.Read())
            {
                objCommand.Dispose();
                return objDataReader;
            }
            else
            {
                objCommand.Dispose();
                return null;
            }

        }

        //读某一行中某一字段的值
        public string Readstr(string strSql, int flag)
        {
            DataSet dd = new DataSet();//创建一个数据集dd
            string str;

            OleDbConnection dbconn = new OleDbConnection(ConnectionString);//定义新的数据连接控件并初始化
            dbconn.Open();//打开连接
            OleDbDataAdapter adapter = new OleDbDataAdapter(strSql, dbconn);//定义并初始化数据适配器
            adapter.Fill(dd);                               //将数据适配器中的数据填充到数据集dd中

            str = dd.Tables[0].Rows[0].ItemArray[flag].ToString();
            dbconn.Close();//关闭连接
            return str;
        }


        public void execsql(string strSql)
        {
            OleDbConnection dbconn = new OleDbConnection(ConnectionString);//定义新的数据连接控件并初始化
            OleDbCommand comm = new OleDbCommand(strSql, dbconn);//定义并初始化命令对象
            dbconn.Close();//关闭连接
            dbconn.Open();//打开连接

            comm.ExecuteNonQuery();//执行命令
            dbconn.Close();//关闭连接
        }

    }
}
