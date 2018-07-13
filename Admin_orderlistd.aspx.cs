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
	/// Admin_orderlistd 的摘要说明。
	/// </summary>
	public partial class Admin_orderlistd : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if (Session["admin"] == null)
			{
				Response.Redirect("contraller.aspx?cname=noadmin");
			}
			if(!Page.IsPostBack)
			{
                //绑定数据
				string strsql;
				strsql = "SELECT *  FROM tOrder where isdeal = '是' order by ID desc";
				DataTable dt = database.ReadTable(strsql);
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string myid;
            string strsql = "";
            //获取当前行的ID
            myid = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //删除指定数据
            strsql = "delete from Order where ID=" + myid;
            database.execsql(strsql);
            //重新绑定数据
            strsql = "SELECT *  FROM tOrder where isdeal = '是' order by ID desc";
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
{
    string isdeal, id;
    string strsql;
    TextBox tb;
    //获取更新行的ID
    id = GridView1.Rows[e.RowIndex].Cells[0].Text;
    tb = (TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0]);
    isdeal = tb.Text;
	//更新数据信息
    strsql = "update tOrder set isdeal='" + isdeal + "' where ID=" + id;
    database.execsql(strsql);
    //重新绑定数据
    strsql = "SELECT *  FROM tOrder where isdeal = '是' order by ID desc";
    GridView1.EditIndex = -1;
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //取消编辑
            GridView1.EditIndex = -1;
            string strsql;
            //重新获取数据并绑定
            strsql = "SELECT *  FROM tOrder where isdeal = '是' order by ID desc";
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
{
    //获取编辑的行号
    GridView1.EditIndex = e.NewEditIndex;
    string strsql;
    //重新绑定数据
    strsql = "SELECT *  FROM tOrder where isdeal = '是' order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();	
}
}
}
