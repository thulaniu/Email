<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signed in faild</title>
<style >
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
            position: relative; /* Add position relative to container */
        }
        
       

   .form-group input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        
   .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }  
        
       .logo {
            position: center;
            top:10px;
            left:80px;
            max-width: 100px; 
        }
        
        
</style>
</head>
<body>
<div class="container">
        <div style="display: flex;justify-content: center;">
        <img class="logo" src="https://static.vecteezy.com/system/resources/previews/022/484/516/original/google-mail-gmail-icon-logo-symbol-free-png.png" alt="Logo">
		</div>
		<h1 align="center"><b>Sign Up</b></h1>
		<form action="SignInServlet" method="post">

            <div class="form-group">
                <label for="gmailaddress">G mail address:</label>
                <input type="text"  name="gmailaddress" >
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password"  name="password" >
            </div>
            
             <div class="form-group">
                <label for="contactno">Contact No:</label>
                <input type="text"  name="contactno" >
            </div>
            
             <div class="form-group">
                <label for="country">Country:</label>
                <input type="text"  name="country" >
            </div>
           <p style="color:red">Somebody has registered from this g mail address</p>
            
            <div class="form-group">
                <input type="submit" value="Sign-Up">
            </div>

        </form>
        
        <div class="form-group">
                <a href="Sign-in.jsp"><input type="submit" value="Reset"></a>
            </div>
        
    </div>
</body>
</html>