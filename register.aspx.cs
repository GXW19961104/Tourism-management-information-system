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
    /// userreg 的摘要说明。
    /// </summary>
    public partial class register : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
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
        /// 设计器支持所需的方法 - 不要使用代码编辑器修改
        /// 此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {

        }
        #endregion

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            if (username.Text == "")
            {
                Response.Write("<script>alert(\"用户名不能为空！\");</script>");
            }
            if (password.Text == "")
            {
                Response.Write("<script>alert(\"密码不能为空！\");</script>");
                return;
            }
            if (password.Text != password2.Text)
            {
                Response.Write("<script>alert(\"两次密码不想同，请确认您的密码是否正确！\");</script>");
            }
            else
            {
                string strsql;
                strsql = "select * from tUser where username ='" + username.Text + "'";
                DataSet dataSet = new DataSet();
                dataSet = database.GetDataSet(strsql, "usernamelist");
                if (dataSet.Tables["usernamelist"].Rows.Count == 0)
                {
                    strsql = "insert into tUser (username,userpassword,userrname,usertel,useraddr,userclass) values ('" + username.Text + "','" + password.Text + "',' 无 ','无','无',1)";
                    database.execsql(strsql);
                    Response.Write("<script>alert(\"注册成功！您现在可以登录本站，在线选购您喜欢的产品了。\");</script>");
                    Response.Redirect("index.aspx");

                }
                else
                {
                    username.Text = "";
                    Response.Write("<script>alert(\"用户名已经存在，请确定新的用户名，再次提交注册！\");</script>");

                }
            }
        }
    }
}