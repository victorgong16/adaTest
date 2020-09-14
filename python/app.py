from flask import Flask, request, jsonify
import sqlite3
import json
import re # regular expressions
from pprint import pprint


app = Flask(__name__)
DBPATH = "../database.db"

@app.route("/messages", methods=["GET"])
def messages_route():
    """
    Return all the messages
    """

    with sqlite3.connect(DBPATH) as conn:
        messages_res = conn.execute("select body from messages")
        messages = [m[0] for m in messages_res]
        res = []
        for message in messages:
            m = message
            for variable in re.findall("\{(.*?)\}", message):
                key = variable.split("|")[0]
                fallback = variable.split("|")[1]
                var = conn.execute("select value from state where id = ?;", [key],)
                value = [v[0] for v in var]
                value = value[0] if value else fallback
                m = re.sub("\{(.*?)\}", value, m, count=1)
            res.append(m)
        return jsonify(list(res)), 200


@app.route("/search", methods=["POST"])
def search_route():
    """
    Search for answers!

    Accepts a 'query' as JSON post, returns the full answer.

    curl -d '{"query":"Star Trek"}' -H "Content-Type: application/json" -X POST http://localhost:5000/search
    """   

    with sqlite3.connect(DBPATH) as conn:
        query = request.get_json().get("query")
        if not query:
            return "Invalid input", 400
        res = []
        query = query.lower().split()
        content_res = conn.execute("select content, title, answer_id from answers inner join blocks on answers.id = blocks.answer_id")
        for content in content_res:
            contentJson = json.loads(content[0])
            contentString = content[1].lower()
            for item in contentJson:
                contentString += nestedJsonTraversal(item, "")
            contentString = contentString.lower()
            if all(queryWord in contentString for queryWord in query):
                res.append({"id": content[2], "title": content[1], "content": json.loads(content[0])})
        return jsonify(list(res)), 200
    
def nestedJsonTraversal(jsonItem, res):
    '''
    Recursively traverse json objects to grab all content
    '''
    
    for key, value in jsonItem.items():
        if isinstance(value, list):
            for d in value:
                res += nestedJsonTraversal(d, res)
        else:
            if key != "type":
                res += " " + str(value)
    return res

if __name__ == "__main__":
    app.run(debug=True)
