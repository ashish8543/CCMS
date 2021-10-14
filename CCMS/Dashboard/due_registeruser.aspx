<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="due_registeruser.aspx.cs" Inherits="CCMS.Dashboard.due_registeruser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="u_name" HeaderText="User Name" SortExpression="u_name" />
             <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
            <asp:BoundField DataField="mobile_No" HeaderText="Mobile Number" SortExpression="mobile_No" />
             <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="u_state" HeaderText="State" SortExpression="u_state" />
            <asp:BoundField DataField="u_city" HeaderText="City" SortExpression="u_city" />
            <asp:BoundField DataField="c_date" HeaderText="Registration Date" SortExpression="c_date" />
           
           
        </Columns>
        </asp:GridView>

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="id desc" TableName="u_registerations" Where="email_id == @email_id">
            
        </asp:LinqDataSource>
    </form>

</asp:Content>
