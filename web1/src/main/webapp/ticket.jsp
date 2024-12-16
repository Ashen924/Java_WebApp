<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.sql.*" %>

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
    <style type="text/css">
        /* General Styles */
        header {
            padding: 20px;
        }

        header .logo img {
            width: 120px;
        }

        /* Checkout Page */
        .checkout-container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .checkout-box {
            display: flex;
            justify-content: space-between;
            gap: 30px;
        }

        .movie-info {
            flex: 1;
        }

        .movie-info img {
            width: 100%;
            max-width: 300px;
        }

        .price-summary {
            flex: 1;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 8px;
            border-bottom: 1px solid #ccc;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        select, input[type="number"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button.btn {
            background-color: #333;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button.btn:hover {
            background-color: #555;
        }
  
        .seating-section {
            text-align: center;
            margin: 2rem auto;
            max-width: 800px;
        }
        .screen {
            background-color: #ccc;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .seats {
            display: grid;
            grid-template-columns: repeat(10, 1fr);
            gap: 10px;
            justify-content: center;
        }
        .seat {
            width: 30px;
            height: 30px;
            font-size: 18px;
            color: white;
            background-color: #4caf50;
            border-radius: 5px;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .seat.selected {
            background-color: #f39c12;
        }
        .seat.occupied {
            background-color: #e74c3c;
            cursor: not-allowed;
        }
        .legend {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 15px;
        }
        .legend div {
            display: flex;
            align-items: center;
            gap: 5px;
        }
        .legend .box {
            width: 20px;
            height: 20px;
            border-radius: 5px;
        }
        .paypal-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
            width: 100%;
        }

        .paypal-button {
            margin-top: 20px;
        }
        
    </style>
    <script src="https://www.paypal.com/sdk/js?client-id=Ae_v1-FbGVrMCk2Sg2okfDDC829hfgG8FKi9TQtqPnX2NUbYodf3XY2sKQVY336FGCpDZyRoQpv8wKJY&currency=USD"></script>
</head>

<body>

    <main>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">ABC Cinema</a>
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
                            <a class="nav-link" href="events.jsp">Movies</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section class="ticket-section section-padding">
            <div class="section-overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-10 mx-auto">
                        <h1>Ticket Purchase</h1>
                        <%
                            String movieTitle = request.getParameter("title");
                            if (movieTitle != null) {
                        %>
                            <p>You have selected: <strong><%= movieTitle %></strong></p>
                        <%
                            } else {
                        %>
                            <p>No movie selected.</p>
                        <%
                            }
                        %>
                        
                        <form class="custom-form ticket-form mb-5 mb-lg-0" id="ticket-form" method="POST" action="SaveBooking" role="form">
                            <h2 class="text-center mb-4">Get started here</h2>
                            <div class="ticket-form-body">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="text" name="ticket-form-name" id="ticket-form-name" class="form-control" placeholder="Full name" required>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <input type="email" name="ticket-form-email" id="ticket-form-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required>
                                    </div>
                                </div>
                                <input type="tel" class="form-control" name="ticket-form-phone" placeholder="Phone number" pattern="[0-9+-]{1,15}" required>
                                <h6>Choose Ticket Type</h6>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-control">
                                            <input class="form-check-input" type="radio" name="ticket-type" value="10" id="flexRadioDefault1" onchange="updateTotal()" required>
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                CHILD $10
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check form-check-radio form-control">
                                            <input class="form-check-input" type="radio" name="ticket-type" value="15" id="flexRadioDefault2" onchange="updateTotal()" required>
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                ADULT $15
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <section class="seating-section">
                            <br>
                            <div class="seats" id="seat-selection">
                                <!-- Seats will be dynamically generated here -->
                                <div class="seat" data-row="A" data-col="1" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="2" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="3" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="4" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="5" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="6" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="7" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="8" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="9" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="10" title="Available"><i class="fas fa-chair"></i></div>
                            </div>
                            <br>
                             <br>
                            <div class="seats" id="seat-selection">
                                <!-- Seats will be dynamically generated here -->
                                <div class="seat" data-row="A" data-col="1" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="2" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="3" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="4" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="5" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="6" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="7" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="8" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="9" title="Available"><i class="fas fa-chair"></i></div>
                                <div class="seat" data-row="A" data-col="10" title="Available"><i class="fas fa-chair"></i></div>
                            </div>
                            <br>
                            <div class="legend">
                                <div><div class="box" style="background-color: #4caf50;"></div> Available</div>
                                <div><div class="box" style="background-color: #f39c12;"></div> Selected</div>
                                <div><div class="box" style="background-color: #e74c3c;"></div> Occupied</div>
                            </div>
                        </section>
                                <input type="number" name="ticket-form-number" id="ticket-form-number" class="form-control" placeholder="Number of Tickets" required onchange="updateTotal()">
                                <input type="hidden" name="selected-seats" id="selected-seats" value="">
                                <h5>Total Payment: $<span id="total-payment">0</span></h5>
                                <textarea name="ticket-form-message" rows="3" class="form-control" id="ticket-form-message" placeholder="Additional Request"></textarea>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-success pr-5" onclick="updateSelectedSeats()">Proceed to Payment</button>
                                </div>
                                <div id="paypal-button-container" class="mt-4"></div>
                            </div>
                        </form>
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

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/custom.js"></script>

    <script>
        // Handle seat selection
        const seats = document.querySelectorAll('.seat');
        seats.forEach(seat => {
            seat.addEventListener('click', () => {
                if (!seat.classList.contains('occupied')) {
                    seat.classList.toggle('selected');
                    updateSelectedSeats();
                }
            });
        });

        function updateSelectedSeats() {
            const selectedSeats = Array.from(document.querySelectorAll('.seat.selected'));
            const seatNumbers = selectedSeats.map(seat => `Row ${seat.dataset.row} Col ${seat.dataset.col}`);
            document.getElementById('selected-seats').value = seatNumbers.join(', ');
        }

        function updateTotal() {
            var ticketType = document.querySelector('input[name="ticket-type"]:checked');
            var ticketNumber = document.getElementById('ticket-form-number').value;
            
            if (ticketType && ticketNumber) {
                var price = parseFloat(ticketType.value);
                var total = price * ticketNumber;
                document.getElementById('total-payment').innerText = total.toFixed(2);
            }
        }

     // PayPal button integration
        paypal.Buttons({
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: document.getElementById('total-payment').innerText.replace('$', '')
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    alert('Payment Successful!');
                    // Handle successful payment (e.g., update booking status)
                });
            },
            onError: function(err) {
                console.error('PayPal Error:', err);
                alert('There was an error with your payment. Please try again.');
            }
        }).render('#paypal-button-container');
    </script>

</body>

</html>
