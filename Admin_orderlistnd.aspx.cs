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
	/// Admin_orderlistnd ��ժҪ˵����
	/// </summary>
	public partial class Admin_orderlistnd : System.Web.UI.Page
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
			if(!Page.IsPostBack)
			{
				string strsql;
				strsql = "SELECT *  FROM tOrder  where isdeal <> '��' order by ID desc";
				DataTable dt = database.ReadTable(strsql);
				GridView1.DataSource = dt;
				GridView1.DataBind();
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            string strsql;
            strsql = "SELECT *  FROM tOrder where isdeal <> '��' order by ID desc";
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string myid;
            string strsql = "";
            //��ȡ��ǰ�е�һ�е�ֵ
            myid = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //����ָ��IDɾ������
            strsql = "delete  from tOrder where ID=" + myid;
            database.execsql(strsql);
            //���°�
            strsql = "SELECT *  FROM tOrder where isdeal <> '��' order by ID desc";
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //��ȡ�к�
            GridView1.EditIndex = e.NewEditIndex;
            //���°�����
            string strsql;
            strsql = "SELECT *  FROM tOrder where isdeal <> '��' order by ID desc";
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();	
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string isdeal, id;
            string strsql;
            TextBox tb;
            //��ȡ��ǰ�����е�����
            id = GridView1.Rows[e.RowIndex].Cells[0].Text;
            tb = (TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0]);
            isdeal = tb.Text;
            //TextBox3.Text=tb.Text;		
			//�����ݿ��и�������
            strsql = "update tOrder set isdeal='" + isdeal + "' where ID=" + id;
            database.execsql(strsql);
            //�󶨸��º������
            strsql = "SELECT *  FROM tOrder where isdeal <> '��' order by ID desc";
            GridView1.EditIndex = -1;
            DataTable dt = database.ReadTable(strsql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
}
}
