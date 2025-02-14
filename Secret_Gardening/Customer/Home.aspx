<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Secret_Gardening.Customer.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style12 {
            width: 411px;
        }
        .auto-style13 {
            width: 99%;
        }
        #vid1{
            margin-left:2cm;
        }
        h1 {
            margin:auto;
            width:30%;
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
     <div>
   
<video  autoplay muted loop="loop" width="90%" id="vid1">      
  <source src="../vid.mp4" type="video/mp4">
  </video>
    </div>
    </br>
    </br>
    <h1>We Provide</h1><br />
    <img src="../images/tag.png"  width="100%"/>
    </br>
   </br>


    <h1>Categories</h1><br /><br />

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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/Flowering.aspx" Font-Bold="True">Shop Now</asp:HyperLink>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/Customer/Fruit.aspx">Shop Now</asp:HyperLink>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" NavigateUrl="~/Customer/Medicinal.aspx">Shop Now</asp:HyperLink>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" NavigateUrl="~/Customer/Indoor.aspx">Shop Now</asp:HyperLink>
        </div>
                    </div>
        </div>



        </div>
        </div>


    <br />
    
    <br />



    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/allpalnts.png" Width="100%" />
    <br /><br />



    <h1>Featured Plants</h1><br />
    <br />
   

    <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnItemCommand="DataList1_ItemCommand"   >
            <ItemTemplate>
    
            <div class="col-md-3" id="border1">
                <div class="card" style="width: 25rem;">
  
                <asp:Image ID="Image1" runat="server" class="card-img-top" ImageUrl='<%# Eval("pimg") %>' Height="389px"/>
  <div class="card-body">
    <h5 class="card-title">
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pnm") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pspc") %>'></asp:Label>
        <br />
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" Text="Price : ₹"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' Font-Size="X-Large"></asp:Label>

    </h5>
      <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="Quantity :"></asp:Label>
      <asp:DropDownList ID="DropDownList1" runat="server" >
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>

                            </asp:DropDownList>
      <br /><br />
      <asp:Button ID="Button1" runat="server" Text="Buy Now" CommandName="Buy" CommandArgument='<%# Eval("id") %>'  Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="124px"/>
  </div>
</div></div>
         <br />   
                
                
            </ItemTemplate>
        </asp:DataList>  

</div>
        </div>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Indoor]"></asp:SqlDataSource>
    

    <br /><br />




    
    



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
