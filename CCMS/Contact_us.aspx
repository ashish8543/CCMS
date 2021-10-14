<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="CCMS.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="header-text-area">
        <div class="header-text text-center">
            <div class="header-bg"></div>
            <div class="sub-header-text header-single-text">
                <h2>Contact us</h2>
                <ul>
                    <li>Home</li>
                    <li><i class="fa fa-angle-right"></i></li>
                    <li class="active">Contact us</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="contact-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="page-title">
                        <h2>IF YOU NEED SOME PLEASE WRITE A CONTACT</h2>
                    </div>
                </div>
                         

                <div class="col-xs-12 col-sm-6 col-md-4 wow fadeIn" data-wow-delay="0.3s">
                    <address class="address blue-bg">
                        
                        <div class="single-info">
                            <a href="javascript:void();"><span><i class="fa fa-envelope"></i></span> ccms.web2021@gmail.com</a>
                        </div>
                        <div class="single-info">
                            <a href="#"><span><i class="fa fa-phone"></i></span>1800 234 5678</a>
                        </div>
                        <div class="social-list text-center">
                            <a href="javascript:void();" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a>
                            <a href="javascript:void();" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a>
                            <a href="javascript:void();" data-toggle="tooltip" title="Google plus"><i class="fa fa-google-plus"></i></a>
                            <a href="javascript:void();" data-toggle="tooltip" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </address>
                  
                </div>
                <div class="col-xs-12 col-md-4 wow fadeIn" data-wow-delay="0.6s">
                    <div class="contact-form">
                        <form action="https://quomodosoft.com/html/police/process.php" id="contact-form" method="post">
                            <input type="text" id="form-name" name="form-name" placeholder="Name" required>
                            <input type="email" id="form-email" name="form-email" placeholder="Email" required>
                            <input type="text" id="form-subject" name="form-subject" placeholder="Subject" required>
                             <textarea rows="6" id="form-message" name="form-message" placeholder="Message" required></textarea>
                            <button type="submit" class="blue-btn btn alignright">Submit Now</button>
                        </form>
                    </div>
                </div> 
                 <div class="col-xs-12 col-sm-6 col-md-4 wow fadeIn" data-wow-delay="0.9s">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3559.6237323990968!2d80.95422751488174!3d26.85191748315387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd11b5075701%3A0xa34c1a5e4a7750f3!2sCosmo%20Info%20Solutions%20%7C%20Summer%20Training%20Institute%20in%20Lucknow!5e0!3m2!1sen!2sin!4v1624769759565!5m2!1sen!2sin" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                       
                </div>
            </div>
        </div>
    </div>
 </asp:Content>
