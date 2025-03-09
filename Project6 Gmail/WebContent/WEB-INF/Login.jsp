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
  <img class="logo" src="C:\Users\lahir\OneDrive\Desktop\Project2 img\pngtree-green-leaf-logo-icon-design-template-vector-png-image_3556505.jpg" alt="Logo">
		<h1 align="center"><b>Login</b></h1>
		<form action="LoginServlet2" method="post">

            <div class="form-group">
                <label for="username">User Name:</label>
                <input type="text"  name="username" >
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password"  name="password" >
            </div>

            
            <div class="form-group">
                <input type="submit" value="log-In">
            </div>
            
             <div class="form-group">
                <input type="submit" value="Reset">
            </div>

        </form>
    </div>
</body>
</html>