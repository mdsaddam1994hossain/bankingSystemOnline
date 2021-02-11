<%-- 
    Document   : allCustomer
    Created on : Jan 27, 2021, 11:53:31 PM
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
        <div class="row bg-light mt-3 pl-3">
            <h3 class="text-warning">All Accountholder</h3>
            
        </div>
        <div class="mt-3">
            <table class="table table-striped">
                <tr>
                    <th>Customer Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                   

                </tr>
                <c:forEach items="${allCustomer}" var="c">
                    <tr>
                        <td> ${c.custId} </td>
                        <td> ${c.firstName} </td>
                        <td> ${c.lastName} </td>
                        <td> ${c.email} </td>
                        <td> ${c.phone} </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
