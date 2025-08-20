<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Blood Bank</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f4f4;
      color: #333;
    }

    header {
      background-color: #c0392b;
      color: white;
      padding: 30px;
      text-align: center;
    }

    h1 {
      margin: 0;
      font-size: 36px;
    }

    p {
      font-size: 18px;
      margin-top: 10px;
    }

    .container {
      max-width: 1000px;
      margin: 40px auto;
      padding: 20px;
      background: white;
      border-radius: 10px;
      box-shadow: 0 0 12px rgba(0,0,0,0.1);
    }

    .availability {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 20px;
      margin-bottom: 30px;
    }

    .blood-type {
      background-color: #e74c3c;
      color: white;
      padding: 25px;
      border-radius: 12px;
      text-align: center;
      font-size: 22px;
      font-weight: bold;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
      transition: transform 0.2s;
    }

    .blood-type:hover {
      transform: scale(1.05);
    }

    .blood-type span {
      display: block;
      margin-top: 10px;
      font-size: 16px;
      font-weight: normal;
    }

    .register-button {
      display: block;
      width: 260px;
      margin: 0 auto;
      padding: 16px;
      background-color: #27ae60;
      color: white;
      text-align: center;
      text-decoration: none;
      border-radius: 10px;
      font-size: 20px;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    .register-button:hover {
      background-color: #1e8449;
    }

    footer {
      text-align: center;
      margin-top: 40px;
      padding: 25px;
      font-size: 14px;
      background-color: #f1f1f1;
      color: #666;
    }

    .back-home {
      margin-top: 20px;
      display: inline-block;
      font-size: 16px;
      color: #2980b9;
      text-decoration: none;
    }

    .back-home:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <header>
    <h1>Blood Bank Dashboard</h1>
    <p>Check Availability & Register as a Donor</p>
  </header>

  <div class="container">
    <h2 style="text-align:center;">Current Blood Group Availability</h2>
    <div class="availability">
      <div class="blood-type">A+ <span>12 units</span></div>
      <div class="blood-type">A- <span>4 units</span></div>
      <div class="blood-type">B+ <span>9 units</span></div>
      <div class="blood-type">B- <span>2 units</span></div>
      <div class="blood-type">AB+ <span>7 units</span></div>
      <div class="blood-type">AB- <span>1 unit</span></div>
      <div class="blood-type">O+ <span>15 units</span></div>
      <div class="blood-type">O- <span>3 units</span></div>
    </div>

    <a class="register-button" href="/DonerForm">Become a Donor</a>
    <br>
    <a class="back-home" href="/">← Back to Home Page</a>
  </div>

  <footer>
    &copy; 2025 Lifesaver Blood Bank. All rights reserved.
  </footer>

</body>
</html>
