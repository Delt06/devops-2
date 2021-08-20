from datetime import datetime, timezone

import pytz
from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    moscow_timezone = pytz.timezone('Europe/Moscow')
    return str(datetime.now(moscow_timezone))
