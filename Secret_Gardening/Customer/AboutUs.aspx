<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Secret_Gardening.Customer.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
        }

        .auto-style1 {
            border-radius:2ch;
            margin-left: 0px;
        }
                
    
        .auto-style6 {
            width: 610px;
        }
         #border1 {

            
          box-shadow:0px 0px 40px 2px gray;
            
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br>
     <h1>About Us</h1><br />
    <br />

    <table class="w-100">
        <tr>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/portfolio-9.jpg" CssClass="auto-style1" Height="434px" Width="621px" />
            </td>
            <td><div class="container">
        <div class="row">
            <div class="col-md-2"><div class="card" style="width: 45rem;" id="border1">
  
  <div class="card-body">
    <h2 class="card-title">What's Secret Gardening ?</h2><br />
      <h4> Online Plant Nursery is a family-owned business that has been providing high-quality plants to customers for over 20 years. Our mission is to help people create beautiful and healthy gardens by offering a wide selection of plants and expert advice.Our mission is to help people create beautiful and healthy gardens by offering a wide selection of plants and expert advice.Our mission is to help people create beautiful and healthy gardens.
      <br /><br />We pride ourselves on providing excellent customer service and ensuring that our plants are healthy and well-cared for. We source our plants from trusted growers and ensure that they are carefully packaged and shipped to our customers. </h4>
   
  </div>
</div></div>
            </div>
        </div></td>
        </tr>
        <tr>
            <td class="auto-style6"><br /><br /><br /><div class="container">
        <div class="row">
            <div class="col-md-2"><div class="card" style="width: 45rem;" id="border1">
  
  <div class="card-body">
    <h2 class="card-title">About our Nursery</h2><br />
      <h4> Online Plant Nursery is a family-owned business that has been providing high-quality plants to customers for over 20 years. Our mission is to help people create beautiful and healthy gardens by offering a wide selection of plants and expert advice.Our mission is to help people create beautiful and healthy gardens by offering a wide selection of plants and expert advice.Our mission is to help people create beautiful and healthy gardens.
      <br /><br />We pride ourselves on providing excellent customer service and ensuring that our plants are healthy and well-cared for. We source our plants from trusted growers and ensure that they are carefully packaged and shipped to our customers. </h4>
   
  </div>
</div></div>
            </div>
        </div>&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image2" runat="server" ImageUrl="~/images/pexels-jheck-punzalan-14003018.jpg" CssClass="auto-style1" Height="434px" Width="621px" />
            </td>
        </tr>
    </table>

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


</asp:Content>
