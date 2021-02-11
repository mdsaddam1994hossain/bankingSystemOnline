<%-- 
    Document   : utilitycal
    Created on : Jan 22, 2021, 4:26:21 PM
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

        <div class="row ">

            <div class="col-md-6">
                <form method="get" action="utilitycharge">
                    <table class="table bg-light">
                        <tr>
                            <td>Operation type </td>
                            <td> <input type="text" name="utility" value="Utility Bill" disabled="true"><td>

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
                            <td>Service Name </td>
                            <td> <input type="text" name="service" value="${service}"><td>
                        </tr>
                        <tr>
                            <td> ${service} Account Number </td>
                            <td> <input type="text"  name="servicenumber" /><td>
                        </tr>
                        <tr>
                            <td>Bill Amount </td>
                            <td> <input type="number" name="amount" /> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="submit" class="btn btn-outline-warning btn-block">Payment</button> </td>
                        </tr>
                    </table>
                </form>
            </div>
            

        </div>
       
    </body>
</html>
