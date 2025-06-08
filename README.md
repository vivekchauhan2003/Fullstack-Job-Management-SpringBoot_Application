# Fullstack Job Management Application

A comprehensive full-stack web application built using **Spring Boot**, **Thymeleaf**, **HTML/CSS**, and **MySQL**, designed to manage job postings and streamline the recruitment workflow. This project demonstrates key principles of full-stack development, RESTful architecture, and server-side rendering.

## 🚀 Features

- Add, edit, and delete job postings
- List all available jobs with real-time updates
- Search and filter job listings
- Responsive user interface with Thymeleaf templating
- Integration with MySQL for persistent storage
- Robust backend built with Spring Boot and Spring MVC

## 🛠️ Tech Stack

**Frontend:**
- Thymeleaf
- HTML5
- CSS3
- Bootstrap (if used)

**Backend:**
- Java 17+
- Spring Boot
- Spring MVC
- Spring Data JPA

**Database:**
- MySQL

**Tools & Build:**
- Maven
- Eclipse/IntelliJ IDEA
- Git & GitHub

## 📂 Project Structure

```

src/
└── main/
├── java/
│    └── com.jobportal/
│          ├── controller/
│          ├── model/
│          ├── repository/
│          └── service/
└── resources/
├── templates/
├── static/
└── application.properties

````

## 🧑‍💻 Getting Started

### Prerequisites

- Java 17 or higher
- Maven
- MySQL Server
- IDE (Eclipse, IntelliJ)

### Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/vivekchauhan2003/Fullstack-Job-Management-SpringBoot_Application.git
cd Fullstack-Job-Management-SpringBoot_Application
````

2. **Configure MySQL**

Update your `application.properties` with your local DB credentials:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/job_management
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
```

3. **Run the application**

```bash
./mvnw spring-boot:run
```

4. **Access the app**

Visit: `http://localhost:8080/`

## 📸 Screenshots

> Add relevant UI screenshots of job listings, add/edit job forms, etc.

## 🤝 Contributing

Contributions are welcome! Feel free to fork this repository and submit a pull request.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙋‍♂️ Author

**Vivek Chauhan**
Junior Java Developer at AmantyaTech
[GitHub Profile](https://github.com/vivekchauhan2003)
[LinkedIn](https://www.linkedin.com/in/vivekchauhan2003/) 
