from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def static_page():
    print("Welcome to webpage created by Niladri (MT19AIE272)")
    return render_template('details.html')

app.run('0.0.0.0', debug = True, port = '5000')