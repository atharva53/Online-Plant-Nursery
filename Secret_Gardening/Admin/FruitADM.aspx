<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FruitADM.aspx.cs" Inherits="Secret_Gardening.Admin.FruitADM" %>

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
         #fotColor1 {
        
        background-color:rgb(62, 110, 48);
        
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/hed1.png" Width="100%" />
        <br />

         <h1>Fruit Plants</h1>
        <br />

        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Sub_Category_Banners_Air_Purif_Desk.png" Width="100%" />
        <br /><br />

        <h5  style="text-align:center"> Include flowering house plants into your interior decoration, soothing to your eyes If you are looking to buy flower plants online, Ugaoo is your go-to place to get access to a wide range of indoor flowering plants, hanging plants, low light plants etc  </h5>
    <br />

      <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%"  >
            <ItemTemplate>
    
            <div class="col-md-3">
                <div class="card" style="width: 25rem;" id="border1">
  
                <asp:Image ID="Image1" runat="server" class="card-img-top" ImageUrl='<%# Eval("pimg") %>' Height="389px"/>
  <div class="card-body">
    <h5 class="card-title">
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pnm") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </h5>
      <h5 class="card-title">
          <asp:Label ID="Label3" runat="server" Text='<%# Eval("pspc") %>'></asp:Label>
      </h5>
      <h5 class="card-title">
          <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" Text="Price : ₹"></asp:Label>
          <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text='<%# Eval("pprice") %>'></asp:Label>
      </h5>
      <p class="card-title">
          <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="Stock : "></asp:Label>
          &nbsp;<asp:Label ID="Label22" runat="server" Font-Size="X-Large" Text='<%# Eval("pquant") %>'></asp:Label>
          <br />
      </p>
      <br />
  </div>
</div></div>
         <br />   
                
                
            </ItemTemplate>
        </asp:DataList>  

</div>
        </div>



   

        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Fruit]"></asp:SqlDataSource>
    <br />




         <div class="auto-style6" id="fotColor1">
        <br />
        <h2 align="center">
            <b><i> Created By | All Rights Reserved !</i></b>
           </h2>
            <p align="center">
                &nbsp;</p>
     </div>

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





    </form>
</body>
</html>
