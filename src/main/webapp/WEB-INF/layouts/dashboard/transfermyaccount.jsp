<%-- 
    Document   : transfermyaccount
    Created on : Jan 22, 2021, 2:28:43 PM
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
      
        <div class="row mt-5">
            <div class="col-md-3">

            </div>
            <div class="col-md-6">
                <form method="get" action="transfermyaccountsuccess">
                    <table class="table table-striped">
                        <tr>
                            <td>Operation type </td>
                            <td> <input type="text" name="transfer" value="Transfer" disabled="true"><td>

                        </tr>
                        <tr>
                             <td>From Account Number </td>
                              <td> 
                                  <select name="accountnumber">
                                    <option>select account number</option>
                                    <c:forEach items="${accountss}" var="a" > <option> ${a.accountNumber}</option></c:forEach>
                                    
                                   </select>
                              </td>
                        </tr>
                        <tr>
                            <td>Transfer To </td>
                            <td> <input type="text" name="method" value="${methods}"><td>
                        </tr>
                        <tr>
                            <td>To ${methods} Number </td>
                            <td> <input type="number" name="toaccountnumber" /><td>
                        </tr>
                        <tr>
                            <td>Amount </td>
                            <td> <input type="number" name="amount" /> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="submit" class="btn btn-outline-warning btn-block">Transfer</button> </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="col-md-3">

            </div>

        </div>
    </body>
</html>
