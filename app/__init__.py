from flask import Flask
from flask_sqlalchemy import SQLAlchemy

# Initialize the db object globally
db = SQLAlchemy()

def create_app():
    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://user:password@postgres:5432/mydb'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    # Initialize the app with the db
    db.init_app(app)

    # Import routes
    from . import routes
    app.register_blueprint(routes.bp)

    return app

