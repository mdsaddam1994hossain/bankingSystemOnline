<%-- 
    Document   : allAccount
    Created on : Jan 28, 2021, 1:10:44 AM
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
        <div class="row bg-light mt-3 pl-3" style="height: 70px; padding-top: 5px">
            <h3 class="text-warning">All Account List</h3>
            <form method="get" action="searchAcccount">
               
            </form>
            
        </div>
        <div class="mt-3">
            <table class="table table-striped">
                <tr>
                    <th>Account Number</th>
                    <th>Open Date</th>
                    <th>Customer Id</th>
                    <th>Balance</th>
                    <th>Password</th>
                </tr>
                <c:forEach items="${allAccounts}" var="account">
                    <tr>
                        <td> ${account.accountNumber} </td>
                        <td> ${account.openDate} </td>
                        <td> ${account.custId} </td>
                        <td> ${account.balance} </td>
                        <td> ${account.password} </td>
                    </tr>
               </c:forEach>
            </table>
        </div>
    </body>
</html>
