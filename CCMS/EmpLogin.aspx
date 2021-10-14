<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpLogin.aspx.cs" Inherits="CCMS.EmpLogin" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="Dashboard/css/sb-admin-2.min.css" rel="stylesheet">
    <title>Crime Complain Management System</title>
   <link rel="shortcut icon" type="image/ico" href="images/mono.jpeg" />
     <style>
        body {
            background: #4e73df !important;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh;">

      <div class="col-xl-10 col-lg-12 col-md-9" style="margin:auto;">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image img-fluid"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Police!</h1>
                  </div>
                  <form class="user">
                   
                      <asp:TextBox ID="t_email" runat="server" CssClass="form-control form-control-user" required="" placeholder="Enter Email address"></asp:TextBox>
                      <br />
                    <div class="form-group">
                        <asp:TextBox ID="t_password" runat="server" TextMode="Password" CssClass="form-control form-control-user" required="" placeholder="Enter Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox"  id="customCheck">
                        <label class="custom-control-labe" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                      <asp:Button ID="Login_btn" runat="server" CssClass="btn btn-primary btn-user btn-block" required="" Text="Login" OnClick="Login_btn_Click" />
                    <hr>
                    <a href="gmail.com" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="facebook.com" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="EmpForgotPass.aspx">Forgot Password?</a>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

        <!-- Bootstrap core JavaScript-->
  <script src="Dashboard/vendor/jquery/jquery.min.js"></script>
  <script src="Dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="Dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="Dashboard/js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>