<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, classes.model.*, classes.DAO.*" %>

<%
    User loggedInUser = (User) session.getAttribute("user");
    if (loggedInUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String message = null;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        try {
            String action = request.getParameter("action");
            int userId = Integer.parseInt(request.getParameter("userId"));
            int bookId = Integer.parseInt(request.getParameter("bookId"));

            User user = UserDAO.getUserById(userId);
            Book book = BookDAO.getBookById(bookId);

            if (user != null && book != null) {
                if ("borrow".equalsIgnoreCase(action)) {
                    if (book.getQuantity() > 0) {
                        BookDAO.insertBorrowRequest(user.getId(), user.getUsername(), book.getId(), book.getTitle());
                        message = "Borrow request submitted for book: <strong>" + book.getTitle() + "</strong>";
                    } else {
                        message = "📚 Book currently unavailable. Please try again later when it is restocked.";
                    }
                } else if ("return".equalsIgnoreCase(action)) {
                    boolean returned = BookDAO.returnBooK(user.getId(), book.getId());
                    if (returned) {
                        message = "✅ Book '" + book.getTitle() + "' returned successfully!";
                    } else {
                        message = "⚠️ You don't have this book borrowed or it's not accepted yet.";
                    }
                }
            } else {
                message = "User or book not found.";
            }

        } catch (Exception e) {
            message = "Error processing request: " + e.getMessage();
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Library Book List</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background-color: #f8f9fa; padding: 40px; }
    .table-container { background-color: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); }
    .btn-sm { margin-right: 5px; }
  </style>
</head>
<body>

<div class="container table-container">
  <h2 class="mb-4 text-center">Hey <%= loggedInUser.getUsername() %>, choose books</h2>

  <% if (message != null) { %>
    <div class="alert alert-info text-center"><%= message %></div>
  <% } %>

  <table class="table table-bordered table-hover">
    <thead class="table-dark">
      <tr>
        <th>ID</th><th>Title</th><th>Author</th><th>ISBN</th><th>Year</th><th>Qty</th><th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
          List<Book> books = BookDAO.getAllBooks();
          for (Book b : books) {
      %>
      <tr>
        <td><%= b.getId() %></td>
        <td><%= b.getTitle() %></td>
        <td><%= b.getAuthor() %></td>
        <td><%= b.getIsbn() %></td>
        <td><%= b.getPublicationYear() %></td>
        <td><%= b.getQuantity() %></td>
        <td>
          <!-- Borrow Form -->
          <form method="post" action="borrowBook.jsp" style="display:inline;">
            <input type="hidden" name="action" value="borrow">
            <input type="hidden" name="bookId" value="<%= b.getId() %>">
            <input type="hidden" name="userId" value="<%= loggedInUser.getId() %>">
            <button class="btn btn-sm btn-primary" onclick="return confirm('Borrow this book?')">Borrow</button>
          </form>

          <!-- Return Form -->
          <form method="post" action="borrowBook.jsp" style="display:inline;">
            <input type="hidden" name="action" value="return">
            <input type="hidden" name="bookId" value="<%= b.getId() %>">
            <input type="hidden" name="userId" value="<%= loggedInUser.getId() %>">
            <button class="btn btn-sm btn-warning" onclick="return confirm('Return this book?')">Return</button>
          </form>
        </td>
      </tr>
      <%
          }
        } catch (Exception e) {
          out.println("<tr><td colspan='7' class='text-danger'>Error loading books.</td></tr>");
        }
      %>
    </tbody>
  </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
