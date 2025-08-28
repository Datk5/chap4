<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<%
    String first = request.getParameter("firstName");
    String last  = request.getParameter("lastName");
    String email = request.getParameter("email");
    String dob   = request.getParameter("dateOfBirth");
    String heard = request.getParameter("heardFrom");
    String contact = request.getParameter("contactVia");

    String wantsUpdates = (request.getParameter("wantsUpdates") != null) ? "Yes" : "No";
    String wantsEmails  = (request.getParameter("wantsEmails")  != null) ? "Yes" : "No";
%>

<div class="page">
    <h1>Thank you for joining our Email List!</h1>

    <p><strong>First Name:</strong> <%= first %></p>
    <p><strong>Last Name:</strong> <%= last %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Date of Birth:</strong> <%= dob %></p>
    <p><strong>Heard From:</strong> <%= heard %></p>
    <p><strong>Contact Via:</strong> <%= contact %></p>
    <p><strong>Wants Updates:</strong> <%= wantsUpdates %></p>
    <p><strong>Wants Emails:</strong> <%= wantsEmails %></p>
</div>
</body>
</html>
