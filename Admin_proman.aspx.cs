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
	/// Admin_proman ��ժҪ˵����
	/// </summary>
	public partial class Admin_proman : System.Web.UI.Page
	{
        //�������ݲ�������
		DataBase database = new DataBase();
		protected void Page_Load(object sender, System.EventArgs e)
		{
            //�ж��Ƿ��ǹ���Ա
			if (Session["admin"] == null)
			{
				//Response.Write("<script>alert(\"����û�е�¼�����ܽ��н������Ĳ��������¼�������\");</script>");
				Response.Redirect("contraller.aspx?cname=noadmin");
			}
			if(!IsPostBack)
			{
				string strsql;
				strsql = "SELECT *  FROM tProduct order by ID desc ";
                //��ȡ���еĲ�Ʒ
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
		private void InitializeComponent(){
		}
		#endregion

protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    string myid;
    string strsql = "";
    //��ȡ��ǰ�е�����
    myid = GridView1.Rows[e.RowIndex].Cells[0].Text;
    //ɾ��ѡ��Ĳ�Ʒ
    strsql = "delete  from tProduct where ID=" + myid;
    database.execsql(strsql);
    //���°�����
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
{
    string id;
    string strsql;
    //��ȡҪ�������ݵ�����
    id = GridView1.Rows[e.RowIndex].Cells[0].Text;
    //��ȡ���º������
    TextBox tb = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
    strsql = "update tProduct set productname='" 
        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text
        + "',productprice='" + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text 
        + "',productpic='" 
        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text
        + "' where ID=" + id;
    database.execsql(strsql);
    strsql = "SELECT *  FROM tProduct order by ID desc";
    //ȡ���༭״̬
    GridView1.EditIndex = -1;
    //���°�����
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{
    //ȡ���༭״̬
    GridView1.EditIndex = -1;
    //��ȡ���е�����
    string strsql;
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    //�󶨵�GridView
    GridView1.DataSource = dt;
    GridView1.DataBind();
}
protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
{
    //��ȡ��ǰ�༭���к�
    GridView1.EditIndex = e.NewEditIndex;
    //���°�����
    string strsql;
    strsql = "SELECT *  FROM tProduct order by ID desc";
    DataTable dt = database.ReadTable(strsql);
    GridView1.DataSource = dt;
    GridView1.DataBind();	
}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
