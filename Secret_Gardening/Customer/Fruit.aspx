<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.Master" AutoEventWireup="true" CodeBehind="Fruit.aspx.cs" Inherits="Secret_Gardening.Customer.Fruit" %>
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
    </br>
     <h1>Fruit Plants</h1><br />
    

    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Sub_Category_Banners_Air_Purif_Desk.png" Width="100%" />
    <br /><br />
    <h5  style="text-align:center"> Include fruit house plants into your interior decoration, soothing to your eyes If you are looking to buy flower plants online, Ugaoo is your go-to place to get access to a wide range of indoor flowering plants, hanging plants, low light plants etc  </h5>
    <br />

    <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnItemCommand="DataList1_ItemCommand"  >
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
        <br />
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
      <asp:Button ID="Button1" runat="server" Text="Buy Now" CommandName="Buy" CommandArgument='<%# Eval("id") %>' OnClick="Button1_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="124px" />
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
