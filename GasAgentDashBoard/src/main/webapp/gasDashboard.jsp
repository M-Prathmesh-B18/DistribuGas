<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gas Booking Dashboard</title>

<style>
/* 🌐 General page styling */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background-color: #f4f6f8;
  margin: 0;
  padding: 0;
}

/* 📦 Main container */
.container {
  max-width: 1300px;  /* Wider layout to fit all fields in one row */
  background: #fff;
  margin: 30px auto;
  padding: 20px 25px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

/* 🏷 Headings */
h2, h3 {
  text-align: center;
  color: #333;
}

/* 🧾 Form styling */
form {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: nowrap;
  gap: 10px;
  margin-bottom: 20px;
  overflow-x: auto;
}

form input {
  flex: 1;
  min-width: 150px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
}

form button {
  flex: 0 0 auto;
  background: #007bff;
  color: white;
  border: none;
  padding: 11px 20px;
  border-radius: 6px;
  cursor: pointer;
  font-size: 15px;
  transition: background 0.3s;
  white-space: nowrap;
}

form button:hover {
  background: #0056b3;
}

/* 📊 Table styling */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
}

th, td {
  border: 1px solid #ddd;
  padding: 10px 8px;
  text-align: left;
  font-size: 14px;
}

th {
  background-color: #007bff;
  color: white;
}

tr:nth-child(even) { background-color: #f9f9f9; }
tr:hover { background-color: #f1f1f1; }

/* 📱 Responsive behavior */
@media (max-width: 1000px) {
  .container {
    width: 95%;
  }
  form {
    flex-wrap: wrap;
  }
  form input, form button {
    flex: 1 1 100%;
  }
  th, td {
    font-size: 13px;
  }
}
</style>
</head>

<body>
<%@ include file="navBar.jsp"%>
<div class="container">
  <h2>Gas Booking Dashboard (Agent Portal)</h2>

  <!-- 🧾 Booking Form -->
  <form action="BookingServlet" method="post">
    <input type="text" name="name" placeholder="Customer Name" required>
    <input type="text" name="regNo" placeholder="Registration Number" required>
    <input type="text" name="address" placeholder="Address" required>
    <input type="text" name="phone" placeholder="Phone Number" required>
    <input type="number" name="payment" placeholder="Payment (₹)" required>
    <input type="date" name="bookingDate" required>
    <button type="submit">Add Booking</button>
  </form>

  <!-- 📊 Table Section -->
  <h3>Previous Bookings</h3>
  <div style="overflow-x:auto;">
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Reg. No</th>
        <th>Address</th>
        <th>Phone</th>
        <th>Payment</th>
        <th>Date</th>
      </tr>

      <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gasdb", "root", "password");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM booking ORDER BY booking_date DESC");

            while (rs.next()) {
      %>
              <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("reg_no") %></td>
                <td><%= rs.getString("address") %></td>
                <td><%= rs.getString("phone") %></td>
                <td>₹<%= rs.getDouble("payment") %></td>
                <td><%= rs.getDate("booking_date") %></td>
              </tr>
      <%
            }
            con.close();
        } catch (Exception e) {
            out.println("<tr><td colspan='7'>Error: " + e.getMessage() + "</td></tr>");
        }
      %>
    </table>
  </div>
</div>
</body>
</html>
