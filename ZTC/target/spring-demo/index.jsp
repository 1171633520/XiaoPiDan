<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>个人简历</title>
    <base href="<%=basePath%>">
</head>
<body>
<span><a href="/res/newRes">创建简历</a></span>
<span><a href="/res/myRes">我的简历</a></span>
</body>
</html>
