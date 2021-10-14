<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="CCMS.ForgotPass" %>

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
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh">

      <div class="col-xl-10 col-lg-12 col-md-9" style="margin:auto;">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                    <p class="mb-4">We get it, stuff happens. Just enter your email address below and we'll send you a link to reset your password!</p>
                  </div>
                    
                  <form class="user" runat="server">
                    <div class="form-group">
                      <input type="email" id="t_email" runat="server" class="form-control form-control-user"  aria-describedby="emailHelp" placeholder="Enter Email Address...">
                    </div>
                    
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-user btn-block" OnClick="LinkButton1_Click1" >Submit</asp:LinkButton>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="User_Signup.aspx">Create an Account!</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="User_login.aspx">Already have an account? Login!</a>
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

</body>

</html>
