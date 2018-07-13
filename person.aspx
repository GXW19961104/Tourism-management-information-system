<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.person" CodeFile="person.aspx.cs" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
    </style>
</head>
<body>
    <uc1:thead id="thead1" runat="server"></uc1:thead>
         
 
					
     <div class="register" style="text-align:center" runat="server">

		<div class="container" style="text-align:center">

		  <h3 class="animated wow zoomIn" data-wow-delay=".5s">
		    <asp:Label ID="Label1" runat="server">Label</asp:Label>
	      </h3>
		  <p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids" style="text-align:center">

				<form class="animated wow slideInUp" data-wow-delay=".5s"  runat="server">

                 <table style="width: 100%;" class="timetable_sub">
                    <tr>
                         <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：</td>
                                  <td><asp:textbox id="username" runat="server" CssClass="inputlog"></asp:textbox></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 真实姓名：</td>
                         <td><asp:textbox id="userrname" runat="server" CssClass="inputlog"></asp:textbox></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 联系方式：</td>
                         <td><asp:textbox id="usertel" runat="server" CssClass="inputlog"></asp:textbox></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家庭住址：</td>
                         <td><asp:textbox id="useraddr" runat="server" CssClass="inputlog" TextMode="MultiLine"></asp:textbox></td>
                    </tr>
                       </table>                    
              <center> <asp:button id="Button2" runat="server" CssClass="inputlog" Width="120px" Text="更改" onclick="Button2_Click"></asp:button></center>
            
              
				</form>
			</div>
	  </div>
	</div>


    



        
    
    <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
</body>
</html>
</html>
