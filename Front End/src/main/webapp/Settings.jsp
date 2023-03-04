<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width">
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="design.css" type="text/css" rel="stylesheet" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <meta charset="UTF-8">
        <title>App Settings</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            
            h2 {
                margin-top: 6%;
            }

            .post{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 90%;
                height: auto;
                background: #fff;
                border: 1% solid #dfdfdf;
                margin-top: 0%;
                margin-bottom: 30%;

            }

            form {
                display: flex;
                flex-direction: column;
                width: 90%;
                padding: 10%;
                border-radius: 10%;
            }



            label {
                font-size: 120%;
                display: flex;
                align-items: center;
                margin: 3%;
            }

            input[type="radio"], input[type="checkbox"] {
                margin-right: 10px;
            }

            select {
                margin-left: 10px;
            }

            button[type="submit"], button[type="button"] {
                margin-top: 20px;
                padding: 10px;
                border-radius: 5px;
                border: none;
                background-color: #F19607;
                color: white;
                font-size: 200%;
                cursor: pointer;
            }

            button[type="submit"]:hover, button[type="button"]:hover {
                background-color: #0062cc;
            }

            .chat-button {
                margin-top: 20px;
                padding: 10px;
                border-radius: 5px;
                border: none;
                background-color: #4CAF50;
                color: white;
                font-size: 16px;
                cursor: pointer;
            }

            .chat-button:hover {
                background-color: #3e8e41;
            }
        </style>


    <div class="topnav">
        <h1>App Settings</h1>
    </div>
</head>
<body>
    <section class="main">
        <div class="wrapper">
            <div class="left-col">
                <div class="post">

                    <form>
                        <h2 class="subheading">Appearance</h2>
                        <label>
                            <input type="radio" name="appearance" value="light" checked> Light mode
                        </label>
                        <label>
                            <input type="radio" name="appearance" value="dark"> Dark mode
                        </label>
                        <p></p>

                        <h2 class="subheading">Language and Location</h2>
                        <p>Language</p>
                        <label>
                            <select name="language">
                                <option value="en">English</option>
                                <option value="fr">Français</option>
                                <option value="es">Español</option>
                            </select>
                        </label>

                        <p></p>
                        <p>Location</p>
                        <label>
                            <p></p>
                            <select name="location">
                                <option value="us">United States</option>
                                <option value="ca">Canada</option>
                                <option value="mx">Mexico</option>
                            </select>
                            
                        </label>

                        <p></p>
                        <h2 class="subheading">Accessibility</h2>
                        <label>
                            <input type="checkbox" name="accessibility" value="large-font"> Large font
                        </label>
                        <label>
                            <input type="checkbox" name="accessibility" value="color-blind-mode"> Color-blind mode
                        </label>
                        <label
                            <input type="checkbox" name="accessibility" value="Chat with us"> Send Feedback
                        </label>

                        <p></p>
                        <h2 class="subheading">Account Settings</h2>
                        <button type="button">Delete
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

<footer>
    <div class="footernav">            
        <a  href="Feed.jsp"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>
        <a href="Explore.jsp"><i class="fa fa-compass fa-3x" aria-hidden="true"></i></a>
        <a href="#contact"><i class="fa fa-commenting fa-3x" aria-hidden="true"></i></i></i></i></a>
        <a class="active" href="Settings.jsp"><i class="fa fa-cog fa-3x" aria-hidden="true"></i></a>
    </div>

</footer>
</html>