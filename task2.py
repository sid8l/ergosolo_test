import sqlalchemy
from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, MetaData, ForeignKey
from sqlalchemy import inspect


metadata = MetaData()
users = Table(
    "users", metadata, Column("id", Integer, primary_key=True), Column("name", String)
)

courses = Table(
    "coursers",
    metadata,
    Column("id", Integer, primary_key=True),
    Column("name", String),
)

saves = Table(
    "saves",
    metadata,
    Column("id", Integer, primary_key=True),
    Column("user_id", None, ForeignKey("users.id")),
    Column("course_id", None, ForeignKey("courses.id")),
    Column("lesson_no", Integer),
    Column("exercise_no", Integer),
    Column("data", String),
)

engine = create_engine("sqlite:///:memory:")
metadata.create_all(engine)
