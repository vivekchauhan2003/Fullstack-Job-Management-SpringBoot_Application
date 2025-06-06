<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Telusko Job Portal</title>

	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	      crossorigin="anonymous">
	<!-- Custom Styles -->
	<style>
		body {
			background-color: #f8f9fa;
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
			color: #007bff !important;
		}

		.card {
			border: none;
			box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
			border-radius: 12px;
		}

		.btn-primary {
			background-color: #007bff;
			border: none;
			padding: 0.6rem 1.5rem;
			border-radius: 8px;
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
				<li class="nav-item">
					<a class="nav-link" href="home">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="viewalljobs">All Jobs</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="https://www.linkedin.com/in/vivekchauhan2003">Contact</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<main class="container mt-5">
	<div class="row g-4">
		<div class="col-md-6">
			<div class="card text-center p-4">
				<a href="/viewalljobs" class="btn btn-primary">View All Jobs</a>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card text-center p-4">
				<a href="/addjob" class="btn btn-primary">Add Job</a>
			</div>
		</div>
	</div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
