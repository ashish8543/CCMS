<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CCMS.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="header-text-area">
        <div class="header-text-carousel text-center">
            <div class="header-text">
                <div class="header-bg header-bg-1"></div>
                <div class="header-single-text">
                    <h1>welcome to Crime Complain
                        <br />
                        Management System</h1>
                    <a href="#" class="btn default-button blue-btn" title="Read more">Read more</a>
                    <a href="contact.html" class="btn default-button red-btn" title="Contact us">Contact us</a>
                </div>
            </div>
            <div class="header-text">
                <div class="header-bg header-bg-2"></div>
                <div class="header-single-text">
                    <h1>if you run you'll
                        <br />
                        only die tired</h1>
                    <a href="#" class="btn default-button blue-btn" title="Read more">Read more</a>
                    <a href="contact.html" class="btn default-button red-btn" title="Contact us">Contact us</a>
                </div>
            </div>
            <div class="header-text">
                <div class="header-bg header-bg-3"></div>
                <div class="header-single-text">
                    <h1>Welcome to our
                        <br />
                        Website</h1>
                    <a href="#" class="btn default-button blue-btn" title="Read more">Read more</a>
                    <a href="contact.html" class="btn default-button red-btn" title="Contact us">Contact us</a>
                </div>
            </div>
        </div>
    </div>



    <section class="about-area section-padding">
        <div class="container">
            <div class="row  wow fadeIn">
                <div class="col-xs-12 text-center">
                    <div class="page-title">
                        <h2>About us</h2>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 wow fadeInLeft" data-wow-delay="0.6s">
                    <div class="about-image-slide">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/po.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                        <img src="images/about/about-image.jpg" alt="">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-8 wow fadeInRight" data-wow-delay="0.6s">
                    <div class="about-text">
                        <p>This “Crime Complain Management Sytem” deals with the various crime which are happens in our city like Theft, Rape, Chain Sneezing, Disputes among people, Suicides and Illegal works.</p>
                        <p>Our System monitors these crimes and provide help to the users, so that they can easily complaint their problems , anywhere and anytime from the location to their nearest police station and also track their complaint status.</p>
                        <p>Our platform provide facilitate the users so that they can easily file their complain report to the nearest police station.</p>
                        <p>The aim of this project is to develop Online Crime Monitoring System which is easily accessible to the public as well as police department. This system registers the complaint from people through online mode and it will also help to the police department in catching criminals, in system and person can give any complaint at anytime.</p>
                        <p>Crime Complain Management Software is used to record resolve and respond to customer complaints, requests as well as facilitate any other feedback.</p>
                        <a href="#" class="btn default-button blue-btn">Read more <span><i class="fa fa-angle-double-right"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="service-area section-padding text-center blue-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="page-title">
                        <h2>Services</h2>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.3s">
                    <div class="single-service">
                        <div class="serivce-icon">
                            <i class="fa fa-pencil-square-o "></i>
                        </div>
                        <h3>Complain</h3>
                        <p>Crime Complaint Management System provides an online way of solving the problems faced by the <%--public by saving time and eradicate corruption.--%></p>
                        <a href="#" class="btn" title="Read More">Read more <i class="fa fa-angle-double-right "></i></a>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.6s">
                    <div class="single-service">
                        <div class="serivce-icon">
                            <i class="fa fa-check-square-o "></i>
                        </div>
                        <h3>Status</h3>
                        <p>User can check status of their complain that how much his or her case been progressed.

                        </p>
                        <a href="#" class="btn" title="Read More">Read more <i class="fa fa-angle-double-right "></i></a>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.9s">
                    <div class="single-service">
                        <div class="serivce-icon">
                            <i class="fa fa-bell-o"></i>
                        </div>
                        <h3>Notification</h3>
                        <p>User get notified by an email with unique complaint number , when any complain has been raised by the user. <%--User will also get notification 
when FIR has been registered on accused.--%> </p>
                        <a href="#" class="btn" title="Read More">Read more <i class="fa fa-angle-double-right "></i></a>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="1.2s">
                    <div class="single-service">
                        <div class="serivce-icon">
                            <i class="fa fa-pencil-square-o"></i>
                        </div>
                        <h3>Report generation</h3>
                        <p>After resolved of complaint user and police department 
+both can generate and view report of each case <%--in which all the details related to the--%></p>
                        <a href="#" class="btn" title="Read More">Read more <i class="fa fa-angle-double-right "></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="gallery-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12  text-center">
                    <div class="page-title">
                        <h2>Gallery</h2>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3  wow fadeIn" data-wow-delay="0.3s">
                    <div class="single-gallery">
                        <img src="images/gallery/01_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/01_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3  wow fadeIn" data-wow-delay="0.6s">
                    <div class="single-gallery">
                        <img src="images/gallery/02_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/02_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3  wow fadeIn" data-wow-delay="0.9s">
                    <div class="single-gallery">
                        <img src="images/gallery/03_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/03_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3  wow fadeIn" data-wow-delay="1.2s">
                    <div class="single-gallery">
                        <img src="images/gallery/04_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/04_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3  wow fadeIn" data-wow-delay="0.3s">
                    <div class="single-gallery">
                        <img src="images/gallery/05_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/05_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeIn" data-wow-delay="0.6s">
                    <div class="single-gallery">
                        <img src="images/gallery/06_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/06_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeIn" data-wow-delay="0.9s">
                    <div class="single-gallery">
                        <img src="images/gallery/07_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/07_gallery_lg..html"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 wow fadeIn" data-wow-delay="1.2s">
                    <div class="single-gallery">
                        <img src="images/gallery/08_gallery.jpg" alt="police">
                        <div class="gallery-icon">
                            <a href="images/gallery/08_gallery_lg.jpg"><i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="videos-area section-padding blue-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="page-title">
                        <h2>Videos</h2>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6  wow fadeIn" data-wow-delay="0.6s">
                    <div class="video-text">
                        <p>Crime Complaint Management System provides an online way of solving the problems faced by the public by saving time and eradicate corruption.</p>
                        <p>The objective of the Crime Complaints Management System is to make complaints easier to coordinate, monitor, track and resolve, and to provide company with an effective tool to identify and target problem areas, monitor complaints handling performance and make business improvements. </p>
                        <p>Crime Complaint Management System is a management technique for assessing, analyzing and responding to customer complaints. </p>
                        <a href="#" class="btn red-btn">Read more</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6  wow fadeIn" data-wow-delay="0.6s">
                    <div class="video-item video-overlay embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/lkDXAmEaW6c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
</asp:Content>
