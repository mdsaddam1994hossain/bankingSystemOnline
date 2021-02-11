<%-- 
    Document   : history
    Created on : Jan 19, 2021, 1:11:47 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="bg-light mt-3">
            <h3 class="py-2">STATEMENT OF OPERATIONS</h3>
        </div>
        <hr/>
        <form method="get" action="historyshow">
            <table class="table table-striped text-success">
                <tr>
                    <td>
                        <select name="accountNum">
                            <option>All Accounts</option>
                            <c:forEach items="${accounts}" var="a"> 
                                <option > ${a.accountNumber} </option>
                            </c:forEach>
                        </select>
                    </td>
                    <td> Show from  </td>
                    <td> <input name="fromDate" type="date"/>  </td>
                    <td> To</td>
                    <td> <input  name="toDate" type="date"/>  </td>
                    
                    <td> <button type="submit">Apply</button></td>
                </tr>

            </table>
        </form>


        <table class="table table-striped text-success">
            <tr>
                <th>Date</th>
                <th>Transaction Type</th>
                <th>Method</th>
                <th>Amount</th>
            </tr>
            <c:forEach items="${histories}" var="h">
                <tr>
                    <td> ${h.transectionDate} </td>
                    <td> ${h.operationType} </td>
                    <td> ${h.method} </td>
                    <td> ${h.amount} </td>
                </tr>
            </c:forEach> 
        </table>   
    </body>
</html>
