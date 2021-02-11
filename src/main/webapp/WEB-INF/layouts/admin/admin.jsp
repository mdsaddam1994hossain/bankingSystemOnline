<%-- 
    Document   : admin
    Created on : Jan 26, 2021, 1:40:29 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Admin</title>
    </head>
    <body class="container-fluid">

 
            
            <tiles:insertAttribute name="adminHeader" ignore="true" />
            
     
        <div class="row">
            <div class="col-md-2">
                <tiles:insertAttribute name="menue" ignore="true"/>
                
            </div>
            <div class="col-md-9">
                <tiles:insertAttribute name="body" ignore="true"/>
            </div>
            
        </div>
        
        

    </body>
</html>
