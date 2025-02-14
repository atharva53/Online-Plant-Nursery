<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Secret_Gardening.Customer.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style type="text/css">
       
         .auto-style8 {
            width: 100%;
            height: 588px;
        }
        .auto-style9 {
            width: 693px;
        }
        .auto-style7 {}
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {
            margin-bottom: 0px;
        }

       
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br>
    <div>
    
    
        
        <table class="auto-style8">
            <tr>
                <td class="auto-style9" style="background-image: url('../images/Screenshot (66) - Copy.png')">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="UserId / Email :" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbUserid" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbUserid" runat="server" CssClass="auto-style7" Width="300px" BackColor="Honeydew" BorderColor="#030101" placeholder="Enter your userid" BorderStyle="Solid" ></asp:TextBox>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Password :" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbPass" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbPass" type="password" runat="server" CssClass="auto-style4" Width="300px" BackColor="Honeydew" BorderColor="Black" placeholder="Enter your Password" BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style5" Height="36px" Width="96px" BackColor="#009933" BorderColor="#009933" BorderStyle="Solid" Font-Bold="True" OnClick="Button1_Click" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#003300" NavigateUrl="~/Customer/Registration.aspx">Register Here</asp:HyperLink>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="601px" Width="850px" ImageUrl="~/images/login.jpeg" />
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>
