<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cji.dto.DTO" import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }
        
        </style>
        
        <style>
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
        
        input{
            background-color:rgb(33, 33, 226);
            color: white;
            border-color: white;
            border-radius: 5px;
            padding: 10px;
            margin: 3px;
         }
         
        p{
         text-align: center;
        }  
        
       
    </style>
</head>
<body>
<%
List<DTO> userList = (List<DTO>)session.getAttribute("userobject2");
DTO user1 =(DTO)session.getAttribute("userobject1");
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
          <%= user1.getGmailaddress() %>
          </li>
          </ul> 
          
          <input type="submit" value="Compose"><br>
          <input type="submit" value="Inbox"><br>
          <form action="SentServlet" method="post">
          <input type="hidden" value=<%= user1.getGmailaddress() %> name ="gmailaddress">
          <input type="submit" value="Sent"><br>
          </form>
          
          <input type="submit" value="Drafts"><br>
          <input type="submit" value="Delete"><br>
           
        </div> 
       
        
        <div class="content">
           
<table border="1">
  
  <tbody>

<% if (userList != null && !userList.isEmpty()) { %>
<%for(DTO user2 : userList){ %>
<tr>
<td><%= user2.getDate() %></td>
<td> <%= user2.getRecipiant() %></td>
<a><td><%= user2.getSubject() %></td></a>

</tr>
<%} %>
</tbody>
</table>
<% }else{ %>
<p>No massages sent</p>
<%} %>
</div>
</div>

</body>
</html>