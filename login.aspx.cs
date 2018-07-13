using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GROUP.travel
{
    /// <summary>
    /// Admin_login 的摘要说明。
    /// </summary>
    public partial class login : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {

        }

        #region Web 窗体设计器生成的代码
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        ///		设计器支持所需的方法 - 不要使用代码编辑器
        ///		修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {

        }
        #endregion
        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;
            strsql = "select * from tUser where username ='" + username.Text + "' and userpassword = '" + userpass.Text + "'";
            DataSet dataSet = new DataSet();
            dataSet = database.GetDataSet(strsql, "usernamelist");
            if (dataSet.Tables["usernamelist"].Rows.Count == 0)
            {
                Response.Write("<script>alert(\"用户名不存在或密码错误，请确认后再登录！\");</script>");
            }
            else
            {
                Session["name"] = username.Text;
                Response.Write("<script>alert(\"登录成功！\");</script>");
                Response.Redirect("index.aspx");
            }

        }
    }
}