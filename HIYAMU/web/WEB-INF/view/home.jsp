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
  </head>
  <body>
    <div id="js"></div>
    인덱스 홈 ${message}
    <div>
        <input type="text" id="search">
        <div id="auto-complete"></div>
    </div>
  </body>
</html>
