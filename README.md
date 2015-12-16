# GIO DB

run using the following:
* docker run --name gio-db -p 5432:5432 -d crhenry/gio-db

build using the following
* docker build -t gio-db .


# Releases
0.0.3
- the database will be created but no tables or schema
-- this will be the responsibility of the running application.
0.0.2
- initialize docker postgres instance
- initialize the database tables
