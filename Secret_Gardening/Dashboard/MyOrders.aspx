<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Secret_Gardening.Dashboard.MyOrders" %>
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

         .auto-style6 {}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     </br>
     <h1>My Orders</h1><br /><br />
    
     <table class="auto-style1">
         <tr>
             <td>
<div class="container">
        <div class="row">
          
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="273px" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnItemCommand="DataList1_ItemCommand" >
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
          &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text='<%# Eval("pprice") %>' Font-Bold="True"></asp:Label>
      </h5>
      <p class="card-title">
          <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="Quantity :"></asp:Label>
          &nbsp;<asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("pquant") %>'></asp:Label>
      </p>
      <p class="card-title">
          <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" Text="Total : "></asp:Label>
          &nbsp;<asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large" Text="₹"></asp:Label>
          &nbsp;<asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("ptotal") %>'></asp:Label>
      </p>
      <p class="card-title">
          <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Large" Text="Purchase Date : "></asp:Label>
          <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("datetime") %>'></asp:Label>
          <br />
      </p>
      <asp:Button ID="Button5" runat="server" Text="Print Bill" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="124px"  CommandName="Buy" CommandArgument='<%# Eval("Id") %>'/>
      <br />
  </div>
</div></div>
         <br />   
                
                
            </ItemTemplate>
        </asp:DataList>  

</div>
        </div>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([UserId] = @UserId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserId" QueryStringField="UserId" Type="String" />
        </SelectParameters>
                 </asp:SqlDataSource>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
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
