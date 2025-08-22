<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thanks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h1 {
            color: green;   /* Tiêu đề xanh lá */
        }
        .info {
            margin-top: 20px;
            font-size: 16px;
        }
        .btn-return {
            margin-top: 30px;
        }
    </style>
</head>
<body>
<h1>Thank You for Joining!</h1>

<div class="info">
    <p><b>First Name:</b> ${user.firstName}</p>
    <p><b>Last Name:</b> ${user.lastName}</p>
    <p><b>Email:</b> ${user.email}</p>
</div>

<!-- Nút Return -->
<div class="btn-return">
    <form action="index.jsp" method="get">
        <input type="submit" value="Return">
    </form>
</div>
</body>
</html>
