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
	/// Admin_orderlist ��ժҪ˵����
	/// </summary>
	public partial class Admin_orderlist : System.Web.UI.Page
	{
		DataBase database = new DataBase();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"����û�е�¼�����ܽ��н������Ĳ��������¼�������\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}
			string strsql;
			strsql = "select * from tOrder,tProduct where tOrder.opid = tProduct.ID";
			DataTable dt = database.ReadTable(strsql);
			DataGrid1.DataSource = dt;
			DataGrid1.DataBind();
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
	}
}
