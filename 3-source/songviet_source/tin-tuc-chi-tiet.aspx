<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a id="A1" href="~/" class="home" runat="server">Trang chủ <span class="fa fa-caret-right"></span></a><a
                href="tin-tuc.aspx">Tin tức<span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="project-content">
                    <h1><%# Eval("ProductName") %></h1>
                    <div class="text-content">
                        <%# Eval("Content") %>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="nw" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="project-all">
            <h1>Tin tức khác</h1>
            <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductName")) + "-nw-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul>
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNewSame" runat="server" SelectMethod="ProductSameSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                    <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="nw"
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>

