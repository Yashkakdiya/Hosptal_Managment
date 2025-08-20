<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DNA Testing Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f7f8;
      color: #333;
      padding: 30px;
    }

    .form-container {
      max-width: 600px;
      margin: 0 auto;
      background: #fff;
      padding: 25px 40px;
      border-radius: 10px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #2c3e50;
    }

    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }

    input, select, textarea {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border-radius: 5px;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    textarea {
      resize: vertical;
    }

    button {
      margin-top: 20px;
      padding: 12px;
      width: 100%;
      background-color: #3498db;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }

    button:hover {
      background-color: #2980b9;
    }

    .success-message {
      display: none;
      text-align: center;
      margin-top: 20px;
      color: green;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>DNA Testing Request Form</h2>
    <form id="dnaForm">
      <label for="fullName">Full Name</label>
      <input type="text" id="fullName" name="fullName" required>

      <label for="dob">Date of Birth</label>
      <input type="date" id="dob" name="dob" required>

      <label for="gender">Gender</label>
      <select id="gender" name="gender" required>
        <option value="">-- Select --</option>
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>

      <label for="contact">Contact Number</label>
      <input type="tel" id="contact" name="contact" required>

      <label for="email">Email Address</label>
      <input type="email" id="email" name="email">

      <label for="reason">Reason for DNA Test</label>
      <textarea id="reason" name="reason" rows="4" required></textarea>

      <label for="sampleType">Sample Type</label>
      <select id="sampleType" name="sampleType" required>
        <option value="">-- Select --</option>
        <option value="saliva">Saliva</option>
        <option value="blood">Blood</option>
        <option value="buccal_swab">Buccal Swab</option>
        <option value="other">Other</option>
      </select>

      <label for="sampleDate">Sample Collection Date</label>
      <input type="date" id="sampleDate" name="sampleDate">

      <button type="submit">Submit Request</button>
    </form>

    <div class="success-message" id="successMessage">
      DNA Test Request Submitted Successfully!
    </div>
  </div>

  <script>
    document.getElementById("dnaForm").addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent actual form submission

      document.getElementById("successMessage").style.display = "block";

      // Redirect to main page after 2 seconds
      setTimeout(function() {
        window.location.href = "/"; // Replace with actual page name
      }, 2000);
    });
  </script>
</body>
</html>
