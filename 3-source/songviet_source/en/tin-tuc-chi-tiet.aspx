<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true" CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a id="A1" href="~/en/" class="home" runat="server">Home <span class="fa fa-caret-right"></span></a><a
                href="tin-tuc.aspx">News<span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="project-content">
                    <h1><%# Eval("ProductNameEn") %></h1>
                    <div class="text-content">
                        <%# Eval("ContentEn") %>
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
            <h1>Other News</h1>
            <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductNameEn")) + "-nw-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></li>
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

