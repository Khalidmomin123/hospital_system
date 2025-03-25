<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Patient Login - Hospital</title>
 <%--    <%@include file="component/allcss.jsp"%>--%>
 <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #c2e0ff, #d9f0ff);
            font-family: 'Arial', sans-serif;
        }

        .paint-card {
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            background: #ffffff;
            padding: 30px;
            margin-top: 40px;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
        }

        .btn-login {
            background-color: #28a745;
            border-color: #28a745;
            border-radius: 8px;
            padding: 14px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .btn-login:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }

        .fs-4 {
            font-size: 24px;
            font-weight: 600;
            color: #333;
        }

        .text-decoration-none {
            text-decoration: none;
            color: #007bff;
        }

        .text-decoration-none:hover {
            text-decoration: underline;
        }

        .card-body {
            border-radius: 10px;
        }

        .mb-3 {
            margin-bottom: 20px;
        }

        .login-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hospital-logo {
            width: 100px;
            margin-bottom: 20px;
        }

        .welcome-text {
            text-align: center;
            font-size: 28px;
            color: #004085;
            font-weight: 700;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <%@include file="component/navbar.jsp"%>

    <div class="login-container">
        <div class="card paint-card">
            <div class="card-body">
                <!-- Optional hospital logo -->
                <div class="text-center">
                    <img src="img/hospitallogo.jpg" class="hospital-logo" alt="Hospital Logo">
                </div>

                <p class="welcome-text">Welcome to Our Hospital</p>

                <p class="fs-4 text-center">Patient Login</p>

                <c:if test="${not empty succMsg}">
                    <p class="text-center text-success fs-4">${succMsg}</p>
                    <c:remove var="succMsg" scope="session" />
                </c:if>

                <c:if test="${not empty errorMsg}">
                    <p class="text-center text-danger fs-5">${errorMsg}</p>
                    <c:remove var="errorMsg" scope="session" />
                </c:if>

                <form action="userLogin" method="post">
                    <div class="mb-3">
                        <label class="form-label">Email Address</label>
                        <input required name="email" type="email" class="form-control">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input required name="password" type="password" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-login">Login</button>
                </form>

                <div class="text-center mt-3">
                    <p>Don't have an account? <a href="signup.jsp" class="text-decoration-none">Create one</a></p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
