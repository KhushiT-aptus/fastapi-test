from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root():
    return {"message": "Hello from Fastapi test!"}

@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    print("test5")
    return {"item_id": item_id, "q": q}
