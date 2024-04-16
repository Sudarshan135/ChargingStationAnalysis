<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StationLogin.aspx.cs" Inherits="StudentLogin" %>

<!DOCTYPE html>
<html>


<head>
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


<link href="assets/css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="login-page authentication">

<div class="container">
    <div class="card-top"></div>
    <div class="card">
        <h1 class="title">Station Login <div class="msg">Sign in to start your session</div></h1>
        <div class="col-md-12">
            <form id="sign_in" runat="server" >
                
                <div class="input-group"> <span class="input-group-addon"> <i class="zmdi zmdi-account"></i> </span>
                    <div class="form-line">
                        <asp:TextBox ID="txtusername" placeholder="Username" class="form-control"  runat="server"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="input-group"> <span class="input-group-addon"> <i class="zmdi zmdi-lock"></i> </span>
                    <div class="form-line">
                       <asp:TextBox ID="txtpwd" placeholder="password" class="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                       
                    </div>
                </div>
                <div>
                    
                    <div class="text-center">
                         <asp:Button ID="btnsign" runat="server" class="btn btn-raised waves-effect g-bg-cyan"  Text="SIGN IN" OnClick="btnsign_Click" />
                   
                          </div>
                   
                    <div class="text-center"> <a href="StationRegistration.aspx">Station Registration</a> </div>
                    
                </div>
            </form>
        </div>
    </div>    
</div>
<div class="theme-bg" style="left: 0; top: 144px"></div>

<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
<script src="assets/js/pages/examples/sign-in.js"></script>
</body>

<!-- Mirrored from thememakker.com/swift/hospital/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 26 Feb 2017 17:11:01 GMT -->
</html>