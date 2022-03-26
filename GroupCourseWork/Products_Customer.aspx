<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products_Customer.aspx.cs" Inherits="GroupCourseWork.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">productName:
            <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
            <br />
            productType:
            <asp:Label ID="productTypeLabel" runat="server" Text='<%# Eval("productType") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">productName:
            <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
            <br />
            productType:
            <asp:TextBox ID="productTypeTextBox" runat="server" Text='<%# Bind("productType") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">productName:
            <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
            <br />productType:
            <asp:TextBox ID="productTypeTextBox" runat="server" Text='<%# Bind("productType") %>' />
            <br />price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">productName:
            <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
            <br />
            productType:
            <asp:Label ID="productTypeLabel" runat="server" Text='<%# Eval("productType") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">productName:
            <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
            <br />
            productType:
            <asp:Label ID="productTypeLabel" runat="server" Text='<%# Eval("productType") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-I71884OD\MSSQLSERVER1;Initial Catalog=GamesStore;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="Select productName, productType, price From Products"></asp:SqlDataSource>
    
</asp:Content>
