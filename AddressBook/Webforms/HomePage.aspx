<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBook.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="AddressBook.Webforms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
    <asp:GridView ID="Gridview1" runat="server"  DataSourceID="SqlDataSource1"  AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id">
        <Columns>
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"  SortExpression="Id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
             <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
             <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
             <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
             <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
             <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:CommandField ButtonType="Image"  CancelImageUrl="../images/cancel.png" DeleteImageUrl="../images/delete.png" EditImageUrl="../images/edit.png" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="../images/save.png" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserDBConnectionString %>" SelectCommand="Select [FirstName],[LastName],[Address],[City],[State],[PinCode],[PhoneNumber],[Email],[Id] From AddressDetails"   DeleteCommand="DELETE FROM [AddressDetails] WHERE [Id] = @original_Id  AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PinCode]=@original_PinCode AND [PhoneNumber]=@original_PhoneNumber AND [Email]=@original_Email " >
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="string" />
            <asp:Parameter Name="original_LastName" Type="string" />
            <asp:Parameter Name="original_Address" Type="string" />
            <asp:Parameter Name="original_City" Type="string" />
            <asp:Parameter Name="original_State" Type="string" />
            <asp:Parameter Name="original_PinCode" Type="string" />
            <asp:Parameter Name="original_PhoneNumber" Type="string" />
            <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
</asp:Content>
