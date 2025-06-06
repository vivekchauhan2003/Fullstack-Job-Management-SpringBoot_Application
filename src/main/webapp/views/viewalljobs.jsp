<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: #ffffff !important;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: 600;
        }

        .nav-link {
            color: #333 !important;
        }

        .nav-link:hover {
            color: #0d6efd !important;
        }

        h2 {
            font-weight: 600;
            color: #333;
        }

        .card {
            border: 1px solid #e0e0e0;
            border-radius: 12px;
            background-color: #fff;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: scale(1.01);
        }

        .card-title {
            font-size: 1.2rem;
            font-weight: 600;
        }

        .card-text {
            color: #555;
        }

        .card-footer {
            background-color: #f8f9fa;
            border-top: none;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            list-style-type: disc;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">Telusko Job Portal</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Job Post List</h2>
    <div class="row row-cols-1 row-cols-md-2 g-4">
        <c:forEach var="jobPost" items="${jobPosts}">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
                        <p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
                        <p class="card-text"><strong>Tech Stack:</strong></p>
                        <ul>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="card-footer text-end">
                        <!-- Optional Footer -->
                        <small class="text-muted">Posted Recently</small>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
