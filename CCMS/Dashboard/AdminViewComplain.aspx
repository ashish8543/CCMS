<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminViewComplain.aspx.cs" Inherits="CCMS.Dashboard.AdminViewComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/degign.css" rel="stylesheet" />
    
        <div class="col-md-12" style="overflow:auto;">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server"   HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows" AutoGenerateColumns="False" DataKeyNames="com_id" DataSourceID="LinqDataSource1" AllowPaging="True" PageSize="8">
        <Columns>
            <asp:TemplateField HeaderText="Sr. No." >
                 <ItemTemplate>
                        <%#  Container.DataItemIndex+1 %>
                        
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "admin_polivremark.aspx?comv="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField DataField="com_id" HeaderText="Complain Id" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
            <asp:BoundField DataField="u_name" HeaderText="Name" SortExpression="u_name" />
            <asp:BoundField DataField="contact_num" HeaderText="Contact" SortExpression="contact_num" />
            <asp:BoundField DataField="area_name" HeaderText="Area" SortExpression="area_name" />
            <asp:BoundField DataField="pin_code" HeaderText="Pin Code" SortExpression="pin_code" />
            <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
            <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
            <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
            <asp:BoundField DataField="com_sub" HeaderText="Subject" SortExpression="com_sub" />
            <asp:BoundField DataField="com_type" HeaderText="Com Type" SortExpression="com_type" />
            <asp:BoundField DataField="com_proofpic" HeaderText="Com prrof" SortExpression="com_proofpic" />
            <asp:BoundField DataField="com_des" HeaderText="Desc" SortExpression="com_des" />
            <asp:BoundField DataField="occurence_date" HeaderText="occurence_date" SortExpression="occurence_date" />
            <asp:BoundField DataField="c_date" HeaderText="Complain Date" SortExpression="c_date" />
            <asp:BoundField DataField="anyaction" HeaderText="Anyaction" SortExpression="anyaction" />
            <asp:BoundField DataField="email_id" HeaderText="UserId" SortExpression="email_id" />
        </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" OrderBy="c_date desc" TableName="complains">
        </asp:LinqDataSource>
    </form>
</asp:Content>
