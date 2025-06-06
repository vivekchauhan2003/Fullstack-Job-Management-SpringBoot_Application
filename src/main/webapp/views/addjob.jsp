<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Post New Job | Telusko Job Portal</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body {
			background-color: #f9f9f9;
		}
		.navbar-brand {
			font-size: 1.5rem;
			font-weight: 600;
		}
		.card {
			box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
			border: none;
			border-radius: 12px;
		}
		h2 {
			font-weight: 600;
		}
	</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
	<div class="container">
		<a class="navbar-brand" href="#">Telusko Job Portal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
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
	<div class="row justify-content-center">
		<div class="col-md-7">
			<div class="card p-4">
				<h2 class="text-center mb-4">Post a New Job</h2>
				<form action="handleForm" method="post">
					<div class="mb-3">
						<label for="postId" class="form-label">Post ID</label>
						<input type="text" class="form-control" id="postId" name="postId" required>
					</div>

					<div class="mb-3">
						<label for="postProfile" class="form-label">Post Profile</label>
						<input type="text" class="form-control" id="postProfile" name="postProfile" required>
					</div>

					<div class="mb-3">
						<label for="postDesc" class="form-label">Post Description</label>
						<textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
					</div>

					<div class="mb-3">
						<label for="reqExperience" class="form-label">Required Experience (in years)</label>
						<input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
					</div>

					<div class="mb-4">
						<label for="postTechStack" class="form-label">Tech Stack</label>
						<select multiple class="form-select" id="postTechStack" name="postTechStack" required>
							<option value="Java">Java</option>
							<option value="Python">Python</option>
							<option value="JavaScript">JavaScript</option>
							<option value="Spring Boot">Spring Boot</option>
							<option value="Node.js">Node.js</option>
							<option value="React">React</option>
							<option value="Angular">Angular</option>
							<option value="Flutter">Flutter</option>
							<option value="Django">Django</option>
							<option value="AWS">AWS</option>
							<option value="Docker">Docker</option>
							<option value="Kubernetes">Kubernetes</option>
						</select>
						<small class="text-muted">Hold Ctrl (Windows) or Command (Mac) to select multiple.</small>
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-primary">Submit Job</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
