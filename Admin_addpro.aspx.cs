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
	/// Admin_addpro ��ժҪ˵����
	/// </summary>
	public partial class Admin_addpro : System.Web.UI.Page
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
				string strsql = "select * from tClass";
				dt = database.ReadTable(strsql);
				DropDownList1.DataSource = dt;
				DropDownList1.DataTextField = "className";
				DropDownList1.DataValueField = "className";
				DropDownList1.DataBind();
				
			}
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
			strsql = "insert into tProduct (productname,productprice,productpic,productclass,productinfo,prolibnow) values ('"+ TextBox1.Text +"','"+ TextBox2.Text +"','" + TextBox3.Text + "','"+ DropDownList1.SelectedValue +"','"+ TextBox5.Text +"',0)";
			database.execsql(strsql);
			Response.Write("<script>alert(\"��Ʒ��ӳɹ���\");</script>");
			TextBox1.Text = "";
			TextBox2.Text = "";
			TextBox3.Text = "";
			TextBox5.Text = "";
		}
	}
}
