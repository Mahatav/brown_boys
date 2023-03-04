<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width">
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="design.css" type="text/css" rel="stylesheet" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="static/signUpstyles.css">


        <style>
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
                font-family: geoSans;
                font-size: 110%;
                margin: 2%;
            }

            input {
                margin: 2%;
            }

            input[type="submit"] {
                background-color: #F19607;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease-in-out;
            }
        </style>



        <title>Wing Man</title>
    </head>
    <body>
        <div class="topnav">
            <h1 >WingBot</h1>
        </div>
        <section class="main">
            <div class="wrapper">
                <div class="left-col">
                    <div class="post">
                        <form id="sign-up-form" method="post">
                            <h2 class="subheading">Personal Info</h2>
                            <div id="basic-info">
                                <label for="first-name">First Name </label>
                                <input id="first-name" name = "first-name" type="text" placeholder="John" required>
                                <br>
                                <label for="last-name">Last Name </label>
                                <input id="last-name" name = "last-name" type="text" placeholder="Doe" required>
                                <br>
                                <label for="dob">Date of Birth</label>
                                <input id="dob" name = "dob" type="date" max="2005-03-02" required>
                                <br>
                                <label for="username">Username </label>
                                <input id="username" name = "username" type="text" placeholder="abc123" required>
                                <br>
                                <label id='pfp-label' for="file" style="cursor: pointer;">Profile Image</label>
                                <input id='pfp' type="file" accept="image/*" name="image" required>
                                <img id="display-image">
                                <br>
                                <label for="email">Email </label>
                                <input id="email" name = "email" type="email" required>
                                <br>
                                <label for="password">Password </label>
                                <input id="password" name = "password" type="password" required>
                                <br>
                                <label for="confirm-pw">Confirm Password </label>
                                <input id="confirm-pw" name="confirm-pw", type="password" required>
                            </div>
                            <br>
                            <h2 class="subheading">Preferences</h2>
                            <div id="preferences">
                                <legend>Link to your favourite Spotify playlist! </legend>
                                <label for="spotify-id">Make sure the playlist is public.</label>
                                <input type="text" name="spotify-id" id="spotify-id" placeholder="Enter link here." required>

                                <fieldset>
                                    <legend>Are you a very outgoing person?</legend>
                                    <div>
                                        <label for="q1op1">Strongly Disagree</label>
                                        <input id="q1op1" class="rad-options" name="q1" type="radio" value="Strongly Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q1op2">Disagree</label>
                                        <input id="q1op2" class="rad-options" name="q1" type="radio" value="Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q1op3">Neutral</label>
                                        <input id="q1op3" class="rad-options" name="q1" type="radio" value="Neutral" required>
                                    </div>
                                    <div>
                                        <label for="q1op4">Agree</label>
                                        <input id="q1op4" class="rad-options" name="q1" type="radio" value="Agree" required>
                                    </div>
                                    <div>
                                        <label for="q1op5">Strongly Agree</label>
                                        <input id="q1op5" class="rad-options" name="q1" type="radio" value="Strongly Agree" required>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Do you like to spend a lot of quality time together?</legend>
                                    <div>
                                        <label for="q2op1">Strongly Disagree</label>
                                        <input id="q2op1" class="rad-options" name="q2" type="radio" value="Strongly Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q2op2">Disagree</label>
                                        <input id="q2op2" class="rad-options" name="q2" type="radio" value="Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q2op3">Neutral</label>
                                        <input id="q2op3" class="rad-options" name="q2" type="radio" value="Neutral" required>
                                    </div>
                                    <div>
                                        <label for="q2op4">Agree</label>
                                        <input id="q2op4" class="rad-options" name="q2" type="radio" value="Agree" required>
                                    </div>
                                    <div>
                                        <label for="q2op5">Strongly Agree</label>
                                        <input id="q2op5" class="rad-options" name="q2" type="radio" value="Strongly Agree" required>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Do you like to frequently go on dates?</legend>
                                    <div>
                                        <label for="q3op1">Strongly Disagree</label>
                                        <input id="q3op1" class="rad-options" name="q3" type="radio" value="Strongly Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q3op2">Disagree</label>
                                        <input id="q3op2" class="rad-options" name="q3" type="radio" value="Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q3op3">Neutral</label>
                                        <input id="q3op3" class="rad-options" name="q3" type="radio" value="Neutral" required>
                                    </div>
                                    <div>
                                        <label for="q3op4">Agree</label>
                                        <input id="q3op4" class="rad-options" name="q3" type="radio" value="Agree" required>
                                    </div>
                                    <div>
                                        <label for="q3op5">Strongly Agree</label>
                                        <input id="q3op5" class="rad-options" name="q3" type="radio" value="Strongly Agree" required>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Are you a very relaxed person?</legend>
                                    <div>
                                        <label for="q4op1">Strongly Disagree</label>
                                        <input id="q4op1" class="rad-options" name="q4" type="radio" value="Strongly Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q4op2">Disagree</label>
                                        <input id="q4op2" class="rad-options" name="q4" type="radio" value="Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q4op3">Neutral</label>
                                        <input id="q4op3" class="rad-options" name="q4" type="radio" value="Neutral" required>
                                    </div>
                                    <div>
                                        <label for="q4op4">Agree</label>
                                        <input id="q4op4" class="rad-options" name="q4" type="radio" value="Agree" required>
                                    </div>
                                    <div>
                                        <label for="q4op5">Strongly Agree</label>
                                        <input id="q4op5" class="rad-options" name="q4" type="radio" value="Strongly Agree" required>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Do you prefer the outdoors?</legend>
                                    <div>
                                        <label for="q5op1">Strongly Disagree</label>
                                        <input id="q5op1" class="rad-options" name="q5" type="radio" value="Strongly Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q5op2">Disagree</label>
                                        <input id="q5op2" class="rad-options" name="q5" type="radio" value="Disagree" required>
                                    </div>
                                    <div>
                                        <label for="q5op2">Neutral</label>
                                        <input id="q5op3" class="rad-options" name="q5" type="radio" value="Neutral" required>
                                    </div>
                                    <div>
                                        <label for="q5op2">Agree</label>
                                        <input id="q5op4" class="rad-options" name="q5" type="radio" value="Agree" required>
                                    </div>
                                    <div>
                                        <label for="q5op2">Strongly Agree</label>
                                        <input id="q5op5" class="rad-options" name="q5" type="radio" value="Strongly Agree" required>
                                    </div>
                                </fieldset>
                            </div>
                            <input id="submit-btn" type="submit" value="Complete!">
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>