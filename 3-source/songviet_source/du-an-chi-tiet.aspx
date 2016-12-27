<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="du-an-chi-tiet.aspx.cs" Inherits="du_an_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a href="~/" class="home" runat="server">Trang chủ <span class="fa fa-caret-right"></span></a><a
                href="du-an.aspx">Dự án<span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <asp:ListView ID="lstProjectDetails" runat="server" DataSourceID="odsProjectDetails"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="project-content">
                    <h1>
                        <%# Eval("ProductName") %></h1>
                    <div class="text-content">
                        <%# Eval("Content") %>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsProjectDetails" runat="server" SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="project-all">
            <h1>
                Dự án khác</h1>
            <asp:ListView ID="lstProjectSame" runat="server" DataSourceID="odsProjectSame" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul>
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProjectSame" runat="server" SelectMethod="ProductSameSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                    <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="tt"
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
