<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TicketReservation.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 798px">
            <br />
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            &nbsp;
            <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="230px" style="margin-left: 522px" Width="296px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Login to the system"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                &nbsp;<br /> &nbsp;<br />&nbsp;<br /><asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
                <br />
&nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" ForeColor="Blue" NavigateUrl="~/Register.aspx">Click here for new registeration</asp:HyperLink>
            </asp:Panel>
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>
