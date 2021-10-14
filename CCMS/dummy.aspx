<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dummy.aspx.cs" Inherits="CCMS.dummy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


select {
    word-wrap: normal
}

button, select {
    text-transform: none
}

button, input, optgroup, select, textarea {
    margin: 0;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit
}

    *, ::after, ::before {
        text-shadow: none !important;
        -webkit-box-shadow: none !important;
        box-shadow: none !important
    }

    *, ::after, ::before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="is" Text="submit" runat="server" />
    </form>
</body>
</html>
