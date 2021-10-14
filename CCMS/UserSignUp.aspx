<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserSignUp.aspx.cs" Inherits="CCMS.UserSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="Dashboard/css/sb-admin-2.min.css" rel="stylesheet" />
    <title>Registeration- CCMS</title>
    <link rel="shortcut icon" type="image/ico" href="images/mono.jpeg" />
    <style>
        body {
            background: #4e73df !important;
        }

        label {
            display: inline-block;
            margin-bottom: .5rem;
            margin-right: 10px;
            margin-left: 5px;
        }

        input[type=checkbox], input[type=radio] {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row" style="height: 100vh;">
                <div class="col-md-12" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">

                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                                <div class="col-lg-7">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                                        </div>
                                        <form class="user">
                                            <div class="form-group ">
                                                    <asp:TextBox ID="t_Name" CssClass="form-control form-control-user" runat="server" placeholder="Full Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Please Enter Name !!" ControlToValidate="t_Name"></asp:RequiredFieldValidator>
                                                    
                                                </div>
                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="t_Email" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" placeholder="Email Address" OnTextChanged="t_Email_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="t_Email" ErrorMessage="Please Enter Email!! "></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="t_contact" CssClass="form-control form-control-user" runat="server" placeholder="Contact"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ControlToValidate="t_contact" ErrorMessage="Enter Contact!! "></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group " style="display: flex">
                                                <asp:Label ID="Label1" runat="server" Text="Gender: "></asp:Label>

                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" EnableTheming="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">Male</asp:ListItem>
                                                    <asp:ListItem Value="1">Female</asp:ListItem>
                                                    <asp:ListItem Value="2">Other</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Choose Gender" ForeColor="Red" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="t_state" runat="server" CssClass="form-control form-control-user" placeholder="State"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ControlToValidate="t_state" ErrorMessage="Enter State"></asp:RequiredFieldValidator>

                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="t_city" runat="server" CssClass="form-control form-control-user" placeholder="City"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ControlToValidate="t_city" ErrorMessage="Enter City"></asp:RequiredFieldValidator>

                                                </div> 
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="t_password" CssClass="form-control form-control-user" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password" ControlToValidate="t_password" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="t_confirmpass" CssClass="form-control form-control-user" placeholder="Repeat Password" TextMode="Password" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Confirm Password" ControlToValidate="t_confirmpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same Password" ControlToCompare="t_password" ControlToValidate="t_confirmpass" ForeColor="Red"></asp:CompareValidator>
                                                </div>
                                            </div>
                                            <asp:Button ID="btn_registeration" runat="server" CssClass="btn btn-primary btn-user btn-block" Text="Register Account" OnClick="Button1_Click" />
                                            <hr>
                                        </form>
                                        <div class="text-center">
                                            <a class="small" href="UserLogin.aspx">Already have an account? Login!</a>
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
