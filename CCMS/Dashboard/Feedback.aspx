<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CCMS.Dashboard.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                            <h1 class="h4 text-gray-900 mb-4">Submit Review</h1>
                                        </div>
                                        <form class="user" runat="server">
                                            <div class="form-group">
                                                <asp:Label ID="lbl_ddl" runat="server" Text="Choose Complain Id"></asp:Label>
                                                <asp:DropDownList ID="DropDownList1" required="" AppendDataBoundItems="true"  CssClass="form-control" runat="server" DataSourceID="LinqDataSource1" DataTextField="com_id" DataValueField="com_id">
                                                    <asp:ListItem>Please select Complain Id</asp:ListItem>

                                                     
                                                </asp:DropDownList>
                                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" Select="new (com_id)" TableName="complains" Where="email_id == @email_id">
                                                    <WhereParameters>
                                                        <asp:SessionParameter Name="email_id" SessionField="email_id" Type="String" />
                                                    </WhereParameters>
                                                </asp:LinqDataSource>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="Name" runat="server" required="" CssClass="form-control" TextMode="SingleLine" placeholder="Full Name"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="Subject" runat="server" required="" CssClass="form-control" TextMode="SingleLine" placeholder="Subject"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="Phone_No" runat="server" required="" CssClass="form-control" TextMode="Phone" placeholder="PhoneNumber"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="Message" Rows="7" runat="server" required="" CssClass="form-control" TextMode="MultiLine" placeholder="Body"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                            </div>
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit"   CssClass="btn btn-primary btn-user btn-block" OnClick="btn_submit_Click" />
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

</asp:Content>
