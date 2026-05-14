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
            font-size: 14px;
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
       .food-section {
           display: flex;
           align-items: center;
           gap: 20px;
       }
       select {
           padding: 8px;
           border-radius: 5px;
       }
       .success-box {
           margin-top: 20px;
           padding: 15px;
           background-color: #d4edda;
           color: #155724;
           border-radius: 8px;
           text-align: center;
           font-size: 18px;
           box-shadow: 0 0 5px lightgray;
       }
    </style>
</head>
<body>
<div class="container">
    <h1 align="center">🧋 ${cafeNameValue} 🧋</h1>
    <hr>
    <p><b>Owner Name :</b> ${nameValue}</p>
    <p><b>Cafe Location :</b> ${locationValue}</p>
    <br>
    <form action="processOrder">
        <label for="foodItems" style="text-align:left; display:block;">
            <b>Select Your Favorite Item:</b>
        </label>
        <br>
        <div class="food-section">
            <select id="foodItems" name="foodItem">
                <option>☕ Cappuccino</option>
                <option>🧋 Cold Coffee</option>
                <option>🍕 Margherita Pizza</option>
                <option>🍔 Veg Burger</option>
                <option>🍟 French Fries</option>
                <option>🥪 Grilled Sandwich</option>
                <option>🍝 White Sauce Pasta</option>
                <option>🍰 Chocolate Cake</option>
                <option>🍩 Donuts</option>
                <option>🧁 Red Velvet Cupcake</option>
            </select>
            <button type="submit">Order Now</button>
        </div>
    </form>
    <br>
    <%
        String item = (String) request.getAttribute("orderItem");
    %>
    <% if(item != null) { %>
    <div id="orderMessage" class="success-box">
        ✅ Order received for <b><%= item %></b>
    </div>
    <script>
        setTimeout(function () {
            document.getElementById("orderMessage").style.display = "none"
        }, 5000);
    </script>
    <% } %>
</div>
</body>
</html>