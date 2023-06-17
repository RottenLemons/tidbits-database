-- For testing that code actually works
INSERT INTO "User Details" ("user", fn, ln, "sLevel", country, school, "gLevel", "gPoints", profile, role)
VALUES ('user1', 'Lorem', 'Ipsum', 1, 'Country1', 'School1', 1, 100, 'profile1.jpg', 'role1'),
       ('user2', 'Lorem', 'Ipsum', 2, 'Country2', 'School2', 2, 200, 'profile2.jpg', 'role2'),
       ('user3', 'Lorem', 'Ipsum', 3, 'Country3', 'School3', 3, 300, 'profile3.jpg', 'role3');

INSERT INTO "Notes Details" ("NotesNames", "NotesDescription", "NotesOwner", "NotesFileName", "NoteLevel", "DateOfUpload")
VALUES ('Notes1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, 'notes1.txt', 'Level1', '2023-06-08'::DATE),
       ('Notes2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 2, 'notes2.txt', 'Level2', '2023-06-09'::DATE),
       ('Notes3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 3, 'notes3.txt', 'Level3', '2023-06-10'::DATE);

INSERT INTO "Items Details" ("ItemName", "ItemDescription", "ItemPrice", "ItemFunction")
VALUES ('Item1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 10, 'Function1'),
       ('Item2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 20, 'Function2'),
       ('Item3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 30, 'Function3');

CREATE TABLE "UserCredentials" (
  "UID" SERIAL PRIMARY KEY,
  "Username" VARCHAR UNIQUE NOT NULL,
  "PasswordHash" VARCHAR NOT NULL,
  "Salt" VARCHAR NOT NULL
);

CREATE EXTENSION IF NOT EXISTS pgcrypto;

