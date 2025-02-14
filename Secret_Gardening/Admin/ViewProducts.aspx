<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="Secret_Gardening.Admin.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
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
     <h1>View Products & Stock </h1><br />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Flowering]"></asp:SqlDataSource>
    <br />






    <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%"  >
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Fruit]"></asp:SqlDataSource>
    <br />





    <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList3" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource3" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%"  >
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
          &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text='<%# Eval("pprice") %>'></asp:Label>
      </h5>
      <p class="card-title">
          <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="Stock :"></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Medicinal]"></asp:SqlDataSource>
    <br />





    <div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList4" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource4" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%"  >
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
          &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text='<%# Eval("pprice") %>'></asp:Label>
      </h5>
      <p class="card-title">
          <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="Stock :"></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Indoor]"></asp:SqlDataSource>
    <br />








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
