<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gas Booking Dashboard</title>

<style>
/* 🌐 Basic Styling */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background-color: #f4f6f8;
  margin: 0;
  padding: 0;
}

/* 🧭 Navbar */
.navbar {
  background-color: #007bff;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 12px 30px;
  color: white;
  position: sticky;
  top: 0;
  z-index: 100;
}

.navbar .logo {
  font-size: 22px;
  font-weight: bold;
  letter-spacing: 0.5px;
}

.navbar ul {
  list-style: none;
  display: flex;
  margin: 0;
  padding: 0;
}

.navbar ul li {
  margin-left: 20px;
}

.navbar ul li a {
  text-decoration: none;
  color: white;
  font-weight: 500;
  transition: color 0.3s;
}

.navbar ul li a:hover {
  color: #ffeb3b;
}

/* 📱 Navbar Responsive */
@media (max-width: 768px) {
  .navbar {
    flex-wrap: wrap;
    justify-content: center;
    text-align: center;
  }
  .navbar ul {
    flex-direction: column;
    width: 100%;
    margin-top: 10px;
  }
  .navbar ul li {
    margin: 10px 0;
  }
}

/* 📦 Container */
.container {
  max-width: 1300px;
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

/* 🧾 Form Styling */
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

/* 📊 Table */
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

/* 📱 Responsive */
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

<!-- 🧭 Navbar -->
<nav class="navbar">
  <div class="logo">🛢 Gas Agent Portal</div>
  <ul>
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Bookings</a></li>
    <li><a href="#">Customers</a></li>
    <li><a href="#">Reports</a></li>
    <li><a href="#">Logout</a></li>
  </ul>
</nav>

<!-- 📦 Main Content -->
 
</body>
</html>
