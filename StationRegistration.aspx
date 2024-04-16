<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="true" CodeFile="StationRegistration.aspx.cs" Inherits="StationRegistration" %>

<!DOCTYPE html>
<html>


<head>
    <script type="text/javascript">
        //write JavaScript code here.
    </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Station</title>
    <!-- Favicon-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Custom Css -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/login.css" rel="stylesheet">

    <!-- Swift Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

    <div class="container">
        <div class="card-top"></div>
        <div class="card">
            <h1 class="title"><span>Station</span>Register
                <div class="msg">Register a new Station</div>
            </h1>
            <div class="col-md-12">
                <form id="sign_up" class="col-xs-12" runat="server" action="#" method="post">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-account"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtstation" class="form-control" placeholder="Enter Station Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstation" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <%--<div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-account"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtregistration" class="form-control" placeholder="Enter Registration Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtregistration" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>--%>

                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-email"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtEmail" class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-city"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtcity" class="form-control" placeholder="Enter Full Address" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>


                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-account"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtnumber" class="form-control" placeholder="Enter Contact number" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid contact number (digits only)" ControlToValidate="txtnumber" ValidationExpression="^\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnumber" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>


                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-account"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtUsername" class="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-lock"></i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="txtPassword" class="form-control" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>

                            <%-- <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="txtPassword"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{4,}$" ErrorMessage="Password must contain: Minimum 4 characters atleast 1 Alphabet and 1 Number" ForeColor="Red" Display="Dynamic" />--%>
                        </div>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" class="btn btn-raised g-bg-cyan waves-effect" Text="Submit" OnClick="Button1_Click" />

                    </div>
                    <div class="m-t-10 m-b--5 align-center">
                        <a href="StationLogin.aspx">You already have a registration?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="theme-bg"></div>

    <!-- Jquery Core Js -->
    <script src="assets/bundles/libscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->
    <script src="assets/bundles/vendorscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->

    <script src="assets/bundles/mainscripts.bundle.js"></script>
    <!-- Custom Js -->
    <script src="assets/js/pages/examples/sign-in.js"></script>
</body>

<!-- Mirrored from thememakker.com/swift/hospital/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 26 Feb 2017 17:11:49 GMT -->
</html>
