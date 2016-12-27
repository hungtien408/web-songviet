<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a href="~/en/" class="home" runat="server">Home <span class="fa fa-caret-right"></span></a><a
                href="san-pham.aspx">Products <span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <div class="content_pro">
            <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="content-head">
                        <div class="content_pro_img">
                            <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                            <asp:ListView ID="lstProductImage" runat="server" DataSourceID="odsProductImage"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <img id="Img2" alt='<%# Eval("ImageName") %> ' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductImage" runat="server" SelectMethod="ProductImageSelectAll"
                                TypeName="TLLib.ProductImage">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Value"
                                        Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="content_pro_tit">
                            <h1>
                                <%# Eval("ProductNameEn") %></h1>
                            <div class="list-all">
                                <ul>
                                    <li><a href='<%# progressTitle(Eval("ProductNameEn")) + "-ts-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="../assets/images/icon1.png" alt="" /></span>Parameter</a></li>
                                    <li><a href='<%# progressTitle(Eval("ProductNameEn")) + "-ud-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="../assets/images/icon2.png" alt="" /></span>Application</a></li>
                                    <li><a href='<%# progressTitle(Eval("ProductNameEn")) + "-dd-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="../assets/images/icon3.png" alt="" /></span>Characteristics</a></li>
                                </ul>
                            </div>
                            <div class="description">
                                <%# Eval("DescriptionEn")%></p>
                            </div>
                            <div class="call-us">
                                <p>
                                    Contact price:<span>0919 507 229</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="clr">
                    </div>
                    <%--<div class="content_pro_info">
                        <h1>
                            Thông số kỹ thuật</h1>
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
                        <%# Eval("Content") %>
                    </div>--%>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div class="product-all">
                <h1>
                    Product Same</h1>
                <div id="productSlider" class="owl-carousel productmain">
                    <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="pro-box">
                                    <div class="pro-img">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ProductNameEn") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" /></a></div>
                                    <div class="pro-name">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductNameEn") %></a></div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
