<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UTS</title>
    <script src="bootstrap-3.4.1-dist/js/jquery-3.6.0.min.js"></script>
    <script src="bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="main.js"></script>
</head>
<body>
    <jsp:include page="header.html"/> 
    <form method="POST" action="cashier.jsp">
        <ul>
            <li>
                <img src= "<%= request.getContextPath() %>/pic/1.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="1"><br>
                <input id="menuprice" name="menuprice" type="text" value="1000" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Mie">
                <input id="menuid" name="menuid" type="hidden" value="1">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>     
            <li>
                <img src="<%= request.getContextPath() %>/pic/2.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="2"><br>
                <input id="menuprice" name="menuprice" type="text" value="5000" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Ayam">
                <input id="menuid" name="menuid" type="hidden" value="2">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/3.jpg"class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="3"><br>
                <input id="menuprice" name="menuprice" type="text" value="5400" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Martabak">
                <input id="menuid" name="menuid" type="hidden" value="3">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/4.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="4"><br>
                <input id="menuprice" name="menuprice" type="text" value="3500" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Mie Goreng">
                <input id="menuid" name="menuid" type="hidden" value="4">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/5.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="5"><br>
                <input id="menuprice" name="menuprice" type="text" value="4500" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Rendang">
                <input id="menuid" name="menuid" type="hidden" value="5">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/6.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="6"><br>
                <input id="menuprice" name="menuprice" type="text" value="2500" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Kue">
                <input id="menuid" name="menuid" type="hidden" value="6">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/7.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="7"><br>
                <input id="menuprice" name="menuprice" type="text" value="12000" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Nasi Goreng">
                <input id="menuid" name="menuid" type="hidden" value="7">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/8.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="8"><br>
                <input id="menuprice" name="menuprice" type="text" value="10000" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="Kelapa">
                <input id="menuid" name="menuid" type="hidden" value="8">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/9.jpg" class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="9"><br>
                <input id="menuprice" name="menuprice" type="text" value="8500" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="lele">
                <input id="menuid" name="menuid" type="hidden" value="9">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>  
            <li>
                <img src="<%= request.getContextPath() %>/pic/10.jpg"class="img-thumbnail img-size"><br>
                <input id="choose" type="checkbox" name="choose" value="10"><br>
                <input id="menuprice" name="menuprice" type="text" value="6500" readonly>: Harga<br>
                <input id="foodname" name="foodname" type="hidden" value="lobak">
                <input id="menuid" name="menuid" type="hidden" value="10">
                <input id="foodqty" name="foodqty" type="text">: Jumlah
            </li>     
        </ul>
        <p class="text-center">
            <input type="submit" method="POST" value="Selesai">
        </p>
    </form>
    <jsp:include page="footer.html"/> 
</body>
</html>