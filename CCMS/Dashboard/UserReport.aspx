<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserReport.aspx.cs" Inherits="CCMS.Dashboard.UserReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../jsfiles/html2canvas.min.js"></script>
    <script src="../jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            html2canvas(document.getElementById('admitcard'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Document.pdf");
                    alert("Document download started");
                }
            });
        }
    </script>
    <form id="form1" runat="server">
        <div class="card shadow mb-4 animated--grow-in">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Complain</h6>
            </div>
            <div class="card-body">
                        <div class="table-responsive">
        <table  class="table table-bordered table-hover" id="admitcard" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Remark Date</th>
                                        <th>Remark</th>
                                        <th>Employee Id</th>
                                        <th>Complain Id</th>
                                        <th>User Id</th>
                                        <th>Area</th>
                                        <th>Kotwali</th>
                                        <th>Thana</th>
                                        <th>Choki</th>
                                        <%--<th>Action</th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                
                                                <td><%# Eval("id") %></td>
                                                <td><%# Eval("c_date") %></td>
                                                <td><%# Eval("remark1") %></td>
                                                <td><%# Eval("emp_id") %></td>
                                                <td><%# Eval("com_id") %></td>
                                                <td><%# Eval("u_id") %></td>
                                                <td><%# Eval("area_name") %></td>
                                                <td><%# Eval("kotwali_name") %></td>
                                                <td><%# Eval("thana_name") %></td>
                                                <td><%# Eval("choki_name") %></td>

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
                    <br />
&nbsp;<input type="button" id="btnExport" value="Download" onclick="Export()" class="auto-style5" />
                    </form>
</asp:Content>
