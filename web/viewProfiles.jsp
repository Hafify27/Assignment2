
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Student Profiles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6ff;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #FF5722;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background: #FF5722;
            color: white;
        }

        tr:nth-child(even) {
            background: #f9f9f9;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #FF5722;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h2>All Student Profiles</h2>

<form method="get" style="text-align:center; margin-bottom:20px;">
    <input type="text" name="keyword"
           placeholder="Search by name, student ID or programme"
           style="padding:8px; width:300px; border-radius:6px;">

    <button type="submit"
            style="padding:8px 15px; border-radius:6px;
                   background:#FF5722; color:white; border:none;">
        Search
    </button>
</form>

<table>
    <tr>
        <th>Name</th>
        <th>Student ID</th>
        <th>Programme</th>
        <th>Email</th>
        <th>Hobby</th>
        <th>Introduction</th>
    </tr>

<%
    // Database connection
    String url = "jdbc:derby://localhost:1527/student_profiles";
    String user = "app";
    String pass = "app";

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection(url, user, pass);

    Statement st = con.createStatement();
  String keyword = request.getParameter("keyword");

String sql;
if (keyword != null && !keyword.trim().isEmpty()) {
    sql = "SELECT * FROM PROFILES WHERE "
        + "name LIKE '%" + keyword + "%' "
        + "OR student_id LIKE '%" + keyword + "%' "
        + "OR programme LIKE '%" + keyword + "%'";
} else {
    sql = "SELECT * FROM PROFILES";
}

ResultSet rs = st.executeQuery(sql);

    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("student_id") %></td>
        <td><%= rs.getString("programme") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("hobby") %></td>
        <td><%= rs.getString("intro") %></td>
    </tr>
<%
    }
    con.close();
%>

</table>

<a href="index.html"> Back to Form</a>

</body>
</html>
