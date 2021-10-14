<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserViewComplain.aspx.cs" Inherits="CCMS.Dashboard.UserViewComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/degign.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div class="col-md-12" style="overflow:auto;">
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="5"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" AllowPaging="True"  DataKeyNames="com_id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Sr. No." >
                 <ItemTemplate>
                        <%#  Container.DataItemIndex+1 %>
                        
                    </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "userv_remark.aspx?valid="+Eval("com_id") %>' Text="ReView"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Submit Remark(If No Update)" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "user_submit_remark.aspx?valid="+Eval("com_id") %>' Text="Submit Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                
            <asp:BoundField DataField="com_id" HeaderText="Complain Id" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
            <asp:BoundField DataField="u_name" HeaderText="Name" SortExpression="u_name" />
            <asp:BoundField DataField="contact_num" HeaderText="Contact" SortExpression="contact_num" />
            <asp:BoundField DataField="state_name" HeaderText="State" SortExpression="state_name" />
            <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
            <asp:BoundField DataField="area_name" HeaderText="Area" SortExpression="area_name" />
            <asp:BoundField DataField="pin_code" HeaderText="Pincode" SortExpression="pin_code" />
            <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
            <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
            <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
            <asp:BoundField DataField="com_sub" HeaderText="Subject" SortExpression="com_sub" />
            <asp:BoundField DataField="com_type" HeaderText="Type" SortExpression="com_type" />
            <asp:BoundField DataField="com_des" HeaderText="Description" SortExpression="com_des" />
            <asp:BoundField DataField="occurence_date" HeaderText="Occurence Date" SortExpression="occurence_date" />
            <asp:BoundField DataField="c_date" HeaderText="Generation Date" SortExpression="c_date" />
            <asp:BoundField DataField="email_id" HeaderText="Email" SortExpression="email_id" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="complains" Where="email_id == @email_id">
        <WhereParameters>
            <asp:SessionParameter Name="email_id" SessionField="email_id" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
</form>
</asp:Content>
