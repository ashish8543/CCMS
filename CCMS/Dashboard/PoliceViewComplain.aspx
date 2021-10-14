<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/PoliceMaster.Master" AutoEventWireup="true" CodeBehind="PoliceViewComplain.aspx.cs" Inherits="CCMS.Dashboard.PoliceViewComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/degign.css" rel="stylesheet" />
        <div class="col-md-12" style="overflow:auto;">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1"  runat="server"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" CellSpacing="15"
                RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="com_id" Visible="False" DataSourceID="LinqDataSource1" CellPadding="10">
        <Columns>
             <asp:TemplateField HeaderText="Sr. No." >
                 <ItemTemplate>
                        <%#  Container.DataItemIndex+1 %>
                        
                    </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submit Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?valid="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>

<HeaderStyle CssClass="header-center"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?comv="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>

<HeaderStyle CssClass="header-center"></HeaderStyle>
                </asp:TemplateField>
                
           <asp:TemplateField HeaderText="View User Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "user_submit_remark.aspx?comv="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>

<HeaderStyle CssClass="header-center"></HeaderStyle>
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
            <asp:BoundField DataField="c_date" HeaderText="Complain Date" SortExpression="c_date" />
            <asp:BoundField DataField="anyaction" HeaderText="Any Action" SortExpression="anyaction" />
            <asp:BoundField DataField="email_id" HeaderText="User Id" SortExpression="email_id" />
            <asp:TemplateField HeaderText="Proof Pic" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "ViewProof.aspx?comv="+Eval("com_id") %>' Text="View&Download"></asp:HyperLink>
                    </ItemTemplate>

<HeaderStyle CssClass="header-center"></HeaderStyle>
                </asp:TemplateField>
        </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" OrderBy="com_id desc, c_date desc" TableName="complains" Where="choki_name == @choki_name">
            <WhereParameters>
                <asp:SessionParameter Name="choki_name" SessionField="choki_name" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>

        <asp:GridView ID="GridView2" runat="server" Visible="false" AutoGenerateColumns="False" DataKeyNames="com_id" DataSourceID="LinqDataSource2">
            <Columns>
                 <asp:TemplateField HeaderText="Sr. No." >
                 <ItemTemplate>
                        <%#  Container.DataItemIndex+1 %>
                        
                    </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submit Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?valid="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?comv="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="com_id" HeaderText="Complain Id" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
                <asp:BoundField DataField="u_name" HeaderText="Name" SortExpression="u_name" />
                <asp:BoundField DataField="contact_num" HeaderText="Contact" SortExpression="contact_num" />
                <asp:BoundField DataField="state_name" HeaderText="State" SortExpression="state_name" />
                <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                <asp:BoundField DataField="area_name" HeaderText="Area" SortExpression="area_name" />
                <asp:BoundField DataField="pin_code" HeaderText="PinCode" SortExpression="pin_code" />
                <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
                <asp:BoundField DataField="com_sub" HeaderText="Subject" SortExpression="com_sub" />
                <asp:BoundField DataField="com_type" HeaderText="Type" SortExpression="com_type" />
                <asp:BoundField DataField="com_proofpic" HeaderText="Proof" SortExpression="com_proofpic" />
                <asp:BoundField DataField="com_des" HeaderText="Description" SortExpression="com_des" />
                <asp:BoundField DataField="occurence_date" HeaderText="Occurence Date" SortExpression="occurence_date" />
                <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
                <asp:BoundField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                <asp:BoundField DataField="u_date" HeaderText="u_date" SortExpression="u_date" />
                <asp:BoundField DataField="anyaction" HeaderText="AnyAction" SortExpression="anyaction" />
                <asp:BoundField DataField="email_id" HeaderText="UserId" SortExpression="email_id" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="complains" Where="thana_name == @thana_name">
            <WhereParameters>
                <asp:SessionParameter Name="thana_name" SessionField="thana_name" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:GridView ID="GridView3" runat="server" Visible="false" AutoGenerateColumns="False" DataKeyNames="com_id" DataSourceID="LinqDataSource3">
            <Columns>
                <asp:TemplateField HeaderText="Sr. No." >
                 <ItemTemplate>
                        <%#  Container.DataItemIndex+1 %>
                        
                    </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="View Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?comv="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Submit Remark" HeaderStyle-CssClass="header-center">
                                        <ItemTemplate>
                        <asp:HyperLink ID="hp1" runat="server" NavigateUrl='<%# "submit_remark.aspx?valid="+Eval("com_id") %>' Text="Remark"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="com_id" HeaderText="Complain Id" InsertVisible="False" ReadOnly="True" SortExpression="com_id" />
                <asp:BoundField DataField="u_name" HeaderText="Name" SortExpression="u_name" />
                <asp:BoundField DataField="contact_num" HeaderText="Conatact" SortExpression="contact_num" />
                <asp:BoundField DataField="state_name" HeaderText="State" SortExpression="state_name" />
                <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                <asp:BoundField DataField="area_name" HeaderText="Area" SortExpression="area_name" />
                <asp:BoundField DataField="pin_code" HeaderText="PinCode" SortExpression="pin_code" />
                <asp:BoundField DataField="kotwali_name" HeaderText="Kotwali" SortExpression="kotwali_name" />
                <asp:BoundField DataField="thana_name" HeaderText="Thana" SortExpression="thana_name" />
                <asp:BoundField DataField="choki_name" HeaderText="Choki" SortExpression="choki_name" />
                <asp:BoundField DataField="com_sub" HeaderText="Subject" SortExpression="com_sub" />
                <asp:BoundField DataField="com_type" HeaderText="Comp Type" SortExpression="com_type" />
                <asp:BoundField DataField="com_proofpic" HeaderText="Proof" SortExpression="com_proofpic" />
                <asp:BoundField DataField="com_des" HeaderText="Description" SortExpression="com_des" />
                <asp:BoundField DataField="occurence_date" HeaderText="Occurence Date" SortExpression="occurence_date" />
                <asp:BoundField DataField="c_date" HeaderText="Genaration Date" SortExpression="c_date" />
                <asp:BoundField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                <asp:BoundField DataField="u_date" HeaderText="u_date" SortExpression="u_date" />
                <asp:BoundField DataField="anyaction" HeaderText="Anyaction" SortExpression="anyaction" />
                <asp:BoundField DataField="email_id" HeaderText="User Id" SortExpression="email_id" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="dal2.DataClasses1DataContext" EntityTypeName="" TableName="complains" Where="kotwali_name == @kotwali_name">
            <WhereParameters>
                <asp:SessionParameter Name="kotwali_name" SessionField="kotwali_name" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    </form>
</asp:Content>
