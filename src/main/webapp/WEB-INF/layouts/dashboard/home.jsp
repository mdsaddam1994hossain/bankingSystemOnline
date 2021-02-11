<%-- 
    Document   : home
    Created on : Jan 19, 2021, 1:16:16 AM
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
        <div class="row bg-light mt-3" >
            <div class="col-sm-4 mt-3">
                <h5>BOOST YOUR PROFIT BY DEPOSIT YOUR LAZY MONEY</h5>
            </div>
            <div class="col-sm-2">

            </div>
            <div class="col-sm-3">

            </div>
            <div class="col-sm-3">
                
                
            </div>

        </div>

        <div class=" row mt-3 bg-light">
            <div  class="col-md-3 mt-2 ">
                <h3 class="text-success"> My Accounts </h3>
            </div>
            <div class="col-md-3 ">
                
            </div>
                
            <div class="col-md-3 ">
                
            </div>
            <div class="col-md-3 ">
                <form method="get" action="opennew">
                    
                    <button class="btn btn-warning mt-2">Create New Account</button>

                </form>
                
            </div>


        </div>
        
        <div class=" row mt-5">
            
            <div class="col-md-4">
                <table class="table table-striped">
                    <tr>
                        <th> Account Number</th>
                        <th> Balance</th>
                    </tr>
                    <c:forEach items="${accounts}" var="a" >
                    <tr>
                        <td>0000${a.accountNumber} </td>
                        <td> ${a.balance} BDT.</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="col-md-6">
            </div>
            


        </div>

    </body>
</html>
