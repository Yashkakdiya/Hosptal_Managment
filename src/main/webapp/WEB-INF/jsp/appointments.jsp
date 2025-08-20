<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients List</title>
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
    <h2>Appoinments</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Patients Name</th>
                <th>Doctor Name</th>
                <th>Appointment Date</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="appointment" items="${appointments}">
                <tr>
                    <td>${appointment.id}</td>
                    <td>${appointment.patientName}</td>
                    <td>${appointment.doctorName}</td>
                    <td>${appointment.appointmentDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>