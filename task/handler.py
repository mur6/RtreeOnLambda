from rtree import Rtree

def get(event, context):
    tree = Rtree()
    response = {
        "statusCode": 200, "body": "aaa"
    }
    return response
