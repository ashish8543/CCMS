<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="complaintpage.aspx.cs" Inherits="CCMS.complaintpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <section class="section-padding" <%--style="background-image:url(images/complain/crime.jpg"--%>>
   
        <div class="container">
            <div class="row">
                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                       <asp:Label ID="Label1" runat="server" Text="Name"> </asp:Label>  
                            <asp:TextBox ID="t_name" runat="server" CssClass="form-control form-control-user" required="" placeholder="Enter Your Name" ></asp:TextBox>
                       
                            </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                            <asp:TextBox ID="t_con" runat="server" CssClass="form-control form-control-user" required="" placeholder="Write your Mobile Number"></asp:TextBox>
                        </div>
                    </div>
                </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label3" runat="server" Text="State "></asp:Label>
                            <asp:DropDownList ID="ddl_state" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged"    ></asp:DropDownList>
                            </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label4" runat="server" Text="City "></asp:Label>
                            <asp:DropDownList ID="ddl_city" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged"    CssClass="form-control form-control-user"></asp:DropDownList>
                          
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label5" runat="server" Text="Area"></asp:Label>
                            <asp:DropDownList  AutoPostBack="true" CssClass="form-control form-control-user" OnSelectedIndexChanged="ddl_area_SelectedIndexChanged" ID="ddl_area" runat="server"></asp:DropDownList>
                            </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label6" runat="server" Text="Pin Code"></asp:Label>
                            <asp:TextBox ID="t_pcode" runat="server" CssClass="form-control form-control-user" ReadOnly="true" required="" placeholder="Enter area pin code"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label7" runat="server" Text="Kotwali Name"></asp:Label>
                            <asp:DropDownList ID="ddl_kotwali" AutoPostBack="true" OnSelectedIndexChanged="ddl_kotwali_SelectedIndexChanged" runat="server" CssClass="form-control form-control-user" ></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label8" runat="server" Text="Thana"></asp:Label>
                            <asp:DropDownList ID="ddl_thana" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_thana_SelectedIndexChanged" ></asp:DropDownList>

                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label9" runat="server" Text="Choki"></asp:Label>
                            <asp:DropDownList ID="ddl_choki" runat="server" CssClass="form-control form-control-user" AutoPostBack="true" OnSelectedIndexChanged="ddl_choki_SelectedIndexChanged" ></asp:DropDownList>
                            </div>
                    </div>
                </div>
                 </ContentTemplate>
                </asp:UpdatePanel>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label10" runat="server" Text="Complain Subject "></asp:Label>
                            <asp:TextBox ID="t_subject" runat="server" CssClass="form-control form-control-user" required="" placeholder="eg-Theft,Accident,Disputes"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label11" runat="server" Text="Complain Type"></asp:Label>
                            <asp:TextBox ID="t_type" runat="server" CssClass="form-control form-control-user" required="" placeholder="eg- Mobile theft,Car/Bike accident,Disputes among people"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label15" runat="server" Text="Any Proof"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" CssClass="form-control form-control-user" runat="server"  />
                            </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label12" runat="server" Text="Complain Description" ></asp:Label>
                            <%--<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-user" placeholder="Write Description"></asp:TextBox>--%>
                            <%--<textarea id="TextArea1" cols="20" rows="2" class="form-control form-control-user" required="" placeholder="Write Description"></textarea>--%>
                            <asp:TextBox ID="t_desc" cols="20" rows="2" TextMode="MultiLine" class="form-control form-control-user" required="Emter desc" placeholder="Write Description" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                 <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label13" runat="server" Text="Occurrence Date"></asp:Label>
                            <asp:TextBox ID="t_occdate" runat="server" CssClass="form-control form-control-user" type="date"></asp:TextBox>

                            </div>
                    </div>
                </div>

                 <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label14" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="t_address" runat="server" CssClass="form-control form-control-user" required="" placeholder="Address "></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6" style="margin: auto;">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <asp:Label ID="Label16" runat="server" Text="AadharNo"></asp:Label>
                            <asp:TextBox ID="t_aadhar" runat="server" CssClass="form-control form-control-user" required="" placeholder="Aadhar No "></asp:TextBox>
                        </div>
                    </div>
                </div>

                 

                        
                <div class="col-md-12 text-center">
                    <asp:Button ID="btn_submit" CssClass="submit" runat="server" Font-Bold="True" style="background-color :red" ForeColor="White" Text="Submit" onclick="btn_submit_Click"/>
                    <%--<asp:Button ID="btn_cancel" runat="server" Font-Bold="True" style="background-color :green" ForeColor="White" Text="Cancel" CausesValidation="false"   OnClick="btn_cancel_Click" />--%>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back to Home</asp:LinkButton>
                </div>

            </div>
        </div>

    </section>

</asp:Content>
