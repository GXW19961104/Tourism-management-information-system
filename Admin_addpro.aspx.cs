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
	/// Admin_addpro 的摘要说明。
	/// </summary>
	public partial class Admin_addpro : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"您还没有登录，不能进行接下来的操作，请登录后断续！\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}// 在此处放置用户代码以初始化页面
			if(!Page.IsPostBack)
			{
				DataTable dt = new DataTable();
				string strsql = "select * from tClass";
				dt = database.ReadTable(strsql);
				DropDownList1.DataSource = dt;
				DropDownList1.DataTextField = "className";
				DropDownList1.DataValueField = "className";
				DropDownList1.DataBind();
				
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
			string strsql;
			strsql = "insert into tProduct (productname,productprice,productpic,productclass,productinfo,prolibnow) values ('"+ TextBox1.Text +"','"+ TextBox2.Text +"','" + TextBox3.Text + "','"+ DropDownList1.SelectedValue +"','"+ TextBox5.Text +"',0)";
			database.execsql(strsql);
			Response.Write("<script>alert(\"产品添加成功！\");</script>");
			TextBox1.Text = "";
			TextBox2.Text = "";
			TextBox3.Text = "";
			TextBox5.Text = "";
		}
	}
}
