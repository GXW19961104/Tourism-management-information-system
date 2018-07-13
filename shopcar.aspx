<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.shopcar" CodeFile="shopcar.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <uc1:thead id="thead1" runat="server"></uc1:thead>
   <center> <div>
    <asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
	    <asp:TemplateField>
		    <HeaderTemplate>
			    <table class="timetable_sub">
                    <thead>
						<tr>
							<th>订单编号</th>	
							<th>订购物品</th>
							<th>订购数量</th>
							<th>订购日期</th>
						</tr>
					</thead>				    
			    </table>
		    </HeaderTemplate>   
		    <ItemTemplate>
			    <table class="timetable_sub">
				    <tr class="rem1">
					    <td width="25%"><%# Eval("ID")%></td>
					    <td width="25%"><%# Eval("productname")%></td>
					    <td width="25%"><%# Eval("opnum")%></td>
					    <td width="25%"><%# Eval( "otime")%></td>
				    </tr>
			    </table>
		    </ItemTemplate>
	    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    </div></center>
         <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
    </form>
</body>
</html>
