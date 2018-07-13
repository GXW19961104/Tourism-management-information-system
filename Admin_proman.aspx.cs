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
	/// Admin_proman 的摘要说明。
	/// </summary>
	public partial class Admin_proman : System.Web.UI.Page
	{
        //创建数据操作对象
		DataBase database = new DataBase();
		protected void Page_Load(object sender, System.EventArgs e)
		{
            //判断是否是管理员
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"您还没有登录，不能进行接下来的操作，请登录后断续！\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}
			if(!IsPostBack)
			{
				string strsql;
				strsql = "SELECT *  FROM tProduct order by ID desc ";
                //获取所有的产品
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
		private void InitializeComponent(){
		}
		#endregion

protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    string myid;
    string strsql = "";
    //获取当前行的主键
    myid = GridView1.Rows[e.RowIndex].Cells[0].Text;
    //删除选择的产品
    strsql = "delete  from tProduct where ID=" + myid;
    database.execsql(strsql);
    //重新绑定数据
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
{
    string id;
    string strsql;
    //获取要更新数据的主键
    id = GridView1.Rows[e.RowIndex].Cells[0].Text;
    //获取更新后的数据
    TextBox tb = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
    strsql = "update tProduct set productname='" 
        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text
        + "',productprice='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text 
        + "',productpic='" 
        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text
        + "' where ID=" + id;
    database.execsql(strsql);
    strsql = "SELECT *  FROM tProduct order by ID desc";
    //取消编辑状态
    GridView1.EditIndex = -1;
    //重新绑定数据
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{
    //取消编辑状态
    GridView1.EditIndex = -1;
    //获取所有的数据
    string strsql;
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    //绑定到GridView
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
{
    //获取当前编辑的行号
    GridView1.EditIndex = e.NewEditIndex;
    //重新绑定数据
    string strsql;
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();	
}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
