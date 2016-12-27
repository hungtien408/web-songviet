<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SongViet</title>
    <meta name="description" content="SongViet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div id="site">
            <a href="./" class="home">Trang chủ <span class="fa fa-caret-right"></span>
            </a><a href="san-pham.aspx">Máy nước siêu tin khiết <span class="fa fa-caret-right"></span></a> <span>UltraPure Eco</span>
        </div>
        <div class="content_pro">
            <div class="content-head">
                <div class="content_pro_img">
                    <img src="assets/images/img5.jpg" alt=""/>
                </div>
                <div class="content_pro_tit">
                    <h1>UltraPure Easy</h1>
                    <div class="description">
                        <p><img src="assets/images/img6.jpg" alt=""/></p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div>
                    <div class="call-us">
                        <p>Giá liên hệ:<span>0913 729 177</span></p>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
            <div class="content_pro_info">
                <h1>Thông số kỷ thuật</h1>
                <ul>
                    <li>Bộ ổn nhiệt loại kinh tế kích thước 48x48 hoặc 48x96</li>
                    <li>Màn hình LCD hiển thị LED trắng sáng cao 15.2mm rỏ ràng</li>
                    <li>Ngỏ vào đa chức năng: Thermocouple, Pt100, Analog dòng áp DC, hồng ngoại tùy chọn</li>
                    <li>Nguồn cấp 100-240VAC±15% hoặc 24VAC/DC±15%</li>
                    <li>Ngỏ ra nhiều lựa chọn tùy model: Relay (contact), transistor (SSR), Analog (4-20mA)</li>
                    <li>Chức năng điều khiển ON/OFF hoặc 2-PID độc lập</li>
                    <li>Tốc độ lấy mẩu cao 50ms, và chức năng tự hiệu chỉnh (Self-turning)</li>
                    <li>Kết nối dể dàng với phần mềm CX-Thermo qua cáp USB</li>
                    <li>Đạt tiêu chuẩn UL/CSA và dấu CE đạt độ kín mặt tiêu chuẩn IEC IP66</li>
                    <li>Vỏ bọc bằng nhựa tổng hợp, nhiệt độ làm việc -10~550C,</li>
                    <li>Đạt tiêu chuẩn UL 61010-1, CSA C22.2 No. 611010-1 (evaluated by UL)</li>
                </ul>
            </div>
            <div class="product-all">
                <h1>Sản phẩm liên quan</h1>
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
        </div>
    </div>
</asp:Content>

