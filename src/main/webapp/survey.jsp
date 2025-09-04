<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String ex = request.getParameter("ex");
    if (ex == null) ex = "ex1";
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Survey</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
</head>
<body>
<img class="logo" src="mur.webp" alt="Murach Books">

<div class="page">
    <h1>Survey - <%= ex.toUpperCase() %></h1>

    <form action="<%= (ex.equals("ex1") ? "emailList" : "test") %>" method="post">
        <h2>Your information:</h2>
        <table class="info">
            <tr>
                <td class="lbl">First Name:</td>
                <td><input class="txt" type="text" name="firstName"></td>
            </tr>
            <tr>
                <td class="lbl">Last Name:</td>
                <td><input class="txt" type="text" name="lastName"></td>
            </tr>
            <tr>
                <td class="lbl">Email:</td>
                <td><input class="txt" type="email" name="email"></td>
            </tr>

            <% if (ex.equals("ex1")) { %>
            <tr>
                <td class="lbl">Date of Birth:</td>
                <td><input class="txt" type="date" name="dob"></td>
            </tr>
        </table>

        <h2>How did you hear about us?</h2>
        <div class="choices">
            <label><input type="radio" name="heardFrom" value="Search engine" checked> Search engine</label>
            <label><input type="radio" name="heardFrom" value="Word of mouth"> Word of mouth</label>
            <label><input type="radio" name="heardFrom" value="Social Media"> Social Media</label>
            <label><input type="radio" name="heardFrom" value="Other"> Other</label>
        </div>

        <div class="choices">
            <label><input type="checkbox" name="wantsUpdates"> YES, I'd like updates</label>
            <label><input type="checkbox" name="wantsEmails"> YES, send me email announcements</label>
        </div>
        <% } else { %>
        </table>

        <h2>EX2: Please select your contact method</h2>
        <div class="choices">
            <label><input type="radio" name="contactVia" value="Email" checked>Email</label>
            <label><input type="radio" name="contactVia" value="Phone">Phone</label>
        </div>
        <% } %>

        <p><input class="btn" type="submit" value="Submit"></p>
    </form>
</div>
</body>
</html>
