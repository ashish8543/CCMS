<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserReview.aspx.cs" Inherits="CCMS.Dashboard.UserReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5 animated--grow-in">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image img-fluid">
                                </div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Send Notification</h1>
                                        </div>
                                        <form class="user" runat="server">
                                            <div class="form-group">
                                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Subject"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Phone" placeholder="PhoneNumber"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox3" Rows="7" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Body"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"  />
                                            </div>
                                            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click" />
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
</asp:Content>
