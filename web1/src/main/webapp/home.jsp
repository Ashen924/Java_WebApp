<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ABC Cinema</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/greensparkevents.css" rel="stylesheet">

    <link href="css/ourgallery.css" rel="stylesheet">

    <link href="css/ourgallery2.css" rel="stylesheet">


</head>

<body>

    <main>

    
        

        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.php">
                    ABC Cinema
                </a>

                <a href="ticket.php" class="btn custom-btn d-lg-none ms-auto me-4">Buy Ticket</a>

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
        </nav>


        <section class="hero-section" id="section_1">
            <div class="section-overlay"></div>

            <div class="container d-flex justify-content-center align-items-center">
                <div class="row">

                    <div class="col-12 mt-auto mb-5 text-center">
                        <small>ABC Cinema Presents</small>

                        <h1 class="text-white mb-5">KGF</h1>


                        <a class="btn custom-btn smoothscroll" href="https://youtu.be/-KfsY-qwBS0?si=w0AI31_sjkDFla2W" target="_blank">
                            Watch Trailer
                        </a>
                    </div>


                    <div class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
                        <div class="date-wrap">
                            <h5 class="text-white">
                                <i class="custom-icon bi-clock me-2"></i>
                                15 - 12<sup>th</sup>, Dec 2024
                            </h5>
                        </div>

                        <div class="location-wrap mx-auto py-3 py-lg-0">
                            <h5 class="text-white">
                                <i class="custom-icon bi-geo-alt me-2"></i>
                               ABC Cinema Hall, Homagama
                            </h5>
                        </div>

                    <div class="social-share">
                            <ul class="social-icon d-flex align-items-center justify-content-center">
                                <span class="text-white me-3">Share :</span>

                                <ul class="social-icon-list">
                                    <li class="social-icon-item">
                                        <a href="https://www.facebook.com/yourusername" class="social-icon-link" onclick="shareOnFacebook(); return false;">
                                            <span class="bi-facebook"></span>
                                        </a>
                                    </li>
                                </ul>
                                

                                 <ul class="social-icon-list">
                                    <li class="social-icon-item">
                                        <a href="https://twitter.com/yourusername/" class="social-icon-link" onclick="shareOnTwitter(); return false;">
                                            <span class="bi-twitter"></span>
                                        </a>
                                    </li>
                                </ul>
                                
                                    
                                    <ul class="social-icon-list">
                                        <li class="social-icon-item">
                                            <a href="https://www.instagram.com/yourusername" class="social-icon-link" target="_blank" onclick="reloadInstagram(); return false;">
                                                <span class="bi-instagram"></span>
                                            </a>
                                        </li>
                                    </ul>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="video-wrap">
                <video autoplay="" loop="" muted="" class="custom-video" poster="">
                    <source src="video/pexels-2022395.mp4" type="video/mp4">

                    
                </video>
            </div>
        </section>




        <section class="about-section section-padding" id="section_2">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
                        <div class="services-info">
                            <h2 class="text-white mb-4">ABC Cinema PVT LTD</h2>

                            <p class="text-white">A film hall, also commonly referred to as a movie theater or cinema hall, is a venue specifically designed for the exhibition of motion pictures on a large screen. Below is a general description of a film hall:

                                A film hall, also commonly referred to as a movie theater or cinema hall, is a venue specifically designed for the exhibition of motion pictures on a large screen. Below is a general description of a film hall:

                            </p>

                            <h6 class="text-white mt-4">"Unforgettable Adventure"</h6>

                            <p class="text-white">Please spread the word about ABC Cinema.</p>

                         
                        </div>
                    </div>

                    <div class="col-lg-6 col-12">
                        <div class="about-text-wrap">
                            <img src="images/images.jpg" class="about-image img-fluid">

                               
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>





 


        <section class="contact-section section-padding" id="section_6">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-12 mx-auto">
                        <h2 class="text-center mb-4">Interested? Let's talk</h2>

                        <nav class="d-flex justify-content-center">
                            <div class="nav nav-tabs align-items-baseline justify-content-center" id="nav-tab"
                                role="tablist">
                                <button class="nav-link active" id="nav-ContactForm-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactForm" type="button" role="tab"
                                    aria-controls="nav-ContactForm" aria-selected="false">
                                    <h5>Contact Form</h5>
                                </button>

                                <button class="nav-link" id="nav-ContactMap-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactMap" type="button" role="tab"
                                    aria-controls="nav-ContactMap" aria-selected="false">
                                    <h5>Google Maps</h5>
                                </button>
                            </div>
                        </nav>

                        <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel"
                                aria-labelledby="nav-ContactForm-tab">
                 <form class="custom-form contact-form mb-5 mb-lg-0" action="FeedbackServlet" method="post" role="form">
    <div class="contact-form-body">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
                <input type="text" name="contact-name" id="contact-name" class="form-control" placeholder="Full name" required>
            </div>

            <div class="col-lg-6 col-md-6 col-12">
                <input type="email" name="contact-email" id="contact-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required>
            </div>
        </div>

        <input type="text" name="contact-company" id="contact-company" class="form-control" placeholder="name" required>

        <textarea name="contact-message" rows="3" class="form-control" id="contact-message" placeholder="Message"></textarea>

        <div class="col-lg-4 col-md-10 col-8 mx-auto">
            <button type="submit" class="form-control">Send message</button>
        </div>
    </div>
</form>

                            </div>

                            <div class="tab-pane fade" id="nav-ContactMap" role="tabpanel"
                                aria-labelledby="nav-ContactMap-tab">
                                <iframe class="google-map"
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4047240.6180159017!2d78.06259083309006!3d7.854880591977768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2593cf65a1e9d%3A0xe13da4b400e2d38c!2sSri%20Lanka!5e0!3m2!1sen!2slk!4v1707803914146!5m2!1sen!2slk"
                                    width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                                
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>


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
                            <a href="index.php" class="site-footer-link">Home</a>
                        </li>

                      
                        
                        <li class="site-footer-link-item">
                            <a href="Gallery.php" class="site-footer-link">Movies</a>
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
                        <p class="copyright-text">Copyright � 2024 abccinema</p>
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




        <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>
    


</body>

</html>