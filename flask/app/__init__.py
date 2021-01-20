from flask import Flask

app = Flask(__name__)

@app.route("/flask")
def index():
    return "Hi from main flask endpoint"
