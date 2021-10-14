<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/PoliceMaster.Master" AutoEventWireup="true" CodeBehind="submit_remark.aspx.cs" Inherits="CCMS.Dashboard.submit_remark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="col-md-12" style="overflow:auto;">

    <link href="css/degign.css" rel="stylesheet" />

    <form id="form1" runat="server">

        <asp:Panel ID="Panel1" Visible="false" runat="server">

        

    <asp:Label ID="lmsg" runat="server"></asp:Label>
    <asp:TextBox ID="tremark" runat="server" CssClass=""></asp:TextBox>

    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <br/>
            <br/>


    <asp:DetailsView Visible="false" ID="dvreamrk" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows" DataSourceID="LinqDataSource1">
        <Fields>

            <asp:BoundField DataField="c_date" HeaderText="Date" SortExpression="c_date" />
            <asp:BoundField DataField="remark1" HeaderText="Remark" SortExpression="remark1" />
            <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id" />
            <asp:BoundField DataField="com_id" HeaderText="Complain Id" SortExpression="com_id" />
            <asp:BoundField DataField="u_id" HeaderText="User Id" SortExpression="u_id" />
            <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
            <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
            <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
        </Fields>

    </asp:DetailsView>

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="remarks" Where="com_id == @com_id">
            <WhereParameters>
                <asp:QueryStringParameter Name="com_id" QueryStringField="valid" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
            </asp:Panel>
        <asp:Panel ID="Panel2" Visible="false" runat="server">
            <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows" DataSourceID="LinqDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="remark1" HeaderText="Remark" SortExpression="remark1" />
                    <asp:BoundField DataField="c_date" HeaderText="Remark date" SortExpression="c_date" />
                    <asp:BoundField DataField="emp_id" HeaderText="Employee Id" SortExpression="emp_id" />
                    <asp:BoundField DataField="com_id" HeaderText="Complain Id" SortExpression="com_id" />
                    <asp:BoundField DataField="u_id" HeaderText="UserId" SortExpression="u_id" />
                    <asp:BoundField DataField="area_name" HeaderText="Area" SortExpression="area_name" />
                    <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                    <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                    <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" OrderBy="c_date desc" TableName="remarks" Where="com_id == @com_id">
                <WhereParameters>
                    <asp:QueryStringParameter Name="com_id" QueryStringField="comv" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </asp:Panel>
    </form>

</asp:Content>
