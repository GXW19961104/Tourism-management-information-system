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
	/// Admin_login ��ժҪ˵����
	/// </summary>
	public partial class Admin_login : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
		}

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
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
