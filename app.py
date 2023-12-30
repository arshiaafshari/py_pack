from flask import Flask
import numpy as np
import pandas as pd

app = Flask(__name__)


@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World! '+str(np.random.random())+'  v: '+str(pd.__version__)


if __name__ == '__main__':
    app.run()
