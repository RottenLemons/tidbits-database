CREATE TABLE "User Details" (
  UID SERIAL PRIMARY KEY,
  "user" VARCHAR,
  fn VARCHAR,
  ln VARCHAR,
  "sLevel" INT,
  country VARCHAR,
  school VARCHAR,
  "gLevel" INT,
  "gPoints" INT,
  profile VARCHAR,
  role VARCHAR
);

CREATE TABLE "Notes Details" (
  OID SERIAL PRIMARY KEY,
  "NotesNames" VARCHAR,
  "NotesDescription" VARCHAR,
  "NotesOwner" INT REFERENCES "User Details"(UID),
  "NotesFileName" VARCHAR,
  "NoteLevel" VARCHAR,
  "DateOfUpload" DATE
);

CREATE TABLE "Items Details" (
  IID SERIAL PRIMARY KEY,
  "ItemName" VARCHAR,
  "ItemDescription" VARCHAR,
  "ItemPrice" INT,
  "ItemFunction" VARCHAR
);
