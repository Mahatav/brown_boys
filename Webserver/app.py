from flask import Flask, render_template, redirect, url_for, request
import processData

app = Flask(__name__)

@app.route("/")
def main():
    return render_template("base.html")

@app.route("/signUp", methods=["POST", "GET"])
def signUp():
    if request.method == "POST":
        user_data = dict()
        for key, val in request.form.items():
            user_data[key] =  val
        processData.writeSignUpDataToFile(user_data)
        return render_template("login.html")
    else:
        return render_template("signUp.html")
    
@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        if processData.processLogin(username, password):
            app.logger.info("logging on")
            result = request.form
            return render_template("index.html", result=result)
        else:
            return render_template("login.html")
    else:
        return render_template("login.html")


if __name__ == "__main__":
    app.run()