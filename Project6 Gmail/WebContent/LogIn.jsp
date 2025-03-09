<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        
        .form-group input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        
        .logo {
            position:center;
            max-width: 100px; 
        }
    </style>
</head>
<body>
<div class="container">
        <div style="display: flex;justify-content: center;">
        <img class="logo" src="https://static.vecteezy.com/system/resources/previews/022/484/516/original/google-mail-gmail-icon-logo-symbol-free-png.png" alt="Logo">
		</div>
		<h1 align="center"><b>Login</b></h1>
		<form action="LoginServlet" method="post">

            <div class="form-group">
                <label for="gmailaddress">G mail address</label>
                <input type="text"  name="gmailaddress" >
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password"  name="password" >
            </div>

            
            <div class="form-group">
                <input type="submit" value="log-In">
            </div>
       
        </form>
        
        <div class="form-group">
                <a href="LogIn.jsp"><input type="submit" value="Reset"></a>
        </div>
    </div>
</body>
</html>