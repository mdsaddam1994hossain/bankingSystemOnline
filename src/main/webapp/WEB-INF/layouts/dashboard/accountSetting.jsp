<%-- 
    Document   : AccountSettin
    Created on : Feb 9, 2021, 1:38:23 AM
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
            <h4 class="text-success mt-3 ml-3">ACCOUNT SETTINGS</h4>
            <p>YOU CAN UPDATE ONLY THIS ITEMS</P>
        </div>   
        <hr/>
        
        <div  >
                <form >
                    
                    <button class="btn btn-warning mt-2">   <a href="passwordReset" style="text-decoration: none;color: #0062cc;text-height: 30px;font-weight: 700"> Change Password</a></button>

                </form>
                
          </div>
        
        <div class="row">
            
            <div class="col-md-6 bg-light mt-3">
                
                <form method="get" action="updatedata">
                    
                    <table class="table ">
                        <tr>
                            <td><label for="fname">First Name</label></td>
                            <td><input id="fname" name="firstname" type="text" value="${fname}"/></td>
                        </tr>
                        <tr>
                            <td><label for="laname">Last Name</label></td>
                            <td> <input id="laname" name="lastname" type="text" value="${lname}"/> </td>
                        </tr>
                        <tr>
                            <td><label for="phone">Phone</label></td>
                            <td> <input id="phone" name="phone" type="text" value="${phone}"/> </td>
                        </tr>
                           <tr>
                            <td></td>
                            <td><button type="submit" class="btn btn-warning">change confirm </button></td>
                        </tr>
                        
                    </table>

             
                </form>
                
            </div>
            <div class="col-md-6">
                
            </div>
            
            
        </div>
        
    </body>
</html>
