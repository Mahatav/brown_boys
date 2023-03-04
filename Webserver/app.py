from flask import Flask, render_template, redirect, url_for, request
import processData

app = Flask(__name__)

@app.route("/")
def main():
    return render_template("login.html")

@app.route("/signUp", methods=["POST", "GET"])
def signUp():
    if request.method == "POST":
        user_data = dict()
        for key, val in request.form.items():
            user_data[key] =  val
        processData.writeDataToFile(user_data)
        return render_template("login.html")
    else:
        return render_template("signUp.html")
    
@app.route("/login", methods=["POST", "GET"])
def login():
    return "hello"

if __name__ == "__main__":
    app.run()