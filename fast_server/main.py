from fastapi import FastAPI
from pydantic import BaseModel

app=FastAPI()

class Sushi(BaseModel):
    sushiImage: str
    sushiName : str
    sushiType: str
    sushiPrice : float
    sushiRating : float


sushiList=[
    {}
]
maki=[]
nigiri=[]
gunkan=[]
temaki=[]

@app.get("/get_all")
def root():
    return "hello"