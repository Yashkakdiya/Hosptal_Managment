<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Free Checkup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        #success-message {
            display: none;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <p>Welcome to free checkup</p>
    <p>We are glad to have you here</p>
    <p>Please fill the form below to get started</p>

    <form id="checkupForm">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>

        <label for="phone">Phone:</label><br>
        <input type="tel" id="phone" name="phone" required><br>

        <input type="submit" value="Submit">
    </form>

    <p id="success-message">Form submitted successfully! Redirecting to main page...</p>

    <script>
        document.getElementById('checkupForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent actual form submission

            // Show success message
            document.getElementById('success-message').style.display = 'block';

            // Wait for 2 seconds, then redirect
            setTimeout(function() {
                window.location.href = '/'; // Replace with your main page
            }, 2000);
        });
    </script>
</body>
</html>
