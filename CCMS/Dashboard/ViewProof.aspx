<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/PoliceMaster.Master" AutoEventWireup="true" CodeBehind="ViewProof.aspx.cs" Inherits="CCMS.Dashboard.ViewProof" %>
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
        <table id="admitcard">
            <tr>
                <td>
                    <img id="img_proof" runat="server"  style="width: 587px; height: 291px"><br />

                </td>
            </tr>
        </table>
                    <br />
&nbsp;<input type="button" id="btnExport" value="Download" onclick="Export()" class="auto-style5" />
                    </form>
</asp:Content>
