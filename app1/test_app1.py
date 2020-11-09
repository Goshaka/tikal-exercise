# test_hello.py
from app1 import app

def test_app1():
    response = app.test_client().get('/')

    assert response.status_code == 200
