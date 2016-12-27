<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SongViet</title>
    <meta name="description" content="SongViet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper-main">
        <div class="container">
            <div class="wrapper-product">
                <div class="title-main">
                    <h1>sản phẩm</h1>
                </div>
                <div id="productSlider" class="owl-carousel productmain">
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img"><a href="#"><img src="assets/images/pro1.jpg" alt=""/></a></div>
                            <div class="pro-name"><a href="#">pure easy 10</a></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img"><a href="#"><img src="assets/images/pro2.jpg" alt=""/></a></div>
                            <div class="pro-name"><a href="#">pureplus phar</a></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img"><a href="#"><img src="assets/images/pro3.jpg" alt=""/></a></div>
                            <div class="pro-name"><a href="#">pure easy 10</a></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img"><a href="#"><img src="assets/images/pro4.jpg" alt=""/></a></div>
                            <div class="pro-name"><a href="#">pureplus phar</a></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img"><a href="#"><img src="assets/images/pro4.jpg" alt=""/></a></div>
                            <div class="pro-name"><a href="#">pureplus phar</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wrapper-project">
                <div class="title-main">
                    <h1>dự án</h1>
                </div>
                <div class="projectimg">
                    <img src="assets/images/project1.jpg" alt=""/>
                </div>
                <div class="project-list">
                    <ul>
                        <li><a href="#">Thiết kế lắp đặt hệ thống xử lý nước cất (DI, DEMIN)</a></li>
                        <li><a href="#">Thiết kế lắp đặt hệ thống xử lý thải</a></li>
                        <li><a href="#">Vận hành hệ thống DI 50m 3.h - Điện Ômôn (GE)</a></li>
                        <li><a href="#">Vận hành hệ DI 45m 3/h - Điện Cà Mau (GE)</a></li>
                        <li><a href="#">Dịch vụ kỹ thuật Pepsi 20m 3/h</a></li>
                        <li><a href="#">Tư vấn kỹ thuật hệ thống RO 125m 3/h - DQR</a></li>
                        <li><a href="#">Hệ thống RO công suất 10m 3/h</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



