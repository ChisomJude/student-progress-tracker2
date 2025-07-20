from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from app.database import student_collection
from app.models import Student
from uuid import uuid4
from typing import List  # Added this for Version 2.0

router = APIRouter()
templates = Jinja2Templates(directory="templates")

# CRUD functions

async def create_student(name: str):
    student_id = str(uuid4())
    student = Student(id=student_id, name=name)
    await student_collection.insert_one(student.dict())
    return student

async def get_student_progress(name: str):
    return await student_collection.find_one({"name": name})

async def update_student_progress(name: str, week: str, status: str):
    result = await student_collection.update_one(
        {"name": name},
        {"$set": {f"progress.week{week}": status}}
    )
    if result.modified_count == 0:
       return None
    return await student_collection.find_one({"name" : name})

async def count_students():
    return await student_collection.count_documents({})

async def get_all_students():
    students_cursor = student_collection.find({})
    students = []
    async for student in students_cursor:
        students.append(student)
    return students

# Route to serve admin.html

@router.get("/admin", response_class=HTMLResponse)
async def show_admin_page(request: Request):
    students = await get_all_students()
    return templates.TemplateResponse("admin.html", {"request": request, "students": students})
