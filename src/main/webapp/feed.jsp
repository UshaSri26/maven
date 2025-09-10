<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="in.kmit.social.model.Post" %>
<html>
<head>
    <title>Feed - Social Media Mini App</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    if(username == null || username.isEmpty()) {
        username = "Guest";
    }
%>

<h2>Welcome, <%= username %> 👋</h2>
<hr/>

<!-- Post form -->
<form action="PostServlet" method="post">
    <textarea name="content" placeholder="What's on your mind?" rows="3" cols="40"></textarea><br/>
    <input type="hidden" name="user" value="<%= username %>"/>
    <input type="submit" value="Post"/>
</form>

<hr/>

<!-- Dummy Feed -->
<h3>News Feed</h3>
<p><b>Alice:</b> Hello World! (2 Likes)</p>
<p><b>Bob:</b> Enjoying the app! (5 Likes)</p>

</body>
</html>
