<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="classes.model.*, classes.DAO.*" %> 

<jsp:useBean id="newlogin" class="classes.model.User" scope="request" />
<jsp:setProperty name="newlogin" property="*" />

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>login - Library Management System</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Poppins&family=Raleway&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <style>
    .login-box {
      background-color: #fff;
      padding: 30px 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      max-width: 500px;
      margin: 120px auto;
    }

    .login-box h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #333;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      margin-bottom: 8px;
      display: block;
    }

    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 6px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    button {
      background-color: #007bff;
      color: #fff;
      padding: 12px;
      width: 100%;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
    }

    button:hover {
      background-color: #0056b3;
    }

    .register-link {
      margin-top: 15px;
      text-align: center;
      font-size: 14px;
    }

    .register-link a {
      color: #007bff;
      text-decoration: none;
    }

    .register-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body class="starter-page-page">

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center position-relative">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <a href="index.jsp" class="logo d-flex align-items-center me-auto me-lg-0">
        <h1 class="sitename">Library System</h1>
      </a>

      <nav id="navmenu" class="navmenu mx-auto">
        
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
    </div>
  </header><!-- End Header -->
 <main id="main">
    <div class="container">
      <div class="login-box">
        <h2>Login</h2>
        <form action="login.jsp" method="post">
          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required />
          </div>

          <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required />
          </div>

          <button type="submit">Login</button>

          <div class="register-link">
            Don't have an account? <a href="register.jsp">Register here</a>
          </div>
        </form>
      </div>
    </div>
  </main><!-- End Main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer dark-background">
    <div class="copyright">
      <div class="container text-center">
        <p>&copy; <strong class="px-1 sitename">Library System</strong> All Rights Reserved</p>
        <div class="credits">
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
  <%
    String errorMsg = null;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            User loggedInUser = UserDAO.checkLogin(email, password);

            if (loggedInUser != null) {
                session.setAttribute("user", loggedInUser);
                if ("librarian".equalsIgnoreCase(loggedInUser.getRole())) {	
                    response.sendRedirect("librarian.jsp");
                } else {
                    response.sendRedirect("borrowBook.jsp");
                }
                return;
            } else {
                errorMsg = "Invalid email or password!";
            }
        } catch (Exception e) {
            errorMsg = "Login error: " + e.getMessage();
            e.printStackTrace(); // Also check logs
        }
    }
%>

<% if (errorMsg != null) { %>
  <div class="alert alert-danger"><%= errorMsg %></div>
<% } %>
</body>

</html>
