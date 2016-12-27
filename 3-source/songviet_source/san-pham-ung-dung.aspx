<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham-ung-dung.aspx.cs" Inherits="san_pham_ung_dung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SongViet</title>
    <meta name="description" content="SongViet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div id="site">
            <a href="~/" class="home" runat="server">Trang chủ <span class="fa fa-caret-right"></span></a><a
                href="san-pham.aspx">Sản phẩm <span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <div class="content_pro">
            <asp:ListView ID="lstUngDung" runat="server" DataSourceID="odsUngDung" EnableModelValidation="True">
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
                                <%# Eval("ProductName") %></h1>
                            <div class="list-all">
                                <ul>
                                    <li><a href='<%# progressTitle(Eval("ProductName")) + "-ts-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="assets/images/icon1.png" alt="" /></span>Thông số</a></li>
                                    <li><a style="font-weight:bold;  color: #b5152b;" href='<%# progressTitle(Eval("ProductName")) + "-ud-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="assets/images/icon2.png" alt="" /></span>Ứng dụng</a></li>
                                    <li><a href='<%# progressTitle(Eval("ProductName")) + "-dd-" + Eval("ProductID") + ".aspx" %>'>
                                        <span>
                                            <img src="assets/images/icon3.png" alt="" /></span>Đặc điểm</a></li>
                                </ul>
                            </div>
                            <div class="description">
                                <p>
                                    <%# Eval("UngDung") %></p>
                            </div>
                            <div class="call-us">
                                <p>
                                    Giá liên hệ:<span>0919 507 229</span></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsUngDung" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="ud" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div class="clr">
            </div>
            <div class="product-all">
                <h1>
                    Sản phẩm liên quan</h1>
                <div id="productSlider" class="owl-carousel productmain">
                    <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="pro-box">
                                    <div class="pro-img">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" /></a></div>
                                    <div class="pro-name">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductName") %></a></div>
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
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="ud" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

