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
            width: 80%;
            height: auto;
            background: #fff;
            border: 1px solid #dfdfdf;
            margin-top: 10%;
            margin-bottom: 30%;

        }

        .info{
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            margin-top: 5%;
        }

        .info .username{
            width: auto;
            font-weight: bold;
            font-family: rantera;
            color: #000;
            font-size: 25px;

        }

        .info .options{
            height: 10px;
            cursor: pointer;
        }

        .info .user{
            display: flex;
            align-items: center;
        }

        .info .profile-pic{
            height: 40px;
            width: 40px;
            padding: 0;
            background: none;
        }

        .info .profile-pic img{
            border: none;
        }

        .post-image{
            width: 100%;
            height: 500px;
            object-fit: cover;
        }

        .post-content{
            width: 100%;
            padding: 20px;
        }

        .likes{
            font-weight: bold;
        }

        .description{
            margin: 10px 0;
            font-size: 14px;
            line-height: 20px;
        }

        .description span{
            font-weight: bold;
            margin-right: 10px;
        }

        .post-time{
            color: rgba(0, 0, 0, 0.5);
            font-size: 12px;
        }

        .comment-wrapper{
            width: 100%;
            height: 50px;
            border-radius: 1px solid #dfdfdf;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .comment-wrapper .icon{
            height: 30px;
        }

        .comment-box{
            width: 80%;
            height: 100%;
            border: none;
            outline: none;
            font-size: 14px;
        }

        .comment-btn,
        .action-btn{
            width: 70px;
            height: 100%;
            background: none;
            border: none;
            outline: none;
            text-transform: capitalize;
            font-size: 16px;
            color: rgb(0, 162, 255);
            opacity: 0.5;
        }

        .reaction-wrapper{
            width: 100%;
            height: 50px;
            display: flex;
            margin-top: -20px;
            align-items: center;
        }

        .reaction-wrapper .icon{
            height: 25px;
            margin: 0;
            margin-right: 20px;
        }

        .reaction-wrapper .icon.save{
            margin-left: auto;
        }

    </style>
    <head>
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
            <h1 >WingMan</h1>
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
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="crop">
                                    <img src="test1.jpg" alt="Los Angeles" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="carousel-caption">
                                        <h3></h3>
                                        <p>saksham madhar chode insert caption yar</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="crop">
                                    <img src="test2.jpg" alt="Chicago" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="carousel-caption">
                                        <h3>Prompt Question</h3>
                                        <p>i love milk</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="crop">
                                    <img src="test3.jpg" alt="New York" class="d-block w-100 aspectratio">
                                    </div>
                                    <div class="carousel-caption">
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
                            <div class="reaction-wrapper">
                                <i class="fa fa-heart" aria-hidden="true"></i>
                                <i class="fa fa-comments" aria-hidden="true"></i>
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                            <p class="description">insert bio sexy beast</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>



    </body>
    <footer>
        <div class="footernav">            
            <a class="active" href="#home"><i class="fa fa-users" aria-hidden="true"></i></a>
            <a href="#news"><i class="fa fa-compass" aria-hidden="true"></i></a>
            <a href="#contact"><i class="fa fa-commenting" aria-hidden="true"></i></i></i></i></a>
            <a href="#about"><i class="fa fa-cog" aria-hidden="true"></i></a>
        </div>
    </footer>
</html>
