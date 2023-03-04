<%-- 
    Document   : Feed
    Created on : Mar 2, 2023, 4:21:37 p.m.
    Author     : anuka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>

        @font-face {
            font-family: TheBoldFont;
            src: url('THEBOLDFONT.TTF');
        }
        /* Add a black background color to the top navigation */



        .post{
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 90%;
            height: auto;
            background: #fff;
            border: 1% solid #dfdfdf;
            margin-top: 10%;
            margin-bottom: 30%;

        }

        .info{
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 5%;
            margin-top: 2%;
        }

        .info .username{
            width: auto;
            font-weight: bold;
            font-family: rantera;
            color: #000;
            font-size: 250%;
            word-wrap: break-word;

        }




        .description{
            margin: 5% 5% 5% 5%;
            padding: 5% 5% 5% 5%;
            font-size: 150%;
            color: black;
            word-wrap: break-word;
            background: #DBD2C3;
            border-radius: 10%;
            font-family: geoSans;

            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .description span{
            font-weight: bold;
            margin-right: 5%;
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="topnav">
            <h1 >WingBot</h1>
        </div>



        <section class="main">
            <div class="wrapper">
                <div class="left-col">


                    <div class="post">
                        <div class="info">
                            <div class="user">                           
                                <p class="username">Saksham Joshi</p>
                            </div>                            
                        </div>
                        <!<!-- attempt carousel -->






                        <!-- Carousel -->
                        <div id="demo" class="carousel slide" data-bs-ride="carousel">

                            <!-- Indicators/dots -->
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                            </div>

                            <!-- The slideshow/carousel -->
                            <div class="carousel-inner" style="
                                 border-radius: 5%;">
                                <div class="carousel-item active">
                                    <div class="crop">
                                        <img src="test1.jpg" alt="Los Angeles" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="captions carousel-caption">
                                        <h3></h3>
                                        <p>saksham madhar chode insert caption yar</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="crop">
                                        <img src="test2.jpg" alt="Chicago" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="captions carousel-caption">
                                        <h3>Prompt Question</h3>
                                        <p>i love milk</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="crop">
                                        <img src="test3.jpg" alt="New York" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="captions carousel-caption">
                                        <h3>prompt question 2</h3>
                                        <p></p>
                                    </div>
                                </div>
                            </div>

                            <!-- Left and right controls/icons -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </button>
                        </div>





                        <div class="post-content">
                            <p class="description">insert bio sexy beast bdfbfhewofbewohfwihgowiehgoiwhgoewhghwieogwoiehgohweighwghoihoiewgowheghwegihweoighowheg</p>
                            <p></p>
                            <div class="reaction-wrapper">
                                <table style="align-content:  center">
                                    <tr style="align-content:  center">
                                        <th  style="align-content:  center" ><i class="fa fa-heart fa-4x" aria-hidden="true"></i><th>
                                        <th  style="float: right" ><i class="fa fa-times fa-4x" aria-hidden="true"></i>
                                    </tr>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>



    </body>
    <footer>
        <div class="footernav">            
            <a class="active" href="Feed.jsp"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>
            <a href="Explore.jsp"><i class="fa fa-compass fa-3x" aria-hidden="true"></i></a>
            <a href="Chat.jsp"><i class="fa fa-commenting fa-3x" aria-hidden="true"></i></i></i></i></a>
            <a href="Settings.jsp"><i class="fa fa-cog fa-3x" aria-hidden="true"></i></a>
        </div>

    </footer>
</html>
