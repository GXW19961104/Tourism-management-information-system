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
    public partial class productpro : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            string cproid = Request.Params["proid"].ToString();
            //Response.Write(cproid);

            string strsql = "select * from tProduct where ID=" + cproid + " order by ID desc";
            //Response.Write(strsql);
            DataTable dt = new DataTable();
            dt = database.ReadTable(strsql);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}
