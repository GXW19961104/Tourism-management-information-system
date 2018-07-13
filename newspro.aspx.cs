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
    /// kshownews 的摘要说明。
    /// </summary>
    public partial class newspro : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            string strsql;
            //Response.Write(Request.QueryString["id"]);
            strsql = "select * from tNews where ID=" + Request.QueryString["id"];
            //Response.Write(strsql);
            DataTable dt = new DataTable();
            dt = database.ReadTable(strsql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            strsql = "update tNews set newsclick=newsclick+1 where ID=" + Request.QueryString["id"];
            database.execsql(strsql);
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

        private void Repeater1_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }
    }
}
