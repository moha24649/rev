from flask import Flask
from flask import request
from flask import render_template
sample = Flask(__name__)
@sample.route("/")
def main():
# return render_template("index.html",error=error)
 return ("u call me from :"+request.remote_addr + "\n")
if __name__ == "__main__":
 sample.run(host="0.0.0.0", port=8080)


