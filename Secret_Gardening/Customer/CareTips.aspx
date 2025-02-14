<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.Master" AutoEventWireup="true" CodeBehind="CareTips.aspx.cs" Inherits="Secret_Gardening.Customer.CareTips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br>
     <h1>Plant Caring Tips</h1>
    

    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ct11.jpeg" Width="100%" />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/ct3.jpeg" Width="100%"/>
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/c12.jpeg" Width="100%"/>
</asp:Content>
