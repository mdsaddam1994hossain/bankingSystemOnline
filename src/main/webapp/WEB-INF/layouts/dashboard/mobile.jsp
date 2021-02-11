<%-- 
    Document   : mobile
    Created on : Jan 22, 2021, 3:26:07 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .button1 {width: 200px;}
            .button2 {width: 200px;}
            .button3 {width: 200px;}
            .button4 {width: 200px;}
            .button5 {width: 200px;}
            
            .button1:hover{
                background-color: #00c6ff;
            }
            .button2:hover{
                background-color: #ff0000;
            }
            .button3:hover{
                background-color: #0062cc;
            }
            .button4:hover{
                background-color: red;
            }
            .button5:hover{
                background-color: orangered;
            }


        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row bg-light mt-3">
            <h4 class="text-warning mt-3 ml-3">MOBILE RECHARGE</h4>
            <p>OPERATORS AVAILABLE FOR MOBILE RECHARGE</P>
        </div>   
        <hr/>

        <div class="row">

            <div class="col-lg-3 col-xs-12 text-center">
                <div class="box">
                    <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                    <div class="box-text ">
                        <img height="120px" width="200px"  src="https://cdn01.grameenphone.com/sites/default/files/IR/About%20grameenphone_1060_764_0.jpg" />  
                    </div>
                    <div class="box-btn">
                        <form method="get" action="mobilerechargeform">
                            <input type="text" hidden="true" name="operator" value="GrameenPhone"/>
                            <button type="submit" class="button1  btn-secondary mt-2"> GrameenPhone </button>
                        </form>

                    </div>
                </div>
            </div>	 

            <div class="col-lg-3 col-xs-12  text-center">
                <div class="box">
                    <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                    <div class="box-text">
                        <img height="120px" width="200px" src="https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/feature/images/robi-1.jpg?itok=6ePMWK1U" />
                    </div>
                    <div class="box-btn">
                        <form method="get" action="mobilerechargeform">
                            <input type="text" hidden="true" name="operator" value="Robi"/>
                            <button  type="submit" class="button2 btn-secondary mt-2"> Robi </button>
                        </form>

                    </div>
                </div>
            </div>	 

            <div class="col-lg-3 col-xs-12 text-center">
                <div class="box">
                    <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                    <div class="box-text">
                        <img height="120px" width="200px" src="https://alormela.org/images/banners/2017/06/Teletalk_Bangladesh.jpg" />
                    </div>
                    <div class="box-btn">
                        <form method="get" action="mobilerechargeform">
                            <input type="text" hidden="true" name="operator" value="Teletalk"/>
                            <button type="submit" class="button3 btn-secondary mt-2"> Teletalk </button>
                        </form>

                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-xs-12 text-center">
                <div class="box">
                    <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                    <div class="box-text">
                        <img height="120px" width="200px" src="https://www.thestatesman.com/wp-content/uploads/2019/12/airtelRBI_425_735_ED-1.jpg" />
                    </div>
                    <div class="box-btn">
                        <form method="get" action="mobilerechargeform">
                            <input type="text" hidden="true" name="operator" value="airtel"/>
                            <button type="submit" class="button4 btn-secondary mt-2"> airtel </button>
                        </form>

                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-xs-12 text-center mt-3">
                <div class="box">
                    <i class="fa fa-behance fa-3x" aria-hidden="true"></i>

                    <div class="box-text">
                        <img height="120px" width="200px" src="https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/feature/images/banglalink-logo.jpg?itok=PeQTaesD" /> 
                    </div>
                    <div class="box-btn">
                        <form method="get" action="mobilerechargeform">
                            <input type="text" hidden="true" name="operator" value="Banglalink"/>
                            <button type="submit" class="button5 btn-secondary mt-2">Banglalink</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
