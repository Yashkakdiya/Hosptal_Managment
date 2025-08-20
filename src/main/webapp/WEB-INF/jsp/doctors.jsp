<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctors List</title>
    <style>
        table {
            width: 50%;
            margin: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

    </style>
</head>
<body>
    <h2>Doctors</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Specialty</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through the list of AppointmentEntity objects -->
            <c:forEach var="doctor" items="${doctors}">
                <tr>
                    <td>${doctor.id}</td>
                    <td>${doctor.name}</td>
                    <td>${doctor.specialty}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>