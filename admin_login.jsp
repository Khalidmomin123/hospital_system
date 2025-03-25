<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>  
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<%-- <%@include file="component/allcss.jsp"%>--%>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
    body {
        background-color: #f0f8ff; /* Soft light blue background */
        font-family: Arial, sans-serif;
    }

    .paint-card {
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        border-radius: 15px; /* Rounded corners */
        background: linear-gradient(145deg, #62b0e8, #1c6f98); /* Gradient background */
    }

    .card-body {
        padding: 30px;
    }

    .fs-4 {
        color: #fff;
        font-weight: 600;
    }

    .form-control {
        padding: 15px;
        border-radius: 8px;
        border: 1px solid #ccc;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
    }

    .btn {
        padding: 15px;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #218838; /* Darker green on hover */
    }

    .text-success, .text-danger {
        font-weight: bold;
    }

    .navbar {
        background-color: #004d99;
    }

    .navbar a {
        color: #fff;
        font-weight: bold;
    }

    .navbar a:hover {
        color: #ccc;
    }
</style>
</head>
<body>
    <%@include file="component/navbar.jsp"%>

    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-4 text-center">Admin Login</p>
                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success fs-3">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-5">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <form action="adminLogin" method="post">
                            <div class="mb-3">
                                <label class="form-label text-white">Email address</label> 
                                <input required name="email" type="email" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label text-white">Password</label> 
                                <input required name="password" type="password" class="form-control">
                            </div>

                            <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
