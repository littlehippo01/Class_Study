# Ex : B 가 짜둔 서버 프로그램
# main 이 아니기 때문에 최 하단에 __main__ 함수가 들어가지 않는다.
from fastapi import APIRouter

router = APIRouter()


@router.get("/")
async def read_items():
    return {"message" : "Read all products"}

@router.get("/{item_id}")
async def read_item(item_id : int):
    return {"product_id" : item_id}
