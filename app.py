from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///inventario.db'
db = SQLAlchemy(app)

@app.route('/')
def index():
    return 'Sistema de inventario'

if __name__ == '__main__':
    app.run(debug=True)



