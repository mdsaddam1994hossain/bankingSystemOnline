<%-- 
    Document   : transferdiscount
    Created on : Jan 25, 2021, 4:41:11 PM
    Author     : JEE
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
        
        
        <div class="row bg-light mt-3">
            <h4 class="text-warning mt-3 ml-3">TRANSFER FUNDS</h4>
           
        </div>
        <div class="row mt-3">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-6 bg-light">
                <form method="get" action="transfersuccess">
                            <table class="table ">
                                <tr>
                                    <td>Account Number</td>
                                    <td> <input type="text" class="border-0" name="accountnumber" value="0000${anumber}"> </td>
                                </tr>
                                <tr>
                                    <td>Method </td>
                                    <td> <input type="text" class="border-0" name="method" value="${method}"> </td>
                                </tr>
                                <tr>
                                     <td>Amount </td>
                                    <td> <input type="number" class="border-0" name="amount" value="${amounts}"></td>
                                </tr>
                                <tr>
                                    <td>Charge Amount</td>
                                    <td> <input type="number" class="border-0" name="discount" value="${discounts}"> </td>
                                </tr>
                                <tr>
                                    <td>Amount After Charge</td>
                                    <td> <input type="number" class="border-0" name="disamount" value="${afterdiscount}" ></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td> <button type="submit" class="btn btn-warning">Confirm</button>
                                        <button  class="btn btn-danger"><a href="transfered" style="text-decoration: none;color: white">Cancel</a></button></td>
                                </tr>
                            </table>
                            
                        </form>
                
            </div>
            <div class="col-md-5">
                
            </div>
            
        </div>

    </body>
</html>
