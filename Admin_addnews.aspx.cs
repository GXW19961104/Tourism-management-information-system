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
	/// Admin_addnews ��ժҪ˵����
	/// </summary>
	public partial class Admin_addnews : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"����û�е�¼�����ܽ��н������Ĳ��������¼�������\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}// �ڴ˴������û������Գ�ʼ��ҳ��
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
			string strsql;
			strsql = "insert into tNews (newstitle,newscontent,newsclass,addtime,newsclick) values ('"+ newstitle.Text +"','"+ newscon.Text +"','" + newsclass.SelectedValue + "','"+ System.DateTime.Now.ToString() +"',0)";
			database.execsql(strsql);
			Response.Write("<script>alert(\"���ŷ���ɹ���\");</script>");
			newscon.Text = "";
			newstitle.Text = "";


		}
	}
}
