<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="tuyen-dung.aspx.cs" Inherits="tuyen_dung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="recruitment">
            <div class="title-main">
                <h1>
                    tuyển dụng</h1>
            </div>
            <div class="bor-acc">
                <div class="tin-accodion">
                    <div class="accodion-head">
                        <div class="td-location">
                            Vị trí đang tuyển</div>
                        <div class="td-number">
                            Số lượng cần tuyển</div>
                        <div class="td-time">
                            Thời gian đăng tuyển</div>
                    </div>
                    <div class="accodion-content">
                        <asp:ListView ID="lstCareer" runat="server" DataSourceID="odsCareer" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="faq">
                                    <div class="tin-title">
                                        <div class="td-location">
                                            <%# Eval("ProductName") %></div>
                                        <div class="td-number">
                                            <%# Eval("TagEn") %></div>
                                        <div class="td-time">
                                            <%# Eval("Tag") %></div>
                                    </div>
                                    <div class="tin-content">
                                        <div class="content-wrap">
                                            <%# Eval("Content") %>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsCareer" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
