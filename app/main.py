from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configure database (update with your actual database URI)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://username:password@postgres:5432/database_name'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

# Create database tables before running the app
with app.app_context():
    db.create_all()

@app.route('/')
def home():
    return "Hello, Flask is running!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

