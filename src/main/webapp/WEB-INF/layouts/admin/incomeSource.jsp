<%-- 
    Document   : incomeSource
    Created on : Feb 9, 2021, 1:46:00 AM
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
        <div class="row bg-light mt-3 pl-3" style="height: 50px;padding-top: 5px">
            <h3 class="text-warning">Revenue Chart</h3>
        </div>
        
        <div class="mt-3">
             <form>
                 <table class="table table-striped">
                     <tr>
                         <th>Account Number</th>
                         <th>Transection Type</th>
                         <th>Method</th>
                         <th>Date</th>
                         <th>Amount</th> 
                     </tr>
                     <c:forEach items="${allhistory}" var="h">
                         <tr>
                             <td> ${h.accountNumber}</td>
                             <td> ${h.operationType}</td>
                             <td> ${h.method}</td>
                             <td> ${h.transectionDate}</td>
                             <td> ${h.chargeAmount}</td>
                         </tr>
                     </c:forEach>
                 </table>
             </form>
             
         </div>
       
    </body>
</html>
