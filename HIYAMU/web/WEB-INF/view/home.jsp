<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 20. 11. 3.
  Time: 오후 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <jsp:include page="include/head.jsp"/>
    <title>Manga</title>
    <script type="module" src="${pageContext.request.contextPath}/static/js/search/search_ajax.js"></script>
    <script type="module" src="${pageContext.request.contextPath}/static/js/search/delete_tag.js"></script>
    <script type="module" src="${pageContext.request.contextPath}/static/js/search/auto_complete_click.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/search/search.css" rel="stylesheet">
  </head>
  <body>
    <div id="js"></div>
    <div id="search_box">
      <div id="title">
        HIYAMU.la
      </div>
      <div id="search-tags">
        <div id="tags"></div>
        <input type="textarea" id="search" placeholder="search" autocomplete="off">
      </div>
      <div id="auto-complete">
      </div>
    </div>
  </body>
</html>
