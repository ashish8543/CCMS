<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="CCMS.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="preloader">
        <div class="spinner"></div>
    </div>




    <div class="header-text-area">
        <div class="header-text text-center">
            <div class="header-bg header-bg1"></div>
            <div class="sub-header-text header-single-text">
                <h2>About us</h2>
                <ul>
                    <li>Home</li>
                    <li><i class="fa fa-angle-right"></i></li>
                    <li class="active">About us</li>
                </ul>
            </div>
        </div>
    </div>


    <div class="about-message-area ">
        <div class="container section-padding">
            <div class="row">
                <div class="col-xs-12 col-md-7 wow fadeInLeft" data-wow-delay="0.6s">
                    <div id="myCarousel" class="carousel slide blue-bg " data-ride="carousel">

                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <%--<li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>--%>
                        </ol>

                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="about-single-message">
                                    <h2>Message</h2>
                                    <p>Case progress, Lost vehicle, Illigle Arms and cash theft, fake currency ceased, various type of enquiry and reporting.</p>
                                    <p>This system registers the complaint from people through online mode and it will also help to the police department in catching criminals, in system and person can give any complaint at anytime.</p>
                                    <p>Our System monitors these crimes and provide help to the users, so that they can easily complaint their problems, anywhere and anytime from the location to their nearest Police Thana and also track their complaint status.</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="about-single-message">
                                    <h2>Message</h2>
                                    <p>User's Can create his/her own Account and use CCMS web Appplication anytime, anywhere. </p>
                                    <p>Police department stop crimes through This web application and catch criminals as soon as possible.            </p>
                                    <p>Via complain status user can check his/her status that which level their complain progress. Our System monitors these crimes and provide help to the users, so that they can easily complaint their problems, anywhere and anytime from the location to their nearest Police Thana and also track their complaint status.</p>
                                </div>
                            </div>
                            <%--<div class="item">
                                <div class="about-single-message">
                                    <h2>President's message</h2>
                                    <p>Pellentesque vulputate fermentum nisi id tincidunt. Praesent fringilla tortor lorem, nec convallis libero sodales eget. Nam eleifend sem tincidunt ipsum ornare, in consectetur orci ultricies.</p>
                                    <p>Nullam ante odio, consectetur ac leo et, mattis accumsan velit. Quisque sit amet purus ornare, venenatis lectus eget, ullamcorper orci. Morbi consequat arcu eget malesuada suscipit.</p>
                                    <p>Aliquam pharetra nulla a velit molestie feugiat. Vestibulum dictum mi vel dolor aliquam lobortis. Suspendisse interdum fermentum dictum. Nam volutpat vitae velit vel conse. Donec quis est eget nisl posuere tristique.</p>
                                </div>
                            </div>--%>
                            <%--<div class="item">
                                <div class="about-single-message">
                                    <h2>President's message</h2>
                                    <p>Pellentesque vulputate fermentum nisi id tincidunt. Praesent fringilla tortor lorem, nec convallis libero sodales eget. Nam eleifend sem tincidunt ipsum ornare, in consectetur orci ultricies.</p>
                                    <p>Nullam ante odio, consectetur ac leo et, mattis accumsan velit. Quisque sit amet purus ornare, venenatis lectus eget, ullamcorper orci. Morbi consequat arcu eget malesuada suscipit.</p>
                                    <p>Aliquam pharetra nulla a velit molestie feugiat. Vestibulum dictum mi vel dolor aliquam lobortis. Suspendisse interdum fermentum dictum. Nam volutpat vitae velit vel conse. Donec quis est eget nisl posuere tristique.</p>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="skill-area blue-bg section-padding xs-none">
        <div class="container">
            <div class="row text-center">
                <div class="col-xs-6 col-sm-4 col-md-2 wow fadeInLeft" data-wow-delay="0.3s">
                    <div class="skill" data-percent="87"></div>
                    <h3>Personal</h3>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 wow fadeInLeft" data-wow-delay="0.6s">
                    <div class="skill" data-percent="90"></div>
                    <h3>Good</h3>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 wow fadeInLeft" data-wow-delay="0.9s">
                    <div class="skill" data-percent="67"></div>
                    <h3>Security</h3>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 wow fadeInLeft" data-wow-delay="1.2s">
                    <div class="skill" data-percent="98"></div>
                    <h3>Lood After</h3>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 wow fadeInLeft" data-wow-delay="1.5s">
                    <div class="skill" data-percent="75"></div>
                    <h3>Worry</h3>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2  wow fadeInLeft" data-wow-delay="1.8s">
                    <div class="skill" data-percent="65"></div>
                    <h3>Support</h3>
                </div>
            </div>
        </div>
    </div>


    <div class="about-testimonial-area section-padding">
        <div class="container wow zoomIn" data-wow-delay="0.6s">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="page-title">
                        <h2>Testimonials</h2>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                    <div class="about-testimonial">
                        <div class="single-about-testimonial">
                            <img src="images/about/about-testimonial.jpg" alt="jessie">
                            <div class="about-testimonial-test">
                                <p>This is very amazing web application  and via this application user find help anywhere and anytime. I used it and I want to do Rating of ccms 8 out of 10 and I'll share with my friends.  I understand that staying late isn't easy, but the team truly appreciates it. I can tell you’re committed to our clients, and our team, and I really appreciate it. </p>
                                <h4>Ayushi Srivastava</h4>
                                <h5>User</h5>
                            </div>
                        </div>
                        <div class="single-about-testimonial">
                            <img src="images/about/about-testimonial.jpg" alt="jessie">
                            <div class="about-testimonial-test">
                                <p>Thank you for taking extra effort to make sure the entire team was on the same page. It would have been easy for important details to slip through the cracks, but thanks to you, that didn’t happen. You really went above and beyond to solve this complex issue in a timely manner. I can tell you’re committed to our clients, and our team, and I really appreciate it....</p>
                                <h4>Anjali Rawat</h4>
                                <h5>User</h5>
                            </div>
                        </div>
                       <%-- <div class="single-about-testimonial">
                            <img src="images/about/about-testimonial.jpg" alt="jessie">
                            <div class="about-testimonial-test">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laore dapibus felis sit amet consequat. Nulla nec sodales nibh. Phasellus vehicula ante sed dictum varius. Sed ullamcorper augue eu consequ scelerisque. Ut vitae ante nisi. Nullam mattis in risus Pell habit dsdf morbi tristique senectus et netus et...</p>
                                <h4>Michael James</h4>
                                <h5>Programmer</h5>
                            </div>
                        </div>
                        <div class="single-about-testimonial">
                            <img src="images/about/about-testimonial.jpg" alt="jessie">
                            <div class="about-testimonial-test">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laore dapibus felis sit amet consequat. Nulla nec sodales nibh. Phasellus vehicula ante sed dictum varius. Sed ullamcorper augue eu consequ scelerisque. Ut vitae ante nisi. Nullam mattis in risus Pell habit dsdf morbi tristique senectus et netus et...</p>
                                <h4>Michael James</h4>
                                <h5>Programmer</h5>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
