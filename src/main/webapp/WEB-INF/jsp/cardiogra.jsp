<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Cardiogram Monitor</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #0b0c10;
      color: #fff;
    }

    .container {
      max-width: 800px;
      margin: 40px auto;
      padding: 20px;
      background-color: #1f2833;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(255, 0, 0, 0.3);
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #66fcf1;
    }

    .cardiogram {
      background: #0b0c10;
      border: 2px solid #66fcf1;
      border-radius: 5px;
      height: 200px;
      position: relative;
      overflow: hidden;
    }

    .line {
      position: absolute;
      top: 50%;
      width: 200%;
      height: 2px;
      background: #66fcf1;
      animation: heartbeat 2s linear infinite;
    }

    @keyframes heartbeat {
      0% { transform: translateX(0); }
      100% { transform: translateX(-50%); }
    }

    .data {
      margin-top: 30px;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .data-item {
      flex: 1 1 45%;
      background: #45a29e;
      margin: 10px;
      padding: 15px;
      border-radius: 8px;
      text-align: center;
      font-size: 1.2em;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
    }

    @media (max-width: 600px) {
      .data-item {
        flex-basis: 100%;
      }
    }

    .home-button {
      display: block;
      width: 200px;
      margin: 40px auto 0;
      padding: 12px;
      background-color: #66fcf1;
      color: #0b0c10;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
      text-decoration: none;
      transition: background 0.3s;
    }

    .home-button:hover {
      background-color: #45a29e;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Live Cardiogram Monitor</h1>

    <div class="cardiogram">
      <div class="line"></div>
    </div>

    <div class="data">
      <div class="data-item">
        ❤️ Heart Rate: <strong>76 bpm</strong>
      </div>
      <div class="data-item">
        📅 Last Update: <strong>2025-04-15 14:35</strong>
      </div>
      <div class="data-item">
        📈 Status: <strong>Normal</strong>
      </div>
      <div class="data-item">
        🧬 Patient ID: <strong>#A10234</strong>
      </div>
    </div>

    <a class="home-button" href="/">← Return to Home</a>
  </div>
</body>
</html>
