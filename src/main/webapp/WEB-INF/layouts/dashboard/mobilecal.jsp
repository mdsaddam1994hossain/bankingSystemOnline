<%-- 
    Document   : mobilecal
    Created on : Jan 22, 2021, 3:53:37 PM
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
    
        <div class="row bg-light mt-3">
            <h4 class="text-warning mt-3 ml-3">MOBILE RECHARGE</h4>
            <p>ANY OPERATORS AND ANY AMOUNT RECHARGE CHARGE-<i class="text-danger">(0.15%) apply</i> </P>
        </div>   
        <hr/>

        <div class="row">
            <div class="col-md-1">

            </div>
            <div class="col-md-8">
                <form method="get" action="mobilecharge">
                    <table class="table table-striped">
                        <tr>
                            <td>Operation type </td>
                            <td> <input type="text" name="recharge" value="Mobile Recharge" disabled="true"><td>

                        </tr>
                        <tr>
                             <td> Account Number </td>
                              <td> 
                                  <select name="accountnumber">
                                    <option>select account number</option>
                                    <c:forEach items="${accountss}" var="a" > <option> ${a.accountNumber}</option></c:forEach>
                                    
                                   </select>
                              </td>
                        </tr>
                        <tr>
                            <td>Operator Name </td>
                            <td> <input type="text" name="operator" value="${operator}"><td>
                        </tr>
                        <tr>
                            <td> ${operator} Number </td>
                            <td> <input type="text"  name="operatornumber" /><td>
                        </tr>
                        <tr>
                            <td>Recharge Amount </td>
                            <td> <input type="number" name="amount" /> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="submit" class="btn btn-outline-warning btn-block">Recharge</button> </td>
                        </tr>
                    </table>
                </form>
            </div>
            

        </div>
    </body>
</html>
