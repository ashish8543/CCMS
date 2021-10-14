<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/PoliceMaster.Master" AutoEventWireup="true" CodeBehind="EmpViewFeedback.aspx.cs" Inherits="CCMS.Dashboard.EmpViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card shadow mb-4 animated--grow-in">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Reviews</h6>
            </div>
            <div class="card-body">

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Complain Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Subject</th>
                                        <th>Message</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("com_id") %></td>
                                                <td><%# Eval("full_name") %></td>
                                                <td><%# Eval("email_id") %></td>
                                                <td><%# Eval("contact_no") %></td>
                                                <td><%# Eval("r_subject") %></td>
                                                <td><%# Eval("r_message") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                    
            </div>
        </div>
    </form>
</asp:Content>
