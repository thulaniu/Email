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
            top:10px;
            left:150px;
            max-width: 100px; 
        }
        
</style>
</head>
<body>
<div class="container">
    <div style="display: flex;justify-content: center;
    ">
    <img class="logo" src="C:\Users\lahir\OneDrive\Desktop\Project2 img\55921d425a64280b4bc46d5556618ea9.jpg" alt="logo"><br>
    </div>
    <h2 align="center">Sign-In Success</h2>
    
    <div class="form-group">
      <form action="LogIn.jsp" method="post">
      <input type="submit" value="Log-In">
      </form>
    </div>
    
</div>


</body>
</html>