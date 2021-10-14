<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpass1.aspx.cs" Inherits="CCMS.Forgotpass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 228px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">NewPassword</td>
                    <td>
                        <asp:TextBox ID="t_newpass" runat="server" Width="260px"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Pass</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="260px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_sumbitpass" runat="server" Text="Submit" OnClick="btn_sumbitpass_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
