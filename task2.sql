CREATE TABLE
IF NOT EXISTS users
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE
IF NOT EXISTS courses
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE
IF NOT EXISTS saves
(
    id INTEGER PRIMARY KEY,
    lesson_no INTEGER NOT NULL,
    exercise_no INTEGER NOT NULL,
    data TEXT,
    user_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO users (name)
VALUES
    ("Gena"),
    ("Anna"),
    ("Yana"),
    ("Sergei");

INSERT INTO courses (name)
VALUES
    ("math"),
    ("english"),
    ("biology"),
    ("physics");

INSERT INTO saves (user_id, course_id, lesson_no, exercise_no)
VALUES
    ("1", "1", "1", "1"),
    ("1", "1", "1", "2"),
    ("1", "1", "1", "3"),
    ("1", "1", "1", "4"),
    ("1", "1", "2", "1"),
    ("1", "1", "2", "2"),
    ("1", "1", "2", "3"),
    ("1", "1", "2", "4"),
    ("1", "1", "2", "4"),
    ("2", "2", "2", "1"),
    ("2", "2", "2", "2"),
    ("2", "2", "2", "3"),
    ("2", "2", "2", "4"),
    ("3", "3", "3", "1"),
    ("3", "3", "3", "1"),
    ("3", "3", "3", "1"),
    ("3", "3", "3", "1");