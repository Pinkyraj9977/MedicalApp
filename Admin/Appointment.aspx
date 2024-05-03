<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Customer_Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jai Jwala Medical::AppointmentForm</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Health Appointment Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <!-- css files -->
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link href="css/style1.css" type="text/css" rel="stylesheet" media="all" />
    <link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="register">
                <div class="register-full">
                    <div class="register-right">
                        <div class="register-in">

                            <h1>JAI JWALA MEDICAL</h1>
                            <br />
                            <div class="registerimg">
                                <img src="images/doctor.png" alt="" />
                            </div>
                            <div class="register-form">

                                <div class="fields-grid">
                                    <div class="styled-input">
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        <label>Patients Name</label>
                                        <span></span>
                                    </div>
                                    <br />
                                    <div class="styled-input">
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                        <label>Email</label>
                                        <span></span>
                                    </div>
                                    <br />
                                    <div class="styled-input">
                                        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                                        <label>Phone Number</label>
                                        <span></span>
                                    </div>
                                    <br />
                                    <div class="styled-input">
                                        <h2>Time :</h2>
                                        <asp:DropDownList ID="ddlTime" runat="server" Style="width: 100%; height: 50%">
                                            <asp:ListItem>
                                         ---Select Time---
                                            </asp:ListItem>
                                            <asp:ListItem>Morning</asp:ListItem>
                                            <asp:ListItem>Evening</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                    <asp:Button ID="btnSubmit" runat="server" Text="Book Appointment" OnClick="btnSubmit_Click" />
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="#ffffff" Width="100%"></asp:Label>
                                    <div class="clear"></div>
                                </div>
                                <asp:LinkButton ID="lbnDash" runat="server" Text="Go Back to Dashboard" ForeColor="White" OnClick="lbnDash_Click"></asp:LinkButton>

                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <!-- copyright -->
                <p class="agile-copyright" style="color: black">© 2020 Jai Jwala Medical .  | Design by <a href="https://www.cdit.in/" target="_blank" style="color: black">CDIT Infotech Pvt Ltd</a></p>
                <!-- //copyright -->
            </section>
            <!-- //section -->

            <!-- Default-JavaScript -->
            <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

            <!-- Calendar -->
            <script src="js/jquery-ui.js"></script>
            <script>
                $(function () {
                    $("#datepicker,#datepicker1").datepicker();
                });
            </script>

        </div>
    </form>
</body>
</html>
