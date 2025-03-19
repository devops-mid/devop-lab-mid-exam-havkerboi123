from app import db

class User(db.Model):
    __tablename__ = 'users'  # Add this line to explicitly define the table name
    
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    phone = db.Column(db.String(15))  # Optional field
    city = db.Column(db.String(100), nullable=False)
