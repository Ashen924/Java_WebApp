<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Cinema - Login</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
</head>

<body>
    <main>
        <h2>ABC Cinema</h2>

        <div class="login-form">
            <div class="text">LOGIN</div>

            <form action="login" method="POST">
                <div class="field">
                    <div class="fas fa-envelope"></div>
                    <input type="text" placeholder="Email" name="email" required>
                </div>

                <div class="field">
                    <div class="fas fa-lock"></div>
                    <input type="password" placeholder="Password" name="password" required>
                </div>

                <button type="submit">LOGIN</button>
                <br><br>

                <div class="form-link">
                    <a href="#" class="forgot-pass">Forgot password?</a>
                </div>

                <div class="form-link">
                    <span>Not a member? <a href="signup.jsp" class="link signup-link">Signup</a></span>
                </div>

                <div class="line"></div>
            </form>
        </div>
    </main>

    <script>
        // JavaScript functions for additional functionalities can be added here
    </script>
</body>

</html>
