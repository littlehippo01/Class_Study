"""
author      : ChangJun Lee
description : Database student table 을 앱과 연결 
date        : 2025.05.15
version     : 1
"""

from fastapi import FastAPI
from pydantic import BaseModel # Post 를 이용하기 위한 import
import pymysql

app = FastAPI()

# Post 방식을 사용한 data 이동
class Student(BaseModel):
    code : str
    name : str
    dept : str
    phone : str
    address : str

class StudentCode(BaseModel):
    code : str

def connect():
    conn = pymysql.connect(
        host="127.0.0.1",
        user='root',
        password="qwer1234",
        db="education",
        charset="utf8"
    )
    return conn

@app.get("/select")
async def select():
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    sql = "select * from student"
    curs.execute(sql)  # workspace 에서 cmd + enter 치는 것과 같다.
    rows = curs.fetchall()
    conn.close()
    # return rows

    # 결과 값을 Dictionary 로 변환 (Front 에서 편하게 받기 위해서!)
    result = [{'code' : row[0], 'name' : row[1], 'dept' : row[2], 'phone' : row[3], 'address' : "" if row[4] == None else row[4]} for row in rows]
    return {'results' : result}

@app.get("/selectStudent")
async def select(code):
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    sql = "select * from student where scode = %s"
    curs.execute(sql, (code))  # workspace 에서 cmd + enter 치는 것과 같다.
    rows = curs.fetchall()
    conn.close()
    # return rows

    # 결과 값을 Dictionary 로 변환 (Front 에서 편하게 받기 위해서!)
    result = [{'code' : row[0], 'name' : row[1], 'dept' : row[2], 'phone' : row[3], 'address' : "" if row[4] == None else row[4]} for row in rows]
    return {'results' : result}

@app.post("/insert")
async def insert(student : Student) :
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try :
        sql = "insert into student(scode, sname, sdept, sphone, saddress) values (%s,%s,%s,%s,%s)"
        curs.execute(sql, (student.code, student.name, student.dept, student.phone, student.address))
        conn.commit()
        conn.close()
        return {'result':'OK'}
    except Exception as ex:
        conn.close
        print("Error :", ex)
        return{"result" : 'Error'}

@app.post("/update")
async def update(student : Student) :
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try :
        sql = "update student set sname=%s, sdept=%s, sphone=%s,saddress=%s where scode = %s"
        curs.execute(sql, (student.name, student.dept, student.phone, student.address,student.code))
        conn.commit()
        conn.close()
        return {'result':'OK'}
    except Exception as ex:
        conn.close
        print("Error :", ex)
        return{"result" : 'Error'}

@app.post("/delete")
async def delete(code):
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try:
        sql = "delete from student where scode=%s"
        curs.execute(sql,(code))
        conn.commit()
        conn.close()
        return{'result':'OK'}
    except Exception as ex:
        conn.close
        print("Erreor :", ex)
        return{"result" : 'Error'}

# 다른 방식의 삭제
@app.post("/deletepost")
async def update(studentCode : StudentCode) :
    # Connection
    conn = connect()
    curs = conn.cursor()

    # SQL 문장
    try :
        sql = "delete from student where scode = %s"
        curs.execute(sql, (studentCode.code))
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