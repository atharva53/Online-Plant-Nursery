<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Secret_Gardening.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
        }
         .auto-style1 {
            width: 100%;
            height: 608px;
        }
        .auto-style2 {
            width: 693px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style6 {
            color:white;
        }
        #fotColor1 {
        
        background-color:rgb(62, 110, 48);
        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/hed1.png" Width="100%" />
        <br />
        
        
        <h1>Admin's Login</h1>
        
        

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-image: url('../images/Screenshot (66) - Copy.png')">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Username :" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbUsernm" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbUsernm" runat="server" CssClass="auto-style3" Width="294px" BackColor="Honeydew" BorderColor="#030101" placeholder="Enter your username" BorderStyle="Solid"></asp:TextBox>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Password :" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbPass" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    &nbsp;<br /><br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbPass" type="password" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" placeholder="Enter your Password" BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style5" Height="39px" Width="117px" BackColor="#009933" BorderColor="#009933" BorderStyle="Solid" Font-Bold="True" OnClick="Button1_Click1" Font-Size="Medium" ForeColor="White" />
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="606px" Width="827px" ImageUrl="~/images/login.jpeg" />
                </td>
            </tr>
        </table>

    </div>

        <div class="auto-style6" id="fotColor1">
        <br />
        <h5 align="center">
            Created By Atharva & Siddhi | All Rights Reserved !
           </h5>
            <p align="center">
                &nbsp;</p>
    </div>

    
    </form>
</body>
</html>
