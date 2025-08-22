<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Join Our Email List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h1 {
            color: green;  /* Tiêu đề xanh lá */
        }
        form {
            margin-top: 20px;
        }
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="email"] {
            padding: 5px;
            width: 250px;
        }
        input[type="submit"] {
            margin-top: 15px;
            padding: 6px 12px;
        }
    </style>
</head>
<body>
<h1>Join Our Email List</h1>

<form action="emailList" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" name="firstName" id="firstName"><br>

    <label for="lastName">Last Name:</label>
    <input type="text" name="lastName" id="lastName"><br>

    <label for="email">Email:</label>
    <input type="email" name="email" id="email"><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
