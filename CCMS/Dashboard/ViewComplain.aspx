<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="ViewComplain.aspx.cs" Inherits="CCMS.Dashboard.ViewComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/design1.css" rel="stylesheet" /> <form id="form1" runat="server">
        <div class="col-md-12" style="overflow:auto;">
    <asp:GridView ID="GridView1" runat="server" PageSize="10"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="com_id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="com_id" HeaderText="com_id" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
            <asp:BoundField DataField="u_name" HeaderText="u_name" SortExpression="u_name" />
            <asp:BoundField DataField="contact_num" HeaderText="contact_num" SortExpression="contact_num" />
            <asp:BoundField DataField="state_name" HeaderText="state_name" SortExpression="state_name" />
            <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name" />
            <asp:BoundField DataField="area_name" HeaderText="area_name" SortExpression="area_name" />
            <asp:BoundField DataField="pin_code" HeaderText="pin_code" SortExpression="pin_code" />
            <asp:BoundField DataField="kotwali_name" HeaderText="kotwali_name" SortExpression="kotwali_name" />
            <asp:BoundField DataField="thana_name" HeaderText="thana_name" SortExpression="thana_name" />
            <asp:BoundField DataField="choki_name" HeaderText="choki_name" SortExpression="choki_name" />
            <asp:BoundField DataField="com_sub" HeaderText="com_sub" SortExpression="com_sub" />
            <asp:BoundField DataField="com_type" HeaderText="com_type" SortExpression="com_type" />
            <asp:BoundField DataField="com_proofpic" HeaderText="com_proofpic" SortExpression="com_proofpic" />
            <asp:BoundField DataField="com_des" HeaderText="com_des" SortExpression="com_des" />
            <asp:BoundField DataField="occurence_date" HeaderText="occurence_date" SortExpression="occurence_date" />
            <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
            <asp:BoundField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
            <asp:BoundField DataField="u_date" HeaderText="u_date" SortExpression="u_date" />
            <asp:BoundField DataField="anyaction" HeaderText="anyaction" SortExpression="anyaction" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
        </Columns>
        </asp:GridView>
            </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="complains">
        </asp:LinqDataSource>
    </form>
    </asp:Content>
