<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, classes.model.*, classes.DAO.*" %>

<%
    User loggedInUser = (User) session.getAttribute("user");
   
    String message = null;
    String action = request.getParameter("action");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        try {
            if ("accept".equalsIgnoreCase(action)) {
                int requestId = Integer.parseInt(request.getParameter("requestId"));
                BookDAO.acceptBorrowRequest(requestId);
                message = "Request ID " + requestId + " accepted and quantity updated.";
            } else if ("reject".equalsIgnoreCase(action)) {
                int requestId = Integer.parseInt(request.getParameter("requestId"));
                BookDAO.rejectBorrowRequest(requestId);
                message = "Request ID " + requestId + " rejected.";
            }
         } catch (Exception e) {
            if ("BOOK_UNAVAILABLE".equals(e.getMessage())) {
                message = "📚 Book currently unavailable. Please try again later when it is restocked.";
            } else {
                message = "⚠️ An error occurred while processing the request.";
                e.printStackTrace(); // Optional: keep this for debugging
            }
        }

    }

    // Determine which requests to show
    List<BorrowRequest> requests = null;
    String filter = request.getParameter("filter");
    try {
        if (filter != null) {
            requests = BookDAO.getBorrowRequestsByStatus(filter.toUpperCase());
        } else {
            requests = BookDAO.getAllBorrowRequests();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrow Requests</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; padding: 40px; }
        .table-container { background-color: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); }
        .btn-sm { margin: 0 4px; }
    </style>
</head>
<body>

<div class="container table-container">
    <h2 class="text-center mb-4">Borrow Requests</h2>

    <% if (message != null) { %>
        <div class="alert alert-info text-center"><%= message %></div>
    <% } %>

    <!-- Filter Buttons -->
    <div class="text-center mb-3">
        <form method="get" action="BorrowRequest.jsp" class="d-inline">
            <input type="hidden" name="filter" value="REQUEST">
            <button type="submit" class="btn btn-outline-secondary btn-sm">⏳ Pending</button>
        </form>
        <form method="get" action="BorrowRequest.jsp" class="d-inline">
            <input type="hidden" name="filter" value="ACCEPT">
            <button type="submit" class="btn btn-outline-success btn-sm">✅ Accepted</button>
        </form>
        <form method="get" action="BorrowRequest.jsp" class="d-inline">
            <input type="hidden" name="filter" value="REJECTED">
            <button type="submit" class="btn btn-outline-danger btn-sm">❌ Rejected</button>
        </form>
        <form method="get" action="BorrowRequest.jsp" class="d-inline">
            <button type="submit" class="btn btn-outline-primary btn-sm">🔄 All</button>
        </form>
    </div>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Book</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            if (requests != null) {
                for (BorrowRequest br : requests) {
        %>
            <tr>
                <td><%= br.getId() %></td>
                <td><%= br.getUsername() %> (ID: <%= br.getUserId() %>)</td>
                <td><%= br.getBookTitle() %> (ID: <%= br.getBookId() %>)</td>
                <td>
                    <% if ("ACCEPT".equalsIgnoreCase(br.getStatus())) { %>
                        <span class="badge bg-success">Accepted</span>
                    <% } else if ("REJECTED".equalsIgnoreCase(br.getStatus())) { %>
                        <span class="badge bg-danger">Rejected</span>
                    <% } else { %>
                        <span class="badge bg-warning text-dark">Pending</span>
                    <% } %>
                </td>
                <td>
                    <% if ("REQUEST".equalsIgnoreCase(br.getStatus())) { %>
                        <form method="post" action="BorrowRequest.jsp" style="display:inline;">
                            <input type="hidden" name="requestId" value="<%= br.getId() %>">
                            <input type="hidden" name="action" value="accept">
                            <button class="btn btn-sm btn-success">Accept</button>
                        </form>

                        <form method="post" action="BorrowRequest.jsp" style="display:inline;">
                            <input type="hidden" name="requestId" value="<%= br.getId() %>">
                            <input type="hidden" name="action" value="reject">
                            <button class="btn btn-sm btn-danger">Reject</button>
                        </form>
                    <% } else { %>
                        <span class="text-muted">—</span>
                    <% } %>
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr><td colspan="5" class="text-danger text-center">No requests found.</td></tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
