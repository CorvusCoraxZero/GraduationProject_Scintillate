<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/5/23
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <script src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $(location).attr('href','<%=request.getContextPath()%>/workpage.jsp');
        })
    </script>
</body>
</html>
