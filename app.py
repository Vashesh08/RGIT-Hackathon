from flask import Flask, render_template, request, url_for
user_type = ""

app = Flask(__name__)

@app.route("/")
def home():
    return render_template('index.html')


@app.route("/login", methods=['POST', 'GET'])
def login():
    user_type = request.form.get('usertype')
    return render_template('login.html')

@app.route("/user", methods=['POST', 'GET'])
def user():
    user_type = "user"
    return render_template('user.html')


@app.route("/admin", methods=['POST', 'GET'])
def admin():
    user_type = "admin"
    return render_template('admin.html')


if __name__ == '__main__':
    app.run(debug=True)