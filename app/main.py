from flask import Flask

app = Flask(__name__)


def add(a: int, b: int) -> int:
    return a + b


@app.get("/health")
def health():
    return {"status": "ok"}
