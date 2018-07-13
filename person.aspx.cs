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
    /// userinfoedit 的摘要说明。
    /// </summary>
    public partial class person : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面

            //Response.Write(cproid);
            if (!IsPostBack)
            {
                if (Session["name"] != null)
                {
                    Label1.Text = "欢迎您："+Session["name"].ToString();
                    string strsql = "select * from tUser where username='" + Session["name"].ToString() + "'";
                    //Response.Write(strsql);
                    DataTable dt = new DataTable();
                    dt = database.ReadTable(strsql);
                    username.Text = dt.Rows[0]["username"].ToString();
                    userrname.Text = dt.Rows[0]["userrname"].ToString();
                    usertel.Text = dt.Rows[0]["usertel"].ToString();
                    useraddr.Text = dt.Rows[0]["useraddr"].ToString();
                }
                else
                {
                    Label1.Text = "请先登录";
                }
            }
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
        protected void Button2_Click(object sender, System.EventArgs e)
        {  
            
                string strsql = "update tUser set userrname='" + userrname.Text + "' ,usertel='" + usertel.Text + "' ,useraddr='" + useraddr.Text + "' where username='" + username.Text + "'";
                database.execsql(strsql);
                Response.Write("<script>alert(\"更新成功\");</script>");


        }
    }
}