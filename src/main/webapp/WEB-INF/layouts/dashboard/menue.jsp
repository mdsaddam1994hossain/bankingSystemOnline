<%-- 
    Document   : menue
    Created on : Jan 28, 2021, 11:58:00 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .menuback:hover{
                background-color: #383d41;
                color: #ffffff;
                text-align: center;
            }
       
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <nav class="nav flex-column">
           
                <li class="nav-item " style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="home">Dashboard</a>


                </li>
                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a  style="text-decoration: none" class="nav-link menuback" href="deposited">Deposit</a>


                </li>

                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="withdrawo">Withdraw</a>


                </li>
                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="transfered">Transfer</a>


                </li>
               
                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="utilitybill">Utility-Bill</a>

                </li>
                
                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="mobilerecharge">Mobile Recharge</a>

                </li>
                 <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="historye">Statement</a>

                </li>
                
                <li class="nav-item" style="margin-bottom: 10px;margin-top: 10px;margin-left: 20px">

                    <a style="text-decoration: none" class="nav-link menuback" href="accountSettings">Settings</a>

                </li>
                
             
                <div class="animation start-home"></div>
        </nav>

    </body>
</html>
