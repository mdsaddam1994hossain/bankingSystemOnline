<%-- 
    Document   : transfer
    Created on : Jan 19, 2021, 1:11:29 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .button1 {width: 150px;}
            .button2 {width: 150px;}
            .button3 {width: 150px;}
            
             .button1:hover{
                background-color: darkmagenta;
            }
            .button2:hover{
                background-color:deeppink;
            }
            .button3:hover{
                background-color: #ff0000;
            }
            .button4:hover{
                background-color: darkmagenta;
                color: white;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="row bg-light mt-3">
            <h4 class="text-warning mt-3 ml-3">TRANSFER FUNDS</h4>
            <p>SYSTEMS AVAILABLE FOR TRANSFER-<i class="text-danger">charge(1.20%) apply</i></p>
        </div>
        <hr/>

        <div class="row">

            <div class="col-md-2 text-center mt-3">
                <div>
                    <img height="100px" width="150px"  src="https://126544-362384-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2019/06/DBBL-Rocket-Vector-Logo.jpg" />  
                </div>
                <div >
                    <form method="get" action="transferform">
                        <input type="text" hidden="true" name="methods" value="Rocket"/>
                        <button type="submit" class="button1 btn-secondary mt-2"> Rocket </button>
                    </form>

                </div>

            </div>
            <div class="col-md-2 text-center mt-3">
                <div>
                    <img height="100px" width="150px"  src="https://bangla.earthtimes24.com/wp-content/uploads/2017/09/bikash-20170919222735.jpg" />  
                </div>
                <div >
                    <form method="get" action="transferform">
                        <input type="text" hidden="true" name="methods" value="bKash"/>
                        <button type="submit" class="button2 btn-secondary mt-2"> bKash </button>
                    </form>

                </div>

            </div>
            <div class="col-md-2 text-center mt-3">
                <div>
                    <img height="100px" width="150px"  src="https://observerbd.com/2020/02/25/observerbd.com_1582635661.jpg" />  
                </div>
                <div >
                    <form method="get" action="transferform">
                        <input type="text" hidden="true" name="methods" value="Nagad"/>
                        <button type="submit" class="button3 btn-secondary mt-2"> Nagad </button>
                    </form>

                </div>

            </div>

        </div>

        <div class="bg-light mb-2" style="height: 40px">
      <p class="text-danger">No charge apply</p>
        </div>
        <form method="get" action="transfermyaccount">
            <input type="text" hidden="true" name="methods" value="My Accout"/>
            <button type="submit" class="button4 btn-warning mt-2"> Transfer My Account to Account </button>
        </form>



    </body>
</html>
