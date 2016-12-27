<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row wrap-contact">
            <div class="col-md-6">
                <asp:ListView ID="lstContact" runat="server" DataSourceID="odsContact" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="address-contact">
                            <h4 class="text-uppercase">
                                <%# Eval("ProductNameEn")%></h4>
                            <p class='<%# string.IsNullOrEmpty(Eval("TagEn").ToString()) ? "hidden" : "" %>'>
                                <span class="fa fa-map-marker"></span>
                                <%# Eval("TagEn")%></p>
                            <p class='<%# string.IsNullOrEmpty(Eval("MetaTittleEn").ToString()) ? "hidden" : "" %>'>
                                <span class="fa fa-phone"></span>
                                <%# Eval("MetaTittleEn")%></p>
                            <p class='<%# string.IsNullOrEmpty(Eval("MetaDescriptionEn").ToString()) ? "hidden" : "" %>'>
                                <span class="fa fa-envelope"></span>
                                <a href='<%# "mailTo:" + Eval("MetaDescriptionEn")%>'><%# Eval("MetaDescriptionEn")%></a></p>
                            <p class='<%# string.IsNullOrEmpty(Eval("ContentEn").ToString()) ? "hidden" : "" %>'>
                                <span class="fa fa-globe"></span><a class="btn-ut" href="javascript:void(0);">Map</a></p>
                            <div class='<%# string.IsNullOrEmpty(Eval("ContentEn").ToString()) ? "hidden" : "map-iframe" %>'>
                                <%# Eval("ContentEn") %>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsContact" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="6" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">
                        We can help you ?</h4>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Họ &amp; Tên" TargetControlID="txtFullName">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Email" TargetControlID="txtEmail">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                                Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Lời nhắn" TargetControlID="txtNoiDung">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                            Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                        </asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                            runat="server" ErrorMessage="+ Code: not match." ValidatedTextBoxID="txtVerifyCode"
                                            Display="Dynamic">
                                            <captchaimage height="35" width="135" renderimageonly="True" />
                                        </asp:RadCaptcha>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Send" ValidationGroup="SendEmail"
                                OnClick="btGui_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="mapshow">
        </div>
    </div>
    <div class="popup">
        <div class="popup-content">
            <h1>
                chi nhánh</h1>
            <div class="form-popup">
                <iframe src="" width="100%" height="100%" frameborder="0" style="border: 0" allowfullscreen>
                </iframe>
            </div>
            <div class="popup-btn-close">
                <img src="../assets/images/btn-close.png" alt="" />
            </div>
        </div>
    </div>
</asp:Content>
