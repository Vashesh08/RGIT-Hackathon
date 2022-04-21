from flask import Flask, redirect, render_template, request, url_for, flash


app = Flask(__name__)
app.config['SECRET_KEY'] = '392b6ac18ee75ca52d1d420a'

@app.route("/", methods=['POST','GET'])
def home():
    global user_type
    if request.method == 'POST':
        user_type = request.form.getlist('usertype')[0]
        return redirect('/login')
    return render_template('index.html')


@app.route("/login", methods=['POST', 'GET'])
def login():
    return render_template('login.html')


@app.route("/useroradmin", methods=['POST','GET'])
def useroradmin():
    # print("hell", user_type)
    print(request.form.getlist)
    if user_type == 'admin':
        return redirect('/admin')
    else:
        return redirect('/user')
    

@app.route("/user", methods=['GET'])
def user():
    return render_template('user.html')


@app.route("/admin", methods=['GET'])
def admin():
    return render_template('admin.html')

@app.route("/previous_issue")
def previous_issue():
    return render_template('')

@app.route("/new_issue")
def new_issue():
    return render_template('')

@app.errorhandler(404)
def page_not_found(error):
    flash("This Page does not exist")
    return render_template('index.html'), 404

@app.errorhandler(500)
def internal_server(error):
    flash("Internal Server Error")
    return render_template('index.html'), 500


if __name__ == '__main__':
    app.run(debug=True)