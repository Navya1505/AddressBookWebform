<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBook.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="AddressBook.Webforms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
    <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="false" DataKeyNames="Id">
        <Columns>
             <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
             <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
             <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
             <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
             <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
             <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings: %>" SelectCommand="Select [Id],[FirstName],[LastName],[Address],[City],[State],[PinCode],[PhoneNumber],[Email]" >
        </asp:SqlDataSource>
</asp:Content>
