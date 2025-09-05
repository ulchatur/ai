from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello from Flask behind Nginx!'

@app.route('/health')
def health():
    return 'OK', 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

# This is testing purpose of github to ADB clsuter changes 
