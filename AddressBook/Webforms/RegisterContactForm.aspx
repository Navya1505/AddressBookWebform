<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBook.Master" AutoEventWireup="true" CodeBehind="RegisterContactForm.aspx.cs" Inherits="AddressBook.Webforms.RegisterContactForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>CONTACT FORM</h1>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="ArunachalPradesh" Value="ArunachalPradesh"></asp:ListItem>
            <asp:ListItem Text="AndhraPradesh" Value="AndhraPradesh"></asp:ListItem>
            <asp:ListItem Text="MadhyaPradesh" Value="MadhyaPradesh"></asp:ListItem>
            <asp:ListItem Text="TamilNadu" Value="TamilNadu"></asp:ListItem>
            <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
            <asp:ListItem Text="Maharastra" Value="Maharastra"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>/
          <asp:Label ID="Label6" runat="server" Text="PinCode"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label7" runat="server" Text="PhoneNumber"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
    <div>
       <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="BackToList" style="margin-left:19px" Width="90px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Submit" width="90px" Height="28px" OnClick="Button2_Click" />
    </div>
    <div>
        <asp:Label ID="Label9" runat="server"></asp:Label>
    </div>
</asp:Content>
