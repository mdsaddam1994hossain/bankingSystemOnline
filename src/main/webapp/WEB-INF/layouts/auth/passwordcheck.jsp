<%-- 
    Document   : passwordcheck
    Created on : Jan 26, 2021, 12:21:09 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <style>
          .bodymain{
                background-color: gainsboro;
                height: 500px;
                width: 800px;
                margin-left: 250px;
          }
          .innerbody{
              background-color: aliceblue;
              height: 180px;
              width: 300px;
              margin-top: 140px;
            
          } 
          .inputtext{
              border:none;
             width: 100%;
             border-bottom: 2px solid #adadad;
             height: 40px;
             outline: none;
              background: none;
          }
          
          .sandbtn{
              width: 100%;
              height: 30px;
              background: blueviolet;
              border-radius: 25px;
              font-size: 18px;
              color: white;
              font-weight: 700;
              outline: none;
              border: none;
          }
                    
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="bodymain">
            <center>
                <div class="innerbody ">
                    
                    <form method="get" action="resetsuccess">
                        <table class="table-striped">
                            <tr>
                                <td class="text-center"><input type="password" name="password" class="inputtext mt-5 text-center" placeholder="Enter New Password"> </td>
                            </tr>
                            <tr>
                                <td class="text-center"> <input type="submit" value="Reset" class="sandbtn mt-2" /> </td>
                            </tr>
                        </table>
                        
                       
                    </form>
                    
                </div>
            </center>
        </div>
    </body>
</html>
