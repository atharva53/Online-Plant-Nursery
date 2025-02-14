<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewCustomers.aspx.cs" Inherits="Secret_Gardening.Admin.ViewCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        h1 {
            margin:auto;
            width:40%;
            border:4px solid green;
            padding: 10px;
             text-align:center;
        }
         .auto-style4 {}

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
     <h1>View Customers</h1><br />



     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1530px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
             <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
             <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
             <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
             <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
     </asp:GridView>

    <br /><br />


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [name], [contact], [dob], [address], [email], [city], [pincode], [datetime] FROM [UserRegistration]"></asp:SqlDataSource>



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
