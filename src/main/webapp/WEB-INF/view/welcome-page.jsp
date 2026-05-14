<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 100px;
        }
        .container {
            background: white;
            width: 400px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px lightgray;
        }
        h1 {
            color: #2c3e50;
        }
        p {
            color: #555;
            font-size: 18px;
            text-align: left;
        }
        button {
            padding: 10px 20px;
            border: none;
            background-color: #3498db;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 align="center">🧋 ${cafeNameValue} 🧋</h1>
    <hr>
    <p>Owner Name : ${nameValue}</p>
    <p>Cafe Location : ${locationValue}</p>
    <br>
    <button>Order Now</button>
</div>
</body>
</html>