    <%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="userv_remark.aspx.cs" Inherits="CCMS.Dashboard.userv_remark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/degign.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows"  runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="LinqDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="com_id" HeaderText="Complain Id" SortExpression="com_id" />
                <asp:BoundField DataField="c_date" HeaderText="Remark Date" SortExpression="c_date" />
                <asp:BoundField DataField="remark1" HeaderText="Status" SortExpression="remark1" />
                <asp:BoundField DataField="emp_id" HeaderText="Employee Id" SortExpression="emp_id" />
                <asp:BoundField DataField="u_id" HeaderText="User Id" SortExpression="u_id" />
                <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
            </Fields>
        </asp:DetailsView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="remarks" Where="com_id == @com_id" OrderBy="id desc, c_date desc">
            <WhereParameters>
                <asp:QueryStringParameter DefaultValue="No Remark Wait for update." Name="com_id" QueryStringField="valid" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </form>
    
</asp:Content>
