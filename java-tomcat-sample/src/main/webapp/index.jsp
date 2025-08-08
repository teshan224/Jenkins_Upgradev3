<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter" %>
<%
    String username = "Guest";
    if (request.getParameter("name") != null) {
        username = request.getParameter("name");
    }
    String time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy HH:mm:ss"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome - My JSP Site</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #2980b9, #6dd5fa, #ffffff);
            color: #333;
        }
        header {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            text-align: center;
            color: #fff;
        }
        header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        .container {
            max-width: 800px;
            margin: 40px auto;
            background: rgba(255, 255, 255, 0.85);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        .time {
            font-size: 1.2em;
            color: #555;
            margin-bottom: 20px;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 70%;
            font-size: 1em;
        }
        input[type="submit"] {
            background: #2980b9;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #1c5980;
        }
        footer {
            text-align: center;
            padding: 15px;
            background: rgba(0,0,0,0.6);
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>🌟 Welcome to My JSP Site 🌟</h1>
</header>

<div class="container">
    <h2>Hello, <%= username %>!</h2>
    <p class="time">Current time: <%= time %></p>

    <p>This is a sample JSP page with dynamic content.  
    You can enter your name below to personalize the greeting:</p>

    <form method="get">
        <input type="text" name="name" placeholder="Enter your name">
        <input type="submit" value="Update">
    </form>
</div>

<footer>
    &copy; <%= LocalDateTime.now().getYear() %> My JSP Example. All Rights Reserved.
</footer>

</body>
</html>
