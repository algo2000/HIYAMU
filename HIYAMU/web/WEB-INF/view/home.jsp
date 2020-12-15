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
    <jsp:include page="include/header.jsp"/>
    <div id="home-box">
      <jsp:include page="include/logo.jsp"/>
      <div id="search-tag-box">
        <div id="search-box">
          <input id="search-input" type="text" placeholder="search">
          <svg id="search-btn" xmlns="http://www.w3.org/2000/svg" width="18.854" height="19.854" viewBox="0 0 18.854 19.854">
            <g transform="translate(-357 59)">
              <line x2="4" y2="4" transform="translate(371.5 -43.5)" fill="none" stroke="#fff" stroke-width="1"/>
              <circle cx="9" cy="9" r="8.5" transform="translate(357 -59)" fill="none" stroke="#fff" stroke-width="1"/>
            </g>
          </svg>
        </div>
        <div id="tag-box">
        </div>
      </div>
      <div id="auto-complete">
      </div>
    </div>
  </body>
</html>
