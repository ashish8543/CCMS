<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="PoliceManage.aspx.cs" Inherits="CCMS.Dashboard.PoliceManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="col-md-12" style="overflow:auto;">
    <asp:GridView ID="GridView1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" runat="server"   AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="e_id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="e_name" HeaderText="Name" SortExpression="e_name" />
            <asp:BoundField DataField="email_id" HeaderText="Email" SortExpression="email_id" />
            <asp:BoundField DataField="cotact_no" HeaderText="Contact" SortExpression="cotact_no" />
            <asp:BoundField DataField="designation" HeaderText="Degisnation" SortExpression="designation" />
            <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
            <asp:BoundField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
            <asp:BoundField DataField="c_date" HeaderText="Reg Date" SortExpression="c_date" />
            <asp:BoundField DataField="u_date" HeaderText="Update Date" SortExpression="u_date" />
        </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="e_name, email_id, c_date desc" TableName="employees">
        </asp:LinqDataSource>
    </form>
</asp:Content>
