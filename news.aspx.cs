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
    public partial class news : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            string strsql;
            if (Request.QueryString["classid"] != null)
            {
                string cnewsclass = Request.QueryString["classid"].ToString();
                strsql = "SELECT top 20 *  FROM tNews where newsclass='" + cnewsclass + "' order by ID desc ";
                DataTable dt = database.ReadTable(strsql);
                GridView2.DataSource = dt;
                GridView2.DataBind();

            }
            else
            {
                strsql = "SELECT *  FROM tNews order by ID desc ";
                DataTable dt = database.ReadTable(strsql);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }


            //if (cnewsclass = "");


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
    }
}
