<%-- 
    Document   : depositcal
    Created on : Jan 19, 2021, 1:36:54 AM
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
        <div class="row bg-praimary" style="height: 50px">


        </div>

        <div class="row">
            <div class="col-md-3">

            </div>
            <div class="col-md-6">
                <form method="get" action="depositsuccess">
                    <table class="table table-striped ">
                        <tr>
                            <td>Operation type </td>
                            <td> <input type="text" name="deposit" value="Deposit" disabled="true"><td>

                        </tr>
                        <tr>
                             <td> Account Number </td>
                              <td> 
                                  <select name="accountnumber">
                                    <option>select account number</option>
                                    <c:forEach items="${accounts}" var="a" > <option> ${a.accountNumber}</option></c:forEach>
                                    
                                   </select>
                              </td>
                        </tr>
                        <tr>
                            <td>Deposit From </td>
                            <td> <input type="text" name="method" value="${method}"><td>
                        </tr>
                       
                         <tr>
                            <td> ${method} Number </td>
                            <td> <input type="text" name="depositnumber"  /><td>
                        </tr>
                         <tr>
                            <td>${method} Pin </td>
                            <td> <input type="password" name="pinnumber" required="true"><td>
                        </tr>
                        <tr>
                            <td>Amount </td>
                            <td> <input type="number" name="amount" /> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <button type="submit" class="btn btn-outline-success btn-block"> Deposit </button> </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="col-md-3">

            </div>

        </div>
         <div class="row bg-praimary" style="height: 235px">
            
            
        </div>
            
    </body>
</html>
