<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="Tour_Management.DisplayTours" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        ListView1 li {
            display: grid;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [TOUR_NAME], [pic], [PRICE], [DAYS], [LOCATIONS], [TOUR_ID] FROM [Tour]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" Height="16px" style="margin-right: 130px; margin-top: 21px; margin-left: 13px;" Width="875px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TOUR_NAME" HeaderText="TOUR_NAME" SortExpression="TOUR_NAME" />
                
                <asp:BoundField DataField="DAYS" HeaderText="DAYS" SortExpression="DAYS" />
                <asp:BoundField DataField="LOCATIONS" HeaderText="LOCATIONS" SortExpression="LOCATIONS" />
                <asp:BoundField DataField="TOUR_ID" HeaderText="TOUR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
                <asp:TemplateField HeaderText="pic">

                <ItemTemplate>
                    <img src="Tour_pics/<%#Eval("pic") %>" style="width:200px;height:200px" />
                </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField>
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" href="Order.aspx" runat="server">Book Now</asp:HyperLink>
        </ItemTemplate>
    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        &nbsp;
    </form>
</body>
</html>
