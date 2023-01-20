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
        String[] menuID=request.getParameterValues("menuid");
        String[] foodName=request.getParameterValues("foodname");
        String[] menuPrice=request.getParameterValues("menuprice");
        String[] foodQty=request.getParameterValues("foodqty");
        String payment=request.getParameter("payment");
        String change=request.getParameter("change");
        String GrandTotal=request.getParameter("grandtotal");
    %>
    <jsp:include page="header.html"/> 
    <div class="cashier-left" id="main_content">
        <h1>Cashier Report</h1>
        <%
                for(int i=0;i<menuID.length;i++){
        %>
        <divmenu>
            Kode : <input type="text" name="menuid" value="<%= menuID[i]%>" readonly><br>
            Nama Makanan : <input type="text" name="foodname" value="<%= foodName[i]%>" readonly><br>
            Jumlah : <input type="text" name="foodqty" value="<%= foodQty[i]%>" readonly><br>
            Harga Satuan : <input type="text" name="menuprice" value="<%= menuPrice[i]%>" readonly>
        </divmenu>
        <br>
        <%
               }
        %>
        GrandTotal: <%= GrandTotal%><br>

        Cash : <input type="text" id="payment" name="payment" value="<%= payment%>" readonly><br>
        <input type="hidden" id="grandtotal" value="<%= GrandTotal%>" readonly>
        Change : <input type="text" id="change" name="change" value="<%= change%>" readonly>
        <%@ page import="java.io.*" %>
        <%
        String file=application.getRealPath("/")+"customer.txt";
        FileWriter filewriter = new FileWriter(file, true);
        for(int i=0;i<menuID.length;i++){
                filewriter.write("Kode : "+menuID[i]+"<br>");
                filewriter.write("Nama Makanan : "+foodName[i]+"<br>");
                filewriter.write("Jumlah : "+foodQty[i]+"<br>");
                filewriter.write("Harga Satuan : "+menuPrice[i]+"<br>");
        }
        filewriter.write("Harga Total : "+GrandTotal+"<br>");
        filewriter.write("Kembalian : "+change+"<br>");
        filewriter.write("pembayaran : "+payment+"<br>");
        filewriter.write("<br><br>");
        filewriter.close();
        %>
    </div>
    <jsp:include page="footer.html"/> 
</body>
</html>