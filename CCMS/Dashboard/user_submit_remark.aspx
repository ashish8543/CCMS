<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="user_submit_remark.aspx.cs" Inherits="CCMS.Dashboard.user_submit_remark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/degign.css" rel="stylesheet" />
    

    <form id="form1" runat="server">

        <asp:Panel ID="Panel1" Visible="false" runat="server">

        

    <asp:Label ID="lmsg" runat="server"></asp:Label>
    <asp:TextBox ID="tremark" runat="server" CssClass=""></asp:TextBox>

    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <br/>
            <br/>
            <asp:DetailsView ID="dvremark" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows"  runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="LinqDataSource1">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
                    <asp:BoundField DataField="remark" HeaderText="Remark" SortExpression="remark" />
                    <asp:BoundField DataField="com_id" HeaderText="Complain Id" SortExpression="com_id" />
                    <asp:BoundField DataField="u_id" HeaderText="User Id" SortExpression="u_id" />
                    <asp:BoundField DataField="emp_id" HeaderText="Employee Id" SortExpression="emp_id" />
                    <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                    <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                    <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="user_remarks" Where="com_id == @com_id">
                <WhereParameters>
                    <asp:QueryStringParameter Name="com_id" QueryStringField="valid" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>

            </asp:Panel>
        <asp:Panel ID="Panel2" Visible="false" runat="server">
            <asp:GridView ID="GridView1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="LinqDataSource2" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="c_date" HeaderText="Remark Date" SortExpression="c_date" />
                    <asp:BoundField DataField="remark" HeaderText="Remark" SortExpression="remark" />
                    <asp:BoundField DataField="com_id" HeaderText="Complain Id" SortExpression="com_id" />
                    <asp:BoundField DataField="u_id" HeaderText="User Email" SortExpression="u_id" />
                    <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                    <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                    <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="user_remarks" Where="com_id == @com_id">
                <WhereParameters>
                    <asp:QueryStringParameter Name="com_id" QueryStringField="comv" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </asp:Panel>
    </form>
</asp:Content>
