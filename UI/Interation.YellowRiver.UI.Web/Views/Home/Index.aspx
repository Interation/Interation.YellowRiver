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
                <div class="frame"><img alt="" src="<%= Url.Content("~/content/image/animation/4.jpg") %>" /></div>
            </div>
        </div>
    </div>
    <div class="display">
        <h2>最新案例</h2>
        <ul class="pics">
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/case/1.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/case/2.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/case/3.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/case/4.jpg") %>" /></a></li>
        </ul>
        <div class="clear"></div>
        <h2>服务品牌</h2>
        <ul class="pics">
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/1.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/2.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/3.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/4.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/5.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/6.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/7.jpg") %>" /></a></li>
            <li><a href="javascript:void(0);"><img alt="" src="<%= Url.Content("~/content/image/brand/8.jpg") %>" /></a></li>
        </ul>
        <% Html.RenderAction("Pager", "Shared", new { pageIndex = 15, pageCount = 100, ajaxHandler = "void" }); %>
        <div class="clear"></div>
        <h2>给黄河留言</h2>
        <div class="message">
            <div class="thing">您的姓名</div>
            <div class="value"><input /></div>
            <div class="thing">您的公司</div>
            <div class="value"><input /></div>
            <div class="thing">您的电话</div>
            <div class="value"><input /></div>
            <div class="thing">您的职位</div>
            <div class="value"><input /></div>
            <div class="thing">电子邮箱</div>
            <div class="value"><input /></div>
            <div class="thing">公司网址</div>
            <div class="value"><input /></div>
            <div class="thing">留言内容</div>
            <div class="text"><textarea></textarea></div>
            <div class="clear"></div>
        </div>
        <div class="message_submit">
            <input type="submit" value="提交" />
        </div>
    </div>
    <div class="sidebar">
        <div class="advisory">
            <h2>业务咨询电话</h2>
            <div class="white">
                <div class="tel">023-<span>68699797</span><span>68698844</span></div>
                <div>或&nbsp;&nbsp;<a href="javascript:void(0);">给我们留言</a></div>
            </div>
            <div class="thing">原注册地址：</div>
            <div class="value">重庆市九龙坡区石桥铺科园三路南方花园B区明珠楼</div>
            <div class="thing">原过渡地址：</div>
            <div class="value">重庆市石桥铺渝新路89号瀚福楼</div>
            <div class="clear"></div>
        </div>
        <h2>分行业客户案例</h2>
        <ul class="case">
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li class="left"><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
            <li><a href="javascript:void(0);">电信通讯</a></li>
        </ul>
    </div>
    <div class="clear"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="HeaderContent" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ScriptContent" runat="server">
    <% Html.Javascript("~/scripts/module/index.js"); %>
    <script type="text/javascript">
        $(document).ready(function () { index.ready(); });
    </script>
</asp:Content>
