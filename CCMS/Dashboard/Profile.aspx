<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CCMS.Dashboard.WebForm1" %>

    <!DOCTYPE html>
<html lang="en">

<head runat="server">
  <meta name="keywords" content="business, travel">
  <meta name="author" content=" ">
  <meta name="description"
    content="Today, tourism has the greatest potential ever to contribute to healthy economic growth, secure jobs, foreign exchange earnings and the further development of local communities.">
  <!-- For IE -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- For Resposive Device -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- For Window Tab Color -->
  <!-- Chrome, Firefox OS and Opera -->
  <meta name="theme-color" content="#ed3072">
  <!-- Windows Phone -->
  <meta name="msapplication-navbutton-color" content="#ed3072">
  <!-- iOS Safari -->
  <meta name="apple-mobile-web-app-status-bar-style" content="#ed3072">
  <title>CCMS :: Profile</title>
  <!-- Favicon -->
  <link rel="icon" type="image/png" sizes="56x56" href="{% static 'images/fav-icon/icon.png' %}">
  <!-- Main style sheet -->
  <link rel="stylesheet" type="text/css" href="{% static 'css/style.css' %}">
  <!-- responsive style sheet -->
  <link rel="stylesheet" type="text/css" href="{% static 'css/responsive.css' %}">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
  <style type="text/css">
    body {
      background: #f5f5f5;
      margin-top: 20px;

    }
      .auto-style1 {
          position: relative;
          width: 100%;
          -ms-flex: 0 0 75%;
          flex: 0 0 75%;
          max-width: 75%;
          -webkit-box-flex: 0;
          left: 0px;
          top: 0px;
          padding-left: .75rem;
          padding-right: .75rem;
      }
  </style>
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
  <div class="container light-style flex-grow-1 container-p-y">

    <h4 class="font-weight-bold py-3 mb-4">
      Profile
    </h4>

    <div class="card overflow-hidden">
      
        <div class="auto-style1">
          <div class="tab-content">
            <div class="tab-pane fade active show" id="account-general">

              <div class="card-body media align-items-center">
                <img id="img_propic" height="300" width="350" runat="server" class="d-block ui-w-80">
                <div class="media-body ml-4">
                  <label class="col-form-label">
                    Upload new photo
                  </label> &nbsp;
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
              </div>
                <asp:Label ID="lbl_message" runat="server" ForeColor="Red" Text=""></asp:Label>
              <hr class="border-light m-0">

              <div class="card-body">
                <div class="form-group">
                  <label class="form-label">Name</label>
                    <asp:TextBox ID="t_name" placeholder="Enter Name" class="form-control mb-1" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                  <label class="form-label">Email</label>
                    <asp:TextBox ID="t_email" class="form-control" runat="server" TextMode="Email" ></asp:TextBox>

                </div>
                <div class="form-group">
                  <label class="form-label">Contact</label>
                    <asp:TextBox ID="t_contact" placeholder="Enter Contact" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                  <label class="form-label">Aadhar No.</label>
                    <asp:TextBox ID="t_adharno" class="form-control" runat="server"></asp:TextBox>
                </div>
                  <div class="form-group">
                  <label class="form-label">Address</label>
                    <asp:TextBox ID="t_address" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                </div>
                  <div class="form-group">
                  <label class="form-label">State</label>
                    <asp:TextBox ID="t_state" placeholder="Enter State" class="form-control" runat="server"></asp:TextBox>
                </div>
                  <div class="form-group">
                  <label class="form-label">City</label>
                    <asp:TextBox ID="t_city" placeholder="Enter City" class="form-control" runat="server"></asp:TextBox>
                </div>
                  <div class="form-group">
                  <label class="form-label">Upload Aadhar</label>
                      <asp:FileUpload ID="FileUpload2" runat="server" />
                </div>

              </div>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="text-right mt-3">
        <asp:Button ID="btn_update" CssClass="btn btn-success" runat="server" Text="Update Profile" OnClick="btn_update_Click" />
        <asp:Button ID="btn_cancel" CssClass="btn btn-default" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />

    </div>

  </div>
  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">

  </script>
        </form>
</body>

</html>
