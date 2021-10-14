<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeBehind="EmpRegisKotwali.aspx.cs" Inherits="CCMS.Dashboard.EmpRegisKotwali" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--div class="container">--%>
        <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        
<hr>
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input id="t_name" class="form-control" runat="server" required placeholder="Full name" type="text">
    </div> <!-- form-group// -->
    <div class="form-group input-group">    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input id="t_email" class="form-control" runat="server" required placeholder="Email address" type="email">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		<select class="custom-select" style="max-width: 120px;">
		    <option selected="">+91</option>
		</select>
    	<input id="t_contact_no" required runat="server" class="form-control" placeholder="Phone number" type="text">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		</div>
		<%--<select class="form-control">
			<option selected=""> Select job type</option>
			<option>Designer</option>
			<option>Manager</option>
			<option>Accaunting</option>
		</select>--%>
    	<input id="t_designation" required  runat="server" class="form-control" placeholder="Designation" type="text">

	</div> <!-- form-group end.// -->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-users"></i> </span>
		</div>
        <%--<asp:DropDownList ID="ddl_emprehthana" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_emprehthana_SelectedIndexChanged"></asp:DropDownList>--%>
            
        <asp:DropDownList ID="ddl_area" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_area_SelectedIndexChanged"></asp:DropDownList>

    </div>

        <div class="form-group input-group"> 
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-users"></i> </span>
		</div>
        <%--<asp:DropDownList ID="ddl_empregchoki" CssClass="form-control form-control-user" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_empregchoki_SelectedIndexChanged"></asp:DropDownList>--%>
        <asp:DropDownList ID="ddl_kotwali" CssClass="form-control form-control-user" runat="server"></asp:DropDownList>
    </div>
     </ContentTemplate>
        </asp:UpdatePanel>

    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>

		</div>
        <input id="t_pass" class="form-control" runat="server" placeholder="Create password" required type="password">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" runat="server" required  placeholder="Repeat password" type="password">
    </div> <!-- form-group// -->                                      
    <div class="form-group" runat="server">
        <asp:Button ID="btn_register" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btn_register_Click"></asp:Button>
    </div> <!-- form-group// -->  
   
    </form>
</asp:Content>
