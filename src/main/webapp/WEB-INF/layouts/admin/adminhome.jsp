<%-- 
    Document   : adminhome
    Created on : Jan 26, 2021, 1:57:17 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <div class="row bg-light mt-3 pl-3">
            <h3 class="text-primary">Home</h3>
        </div>
      
        <div class="row mt-3">
            <div class="col-md-2 mr-3 ml-3" style="background-color: #0062cc">
                <div class="bg-praimary text-warning pt-2"> <h5> Total Balance <hr/></h5></div>
                <h6 class="text-white pt-3 pb-2">BDT- ${totalBalance}</h6>
                
            </div>
            <div class="col-md-2 mr-3 ml-3" style="background-color: lightskyblue;">
                <h6 class="pt-2 text-white"> Current Account </h6><hr/>
                <h6 class=" text-white pt-3 pb-2">Number-${acurrent}<br></h6>
            </div>
           <div class="col-md-2 mr-3 ml-3" style="background-color: coral;">
                <h6 class="pt-2 text-white"> Fixed Account </h6><hr/>
                <h6 class=" text-white pt-3  pb-2">Number-${afixed}<br></h6>
            </div>
            <div class="col-md-2 mr-3 ml-3" style="background-color: cornflowerblue;">
                <h6 class="pt-2 text-warning"> Savings Account </h6><hr/>
                <h6 class=" text-white pt-3 pb-2">Number-${asaving}<br></h6>
            </div>
            <div class="col-md-2 mr-3 ml-3" style="background-color: darkorchid;">
                <h6 class="pt-2 text-warning"> Total Account </h6><hr/>
                <h6 class=" text-white pt-3 pb-2">Number-${allaccount}<br></h6>
            </div>
        </div>
         <div class="row bg-light mt-3 pl-3">
            <h3 class="text-success">Last Month Revenue</h3>
           
        </div>
         <div class="col-md-3 mr-2 mt-2" style="background-color: darkslategrey;">
                <h4 class="pt-2 text-warning"> Revenue </h4><hr/>
                <h5 class=" text-white pt-3 pb-3">BDT-${totalrevenue}<br></h5>
            </div>
        
         
        
       
        
       
    </body>
</html>
