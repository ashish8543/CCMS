<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CCMS.Dashboard.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CCMS :: Admin Login</title>
    <link href="css/sb-admin-2.css" rel="stylesheet" />
</head>
<body class="bg-gradient-primary">

    <div class="container animated--grow-in">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-lg-6 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Admin!</h1>
                                        <i align="center">
                                            <img src="img/9d088af39c.png"  height="200" width="200"/>

                                        </i>
                                    </div>
                                    <br />
                                    <form class="user" runat="server">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-user" TextMode="Email" placeholder="Enter Email Address..."></asp:TextBox>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Email Required!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-user" TextMode="Password" placeholder="Password"></asp:TextBox>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Password Required!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator></small>
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click" />

                                    </form>
                                    <hr>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <a class="small" href="ForgotPass.aspx">Forgot Password?</a>
                                        </div>
                                        <div class="col-lg-6" style="text-align: center">
                                            <a href="Default.aspx"><i class="text-center text-danger fa fa-home fa-2x"></i></a>
                                        </div>
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
