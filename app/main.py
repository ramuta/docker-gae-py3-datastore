from flask import Flask
from google.cloud import datastore


app = Flask(__name__)


@app.route("/")
def index():
    return "App Engine with Python 3 "


@app.route("/message")
def message():
    # auth
    db = datastore.Client()

    # add object to db
    entity = datastore.Entity(key=db.key("Message"))
    message = {"message": "hello world"}
    entity.update(message)
    db.put(entity)

    # query from db
    obj = db.get(key=db.key("Message", entity.id))

    return "Message for you: {}".format(obj["message"])
