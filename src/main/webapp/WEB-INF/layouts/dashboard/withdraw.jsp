<%-- 
    Document   : withdraw
    Created on : Jan 19, 2021, 1:11:07 AM
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
            .button4 {width: 150px;}
            .button5 {width: 150px;}
            .button6 {width: 150px;}
            .button7 {width: 150px;}
            .button8 {width: 150px;}

            .button1:hover{
                background-color: deeppink;
            }
            .button2:hover{
                background-color: darkmagenta;
            }
            .button3:hover{
                background-color: yellowgreen;
            }
            .button4:hover{
                background-color: dodgerblue;
            }
            .button5:hover{
                background-color: #0062cc;
            }
            .button6:hover{
                background-color: darkmagenta;
            }
            .button7:hover{
                background-color: darkslategray;
            }
            .button8:hover{
                background-color: red;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row bg-light mt-3">
            <h4 class="text-danger mt-3 ml-3">WITHDRAW FUNDS</h4>
            <p>SYSTEMS AVAILABLE FOR WITHDRAWALS-<i class="text-danger">charge(1.20%) apply</i></p>
        </div>
        <hr/>


        <div class="row">

            <div class="col-md-2 text-center mt-3">
                <div>
                    <img height="100px" width="150px"  src="https://image.opencart.com/cache/5a39d37486e4b-resize-710x380.jpg" />  
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="bKash"/>
                        <button type="submit" class="button1 btn-secondary mt-2"> bKash </button>
                    </form>

                </div>

            </div>	 

            <div class="col-md-2  text-center mt-3 ">

                <div>
                    <img height="100px" width="150px" src="https://media-exp1.licdn.com/dms/image/C510BAQECvetZN5XgCg/company-logo_200_200/0/1519903960228?e=2159024400&v=beta&t=Cu6k6pul90PHjkNEV6Snx7HXi5OhYe1TF_jKxHSdBjc" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="Rocket"/>
                        <button type="submit" class="button2 btn-secondary mt-2"> Rocket </button>
                    </form>

                </div>

            </div>	 

            <div class="col-md-2  text-center mt-3">

                <div>
                    <img height="100px" width="150px" src="https://bookmaker-info.com/en/wordpress/wp-content/uploads/2014/08/neteller-logo-big.jpg" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="NETELLER"/>
                        <button type="submit" class="button3 btn-secondary mt-2"> NETELLER </button>
                    </form>

                </div>

            </div>



            <div class="col-md-2  text-center mt-3">

                <div>
                    <img height="100px" width="150px" src="https://res.cloudinary.com/rootworks/image/upload/c_pad,h_800,w_1400/b_rgb:ffffff,c_lpad,f_auto,h_630,w_1200/v1/firms/firm-27024476/firstpay-social-logo-web-2020_cc6fie" /> 
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="FirstPay"/>
                        <button type="submit" class="button4 btn-secondary mt-2"> FirstPay </button>
                    </form>

                </div>

            </div> 

            <div class="col-md-2 text-center mt-3">
                <div>
                    <img height="100px" width="150px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX3A2w3lR7BvjOPLC_3qXzKbLqwwWXTswwvQ&usqp=CAU" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="WebMoney"/>
                        <button type="submit" class="button5 btn-secondary mt-2"> WebMoney </button>
                    </form>

                </div>

            </div>	 

            <div class="col-md-2  text-center mt-3">


                <div>
                    <img height="100px" width="150px" src="https://bullmarketz.com/wp-content/uploads/2018/10/Skrill1.png" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="Skrill"/>
                        <button type="submit" class="button6 btn-secondary mt-2"> skrill </button>
                    </form>

                </div>

            </div>
            <div class="col-md-2  text-center mt-3">


                <div>
                    <img height="100px" width="150px" src="data:image/png;base64,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" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="Paynear"/>
                        <button type="submit" class="button7 btn-secondary mt-2"> Paynear </button>
                    </form>

                </div>

            </div>
            <div class="col-md-2  text-center mt-3">


                <div>
                    <img height="100px" width="150px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgozSIlHLUnMnZGIgiIsr7zx9Fy8o_MeDaRw&usqp=CAU" />
                </div>
                <div >
                    <form method="get" action="withdrawfr">
                        <input type="text" hidden="true" name="methods" value="Nagad"/>
                        <button type="submit" class="button8 btn-secondary mt-2"> Nagad </button>
                    </form>

                </div>

            </div>

        </div>		





    </body>
</html>
