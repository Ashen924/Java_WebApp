<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="MovieDAO.Movie" %>
<%@ page import="MovieDAO.MovieDAO" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Cinema</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/greensparkevents.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Outfit', sans-serif;
        }
        .card {
            background-color: #1e1e1e;
            border: 1px solid #333;
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
        }
        .card-img-top {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        .card-title {
            color: #f5ba1a;
            font-weight: 700;
        }
        .card-text {
            color: #d3d3d3;
        }
        .btn-primary {
            background-color: #f5ba1a;
            border-color: #f5ba1a;
            color: #121212;
        }
        .btn-primary:hover {
            background-color: #d39e15;
            border-color: #d39e15;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand text-center" href="index.jsp">ABC Cinema</a>
            <a href="ticket.jsp" class="btn custom-btn d-lg-none ms-auto me-4">Buy Ticket</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movies.jsp">Movies</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Now Showing at ABC Cinema</h1>
        <div class="row g-4">
            <%
                MovieDAO movieDAO = new MovieDAO();
                List<Movie> movies = movieDAO.getAllMovies();
                for (Movie movie : movies) {
            %>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<%= movie.getImage() %>" class="card-img-top" alt="<%= movie.getTitle() %>">
                        <div class="card-body">
                            <h5 class="card-title"><%= movie.getTitle() %></h5>
                            <p class="card-text"><%= movie.getDescription() %></p>
                            <a href="ticket.jsp?title=<%= movie.getTitle() %>" class="btn btn-primary">Buy Tickets</a>
                        </div>
                    </div>
                </div>
            <%
                }
            %>
        </div>
    </div>
<br><br><br><br><br>
    <footer class="site-footer">
        <div class="site-footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12">
                        <h2 class="text-white mb-lg-0"><Datag>ABC Cinema</Datag></h2>
                    </div>

                    <div class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
                        <ul class="social-icon d-flex justify-content-lg-end">
                            <li class="social-icon-item">
                                <a href="https://twitter.com/i/flow/login" class="social-icon-link">
                                    <span class="bi-twitter"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.instagram.com/accounts/login/?hl=en" class="social-icon-link">
                                    <span class="bi-instagram"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.youtube.com/account?hl=id" class="social-icon-link">
                                    <span class="bi-youtube"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.pinterest.com/login/" class="social-icon-link">
                                    <span class="bi-pinterest"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-12 mb-4 pb-2">
                    <h5 class="site-footer-title mb-3">Links</h5>

                    <ul class="site-footer-links">
                        <li class="site-footer-link-item">
                            <a href="login.jsp" class="site-footer-link">Home</a>
                        </li>

                      
                        
                        <li class="site-footer-link-item">
                            <a href="login.jsp" class="site-footer-link">Movies</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <h5 class="site-footer-title mb-3">Have a question?</h5>

                    <p class="text-white d-flex mb-1">
                        <a href="tel: 090-080-0760" class="site-footer-link">
                            +94-712345677              </a>
                    </p>

                    <p class="text-white d-flex">
                        <a href="mailto:hello@company.com" class="site-footer-link">
                            hello@abccinema.com
                        </a>
                    </p>
                </div>

                <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
                    <h5 class="site-footer-title mb-3">Location</h5>

                    <p class="text-white d-flex mt-3 mb-2">
                        No: 23/1, Homagama, Colombo</p>

                    <a class="link-fx-1 color-contrast-higher mt-3" href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4047240.6180159017!2d78.06259083309006!3d7.854880591977768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2593cf65a1e9d%3A0xe13da4b400e2d38c!2sSri%20Lanka!5e0!3m2!1sen!2slk!4v1707803914146!5m2!1sen!2slk">
                        <span>Our Maps</span>
                        <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
                            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="16" cy="16" r="15.5"></circle>
                                <line x1="10" y1="18" x2="16" y2="12"></line>
                                <line x1="16" y1="12" x2="22" y2="18"></line>
                            </g>
                        </svg>
                    </a>
                </div>
            </div>
        </div>

        <div class="site-footer-bottom">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-12 mt-5">
                        <p class="copyright-text">Copyright © 2024 abccinema</p>
                        <p class="copyright-text">Distributed by: <a href="Group06">Group06</a></p>
                    </div>

                    <div class="col-lg-8 col-12 mt-lg-5">
                        <ul class="site-footer-links">
                            <li class="site-footer-link-item">
                                <a href="terms&condition.php" class="site-footer-link">Terms &amp; Conditions</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="privacypolicy.php" class="site-footer-link">Privacy Policy</a>
                            </li>

                                    <li class="site-footer-link-item">
                                        <a href="feedback.php" class="site-footer-link">Your Feedback</a>
                                    </li>
                                
                            </nav>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="js/bootstrap.min.js"></script>
</body>

</html>
