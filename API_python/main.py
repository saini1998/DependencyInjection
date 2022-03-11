
from flask import *

import json, time

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def homePage() :
    data_set = [
        {
            "id": 1,
            "index": "a"
        },
        {
            "id": 2,
            "index": "b"
        },
        {
            "id": 3,
            "index": "c"
        },
        {
            "id": 4,
            "index": "d"
        },
        {
            "id": 5,
            "index": "e"
        },
        {
            "id": 6,
            "index": "f"
        },
        {
            "id": 7,
            "index": "g"
        },
        {
            "id": 8,
            "index": "h"
        }
    ]

    json_dump = json.dumps(data_set)
    return json_dump


if __name__ == '__main__':

    app.run(port=6969)