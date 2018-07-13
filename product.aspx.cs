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
    /// kprolist 的摘要说明。
    /// </summary>
    public partial class product : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            string strsql;
            if (Request.Params["skey"] == null)
            {
                if (Request.Params["proclassid"] != null)
                {
                    string cproid = Request.Params["proclassid"].ToString();
                    strsql = "select top 10 * from tProduct where productclass='" + cproid + "' order by ID desc";

                    //Response.Write(strsql);
                    DataTable dt = new DataTable();
                    dt = database.ReadTable(strsql);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
                else
                {
                    strsql = "select * from tProduct order by ID desc";
                    //Response.Write(strsql);
                    DataTable dt = new DataTable();
                    dt = database.ReadTable(strsql);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
            }
            else
            {
                strsql = "select top 10 * from tProduct where productname  like '%" + Request.Params["skey"].ToString() + "%' order by ID desc";
                Response.Write(strsql);
                DataTable dt = new DataTable();
                dt = database.ReadTable(strsql);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }

            //Response.Write(cproid);


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