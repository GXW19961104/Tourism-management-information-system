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
    public partial class shopcar : System.Web.UI.Page
    {
        DataBase database = new DataBase();

        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Redirect("product.aspx");
            }
            else
            {
                string strsql;
                strsql = "select * from tProduct,tOrder where tOrder.opid =tProduct.ID and tOrder.ouser ='" + Session["name"].ToString() + "' and isdeal = '否'";
                //Response.Write(strsql);
                DataTable dt = new DataTable();
                dt = database.ReadTable(strsql);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

}