<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.telusko.JobApp.model.JobPost" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f4f5f7;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: #ffffff !important;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .navbar-brand {
            font-weight: 600;
            font-size: 1.5rem;
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
            border: none;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.08);
            background-color: #ffffff;
        }

        .card-title {
            font-size: 1.3rem;
            font-weight: 600;
            color: #212529;
        }

        .card-text {
            color: #555;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            list-style-type: disc;
        }

        .card-footer {
            background-color: #f8f9fa;
            border-top: none;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">Telusko Job Portal</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
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

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Job Post Details</h2>
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                    <p class="card-text"><strong>Description:</strong> <%= myJobPost.getPostDesc() %></p>
                    <p class="card-text"><strong>Experience Required:</strong> <%= myJobPost.getReqExperience() %> years</p>
                    <p class="card-text"><strong>Tech Stack:</strong></p>
                    <ul>
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                            <li><%= tech %></li>
                        <% } %>
                    </ul>
                </div>
                <div class="card-footer text-end">
                    <!-- Optional: Add Posted Date or Apply Button -->
                    <small class="text-muted">Thank you for checking!</small>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
