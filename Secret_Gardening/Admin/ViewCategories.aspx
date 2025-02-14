<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewCategories.aspx.cs" Inherits="Secret_Gardening.Admin.ViewCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
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
    <br />
     <h1>Categories</h1><br />

    <div class="container">
        <div class="row">



            <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pexels-johnmark-smith-250591.jpg" />

                    <br />
                    <div class="card-body">
                        <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label1" runat="server" Text="Flowering " Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/FloweringADM.aspx" Font-Bold="True">View Products</asp:HyperLink>
        </div>
                    </div>
                </div>

                <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/pexels-any-lane-5946103.jpg" />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label2" runat="server" Text="Fruit" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/Admin/FruitADM.aspx">View Products</asp:HyperLink>
        </div>
                    </div>
        </div>
            

            <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/pexels-olena-4058750.jpg" />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Medicinal" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" NavigateUrl="~/Admin/MedicinalADM.aspx">View Products</asp:HyperLink>
        </div>
                    </div>
        </div>


            <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/pexels-tom-swinnen-2249959.jpg" />

                    <br />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label4" runat="server" Text="Indoor" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" NavigateUrl="~/Admin/IndoorADM.aspx">View Products</asp:HyperLink>
        </div>
                    </div>
        </div>



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
    <br /><br />


</asp:Content>
