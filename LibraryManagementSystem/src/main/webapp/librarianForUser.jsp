<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, classes.model.*, classes.DAO.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>All Users - Library System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      background-color: #f5f6fa;
      padding: 40px;
    }

    .table-container {
      background-color: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    h2 {
      margin-bottom: 30px;
      text-align: center;
      color: #2f3542;
    }

    .table thead th {
      background-color: #343a40;
      color: white;
    }

    .table tbody tr:hover {
      background-color: #f1f2f6;
    }
  </style>
</head>
<body>

<div class="container table-container">
  <h2>Registered Users</h2>

  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
        <th>Role</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
          List<User> users = UserDAO.getAllUsers();
          for (User user : users) {
      %>
      <tr>
        <td><%= user.getId() %></td>
        <td><%= user.getUsername() %></td>
        <td><%= user.getEmail() %></td>
        <td>
	  <%= user.getRole() %>
	  <% if ("user".equalsIgnoreCase(user.getRole())) { %>
	    <form method="post" action="librarianForUser.jsp" style="display:inline;">
	      <input type="hidden" name="operation" value="promote">
	      <input type="hidden" name="userId" value="<%= user.getId() %>">
	      <button class="btn btn-sm btn-success ms-2" onclick="return confirm('Promote this user to librarian?');">Promote</button>
	    </form>
	  <% } %>
	</td>
      </tr>
      <%
          }
        } catch (Exception e) {
          out.println("<tr><td colspan='4' class='text-danger text-center'>Failed to load users.</td></tr>");
          e.printStackTrace();
        }
      %>
    </tbody>
  </table>
</div>
<%
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String operation = request.getParameter("operation");

    if ("promote".equals(operation)) {
      int userId = Integer.parseInt(request.getParameter("userId"));
      UserDAO.updateUserRole(userId, "librarian");
      response.sendRedirect("librarianForUser.jsp"); // Refresh
    }
  }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
