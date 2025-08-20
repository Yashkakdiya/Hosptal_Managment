<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Donor Form</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #fdfdfd;
      text-align: center;
      padding: 60px 20px;
    }

    .form-box {
      background-color: #ecf0f1;
      padding: 40px;
      max-width: 500px;
      margin: auto;
      border-radius: 12px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    input, select {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 8px;
    }

    button {
      background-color: #27ae60;
      color: white;
      border: none;
      padding: 15px 30px;
      font-size: 16px;
      border-radius: 8px;
      cursor: pointer;
      margin-top: 15px;
      transition: background 0.3s;
    }

    button:hover {
      background-color: #219150;
    }

    .success {
      color: #2ecc71;
      font-weight: bold;
      font-size: 18px;
      margin-top: 20px;
    }

    .home-link {
      display: inline-block;
      margin-top: 20px;
      text-decoration: none;
      color: #2980b9;
      font-weight: bold;
    }

    .home-link:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="form-box">
    <h2>Donor Registration Form</h2>
    <form id="donorForm">
      <input type="text" placeholder="Full Name" required>
      <input type="email" placeholder="Email Address" required>
      <select required>
        <option value="">Select Blood Group</option>
        <option>A+</option><option>A-</option>
        <option>B+</option><option>B-</option>
        <option>AB+</option><option>AB-</option>
        <option>O+</option><option>O-</option>
      </select>
      <button type="submit">Submit</button>
    </form>
    <div id="successMsg" class="success" style="display: none;">
      ✅ Donor registered successfully!
      <br>
      <a class="home-link" href="/BloodBank">← Return to Main Page</a>
    </div>
  </div>

  <script>
    const form = document.getElementById('donorForm');
    const successMsg = document.getElementById('successMsg');

    form.addEventListener('submit', function(e) {
      e.preventDefault();
      form.style.display = 'none';
      successMsg.style.display = 'block';
    });
  </script>
</body>
</html>
