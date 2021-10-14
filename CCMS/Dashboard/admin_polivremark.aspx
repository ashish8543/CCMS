<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="admin_polivremark.aspx.cs" Inherits="CCMS.Dashboard.admin_polivremark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
                <asp:BoundField DataField="u_date" HeaderText="u_date" SortExpression="u_date" />
                <asp:BoundField DataField="remark1" HeaderText="remark1" SortExpression="remark1" />
                <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
                <asp:BoundField DataField="com_id" HeaderText="com_id" SortExpression="com_id" />
                <asp:BoundField DataField="u_id" HeaderText="u_id" SortExpression="u_id" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" SortExpression="area_name" />
                <asp:BoundField DataField="kotwali_name" HeaderText="kotwali_name" SortExpression="kotwali_name" />
                <asp:BoundField DataField="thana_name" HeaderText="thana_name" SortExpression="thana_name" />
                <asp:BoundField DataField="choki_name" HeaderText="choki_name" SortExpression="choki_name" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="remarks" Where="com_id == @com_id">
            <WhereParameters>
                <asp:QueryStringParameter Name="com_id" QueryStringField="comv" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </form>
</asp:Content>
