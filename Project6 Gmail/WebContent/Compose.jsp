<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cji.dto.DTO"%>
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
        
        .form-group input[type="button"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        
       
    </style>
</head>
<body>
<%
DTO user1 =(DTO)session.getAttribute("userobject1");
%>
<div class="container">
 
		<form action="ComposeServlet" method="post">

            <div class="form-group">
                <label for="recipiant">To:</label>
                <input type="text" name="recipiant" >
            </div>

            <div class="form-group">
                <label for="subject">subject:</label>
                <input type="text"  name="subject" >
            </div>
            
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="text"  name="date" >
            </div>
            
            <div class="form-group">
                <label for="massage">Massage:</label>
                <input type="textarea" row=3  name="massage" >
            </div>
            <input type="hidden" value = <%= user1.getGmailaddress() %> name="gmailaddress">
            
            <table>
            <tr>
            <td>
            <div class="form-group">
                
                <input type="submit" value="send" type="hidden" value="sent" name="states">
            </div>
            </td>
            <td>
            <div class="form-group">
                <input type="submit" value="Save" type="hidden" value="drafts" name="states">
            </div>
            </td>
            </form>
            <td>
            <div class="form-group">
                <a href="Home.jsp"><input type="button" value="Back"></a>
            </div>
            </td>
            </tr>
            </table>
            
 
    </div>
</body>
</html>