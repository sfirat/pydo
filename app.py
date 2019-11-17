from flask import Flask, jsonify, json

app = Flask(__name__)

@app.route('/jsondata')
def index():    
    with open('data/data.json', 'r') as json_file:
        data = json.load(json_file)
        return jsonify(data)

app.run(host='0.0.0.0', port=8000)