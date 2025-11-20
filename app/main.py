from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, CI/CD Demo!"

if __name__ == "__main__":
    # Bind to 0.0.0.0 so Kubernetes can access it
    app.run(host="0.0.0.0", port=5000)
