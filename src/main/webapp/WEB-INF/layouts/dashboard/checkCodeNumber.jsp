<%-- 
    Document   : checkCodeNumber
    Created on : Feb 10, 2021, 5:51:42 PM
    Author     : JEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .mainbody{
                height: 300px;
                width: 500px;
                margin-left: 150px;
                margin-top: 40px
            }
            .inputtext{
              border:none;
             width: 100%;
             border-bottom: 2px solid #adadad;
             height: 40px;
             outline: none;
              background: none;
              text-align: center;
              padding-top: 100px;
              padding-bottom: 20px
                
          }
          
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check code</title>
    </head>
    <body >
        <div class="row bg-light mt-3">
            <h4 class="text-success mt-3 ml-3">VERIFY ACCOUNT</h4>
            <p>We sand a code your email</P>
        </div>   
        <hr/>
        
        <form method="get" action="transfercheck">
            <input hidden="true" name="accountnumber" value ="${anumber}">
            <input hidden="true" name="method" value ="${method}">
            <input hidden="true" name="amount" value ="${amounts}">
            
            <div class="mainbody bg-light">
                <div>
                    
                <input class="inputtext" value="${pinNumber}" > <br/>
                <button type="submit" class="btn btn-warning" style="margin-left: 130;width: 250px;margin-top: 10px"  > submit</button> 

                </div>
            </div>
            
              
        </form>
        
    </body>
</html>
