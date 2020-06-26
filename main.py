from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route('/echo', methods=['POST'])
def echo():
	body = request.get_json()
	return jsonify(body), 200


@app.route('/', methods=['GET'])
def get():
	return 'Hellow fork', 200