<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="TitleContent" runat="server">首页</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="movie">
        <div class="locate">
            <div class="film">
                <div class="frame"><img alt="" src="<%= Url.Content("~/content/image/animation/0.jpg") %>" /></div>
                <div class="frame"><img alt="" src="<%= Url.Content("~/content/image/animation/1.jpg") %>" /></div>
                <div class="frame"><img alt="" src="<%= Url.Content("~/content/image/animation/2.jpg") %>" /></div>
                <div class="frame"><img alt="" src="<%= Url.Content("~/content/image/animation/3.jpg") %>" /></div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="HeaderContent" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ScriptContent" runat="server">
    <% Html.Javascript("~/scripts/module/index.js"); %>
    <script type="text/javascript">
        $(document).ready(function () { index.ready(); });
    </script>
</asp:Content>
