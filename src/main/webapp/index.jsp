<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Bài 5</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
</head>
<body>
<img class="logo" src="mur.webp" alt="Murach">

<div class="page">
    <h1>Welcome to Bài 5</h1>

    <form action="survey.jsp" method="get">
        <input type="hidden" name="ex" value="ex1">
        <input class="btn" type="submit" value="Go to Ex1">
    </form>

    <form action="survey.jsp" method="get">
        <input type="hidden" name="ex" value="ex2">
        <input class="btn" type="submit" value="Go to Ex2">
    </form>
</div>
</body>
</html>
