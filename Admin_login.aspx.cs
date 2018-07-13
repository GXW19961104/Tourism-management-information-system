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
	/// Admin_login 的摘要说明。
	/// </summary>
	public partial class Admin_login : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
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
			string strsql = "select * from tUser where username = '" + adminname.Text + "' and userpassword = '"+ adminpass.Text +"' and userclass = 2";
			DataTable dt = new DataTable();
			dt = database.ReadTable(strsql);
			if(dt.Rows.Count>0)
			{
				Session["admin"] = adminname.Text;
				Response.Redirect("Admin_index.aspx");
			}
			else
			{
				adminpass.Text = "";
			}


		}
	}
}
