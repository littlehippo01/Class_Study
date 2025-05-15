# async 방식!
# 함수를 만들 때 앞에 async 를 선언 해주면 된다.

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root():
    return {"Message" : "Hello,world!"}

@app.get("/items/{item_id}")
async def read_item(item_id : int, query_param: str = None):
    return {"item_id" : item_id, "query_param" : query_param}



if __name__ == "__main__" :
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port = 8000)