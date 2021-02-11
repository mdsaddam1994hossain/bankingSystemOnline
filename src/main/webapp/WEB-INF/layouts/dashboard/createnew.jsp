<%-- 
    Document   : createnew
    Created on : Jan 19, 2021, 1:24:35 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New Account</title>
    </head>
    <body>
        
        <div class="row bg-light mt-3">
            <h4 class="text-success mt-3 ml-3">CREATE A NEW ACCOUNT</h4>
            <p>Secure Your Money</p>
        </div>
        <hr/>
        
        <form method="get" action="accountcreate">
            <table class="table table-striped">
                <tr>
                    <td> Customer ID </td>
                    
                    <td> 
                        <input  name="custId" disabled="true"  value=" ${cnumber}"/>
                    </td>
                </tr>
                <tr>
                    <td> Account Type </td>
                    
                    <td> 
                        <select name="accountType">
                            <option>current Account</option>
                            <option>saving Account</option>
                            <option>fixed Account</option>
                        </select>
                    </td>
                </tr>
               
                 <tr>
                     <td>Balance </td>
                    
                    <td> <input type="number" name="balance"/> </td>
<!--                    <td> <input type="number" name="balance"/> <button class="btn btn-secondary"> <a href="deposited" style="text-decoration: none;color: white">Balance</a> </button> </td>-->
                </tr>
                 <tr>
                    <td> Password This Account  </td>
                   
                    <td> <input type="password" name="password"/>  </td>
                </tr>
               
                <tr>
                    <td>   </td>
                   
                    <td> 
                        <button type="submit" class="btn btn-outline-success btn-block">Create Account</button>
                    </td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
