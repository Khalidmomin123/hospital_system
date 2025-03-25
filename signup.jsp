<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Registration - Hospital</title>
    <%--<%@include file="component/allcss.jsp"%> --%>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            padding: 20px;
            background-color: #f8f9fa;
        }

        .backImg {
            background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
                url("img/hospital.jpg");
            height: 35vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .container {
            margin-top: 40px;
        }

        .card-header {
            background-color: #004085;
            color: white;
            font-size: 24px;
            text-align: center;
            padding: 15px;
            border-radius: 15px 15px 0 0;
        }

        .form-label {
            font-weight: 500;
        }

        .btn-submit {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            width: 100%;
            border-radius: 30px;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #218838;
            cursor: pointer;
        }

        .form-control {
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }

        .error-msg {
            font-size: 1.2em;
            color: #dc3545;
            text-align: center;
        }

        .success-msg {
            font-size: 1.2em;
            color: #28a745;
            text-align: center;
        }

        .row {
            margin-top: 30px;
        }
    </style>
</head>
<body>

    <%@include file="component/navbar.jsp"%>

    <div class="container-fulid backImg p-5">
        <p class="text-center fs-2 text-white">User Registration</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card paint-card">
                    <div class="card-header">Create Your Account</div>
                    <div class="card-body">

                        <c:if test="${not empty sucMsg }">
                            <p class="success-msg">${sucMsg}</p>
                            <c:remove var="sucMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsg }">
                            <p class="error-msg">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <form action="user_register" method="post">
                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input required name="fullname" type="text" class="form-control" placeholder="Enter your full name">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <input required name="email" type="email" class="form-control" placeholder="Enter your email">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input required name="password" type="password" class="form-control" placeholder="Enter your password">
                            </div>

                            <button type="submit" class="btn-submit">Register</button>
                        </form>

                        <div class="text-center mt-3">
                            Already have an account? <a href="user_login.jsp" class="text-decoration-none text-success">Login here</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
