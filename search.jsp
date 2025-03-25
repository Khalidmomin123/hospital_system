<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Search</title>
<%-- <%@include file="component/allcss.jsp"%>--%>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
    body {
        background-color: #f8f9fa; /* Light background color */
        font-family: 'Arial', sans-serif;
    }

    .paint-card {
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        background: #ffffff;
        padding: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .paint-card:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 30px rgba(0, 0, 0, 0.1);
    }

    .card-header {
        background-color: #007bff;
        color: white;
        border-radius: 10px 10px 0 0;
        padding: 15px;
    }

    /* Adjusting the background color and form input to make search bar more visible */
    .input-group {
        max-width: 600px;
        margin: 20px auto;
        background-color: #ffffff; /* White background for the search form */
        padding: 10px;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .form-control {
        padding: 15px;
        border-radius: 8px;
        border: 1px solid #ddd;
    }

    .btn {
        padding: 12px 20px;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }

    .btn.bg-success {
        background-color: #28a745;
        color: white;
    }

    .btn.bg-success:hover {
        background-color: #218838;
    }

    .card-body p {
        font-size: 14px;
        color: #555;
        margin: 10px 0;
    }

    .card-body p span {
        font-weight: bold;
    }

    .container-fluid {
        background-color: #f0f1f2;
    }
</style>
</head>
<body>
    <%@include file="component/navbar.jsp"%>

    <!-- Search Form with better visibility -->
    <div class="container-fluid p-3">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <form action="search.jsp" method="post">
                    <div class="input-group">
                        <input placeholder="Enter Specialist" type="text" class="form-control" name="ch" required>
                        <button class="btn bg-success ms-2 text-white">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Doctors List -->
    <div class="container p-5">
        <div class="row">

            <%
            String ch = request.getParameter("ch");
            DoctorDao dao = new DoctorDao(DBConnect.getConn());
            List<Doctor> list = dao.searchDoctor(ch);

            if (list.size() > 0) {
                for (Doctor d : list) {
            %>
            <div class="col-md-3 mb-4">
                <div class="card paint-card">
                    <div class="card-header text-center">
                        <i class="fa-solid fa-circle-user fa-3x"></i>
                    </div>
                    <div class="card-body">
                        <p><span>Name:</span> <%= d.getFullName() %></p>
                        <p><span>Specialist:</span> <%= d.getSpecialist() %></p>
                        <p><span>Qualification:</span> <%= d.getQualification() %></p>
                        <p><span>Email:</span> <%= d.getEmail() %></p>
                        <p><span>Mob No:</span> <%= d.getMobNo() %></p>
                    </div>
                </div>
            </div>
            <%
                }
            } else {
            %>
                <div class="col-12 text-center">
                    <p class="text-danger fs-4">No Doctors found for the given search criteria.</p>
                </div>
            <%
            }
            %>

        </div>
    </div>
</body>
</html>
