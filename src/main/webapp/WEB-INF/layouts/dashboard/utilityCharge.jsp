<%-- 
    Document   : utilityCharge
    Created on : Feb 9, 2021, 12:24:46 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row bg-praimary" style="height: 50px">


        </div>
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-6 bg-light">
                <form method="get" action="utilitysuccess">
                            <table class="table ">
                                <tr>
                                    <td>Account Number</td>
                                    <td> <input type="text" class="border-0" name="accountnumber" value="0000${anumber}"> </td>
                                </tr>
                                <tr>
                                    <td>Service </td>
                                    <td> <input type="text" class="border-0" name="service" value="${service}"> </td>
                                </tr>
                                <tr>
                                     <td>Amount </td>
                                    <td> <input type="number" class="border-0" name="amount" value="${amounts}"></td>
                                </tr>
                                <tr>
                                    <td>Charge Amount</td>
                                    <td> <input type="number" class="border-0" name="chargeamount" value="${chargeAmount}"> </td>
                                </tr>
                                <tr>
                                    <td>Amount With Charge</td>
                                    <td> <input type="number" class="border-0" name="totalamounts" value="${totalamount}" ></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td> <button type="submit" class="btn btn-warning">Confirm</button>
                                        <button  class="btn btn-danger"><a href="utilitybill" style="text-decoration: none;color: white">Cancel</a></button></td>
                                </tr>
                            </table>
                            
                        </form>
                
            </div>
            <div class="col-md-5">
                
            </div>
            
        </div>
    </body>
</html>
