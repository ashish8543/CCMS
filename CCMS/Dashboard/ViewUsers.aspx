<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="CCMS.Dashboard.ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form runat="server">
        <div class="card shadow mb-4 animated--grow-in">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Registered Users</h6>
            </div>
            <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>State</th>
                                        <th>City</th>
                                        <th>Gender</th>
                                        <th>Registeration Date</th>
                                        <th>Profile Updation Date</th>
                                        <%--<th>Action</th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                
                                                <td><%# Eval("u_name") %></td>
                                                <td><%# Eval("email_id") %></td>
                                                <td><%# Eval("u_state") %></td>
                                                <td><%# Eval("u_city") %></td>
                                                <td><%# Eval("gender").ToString()== "0" ? "Male":"Female" %></td>
                                                <td><%# Eval("c_date") %></td>
                                                <td><%# Eval("u_date") %></td>
                                                <%--<td align="centre">
                        <a class="btn btn-danger btn-circle" href="<%# "admin_polivremark.aspx?comv="+Eval("id") %>" ><i class="fa fa-trash"></a>
                                                    
                                                </td>--%>
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
