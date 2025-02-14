<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Secret_Gardening.Admin.Report" %>
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

        .auto-style4 {
            height: 29px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><h1>Reports</h1>
        <br />



    <%--<div class="container">
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnFlower" runat="server" Text="View Reports" OnClick="btnFlower_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnFruit" runat="server" Text="View Reports" OnClick="btnFruit_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnMedicinal" runat="server" Text="View Reports" OnClick="btnMedicinal_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnIndoor" runat="server" Text="View Reports" OnClick="btnIndoor_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
        </div>
                    </div>
        </div>



        </div>
        </div>



    <br /><br />



    <div class="container">
        <div class="row">



            <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/pexels-johnmark-smith-250591.jpg" />

                    <br />
                    <div class="card-body">
                        <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label5" runat="server" Text="Inquiries" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnEnquiry" runat="server" Text="View Reports" OnClick="btnEnquiry_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
        </div>
                    </div>
                </div>

                <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/pexels-any-lane-5946103.jpg" />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Customers" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCustomers" runat="server" Text="View Reports" OnClick="btnCustomers_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
        </div>
                    </div>
        </div>
            

            <div class="col-md-3">
                <div class="card" style="width: 17rem;" id="border1">


                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/pexels-olena-4058750.jpg" />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Orders" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnOrders" runat="server" Text="View Reports" OnClick="btnOrders_Click" Font-Bold="True" BackColor="#009933" ForeColor="White" Height="41px" Width="140px" />
        </div>
                    </div>
        </div>--%>

            

            <%--<div class="col-md-3">
                <div class="card" style="width: 17rem;" id="Div7">


                    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/pexels-tom-swinnen-2249959.jpg" />

                    <br />

                    <div class="card-body">
    <h5 class="card-title">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label8" runat="server" Text="Indoor" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" NavigateUrl="~/Admin/IndoorADM.aspx">View Products</asp:HyperLink>
        </div>
                    </div>
        </div>--%>




   



          

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


    

  
          
    <hr />
    <h3> All Existing Plants in Below Categories</h3>
             <asp:DropDownList ID="NumberOfPeoples"  runat="server" CssClass="payINP3"  AutoPostBack="True"  >
    <asp:ListItem Text="Flowering" Value="Flowering"></asp:ListItem>
    <asp:ListItem Text="Fruit" Value="Fruit"></asp:ListItem>
    <asp:ListItem Text="Indoor" Value="Indoor"></asp:ListItem>
    <asp:ListItem Text="Medicinal" Value="Medicinal"></asp:ListItem>

   
</asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="generate report" OnClick="Button1_Click" />


    <hr />
    <h3> All existing Plants </h3>
    <asp:Button ID="Button2" runat="server" Text="generate report" OnClick="Button2_Click" />



       <hr />
    <h3> User : Purchased Plants </h3>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserId" ></asp:DropDownList>

    <asp:Button ID="Button4" runat="server" Text="generate report" OnClick="Button4_Click" CssClass="auto-style4" />


    
       <hr />
    <h3> Total Order Summary </h3>

    <asp:Button ID="Button5" runat="server" Text="generate report" OnClick="Button5_Click1"   />










           <hr />
    <h3>Year Wise Order Revenue </h3>

   
        <asp:DropDownList ID="DropDownList5" runat="server" >
    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
  <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
   
  

    </asp:DropDownList>


    <asp:Button ID="Button7" runat="server" Text="generate report" OnClick="Button7_Click1"  />







          <hr />
    <h3>Month Wise Order Revenue </h3>

    <asp:DropDownList ID="DropDownList2" runat="server" >
          <asp:ListItem Text="Jan" Value="1"></asp:ListItem>
    <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
    <asp:ListItem Text="Mar" Value="3"></asp:ListItem>
    <asp:ListItem Text="Apr" Value="4"></asp:ListItem>  
        <asp:ListItem Text="May" Value="5"></asp:ListItem>
    <asp:ListItem Text="Jun" Value="6"></asp:ListItem>
    <asp:ListItem Text="Jul" Value="7"></asp:ListItem>
    <asp:ListItem Text="Aug" Value="8"></asp:ListItem>   
        <asp:ListItem Text="Sep" Value="9"></asp:ListItem>
    <asp:ListItem Text="Oct" Value="10"></asp:ListItem>
    <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
    <asp:ListItem Text="Dec" Value="12"></asp:ListItem>

   
  

    </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" >
    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
  <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
   
  

    </asp:DropDownList>


    <asp:Button ID="Button6" runat="server" Text="generate report" OnClick="Button5_Click"  />











        <hr />
    <h3>Day Wise Order Revenue </h3>

  
    <asp:TextBox   TextMode="Date" placeholder="" ID="day" runat="server" ToolTip=""></asp:TextBox>

    <asp:Button ID="Button8" runat="server" Text="generate report" OnClick="Button8_Click"   />




    <hr />
    <h3> Total Reached Customers at Website </h3>
    <asp:Button ID="ReachCustomers" runat="server" Text="Generate Report" OnClick="ReachCustomers_Click" />
    

    <hr />
    <h3>Year Wise Customers </h3>

   
        <asp:DropDownList ID="DropDownList3" runat="server" >
    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
  <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
   
  

    </asp:DropDownList>


    <asp:Button ID="CustomerYearwise" runat="server" OnClick="CustomerYearwise_Click" Text="Generate Report" />







          <hr />
    <h3>Month Wise Customers </h3>

    <asp:DropDownList ID="DropDownList6" runat="server" >
          <asp:ListItem Text="Jan" Value="1"></asp:ListItem>
    <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
    <asp:ListItem Text="Mar" Value="3"></asp:ListItem>
    <asp:ListItem Text="Apr" Value="4"></asp:ListItem>  
        <asp:ListItem Text="May" Value="5"></asp:ListItem>
    <asp:ListItem Text="Jun" Value="6"></asp:ListItem>
    <asp:ListItem Text="Jul" Value="7"></asp:ListItem>
    <asp:ListItem Text="Aug" Value="8"></asp:ListItem>   
        <asp:ListItem Text="Sep" Value="9"></asp:ListItem>
    <asp:ListItem Text="Oct" Value="10"></asp:ListItem>
    <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
    <asp:ListItem Text="Dec" Value="12"></asp:ListItem>

   
  

    </asp:DropDownList>
        <asp:DropDownList ID="DropDownList7" runat="server" >
    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
  <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
   
  

    </asp:DropDownList>


    <asp:Button ID="CustomerMonthwise" runat="server" OnClick="CustomerMonthwise_Click" Text="Generate Report" />









        <hr />















    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userid] FROM [UserRegistration]"></asp:SqlDataSource>










    </asp:Content>
