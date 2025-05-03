<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="classes.model.*, classes.DAO.*" %> 

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Librarian Dashboard - Library Management System</title>
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
    .dashboard-box {
      background-color: #fff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      max-width: 600px;
      margin: 100px auto;
      text-align: center;
    }

    .dashboard-box h2 {
      color: #333;
      margin-bottom: 30px;
    }

    .dashboard-box a {
      display: block;
      background-color: #007bff;
      color: #fff;
      padding: 15px;
      margin: 15px 0;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .dashboard-box a:hover {
      background-color: #0056b3;
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
  </header>
  <!-- End Header -->

  <main id="main">
    <div class="container">
      <div class="dashboard-box">
        <h2>Welcome Librarian</h2>
        <a href="librarianForBooks.jsp">📚 Manage Books</a>
        <a href="librarianForUser.jsp">👤 Manage Users</a>
        <a href="BorrowRequest.jsp">📚 accept Book Request</a>
        <a href="ShowBorrowedBooks.jsp">📖 Show Books History</a>
      </div>
    </div>
  </main>

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
  </footer>

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

</body>
</html>
