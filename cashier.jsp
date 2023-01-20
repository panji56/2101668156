<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="bootstrap-3.4.1-dist/js/jquery-3.6.0.min.js"></script>
    <script src="bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="main.js"></script>
    <title>UTS</title>
</head>
<body>
    <%
        String[] userCheck=request.getParameterValues("choose");
        String[] foodName=request.getParameterValues("foodname");
        String[] menuPrice=request.getParameterValues("menuprice");
        String[] foodQty=request.getParameterValues("foodqty");
        boolean flag=true;
        int GrandTotal=0;
    %>
    <jsp:include page="header.html"/> 
    <div class="cashier-left" id="main_content">
        <h1>Cashier</h1>
        <form id="cashierform">
            <%
                if(userCheck!=null){
                    for(String user:userCheck){
                %>
                    <divmenu name="foodMenu">
                        Kode : <input type="text" name="menuid" value="<%= "Menu"+user %>" readonly><br>
                        Nama Makanan : <input type="text" name="foodname"  value="<%= foodName[Integer.parseInt(user)-1]%>" readonly><br>
                        Jumlah : <input type="text" name="foodqty"  value="<%= foodQty[Integer.parseInt(user)-1]%>" readonly><br>
                        Harga Satuan : <input type="text" name="menuprice" value="<%= menuPrice[Integer.parseInt(user)-1]%>" readonly>
                    </divmenu>
                    <br>
                <%
                        if(foodQty[Integer.parseInt(user)-1].matches("^[0-9]+$")){
                            int count=Integer.parseInt(foodQty[Integer.parseInt(user)-1]);
                            int price=Integer.parseInt(menuPrice[Integer.parseInt(user)-1]);
                            GrandTotal+=(price*count);
                        }
                    }
                }
            %>
            GrandTotal: <%= GrandTotal%><br>
            Cash : <input type="text" id="payment" name="payment"><br>
            <input type="button" value="Calculate" onclick="changeCount()"><br>
            <input type="hidden" id="grandtotal" name="grandtotal" value="<%= GrandTotal%>">
            Change : <input type="text" id="change" name="change" readonly><br>
            <input type="button" value="Pay" onclick="checkout()">
        </form>
    </div>
    <jsp:include page="footer.html"/> 
</body>
</html>