<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="du-an-chi-tiet.aspx.cs" Inherits="du_an_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="site">
            <a href="~/en/" class="home" runat="server">Home <span class="fa fa-caret-right"></span></a><a
                href="du-an.aspx">Projects<span class="fa fa-caret-right"></span></a>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <asp:ListView ID="lstProjectDetails" runat="server" DataSourceID="odsProjectDetails"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="project-content">
                    <h1>
                        <%# Eval("ProductNameEn") %></h1>
                    <div class="text-content">
                        <%# Eval("ContentEn") %>
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
                Other projects</h1>
            <asp:ListView ID="lstProjectSame" runat="server" DataSourceID="odsProjectSame" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductNameEn")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductNameEn") %></a></li>
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
