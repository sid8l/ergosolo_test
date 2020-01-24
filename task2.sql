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
    data TEXT NOT NULL,
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

INSERT INTO saves()
