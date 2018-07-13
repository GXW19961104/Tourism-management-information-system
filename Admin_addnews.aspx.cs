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
	/// Admin_addnews 的摘要说明。
	/// </summary>
	public partial class Admin_addnews : System.Web.UI.Page
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
				string strsql = "select * from newsclass";
				dt = database.ReadTable(strsql);
				newsclass.DataSource = dt;
				newsclass.DataTextField = "classname";
				newsclass.DataValueField = "classname";
				newsclass.DataBind();
				
			}
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string strsql;
			strsql = "insert into tNews (newstitle,newscontent,newsclass,addtime,newsclick) values ('"+ newstitle.Text +"','"+ newscon.Text +"','" + newsclass.SelectedValue + "','"+ System.DateTime.Now.ToString() +"',0)";
			database.execsql(strsql);
			Response.Write("<script>alert(\"新闻发表成功！\");</script>");
			newscon.Text = "";
			newstitle.Text = "";


		}
	}
}
