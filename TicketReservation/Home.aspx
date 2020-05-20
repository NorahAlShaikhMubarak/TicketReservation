<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TicketReservation.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 180px;
            height: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This is the home page for the ticket reservation system<br />
    <br />
    <img alt="" class="auto-style1" src="home.jpg" /><br />
    <br />
    This system is used by users to display all the available tickets<br />
    as well as reserving tickets 
</asp:Content>
