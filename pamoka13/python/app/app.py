from flask import Flask
import redis
import os

app = Flask(__name__)

redis_host = os.environ.get("REDIS_HOST", "redis")
redis_port = int(os.environ.get("REDIS_PORT", 6379))

r = redis.Redis(host=redis_host, port=redis_port)

@app.route("/")
def index():
    r.incr("counter")
    count = r.get("counter").decode()
    return f"Hello! Redis counter = {count}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
