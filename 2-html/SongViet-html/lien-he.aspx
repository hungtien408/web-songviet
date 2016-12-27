<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SongViet</title>
    <meta name="description" content="SongViet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">trụ sở chính</h4>
                    <p><span class="fa fa-map-marker"></span>448 Võ Văn Tần, P.5, Q.3, Tp. HCM</p>                    <p><span class="fa fa-phone"></span>(84) 8 38340496</p>                    <p><span class="fa fa-envelope"></span>(84) 8 39292739</p>
                </div>
                 <div class="address-contact">
                    <h4 class="text-uppercase">văn phòng chi nhánh</h4>
                    <p><span class="fa fa-map-marker"></span>34H KDC Hồng Long, 606 QL 13, Hiệp Bình Phước, Thủ Đức, Tp. HCM</p>                    <p><span class=" fa fa-globe"></span><a class="btn-ut" href="javascript:void(0);">Bản đồ</a></p>                    <div class="map-iframe">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.830255136022!2d106.60863251513366!3d10.747562262663891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752dcb831becaf%3A0xaa95d2503c95bc9d!2zxJDGsOG7nW5nIHPhu5EgMzAsIELDrG5oIFRy4buLIMSQw7RuZyBCLCBCw6xuaCBUw6JuLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1478251404302" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>                 </div>
                 <div class="address-contact">
                    <h4 class="text-uppercase">đà nẵng</h4>
                    <p><span class="fa fa-map-marker"></span>40 Lê Hữu Trác, Q. Sơn Trà, Tp. Đà Nẵng</p>                    <p><span class="fa fa-phone"></span>(84) 511 3532339 - 0937 120039</p>                    <p><span class="fa fa-envelope"></span>(84) 511 3532339</p>
                    <p><span class=" fa fa-globe"></span><a class="btn-ut" href="javascript:void(0);">Bản đồ</a></p>
                    <div class="map-iframe">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.1414641450947!2d108.23716491516488!3d16.058147243999365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142177e6a7082cf%3A0xa35190786dbb302a!2zNDAgTMOqIEjhu691IFRyw6FjLCBQaMaw4bubYyBN4bu5LCBTxqFuIFRyw6AsIMSQw6AgTuG6tW5nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1478312094336" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                 <div class="address-contact">
                    <h4 class="text-uppercase">văn phòng chi nhánh</h4>
                    <p><span class="fa fa-map-marker"></span>33/1A, Ấp 1, P. An Phú Đông, Q. 12,Tp. HCM</p>                    <p><span class=" fa fa-globe"></span><a class="btn-ut" href="javascript:void(0);">Bản đồ</a></p>                    <div class="map-iframe">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.830255136022!2d106.60863251513366!3d10.747562262663891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752dcb831becaf%3A0xaa95d2503c95bc9d!2zxJDGsOG7nW5nIHPhu5EgMzAsIELDrG5oIFRy4buLIMSQw7RuZyBCLCBCw6xuaCBUw6JuLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1478251404302" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">Chúng tôi có thể giúp gì cho bạn ?</h4>
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ &amp; Tên"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Lời nhắn"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-btn">
                                <asp:button ID="Button1" CssClass="button-btn" runat="server" text="Gởi lời nhắn" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mapshow"></div>
    </div>
    <div class="popup">
            <div class="popup-content">
                <h1>chi nhánh</h1>
                <div class="form-popup">
                    <iframe src="" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="popup-btn-close">
                    <img src="assets/images/btn-close.png" alt="" />
                </div>
            </div>
        </div>
</asp:Content>


