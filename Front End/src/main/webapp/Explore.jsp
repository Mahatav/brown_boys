<%-- 
    Document   : Explore
    Created on : Mar 4, 2023, 9:31:30 a.m.
    Author     : anuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <style>
        .post{
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 90%;
            height: 100%;
            background: #fff;
            border: 1% solid #dfdfdf;
            margin-top: 10%;
            margin-bottom: 5%;

        }

        .map-responsive{

            overflow:hidden;

            padding-bottom:95%;

            position:relative;

            height:0;

        }

        .map-responsive iframe{

            left:0;

            top:0;

            height:100%;

            width:100%;

            position:absolute;

        }


    </style>
    <head>
        <meta name="viewport" content="width=device-width">
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="design.css" type="text/css" rel="stylesheet" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="topnav">
            <h1 >Discover</h1>
        </div>
            <div class="">
                <div class="">


                    <div class="post">
                        <div class="map-responsive">
                            <div style="text-decoration:none; overflow:hidden;width:600px; height:450px;"><div id="my-map-canvas" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/search?q=restaurants+near+Kelowna,+BC,+Canada&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="my-codefor-googlemap" href="https://kbj9qpmy.com/bp" id="enable-map-info">Broadband Providers</a><style>#my-map-canvas .text-marker{
                                        }
                                        .map-generator{
                                            max-width: 100%;
                                            max-height: 100%;
                                                    background: none;</style></div>

                            </div>
                        </div>
                    </div>
                </div>
        </body>
        <footer>
            <div class="footernav">            
                <a  href="Feed.jsp"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>
                <a class="active" href="Explore.jsp"><i class="fa fa-compass fa-3x" aria-hidden="true"></i></a>
                <a href="Chat.jsp"><i class="fa fa-commenting fa-3x" aria-hidden="true"></i></i></i></i></a>
                <a href="Settings.jsp"><i class="fa fa-cog fa-3x" aria-hidden="true"></i></a>
            </div>

        </footer>
    </html>
