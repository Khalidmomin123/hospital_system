<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Index Page</title>
    <%@include file="../component/allcss.jsp"%>

    <style type="text/css">
        /* General Styles */
        body {
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            font-family: 'Arial', sans-serif;
        }

        /* About Us Section Styles */
        .about-us-paragraph {
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Smooth blue gradient */
            color: #ffffff; /* White text color */
            padding: 20px;
            border-radius: 10px;
            font-size: 1.2rem;
            line-height: 1.8;
            text-align: center;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .fs-2 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #1f3c64; /* Dark Blue Color */
            margin-bottom: 2rem;
            text-align: center;
        }

        /* Card Style (All Cards Same Dynamic Gradient Color) */
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background: linear-gradient(135deg, #ff7e5f, #feb47b); /* Dynamic Gradient */
            color: white;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 30px rgba(0, 0, 0, 0.2);
            background: linear-gradient(135deg, #feb47b, #ff7e5f); /* Hover Gradient */
        }

        .card-body {
            padding: 20px;
            text-align: center;
        }

        .card img {
            width: 100%;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .card img:hover {
            transform: scale(1.1);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #fff;
            margin-top: 15px;
        }

        .card-text {
            color: #fff;
            font-size: 1rem;
            margin-bottom: 15px;
        }

        .hover-description {
            display: none;
            padding: 15px;
            font-size: 14px;
            color: #555;
            text-align: justify;
            line-height: 1.6;
            background: rgba(255, 255, 255, 0.9);
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 10;
            height: 100%;
            overflow: auto;
            border-radius: 15px;
        }

        .card:hover .hover-description {
            display: block;
        }

        /* Container for Cards */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 30px;
        }

        .card-container .col-md-4 {
            flex: 1 1 calc(25% - 20px);
            max-width: 25%;
            min-width: 280px;
        }

        /* Meet Our Specialists Section */
        .container.p-2 p.fs-2 {
            color: #4d4d4d; /* Dark Gray for title text */
            font-family: 'Arial', sans-serif; /* Arial font for consistency */
            font-weight: bold;
        }

        .specialist-card .description {
            color: #6c757d; /* Soft Gray color for descriptions */
            font-size: 0.9rem;
            font-style: italic; /* Italicize description text */
        }

        .specialist-card p.fw-bold {
            color: #0b3c5d; /* Dark Blue for names */
        }

        .specialist-card p.fs-7 {
            color: #0275d8; /* Bright Blue for the role */
        }
    </style>
</head>
<body>
    <%@include file="component/navbar.jsp"%>

    <!-- Carousel Section -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/hos.jpg" class="d-block w-100" alt="..." height="500px">
            </div>
            <div class="carousel-item">
                <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px">
            </div>
            <div class="carousel-item">
                <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="500px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span> 
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span> 
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- About Us Section -->
    <div class="container">
        <p class="fs-2">ABOUT US</p>
        <p class="about-us-paragraph">At MEDICAL CARE, we provide compassionate, high-quality healthcare with state-of-the-art facilities and a patient-centered approach. Our dedicated team of professionals is committed to delivering exceptional care to improve the health and well-being of every individual who walks through our doors.</p>

        <!-- Cards Section -->
        <div class="card-container">
            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <img src="img/card1.jpg" alt="Card 1 Image">
                        <p class="card-title">Comprehensive Medical Services</p>
                        <p class="card-text">Our medical services are designed to meet the needs of individuals in every stage of life.</p>
                        <div class="hover-description">
                            24/7 emergency care, diagnostic services, and patient care support are available on-site.
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <img src="img/card2.jpg" alt="Card 2 Image">
                        <p class="card-title">Specialized Departments</p>
                        <p class="card-text">Our specialized departments offer expert care in cardiology, neurology, orthopedics, and more.</p>
                        <div class="hover-description">
                            We provide world-class treatment for all specialties with cutting-edge technology.
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <img src="img/card3.jpg" alt="Card 3 Image">
                        <p class="card-title">Emergency Care</p>
                        <p class="card-text">Our emergency services are available 24/7, ensuring quick and efficient treatment for urgent cases.</p>
                        <div class="hover-description">
                            We prioritize rapid response and comprehensive care for emergency medical needs.
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <img src="img/card4.jpg" alt="Card 4 Image">
                        <p class="card-title">Patient-Centered Care</p>
                        <p class="card-text">We focus on providing holistic, personalized care that prioritizes the needs of each patient.</p>
                        <div class="hover-description">
                            Our care philosophy emphasizes empathy, attention, and a dedicated approach to healing.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Meet Our Specialists Section -->
    <div class="container p-2">
        <p class="text-center fs-2">MEET OUR SPECIALISTS</p>
        <div class="row">
            <!-- Specialist 1 -->
            <div class="col-md-3">
                <div class="card paint-card specialist-card">
                    <div class="card-body text-center">
                        <img src="img/doc1.jpg" width="240px" height="300px">
                        <p class="fw-bold fs-5">Dr. Sayali Patil</p>
                        <p class="fs-7">(Dermatologist)</p>
                        <p class="description">Dr. Sayali Patil is an experienced and board-certified dermatologist...</p>
                    </div>
                </div>
            </div>
            <!-- Specialist 2 -->
            <div class="col-md-3">
                <div class="card paint-card specialist-card">
                    <div class="card-body text-center">
                        <img src="img/doc2.jpg" width="240px" height="300px">
                        <p class="fw-bold fs-5">Dr. Sudhakar Patil</p>
                        <p class="fs-7">(Dentist)</p>
                        <p class="description">Dr. Sudhakar Patil offers a wide range of services including routine check-ups...</p>
                    </div>
                </div>
            </div>
            <!-- Specialist 3 -->
            <div class="col-md-3">
                <div class="card paint-card specialist-card">
                    <div class="card-body text-center">
                        <img src="img/doc3.jpg" width="240px" height="300px">
                        <p class="fw-bold fs-5">Dr. Amit Mane</p>
                        <p class="fs-7">(Surgeon)</p>
                        <p class="description">Dr. Amit Mane specializes in various surgical fields...</p>
                    </div>
                </div>
            </div>
            <!-- Specialist 4 -->
            <div class="col-md-3">
                <div class="card paint-card specialist-card">
                    <div class="card-body text-center">
                        <img src="img/doc4.jpg" width="240px" height="300px">
                        <p class="fw-bold fs-5">Dr. Madhura Shingade</p>
                        <p class="fs-7">(Family Medicine)</p>
                        <p class="description">Dr. Madhura Shingade provides comprehensive healthcare for all ages...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showText(element) {
            var text = element.querySelector('.hover-description');
            if (text) {
                text.style.display = 'block';
            }
        }

        function hideText(element) {
            var text = element.querySelector('.hover-description');
            if (text) {
                text.style.display = 'none';
            }
        }
    </script>

    <%@include file="component/footer.jsp"%>
</body>
</html>


   