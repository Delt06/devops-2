from time_utils import get_time_now, format_time
from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    time_now = get_time_now()
    return format_time(time_now)
