<%@ page import="java.util.*, classes.model.*,classes.DAO.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="book" class="classes.model.Book" scope="request" />
<jsp:setProperty name="book" property="*" />

<%
  String op = request.getParameter("operation");
  Book editBook = null;

  if ("edit".equalsIgnoreCase(op)) {
    int editId = Integer.parseInt(request.getParameter("id"));
    editBook = BookDAO.getBookById(editId); // Make sure this method exists in DAO
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Library - Manage Books</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
<div class="container mt-5">
  <h2 class="mb-4 text-center">Book Management</h2>

  <!-- Unified Form for Add and Update -->
  <form action="librarianForBooks.jsp" method="post" class="row g-3 mb-4">
    <input type="hidden" name="operation" value="<%= (editBook != null) ? "update" : "add" %>" />
    <input type="hidden" name="id" value="<%= (editBook != null) ? editBook.getId() : "" %>">

    <div class="col-md-3">
      <input type="text" name="title" class="form-control" placeholder="Title" required value="<%= (editBook != null) ? editBook.getTitle() : "" %>" />
    </div>
    <div class="col-md-3">
      <input type="text" name="author" class="form-control" placeholder="Author" required value="<%= (editBook != null) ? editBook.getAuthor() : "" %>" />
    </div>
    <div class="col-md-2">
      <input type="text" name="isbn" class="form-control" placeholder="ISBN" required value="<%= (editBook != null) ? editBook.getIsbn() : "" %>" />
    </div>
    <div class="col-md-2">
      <input type="number" name="publicationYear" class="form-control" placeholder="Year" required value="<%= (editBook != null) ? editBook.getPublicationYear() : "" %>" />
    </div>
    <div class="col-md-1">
      <input type="number" name="quantity" class="form-control" placeholder="Qty" required value="<%= (editBook != null) ? editBook.getQuantity() : "" %>" />
    </div>
    <div class="col-md-1">
      <button type="submit" class="btn btn-<%= (editBook != null) ? "warning" : "primary" %> w-100">
        <%= (editBook != null) ? "Update" : "Add" %>
      </button>
    </div>
  </form>

  <!-- Book Table -->
  <table class="table table-bordered">
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
          <!-- Edit triggers form pre-fill -->
          <form method="get" action="librarianForBooks.jsp" style="display:inline;">
            <input type="hidden" name="id" value="<%= b.getId() %>">
            <input type="hidden" name="operation" value="edit">
            <button class="btn btn-sm btn-warning">Edit</button>
          </form>
          <!-- Delete directly submits -->
          <form method="post" action="librarianForBooks.jsp" style="display:inline;">
            <input type="hidden" name="id" value="<%= b.getId() %>">
            <input type="hidden" name="operation" value="delete">
            <button class="btn btn-sm btn-danger" onclick="return confirm('Delete this book?');">Delete</button>
          </form>
        </td>
      </tr>
    <%
        }
      } catch (Exception e) {
        out.println("<tr><td colspan='7' class='text-danger text-center'>Error loading books.</td></tr>");
      }
    %>
    </tbody>
  </table>
</div>

<!-- Operation Logic -->
<%
  try {
    if ("POST".equalsIgnoreCase(request.getMethod())) {
      String operation = request.getParameter("operation");

      if ("add".equals(operation)) {
        BookDAO.addBook(book);
      } else if ("update".equals(operation)) {
        BookDAO.updateBook(book);
      } else if ("delete".equals(operation)) {
        int id = Integer.parseInt(request.getParameter("id"));
        BookDAO.deleteBook(id);
      }
      response.sendRedirect("librarianForBooks.jsp");
    }
  } catch (Exception e) {
    out.println("<p class='text-danger'>Error: " + e.getMessage() + "</p>");
  }
%>
</body>
</html>
