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
	/// Admin_userman ��ժҪ˵����
	/// </summary>
	public partial class Admin_userman : System.Web.UI.Page
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
				strsql = "SELECT *  FROM tUser order by ID desc ";
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
    //ȡ���༭״̬
    GridView1.EditIndex = -1;
    //���°�����
	string strsql;								
	strsql= "SELECT *  FROM tUser order by ID desc ";
	DataTable dt = database.ReadTable(strsql);
	GridView1.DataSource = dt;
	GridView1.DataBind();
}
protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    string myid;
    string strsql = "";
    //��ȡ��ǰ�е�����
    myid = GridView1.Rows[e.RowIndex].Cells[0].Text;
    //ɾ������
    strsql = "delete * fromt tUser where ID=" + myid;
    database.execsql(strsql);
    //���¶�ȡ����
    strsql = "SELECT *  FROM tUser order by ID desc ";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
{
    string id;
    string strsql;
    //��������TextBox�ؼ�
    TextBox username, userpass, useracc;
    id = GridView1.Rows[e.RowIndex].Cells[0].Text;
    username = (TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0]);
    userpass = (TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0]);
    useracc = (TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0]);
    //�������ݿ������
    //TextBox3.Text=tb.Text;					
    strsql = "update tUser set username='" + username.Text + "',userpassword='" 
        + userpass.Text + "',userclass=" + useracc.Text + " where ID=" + id;
    //Response.Write(strsql);
    database.execsql(strsql);
    //���°�GridView
    strsql = "SELECT *  FROM tUser order by ID desc ";
    GridView1.EditIndex = -1;
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
{
    //��ȡ�༭���к�
    GridView1.EditIndex = e.NewEditIndex;
    //���°�����
    string strsql;
    strsql = "SELECT *  FROM tUser order by ID desc ";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();	
}
}
}
