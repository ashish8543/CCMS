<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminViewEmployee.aspx.cs" Inherits="CCMS.Dashboard.AdminViewEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card shadow mb-4 animated--grow-in">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Registered Employee</h6>
            </div>
            <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Contact</th>
                                        <th>Designation</th>
                                        <th>Active</th>
                                        <th>Password</th>
                                        <th>Registeration Date</th>
                                        <th>Choki</th>
                                        <th>Thana</th>
                                        <th>Kotwali</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                
                                                <td><%# Eval("e_id") %></td>
                                                <td><%# Eval("e_name") %></td>
                                                <td><%# Eval("email_id") %></td>
                                                <td><%# Eval("cotact_no") %></td>
                                                <td><%# Eval("designation") %></td>
                                                <td><%# Eval("isactive").ToString()== "0" ? "Yes":"Female" %></td>
                                                <td><%# Eval("pass") %></td>
                                                <td><%# Eval("c_date") %></td>
                                                <td><%# Eval("choki_name") %></td>
                                                <td><%# Eval("thana_name") %></td>
                                                <td><%# Eval("kotwali_name") %></td>


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
