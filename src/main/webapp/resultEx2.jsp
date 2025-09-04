<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result Ex2</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
</head>
<body>
<img class="logo" src="mur.webp" alt="Murach Books">

<div class="page">
    <h1>TestServlet POST - Ex2</h1>
    <ul>
        <li><b>First Name:</b> ${firstName}</li>
        <li><b>Last Name:</b> ${lastName}</li>
        <li><b>Email:</b> ${email}</li>
        <li><b>Preferred Contact:</b> ${contactVia}</li>
    </ul>
    <p><a href="index.jsp">Back to Home</a></p>
</div>
</body>
</html>
