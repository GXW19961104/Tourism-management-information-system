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
    /// kshowpro 的摘要说明。
    /// </summary>
    public partial class shopcarpro : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面

            if (Session["name"] == null)
            {
                //Response.Write("<script>alert(\"您还没有登录，不能进行接下来的操作，请登录后断续！\");</script>");
                Response.Redirect("index.aspx");
            }
            else
            {
                string oproid = Request.Params["oproid"].ToString();
                string strsql = "select * from tProduct where ID=" + oproid;
                //Response.Write(strsql);
                DataTable dt = new DataTable();
                dt = database.ReadTable(strsql);
                Label1.Text = dt.Rows[0]["productname"].ToString();
                Label2.Text = dt.Rows[0]["productprice"].ToString();

                strsql = "select * from tUser where username = '" + Session["name"].ToString() + "'";
                dt = database.ReadTable(strsql);
                GridView1.DataSource = dt;
                GridView1.DataBind();
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

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            string strsql = "insert into tOrder (opid,opnum,ouser,otime,isdeal) values (" + Request.Params["oproid"].ToString() + "," + TextBox1.Text + ",'" + Session["name"].ToString() + "','" + System.DateTime.Now.ToString() + "','否')";
            database.execsql(strsql);
            //Response.Write("<script>alert(\"订单提交成功，我们会尽快处理！您可以断续选购别的商品！\");</script>");
            Response.Redirect("userorderlist.aspx");
        }
    }
}
