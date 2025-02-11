from fastapi import FastAPI, Query

app = FastAPI(title="App Title", description="this is App Description", version="1.0.0")


@app.get('/')
def root():
    return {'message': 'Hello World'}


@app.get('/hello/')
def hello(content: str = Query(default=None, description='内容')):
    if content is None:
        content = '缺少参数 content'
    return {'message': content}
