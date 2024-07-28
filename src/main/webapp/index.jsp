<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Campus Diaries : Home Page</title>
    <%@include file="all_js_css.jsp"%>

    <!-- Custom Styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }

        .jumbotron {
            background-color: #007bff;
            color: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            text-align: center;
        }

        .jumbotron h1 {
            font-size: 2.5rem;
        }

        .jumbotron p {
            font-size: 1.2rem;
        }

        .btn-primary {
            background-color: #343a40;
            border-color: #343a40;
            transition: transform 0.3s; /* Smooth transition on hover */
        }

        .btn-primary:hover {
            transform: scale(1.05); /* Zoom effect on hover */
        }

        .features {
            margin-top: 50px;
        }

        .feature {
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            transition: transform 0.3s; /* Smooth transition on hover */
        }

        .feature:hover {
            transform: scale(1.05); /* Zoom effect on hover */
        }

        .testimonial {
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            transition: transform 0.3s; /* Smooth transition on hover */
        }

        .testimonial:hover {
            transform: scale(1.05); /* Zoom effect on hover */
        }

        .cta {
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Bootstrap Navbar -->
    <!-- Insert your existing Bootstrap navbar code here -->

    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Campus Diaries</h1> <!-- Added title text -->
            <p class="lead">Explore, Write, and Share Your Campus Experiences!</p>
            <hr class="my-4">
            <p>Start documenting your memorable moments and notes.</p>
            <a class="btn btn-primary btn-lg" href="add_notes.jsp" role="button">Get Started</a>
        </div>

        <!-- Features Section -->
        <div class="features">
            <h2>Key Features</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="feature">
                        <h3>Easy Note Management</h3>
                        <p>Organize and manage your notes effortlessly.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="feature">
                        <h3>Responsive Design</h3>
                        <p>Access your notes on any device, anytime, anywhere.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Testimonials Section -->
        <div class="testimonials">
            <h2>What Users Say</h2>
            <div class="testimonial">
                <p>"Campus Diaries helped me stay organized and focused throughout my college journey. Highly recommended!"</p>
                <p><strong>John Doe</strong>, Student</p>
            </div>
            <div class="testimonial">
                <p>"A fantastic platform to record and share my thoughts. It's like having a digital diary!"</p>
                <p><strong>Jane Smith</strong>, Blogger</p>
            </div>
        </div>

        <!-- Call-to-Action Section -->
        <div class="cta">
            <h2>Ready to Get Started?</h2>
            <a class="btn btn-primary btn-lg" href="add_notes.jsp" role="button">Start Writing</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
