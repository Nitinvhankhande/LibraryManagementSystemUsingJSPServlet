package classes.DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import classes.model.Book;
import classes.model.BorrowRequest;

public class BookDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/library_db";
    private static final String USER = "root";
    private static final String PASSWORD = "Archer@1234";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load JDBC driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Add new book
    public static void addBook(Book book) throws SQLException {
        String sql = "INSERT INTO books (title, author, isbn, publication_year, quantity) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, book.getTitle());
            stmt.setString(2, book.getAuthor());
            stmt.setString(3, book.getIsbn());
            stmt.setInt(4, book.getPublicationYear());
            stmt.setInt(5, book.getQuantity());
            stmt.executeUpdate();
        }
    }

    // Get all books
    public static List<Book> getAllBooks() throws SQLException {
        List<Book> books = new ArrayList<>();
        String sql = "SELECT * FROM books";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("book_id")); // updated to match DB
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setIsbn(rs.getString("isbn"));
                book.setPublicationYear(rs.getInt("publication_year")); // updated to match DB
                book.setQuantity(rs.getInt("quantity"));
                books.add(book);
            }
        }

        return books;
    }

    // Get book by ID
    public static Book getBookById(int id) throws SQLException {
        String sql = "SELECT * FROM books WHERE book_id = ?";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("book_id")); // updated to match DB
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setIsbn(rs.getString("isbn"));
                book.setPublicationYear(rs.getInt("publication_year")); // updated to match DB
                book.setQuantity(rs.getInt("quantity"));
                return book;
            }
        }
        return null;
    }

    // Update book
    public static void updateBook(Book book) throws SQLException {
        String sql = "UPDATE books SET title = ?, author = ?, isbn = ?, publication_year = ?, quantity = ? WHERE book_id = ?";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, book.getTitle());
            stmt.setString(2, book.getAuthor());
            stmt.setString(3, book.getIsbn());
            stmt.setInt(4, book.getPublicationYear());
            stmt.setInt(5, book.getQuantity());
            stmt.setInt(6, book.getId()); // updated to book_id
            stmt.executeUpdate();
        }
    }

    // Delete book
    public static void deleteBook(int id) throws SQLException {
        String sql = "DELETE FROM books WHERE book_id = ?";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
    public static void insertBorrowRequest(int userId, String userName, int bookId, String bookName) throws SQLException {
        String sql = "INSERT INTO borrow_request (user_id, user_name, book_id, book_name, status) VALUES (?, ?, ?, ?, 'REQUEST')";
        
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            stmt.setString(2, userName);
            stmt.setInt(3, bookId);
            stmt.setString(4, bookName);
            stmt.executeUpdate();
        }
    }
    
 // Accept: update status
    public static void acceptBorrowRequest(int requestId) throws Exception {
        String getBookIdSQL = "SELECT book_id FROM borrow_request WHERE id = ?";
        String checkQuantitySQL = "SELECT quantity FROM books WHERE book_id = ?";
        String updateQuantitySQL = "UPDATE books SET quantity = quantity - 1 WHERE book_id = ?";
        String updateRequestStatusSQL = "UPDATE borrow_request SET status = 'ACCEPT' WHERE id = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            conn.setAutoCommit(false); // Start transaction

            int bookId = -1;
            int quantity = 0;

            // 1. Get book ID
            try (PreparedStatement ps = conn.prepareStatement(getBookIdSQL)) {
                ps.setInt(1, requestId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        bookId = rs.getInt("book_id");
                    } else {
                        throw new SQLException("No borrow request found with ID: " + requestId);
                    }
                }
            }

            // 2. Get current quantity
            try (PreparedStatement ps = conn.prepareStatement(checkQuantitySQL)) {
                ps.setInt(1, bookId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        quantity = rs.getInt("quantity");
                    } else {
                        throw new SQLException("Book not found with ID: " + bookId);
                    }
                }
            }

            if (quantity <= 0) {
                throw new Exception("BOOK_UNAVAILABLE");
            }

            // 3. Decrease quantity
            try (PreparedStatement ps = conn.prepareStatement(updateQuantitySQL)) {
                ps.setInt(1, bookId);
                ps.executeUpdate();
            }

            // 4. Update request status
            try (PreparedStatement ps = conn.prepareStatement(updateRequestStatusSQL)) {
                ps.setInt(1, requestId);
                ps.executeUpdate();
            }

            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }

    
    // Reject: delete row
    public static void rejectBorrowRequest(int requestId) throws SQLException {
        String sql = "UPDATE borrow_request SET status = 'REJECTED' WHERE id = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, requestId);
            stmt.executeUpdate();
        }
    }


    // Get all borrow requests
    public static List<BorrowRequest> getAllBorrowRequests() throws SQLException {
        List<BorrowRequest> list = new ArrayList<>();
        String sql = "SELECT * FROM borrow_request";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                BorrowRequest br = new BorrowRequest();
                br.setId(rs.getInt("id"));
                br.setUserId(rs.getInt("user_id"));
                br.setUsername(rs.getString("user_name"));
                br.setBookId(rs.getInt("book_id"));
                br.setBookTitle(rs.getString("book_name"));
                br.setStatus(rs.getString("status"));

                list.add(br);
            }
        }

        return list;
    }
    
    public static List<BorrowRequest> getBorrowRequestsByStatus(String status) throws SQLException {
        List<BorrowRequest> list = new ArrayList<>();
        String sql = "SELECT * FROM borrow_request WHERE status = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, status);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                BorrowRequest br = new BorrowRequest();
                br.setId(rs.getInt("id"));
                br.setUserId(rs.getInt("user_id"));
                br.setUsername(rs.getString("user_name"));
                br.setBookId(rs.getInt("book_id"));
                br.setBookTitle(rs.getString("book_name"));
                br.setStatus(rs.getString("status"));
                list.add(br);
            }
        }
        return list;
    }
    
 // Handle book return logic
    public static boolean returnBook(int userId, int bookId) throws SQLException {
        String checkSQL = "SELECT id FROM borrow_request WHERE user_id = ? AND book_id = ? AND status = 'ACCEPT'";
        String updateQuantitySQL = "UPDATE books SET quantity = quantity + 1 WHERE book_id = ?";
        String deleteBorrowSQL = "DELETE FROM borrow_request WHERE user_id = ? AND book_id = ? AND status = 'ACCEPT'";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            conn.setAutoCommit(false);

            int borrowId = -1;
            try (PreparedStatement checkStmt = conn.prepareStatement(checkSQL)) {
                checkStmt.setInt(1, userId);
                checkStmt.setInt(2, bookId);
                ResultSet rs = checkStmt.executeQuery();
                if (rs.next()) {
                    borrowId = rs.getInt("id");
                } else {
                    return false;
                }
            }

            try (PreparedStatement updateStmt = conn.prepareStatement(updateQuantitySQL)) {
                updateStmt.setInt(1, bookId);
                updateStmt.executeUpdate();
            }

            try (PreparedStatement deleteStmt = conn.prepareStatement(deleteBorrowSQL)) {
                deleteStmt.setInt(1, userId);
                deleteStmt.setInt(2, bookId);
                deleteStmt.executeUpdate();
            }

            conn.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }

}
