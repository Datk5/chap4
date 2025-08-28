<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<!-- Logo góc trái -->
<img class="logo" src="mur.webp" alt="Murach Books">

<div class="page">
    <h1>Survey</h1>
    <p class="lead">
        If you have a moment, we’d appreciate it if you would fill out this survey.
    </p>

    <form action="thanks.jsp" method="post">
        <h2>Your information:</h2>
        <table class="info">
            <tr>
                <td class="lbl">First Name:</td>
                <td><input type="text" name="firstName" class="txt"></td>
            </tr>
            <tr>
                <td class="lbl">Last Name:</td>
                <td><input type="text" name="lastName" class="txt"></td>
            </tr>
            <tr>
                <td class="lbl">Email:</td>
                <td><input type="email" name="email" class="txt"></td>
            </tr>
            <tr>
                <td class="lbl">Date of Birth:</td>
                <td><input type="date" name="dateOfBirth" class="txt"></td>
            </tr>
        </table>

        <h2>How did you hear about us?</h2>
        <div class="choices">
            <label><input type="radio" name="heardFrom" value="search" checked> Search engine</label>
            <label><input type="radio" name="heardFrom" value="word"> Word of mouth</label>
            <label><input type="radio" name="heardFrom" value="social"> Social Media</label>
            <label><input type="radio" name="heardFrom" value="other"> Other</label>
        </div>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <div class="choices">
            <label><input type="checkbox" name="wantsUpdates"> YES, I’d like that.</label>
            <label><input type="checkbox" name="wantsEmails"> YES, please send me email announcements.</label>
        </div>

        <div class="contact-row">
            <span>Please contact me by: </span>
            <select name="contactVia" class="select">
                <option>Email or postal mail</option>
                <option>Email only</option>
                <option>Postal mail only</option>
            </select>
        </div>

        <p><input type="submit" value="Submit" class="btn"></p>
    </form>
</div>
</body>
</html>
