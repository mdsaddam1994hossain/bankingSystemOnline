<%-- 
    Document   : deposit
    Created on : Jan 19, 2021, 1:10:46 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .button1 {width: 200px;}
            .button2 {width: 200px;}
            .button3 {width: 200px;}
            .button4 {width: 200px;}
            .button5 {width: 200px;}
            .button6 {width: 200px;}
            .button7 {width: 200px;}
            .button8 {width: 200px;}

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
                background-color: midnightblue;
            }
            .button5:hover{
                background-color: darkcyan;
            }
            .button6:hover{
                background-color: #ff0000;
            }
            .button7:hover{
                background-color: dodgerblue;
            }
            .button8:hover{
                background-color: darkmagenta;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row bg-light mt-3">
            <h4 class="text-success mt-3 ml-3">DEPOSIT FUNDS</h4>
            <p>SYSTEMS AVAILABLE FOR DEPOSIT</P>
        </div>   
        <hr/>

        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-xs-12 text-center">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text ">
                            <img height="120px" width="200px"  src="https://image.opencart.com/cache/5a39d37486e4b-resize-710x380.jpg" />  
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="bKash"/>
                                <button type="submit" class="button1  btn-secondary mt-2"> bKash </button>
                            </form>

                        </div>
                    </div>
                </div>	 

                <div class="col-lg-3 col-xs-12  text-center">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://futurestartup.com/wp-content/uploads/2016/09/DBBL-Mobile-Banking-Becomes-Rocket.jpg" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="Rocket"/>
                                <button  type="submit" class="button2 btn-secondary mt-2"> Rocket </button>
                            </form>

                        </div>
                    </div>
                </div>	 

                <div class="col-lg-3 col-xs-12 text-center">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://logos-download.com/wp-content/uploads/2016/04/Neteller_logo_small.png" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="Neteller"/>
                                <button type="submit" class="button3 btn-secondary mt-2"> Neteller </button>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-12 text-center">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://www.indiafintech.com/wp-content/uploads/2016/11/paynear-1.png" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="Paynear"/>
                                <button type="submit" class="button4 btn-secondary mt-2"> Paynear </button>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-12 text-center mt-3">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://cdn.mainichi.jp/vol1/2020/08/21/20200821p2a00m0bu023000p/8.jpg?2" /> 
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="Credit Card"/>
                                <button type="submit" class="button5 btn-secondary mt-2"> Credit Card </button>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-12 text-center mt-3">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="data:image/png;base64,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" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" name="method" hidden="true" value="Nagad"/>
                                <button type="submit" class="button6 btn-secondary mt-2"> Nagad </button>
                            </form>

                        </div>
                    </div>
                </div>


                <div class="col-lg-3 col-xs-12 text-center mt-3">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://freelancestation.net/wp-content/uploads/2019/03/%D9%85%D8%A7-%D9%87%D9%88-PayPal.jpg" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" name="method" hidden="true" value="Paypal"/>
                                <button type="submit" class="button7 btn-secondary mt-2"> Paypal </button>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-12 text-center mt-3">
                    <div class="box">
                        <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                        <div class="box-text">
                            <img height="120px" width="200px" src="https://www.technobezz.com/files/uploads/2020/06/1200x630wa-4.png" />
                        </div>
                        <div class="box-btn">
                            <form method="get" action="depositform">
                                <input type="text" hidden="true" name="method" value="Skrill"/>
                                <button  type="submit" class="button8 btn-secondary mt-2"> Skrill </button>
                            </form>

                        </div>
                    </div>
                </div>	 



            </div>		
        </div>

    </body>
</html>
