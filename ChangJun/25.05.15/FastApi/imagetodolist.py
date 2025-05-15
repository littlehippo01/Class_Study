"""
author      : ChangJun Lee
description : Database imagetodolist table 을 image_todo_list앱과 연결 
date        : 2025.05.15
version     : 1
"""

from fastapi import FastAPI
from pydantic import BaseModel # Post 를 이용하기 위한 import
import pymysql

app = FastAPI()

class Imagetodolist(BaseModel):
    contents : str
    image : str
    insertdate : str

class ImagetodolistSeq(BaseModel):
    seq : int

def connect():
    conn = pymysql.connect(
        host="127.0.0.1",
        user='root',
        password="qwer1234",
        db="python",
        charset="utf8"
    )
    return conn

@app.get("/select")
async def select():
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    sql = "select * from imagetodolist"
    curs.execute(sql)  # workspace 에서 cmd + enter 치는 것과 같다.
    rows = curs.fetchall()
    conn.close()
    # return rows

    # 결과 값을 Dictionary 로 변환 (Front 에서 편하게 받기 위해서!)
    result = [{'seq' : row[0], 'contents' : row[1], 'image' : row[2], 'insertdate' : row[3]} for row in rows]
    return {'results' : result}

@app.post("/insert")
async def insert( todolist : Imagetodolist) :
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try :
        sql = "insert into imagetodolist(contents, image, insertdate) values (%s,%s,%s)"
        curs.execute(sql, (todolist.contents, todolist.image, todolist.insertdate))
        conn.commit()
        conn.close()
        return {'result':'OK'}
    except Exception as ex:
        conn.close
        print("Error :", ex)
        return{"result" : 'Error'}


@app.post("/delete")
async def update(imagetodolistSeq : ImagetodolistSeq) :
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try :
        sql = "delete from imagetodolist where seq = %s"
        curs.execute(sql, (imagetodolistSeq.seq))
        conn.commit()
        conn.close()
        return {'result':'OK'}
    except Exception as ex:
        conn.close
        print("Error :", ex)
        return{"result" : 'Error'}

if __name__ == "__main__" :
    import uvicorn
    uvicorn.run(app, host="127.0.0.1",port=8000)