<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Secret_Gardening.Customer.Registration" %>

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
            height: 636px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style9 {
            color:white;
        }
        #fotColor1 {
        
        background-color:rgb(62, 110, 48);
        
        }
        
         
        .auto-style10 {
            height: 636px;
        }
        

        
          #myBtn {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 20px; /* Place the button at the bottom of the page */
  right: 30px; /* Place the button 30px from the right */
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  background-color: #555; /* Set a background color */
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  padding: 15px; /* Some padding */
  border-radius: 10px; /* Rounded corners */
  font-size: 18px; /* Increase font size */
}

#myBtn:hover {
  background-color: black; /* Add a dark-grey background on hover */
}

         
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/hed1.png" Width="100%" />
        <br />
        
        
        <h1>User Registration</h1>
        
        

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-image: url('../images/Screenshot (66) - Copy.png')">



                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Name :" Font-Bold="True" Font-Size="Large"></asp:Label>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbName" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Only Characters are Allowded" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Font-Bold="True"></asp:RegularExpressionValidator>
                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:TextBox ID="tbName" runat="server" CssClass="auto-style3" Width="294px" BackColor="Honeydew" BorderColor="#030101" placeholder="Enter your name" BorderStyle="Solid"></asp:TextBox>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Contact No. :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbContact" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbContact" ErrorMessage="Invalid Mobile" Font-Bold="True" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1111111111" Type="Double"></asp:RangeValidator>
                    <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbContact" ErrorMessage="Only Numbers are allowded" ValidationExpression="^\d+$" ForeColor="Red" Font-Bold="True"></asp:RegularExpressionValidator>
                                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbContact" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" placeholder="Enter your Contact"  BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label ID="Label3" runat="server" Text="Address :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbAddr" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbAddr" runat="server" CssClass="auto-style3" Width="294px" BackColor="Honeydew" BorderColor="#030101" placeholder="Your Address"  BorderStyle="Solid"></asp:TextBox>
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Email :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="tbEmail" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="True"></asp:RegularExpressionValidator>
                                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbEmail" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" placeholder="Your Email Address"  BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Password :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="tbPassword" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tbPassword" type="password" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black"  placeholder="Create your Strong Password"  BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br /><br />
                            </td>
                            <td width="40px"></td>
                            <td>

                    <asp:Label ID="Label6" runat="server" Text="UserId :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbUserid" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                   &nbsp;<asp:TextBox ID="tbUserid" runat="server" CssClass="auto-style3" Width="294px" BackColor="Honeydew" BorderColor="#030101" placeholder="Create your userid"  BorderStyle="Solid"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="Label7" runat="server" Text="Date of Birth :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbDob" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                                <br />
                    <br />
                    <asp:TextBox ID="tbDob"  TextMode="Date" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                    
                                <br />
                                
                    <br />

                    <asp:Label ID="Label8" runat="server" Text="City :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tbCity" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tbCity" ErrorMessage="Only Characters are Allowded" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red" Font-Bold="True"></asp:RegularExpressionValidator>
                                <br />
                    <asp:TextBox ID="tbCity" runat="server" CssClass="auto-style3" Width="294px" BackColor="Honeydew" BorderColor="#030101" placeholder="Your City"  BorderStyle="Solid"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="Label9" runat="server" Text="Pin-Code :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="tbPin" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="tbPin" ErrorMessage="Invalid Pincode" Font-Bold="True" ForeColor="Red" MaximumValue="999999" MinimumValue="111111" Type="Double"></asp:RangeValidator>
                    <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPin" ErrorMessage="Only Numbers are allowded" ValidationExpression="^\d+$" ForeColor="Red" Font-Bold="True"></asp:RegularExpressionValidator>
                                <br />
                    <asp:TextBox ID="tbPin" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" placeholder="City Pin-code"  BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password :" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="tbCnfpass" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbCnfpass" ErrorMessage="Incorrect Password" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                    <br />
                   
                    <asp:TextBox ID="tbCnfpass" type="password" runat="server" CssClass="auto-style4" Width="294px" BackColor="Honeydew" BorderColor="Black" placeholder="Confirm your Password Again" BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <br /><br />
                            </td>

                        </tr>
                    </table>


                    














              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


              <asp:Button ID="Button1" runat="server" Text="Register" CssClass="auto-style5" Height="38px" Width="115px" BackColor="#009933" BorderColor="#009933" BorderStyle="Solid" Font-Bold="True" OnClick="Button1_Click1" ForeColor="White" Font-Size="Large" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#003300" NavigateUrl="~/Customer/Login.aspx">Login Here</asp:HyperLink>
                </td>
                <td class="auto-style10">
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="716px" Width="852px" ImageUrl="~/images/login.jpeg" />
                </td>
            </tr>
        </table>


    </div>

         <script type="text/javascript">
             function validateMsgLengthClientSide(sender, args) {
                 if (args.value.length < 7) {
                     args.IsValid = false;
                 }
                 else {
                     args.IsValid = true;
                 }
             }
    </script>

  </form>

    <div class="auto-style9" id="fotColor1">
        <br /> <h5 align="center">
            Created By Atharva & Siddhi | All Rights Reserved !
           </h5>
<br />
    </div>

    <button onclick="topFunction()" id="myBtn" title="Go to top">Scroll Up</button>

    <script>// When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
        }
</script>

</body>
</html>
