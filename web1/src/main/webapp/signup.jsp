<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ABC Cinema - Signup</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/signup.css" rel="stylesheet">
</head>

<body>
    <main>
        <h2>ABC Cinema</h2>

        <div class="signup-form">
            <div class="form-content">
                <header class="text">Signup</header>
                <form action="signup" method="POST" id="registrationForm">
                    <label for="userType">Select User Type:</label>

                    <div id="studentSection" class="hidden">
                        <div class="form-group">
                            <label for="studentField">User Name</label>
                            <input type="text" id="studentField" name="full_name" placeholder="Username" required>
                        </div>
                    </div>

                    <div class="field input-field">
                        <input type="email" placeholder="Email" class="input" name="email" required>
                    </div>

                    <div class="field input-field">
                        <input type="password" placeholder="Create password" class="password" name="password" required>
                    </div>

                    <div class="field input-field">
                        <input type="password" placeholder="Confirm password" class="password" required>
                        <i class='bx bx-hide eye-icon'></i>
                    </div>

                    <div class="field button-field">
                        <button type="submit" class="button">Signup</button>
                    </div>
                </form>
                <div class="link form-link">
                    <span>Already have an account? <a href="login.jsp" class="login-link link">Login</a></span>
                </div>

                <% 
                    String errorMessage = request.getParameter("error");
                    if (errorMessage != null) {
                %>
                    <div class="alert alert-danger"><%= errorMessage %></div>
                <% 
                    } 
                    String successMessage = request.getParameter("message");
                    if (successMessage != null) {
                %>
                    <div class="alert alert-success"><%= successMessage %></div>
                <% 
                    } 
                %>
            </div>
        </div>
    </main>
</body>

</html>
