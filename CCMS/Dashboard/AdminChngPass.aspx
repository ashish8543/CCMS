<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminChngPass.aspx.cs" Inherits="CCMS.Dashboard.AdminChngPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <form runat="server">

            <div class="container animated--grow-in">

                <!-- Outer Row -->
                <div class="row justify-content-center">

                    <div class="col-xl-10 col-lg-12 col-md-9">

                        <div class="card o-hidden border-0 shadow-lg my-5">
                            <div class="card-body p-0">
                                <!-- Nested Row within Card Body -->

                                <div class="row">
                                    <div class="col-lg-6 d-none d-lg-block bg-login-image img-fluid">
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="p-5">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">Change Password</h1>
                                                <p class="h4 text-gray-900 mb-4">&nbsp;</p>
                                            </div>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            <div class="form-group">
                                                <label>Enter Old Password</label>
                                                <asp:TextBox ID="t_oldpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Old Password"></asp:TextBox>
                                                <small>
                                                </small>

                                            </div>
                                            <div class="form-group">
                                                <label>New Password</label>
                                                <asp:TextBox ID="t_newpass" Rows="7" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
                                                <small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password!" ControlToValidate="t_newpass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                                </small>
                                            </div>
                                            <div class="form-group">
                                                <label>Confirm Password</label>
                                                <asp:TextBox ID="t_confirmpass" runat="server" required="Enter Confirm Pass" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                                                <small>
                                                </small>

                                            </div>
                                            <hr />

                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click1"  />

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </form>

    </body>
</asp:Content>
