<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<PagerViewModel>" %>

    <div class="pager">
    <% if (Model.ShowPreLink) { %>
        <a href="<%= string.Format("javascript:{0}({1});", Model.AjaxHandler, 1) %>">1</a>
        <a class="dot" href="<%= string.Format("javascript:{0}({1});", Model.AjaxHandler, Model.StartIndex - 1) %>">...</a>
    <% } %>

    <%  for (int i = Model.StartIndex; i <= Model.EndIndex; i++) { %>
        <% if (i == Model.PageIndex) { %>
        <span><%= i %></span>
        <% } else { %>
        <a href="<%= string.Format("javascript:{0}({1});", Model.AjaxHandler, i) %>"><%= i %></a>
        <% } %>
    <% } %>

    <% if (Model.ShowEndLink) { %>
        <a class="dot" href="<%= string.Format("javascript:{0}({1});", Model.AjaxHandler, Model.EndIndex + 1) %>">...</a>
        <a href="<%= string.Format("javascript:{0}({1});", Model.AjaxHandler, Model.PageCount) %>"><%= Model.PageCount %></a>
    <% } %>
    </div>
