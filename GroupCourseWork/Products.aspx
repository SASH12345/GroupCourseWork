<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GroupCourseWork.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>View Products</h2>
    <h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="192px" Width="1115px">
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                <asp:BoundField DataField="productType" HeaderText="productType" SortExpression="productType" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-I71884OD\MSSQLSERVER1;Initial Catalog=GamesStore;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="Select productName, productType, price  From 
Products"></asp:SqlDataSource>
    </h3>
    <p>Take a look at our products they are top of the line. </p>
</asp:Content>
