<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-light shadow-lg" style="background: linear-gradient(135deg, #56ab2f, #a8e063);">
    <div class="container-fluid">
        <!-- Logo and Navbar Brand -->
        <a class="navbar-brand fs-4 fw-bold text-white" href="index.jsp">
            <i class="fas fa-clinic-medical"></i> <span class="text-shadow">MEDICAL CARE</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left-aligned Links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active fs-5 text-white" href="search.jsp">
                        <i class="fas fa-search search-icon"></i> <span class="search-text">Search</span>
                    </a>
                </li>
            </ul>

            <!-- Right-aligned Links (conditionally rendered based on user login state) -->
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${empty userObj }">
                    <!-- Login Button with Hover Effect -->
                    <li class="nav-item dropdown">
                        <a class="nav-link fs-5 text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" 
                           data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="admin_login.jsp">Admin Login</a></li>
                            <li><a class="dropdown-item" href="doctor_login.jsp">Doctor Login</a></li>
                            <li><a class="dropdown-item" href="user_login.jsp">Patient Login</a></li>
                        </ul>
                    </li>
                </c:if>

                <c:if test="${not empty userObj }">
                    <li class="nav-item">
                        <a class="nav-link fs-5 text-white" href="user_appointment.jsp">
                            <i class="fas fa-calendar-check"></i> Appointment
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fs-5 text-white" href="view_appointment.jsp">
                            <i class="fas fa-eye"></i> View Appointment
                        </a>
                    </li>

                    <!-- User Dropdown Menu -->
                    <div class="dropdown">
                        <button class="btn btn-success dropdown-toggle fs-5 text-white" type="button" id="dropdownMenuButton1" 
                                data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item fs-6" href="change_password.jsp">Change Password</a></li>
                            <li><a class="dropdown-item fs-6" href="userLogout">Logout</a></li>
                        </ul>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

<!-- Add this in your CSS section for hover dropdown effect -->
<style>
    /* Reset default browser margins and paddings */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body background color with gradient */
    body {
        background: linear-gradient(135deg, #a8e063, #56ab2f); /* Green gradient */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #333;
        height: 100%; /* Ensure body takes full height */
    }

    html, body {
        height: 100%;
    }

    /* Navbar Styles */
    .navbar {
        background: linear-gradient(135deg, #56ab2f, #a8e063); /* Gradient background */
        padding: 0; /* Remove top-bottom padding from navbar */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        height: auto; /* Ensure navbar height is adjusted to content */
    }

    /* Flexbox layout to center the content in the navbar */
    .navbar .container-fluid {
        display: flex;
        justify-content: space-between; /* Spread the items across the navbar */
        align-items: center; /* Vertically align items */
        height: 100%; /* Ensure full height to center vertically */
    }

    .navbar-nav .nav-item .nav-link {
        font-size: 1.2rem;
        color: #ffffff; /* Ensure all links are white for visibility */
        text-decoration: none;
        padding: 12px 20px;
        transition: background-color 0.3s, color 0.3s;
        display: flex; /* Ensure the icon and text align properly */
        align-items: center;
    }

    /* Make icons larger */
    .navbar-nav .nav-item .nav-link i {
        font-size: 1.6rem; /* Increase icon size */
        margin-right: 10px; /* Add space between icon and text */
    }

    /* Style for Search Icon and Text */
    .search-icon {
        font-size: 1.6rem; /* Larger icon for visibility */
        color: #ffffff; /* White color for the icon */
        margin-right: 10px;
    }

    .search-text {
        color: #ffffff;
        font-weight: 600; /* Bolder text */
    }

    /* Hover effects for all links */
    .navbar-nav .nav-item .nav-link:hover {
        background-color: #28a745; /* Green on hover */
        color: #fff;
        border-radius: 5px;
    }

    .navbar-nav .nav-item .nav-link.active {
        font-weight: bold;
        color: #28a745 !important;
    }

    .navbar-toggler {
        border: none;
    }

    .navbar-toggler-icon {
        background-color: #28a745;
    }

    /* Dropdown Styles */
    .dropdown-menu {
        display: none;
    }

    .nav-item.dropdown:hover .dropdown-menu {
        display: block;
    }

    .dropdown-menu .dropdown-item {
        font-size: 1.1rem;
        color: #495057;
        transition: background-color 0.3s, color 0.3s;
    }

    .dropdown-menu .dropdown-item:hover {
        background-color: #28a745;
        color: #fff;
    }

    /* Custom Icon Style */
    .search-icon {
        color: #ffffff; /* Dark color for better contrast */
        margin-right: 10px; /* Space between icon and text */
    }

    /* Ensure Search Text Visibility */
    .search-text {
        color: #ffffff; /* Ensure text color is dark */
    }

    /* Footer Styling */
    footer {
        background-color: #1e3d58; /* Darker color for footer */
        color: white;
        padding: 20px 0;
        text-align: center;
    }

    footer a {
        color: #fff;
        text-decoration: none;
    }

    footer a:hover {
        text-decoration: underline;
    }

    /* Responsive Styling for Smaller Screens */
    @media (max-width: 768px) {
        .navbar-nav .nav-item {
            text-align: center;
            margin: 10px 0;
        }

        .navbar-nav .nav-item .nav-link {
            font-size: 1.3rem;
        }

        .dropdown-menu {
            width: 100%;
        }
    }

    /* Text Shadow to Make Logo Text Visible */
    .text-shadow {
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
    }
</style>

<!-- Font Awesome for icons -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<!-- JavaScript to Fix Navbar Behavior -->
<script>
    // Ensures the navbar is expanded when the page loads if on a small screen
    document.addEventListener("DOMContentLoaded", function () {
        // Check if the screen size is small (i.e., mobile view) and the navbar is collapsed
        const navbarToggle = document.querySelector('.navbar-toggler');
        const navbarCollapse = document.querySelector('#navbarSupportedContent');

        // Add event listener to automatically open navbar on page load
        if (window.innerWidth <= 768) {
            navbarCollapse.classList.add('show');
        }

        // Close navbar when a link is clicked (on mobile view)
        const navLinks = document.querySelectorAll('.navbar-nav .nav-link');
        navLinks.forEach(function (link) {
            link.addEventListener('click', function () {
                if (window.innerWidth <= 768) {
                    navbarToggle.click();  // Toggle navbar visibility
                }
            });
        });
    });
</script>

