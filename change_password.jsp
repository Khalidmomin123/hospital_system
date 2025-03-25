<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%-- <%@include file="component/allcss.jsp"%>--%>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
    body {
        background-color: #f7f7f7; /* Light grey background */
        font-family: Arial, sans-serif;
    }

    .paint-card {
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        border-radius: 15px;
        background: linear-gradient(145deg, #6a9ed8, #3f78b1); /* Gradient background */
    }

    .card-body {
        padding: 30px;
    }

    .fs-3 {
        color: #fff;
        font-weight: bold;
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

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .text-center {
        text-align: center;
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

    <c:if test="${ empty userObj }">
        <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>

    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-3 text-center">Change Password</p>

                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success fs-3">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-5">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <form action="userChangePassword" method="post">
                            <div class="mb-3">
                                <label class="form-label text-white">Enter New Password</label> 
                                <input type="password" name="newPassword" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label text-white">Enter Old Password</label> 
                                <input type="password" name="oldPassword" class="form-control" required>
                            </div>

                            <input type="hidden" value="${userObj.id }" name="uid">

                            <button type="submit" class="btn btn-success col-md-12">Change Password</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
