<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="TicketReservation.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TrainId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="TrainId" HeaderText="TrainId" ReadOnly="True" SortExpression="TrainId" />
                <asp:BoundField DataField="TrainNo" HeaderText="TrainNo" SortExpression="TrainNo" />
                <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" SortExpression="DepartureTime" />
                <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Select the day for reservation:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="147px" DataTextField="TrainNo" DataValueField="TrainId" AutoPostBack="True">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Your choose:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="Confirm reservation" Width="279px" />
    </p>
    <p>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegFormConnectionString2 %>" DeleteCommand="DELETE FROM [Trains] WHERE [TrainId] = @TrainId" InsertCommand="INSERT INTO [Trains] ([TrainId], [TrainNo], [Day], [DepartureTime], [ArrivalTime], [Date]) VALUES (@TrainId, @TrainNo, @Day, @DepartureTime, @ArrivalTime, @Date)" ProviderName="<%$ ConnectionStrings:RegFormConnectionString2.ProviderName %>" SelectCommand="SELECT [TrainId], [TrainNo], [Day], [DepartureTime], [ArrivalTime], [Date] FROM [Trains]" UpdateCommand="UPDATE [Trains] SET [TrainNo] = @TrainNo, [Day] = @Day, [DepartureTime] = @DepartureTime, [ArrivalTime] = @ArrivalTime, [Date] = @Date WHERE [TrainId] = @TrainId">
            <DeleteParameters>
                <asp:Parameter Name="TrainId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TrainId" Type="Int32" />
                <asp:Parameter Name="TrainNo" Type="Int32" />
                <asp:Parameter Name="Day" Type="String" />
                <asp:Parameter Name="DepartureTime" Type="String" />
                <asp:Parameter Name="ArrivalTime" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TrainNo" Type="Int32" />
                <asp:Parameter Name="Day" Type="String" />
                <asp:Parameter Name="DepartureTime" Type="String" />
                <asp:Parameter Name="ArrivalTime" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="TrainId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
