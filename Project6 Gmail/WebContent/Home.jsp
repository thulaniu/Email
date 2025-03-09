<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cji.dto.DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: rgb(33, 33, 226);
            color: #fff;
            padding: 50px;
            text-align: center;
        }

        .container {
            display: flex;
            max-width: 1200px;
            margin: auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .sidebar {
            width: 20%;
            padding: 20px;
            background-color: #ddd;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
        }
        
         .logo {
            position: absolute;
            top:1px;
            left:10px;
            max-width: 100px; 
        }
        
        ul {
            font-size: small ; 
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
        
         }

        .dropdown-container {
            position: relative;
            display: inline-block;
        }

        .dropdown {
            border: 3px solid #ccc;
            border-radius: 4px;
            padding: 8px;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
            min-width: 160px;
        }

        .dropdown-content a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
        }

        .dropdown-content a:hover {
            background-color: #4CAF50;
        }
        
        input{
            background-color:rgb(33, 33, 226);
            color: white;
            border-color: white;
            border-radius: 5px;
            padding: 10px;
            margin: 3px;
         }
         
         img{
         background-repeat: no-repeat;
         background-attachment: fixed; 
         background-size: 100% 100%;
         }
         
        
    </style>
</head>
<body>

 <%   
DTO user =(DTO)session.getAttribute("userobject1");
%>

     <div class="header">
     <a href="Home.jsp">
     <img class="logo" src="https://static.vecteezy.com/system/resources/previews/022/484/516/original/google-mail-gmail-icon-logo-symbol-free-png.png" alt="Logo">
        </a>
        </div>
    
    <div class="container">
        <div class="sidebar">
          <ul>
          <li>
          <%= user.getGmailaddress() %>
          </li>
          </ul>
          <a href="Compose.jsp"><input type="submit" value="Compose"></a><br>
          
          <form action="InboxServlet" method="post">
          <input type="hidden" value=<%= user.getGmailaddress() %> name ="gmailaddress">
          <input type="submit" value="Inbox"><br>
          </form>
          
          <form action="SentServlet" method="post">
          <input type="hidden" value=<%= user.getGmailaddress() %> name ="gmailaddress">
          <input type="submit" value="Sent"><br>
          </form>
          
          <form action="InboxServlet" method="post">
          <input type="hidden" value=<%= user.getGmailaddress() %> name ="gmailaddress">
          <input type="submit" value="Drafts"><br>
          </form>
          
          <input type="submit" value="Delete"><br>
           
        </div>
        
        <div calss="content">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkmahfOfWjSrl4DDFS6b3-DDu0xWYYC-hDm4C75T3SFg&s" alt="image">
        </div>
    </div>
    
</body>
</html>