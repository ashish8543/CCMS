<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminChangePass.aspx.cs" Inherits="CCMS.Dashboard.ChangePass" %>
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
                                            </div>
                                            <div class="form-group">
                                                <label>E-mail</label>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email" placeholder="E-Mail"></asp:TextBox>
                                                <small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter E-mail!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </small>
                                            </div>
                                            <div class="form-group">
                                                <label>Enter Password</label>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
                                                <small>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </small>

                                            </div>
                                            <div class="form-group">
                                                <label>Comfirm Password</label>
                                                <asp:TextBox ID="TextBox3" Rows="7" runat="server" CssClass="form-control" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
                                                <small>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch!" ControlToCompare="TextBox1" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                                                </small>
                                            </div>
                                            <hr />

                                            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click1"  />

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
