<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, classes.model.*, classes.DAO.*" %>

<%
    // Fetch both ACCEPT and REJECTED requests
    List<BorrowRequest> acceptedRequests = BookDAO.getBorrowRequestsByStatus("ACCEPT");
    List<BorrowRequest> rejectedRequests = BookDAO.getBorrowRequestsByStatus("REJECTED");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrowed Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">

    <h2 class="text-center mb-4 text-success">📘 Accepted Borrow Requests</h2>
    <table class="table table-bordered table-hover">
        <thead class="table-success">
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Book</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (BorrowRequest br : acceptedRequests) {
            %>
            <tr>
                <td><%= br.getId() %></td>
                <td><%= br.getUsername() %></td>
                <td><%= br.getBookTitle() %></td>
                <td><%= br.getStatus() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <h2 class="text-center mt-5 mb-4 text-danger">❌ Rejected Borrow Requests</h2>
    <table class="table table-bordered table-hover">
        <thead class="table-danger">
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Book</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (BorrowRequest br : rejectedRequests) {
            %>
            <tr>
                <td><%= br.getId() %></td>
                <td><%= br.getUsername() %></td>
                <td><%= br.getBookTitle() %></td>
                <td><%= br.getStatus() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</div>
</body>
</html>
