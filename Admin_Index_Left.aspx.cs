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
	/// Admin_Index_Left 的摘要说明。
	/// </summary>
	public partial class Admin_Index_Left : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"您还没有登录，不能进行接下来的操作，请登录后断续！\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}
			else
			{
				Label1.Text = Session["admin"].ToString();
				Label2.Text = "超级管理员";

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

		private void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session.Remove("admin");
			Response.Redirect("contraller.aspx?cname=adminout");
		}
	}
}
