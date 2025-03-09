<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gmail Signin</title>
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

    .error {
        color: red;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .password-strength {
        font-weight: bold;
        margin-top: 5px;
    }

    .invalid {
        color: red;
    }

    .valid {
        color: green;
    }
</style>
</head>
<body>

<div class="container">
    <h1 align="center"><b>Sign Up</b></h1>

    <form action="SignInServlet" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="gmailaddress">Gmail Address:</label>
            <input type="text" name="gmailaddress" required>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required onkeyup="validatePassword()">
            <p id="passwordStrength" class="password-strength"></p>
            <ul>
                <li id="lowercaseCheck" class="invalid">At least one lowercase letter</li>
                <li id="uppercaseCheck" class="invalid">At least one uppercase letter</li>
                <li id="specialCharCheck" class="invalid">At least one special character</li>
            </ul>
        </div>

        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" required onkeyup="matchPasswords()">
            <p id="passwordError" class="error" style="display: none;">Passwords do not match!</p>
        </div>

        <div class="form-group">
            <label for="contactno">Contact No:</label>
            <input type="text" name="contactno" required>
        </div>

        <div class="form-group">
            <label for="country">Country:</label>
            <input type="text" name="country" required>
        </div>

        <div class="form-group">
            <input type="submit" value="Sign-Up">
        </div>
    </form>
</div>

<script>
    function validatePassword() {
        var password = document.getElementById("password").value;
        var lowercaseCheck = document.getElementById("lowercaseCheck");
        var uppercaseCheck = document.getElementById("uppercaseCheck");
        var specialCharCheck = document.getElementById("specialCharCheck");

        var hasLowercase = /[a-z]/.test(password);
        var hasUppercase = /[A-Z]/.test(password);
        var hasSpecialChar = /[\W]/.test(password);

        // Toggle valid/invalid styles
        lowercaseCheck.className = hasLowercase ? "valid" : "invalid";
        uppercaseCheck.className = hasUppercase ? "valid" : "invalid";
        specialCharCheck.className = hasSpecialChar ? "valid" : "invalid";
    }

    function matchPasswords() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        var errorElement = document.getElementById("passwordError");

        if (password !== confirmPassword) {
            errorElement.style.display = "block";
        } else {
            errorElement.style.display = "none";
        }
    }

    function validateForm() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        
        var hasLowercase = /[a-z]/.test(password);
        var hasUppercase = /[A-Z]/.test(password);
        var hasSpecialChar = /[\W]/.test(password);

        if (!hasLowercase || !hasUppercase || !hasSpecialChar) {
            alert("Password does not meet the strength criteria!");
            return false;
        }

        if (password !== confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
