
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    name = os.getenv('NAME', 'World')  # Read the name from the environment variable, default to 'World'
    return f'Hello, {name}!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
