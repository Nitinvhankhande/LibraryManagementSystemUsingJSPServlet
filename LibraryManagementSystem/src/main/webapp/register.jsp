<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="classes.model.*, classes.DAO.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Librarian Dashboard - Knowledge Haven</title>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap & Icons -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

  <!-- External Template Styling -->
  <link href="assets/css/templet.css" rel="stylesheet">

  <!-- Internal Page-Specific Styles -->
  <style>
    .dashboard-box {
      background-color: rgba(255, 255, 255, 0.1);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4);
      max-width: 600px;
      margin: 120px auto;
      text-align: center;
      z-index: 2;
      position: relative;
      color: #fff;
    }

    .dashboard-box h2 {
      margin-bottom: 30px;
      color: #ffc107;
      font-weight: bold;
    }

    .dashboard-box a {
      display: block;
      background-color: #787876;
      color: #000;
      padding: 15px;
      margin: 15px 0;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: all 0.3s ease;
    }

    .dashboard-box a:hover {
      background-color: #e0a800;
      color: #fff;
    }
  </style>
</head>

<body>

<!-- ======= Header (from templet.css) ======= -->
<header class="glass-header fixed-top d-flex align-items-center shadow-sm">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
    <a href="index.jsp" class="logo d-flex align-items-center text-decoration-none">
      <i class="bi bi-mortarboard-fill text-warning fs-3 me-2"></i>
      <span class="sitename text-light fs-4 fw-semibold">Knowledge Haven</span>
    </a>
    <nav class="d-flex align-items-center">
      <ul class="nav nav-pills gap-3">
        <a class="btn btn-warning fw-bold text-dark px-3" href="index.jsp">Logout</a>
      </ul>
    </nav>
  </div>
</header>

<!-- ======= Main Section ======= -->
<main class="main">
  <div class="dashboard-box">
    <h2>Welcome Librarian</h2>
    <a href="librarianForBooks.jsp">📚 Manage Books</a>
    <a href="librarianForUser.jsp">👤 Manage Users</a>
    <a href="BorrowRequest.jsp">📥 Accept Book Request</a>
    <a href="ShowBorrowedBooks.jsp">📖 Show Books History</a>
  </div>
</main>

<!-- ======= Footer (from templet.css) ======= -->
<footer class="footer bg-dark text-light pt-5 pb-3">
  <div class="container">
    <div class="row justify-content-center text-center mb-4">
      <div class="col-md-6">
        <h4 class="text-warning">Knowledge Haven</h4>
        <p>We are dedicated to spreading knowledge and inspiration through books and education.</p>
        <p><strong>Contact:</strong> +1 5589 55488 55 <br> knowledgehaven@gmail.com</p>
      </div>
    </div>
    <div class="text-center mb-3">
      <a href="#" class="text-light mx-2"><i class="bi bi-twitter"></i></a>
      <a href="#" class="text-light mx-2"><i class="bi bi-facebook"></i></a>
      <a href="#" class="text-light mx-2"><i class="bi bi-instagram"></i></a>
      <a href="#" class="text-light mx-2"><i class="bi bi-linkedin"></i></a>
    </div>
    <div class="text-center pt-3 border-top border-secondary">
      <small>© <strong>Knowledge Haven</strong> All Rights Reserved. Designed by <a href="#" class="text-light text-decoration-none">Library Team</a></small>
    </div>
  </div>
</footer>

<!-- JS -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>
