# Celestial Bodies - freeCodeCamp Project

This project consisted in creating a Postgre database using a terminal and following some rules:<br />
<br />

- create a database named universe <br />

- add tables named **_galaxy_**, **_star_**, **_planet_**, and **_moon_** <br />

- add a _primary key_ automatically incremented to each table <br />

- add a **_name_** column <br />

- use the _INT_ data type for at least two columns that are not a _primary key_ or _foreign key_ <br />

- use the _NUMERIC_ and _TEXT_ data types at least once each <br />

- use the _BOOLEAN_ data type on at least two columns <br />

- each **_star_** should have a _foreign key_ that references one of the rows in **_galaxy_** <br />

- each **_planet_** should have a _foreign key_ that references one of the rows in **_star_** <br />

- each **_moon_** should have a _foreign key_ that references one of the rows in **_planet_** <br />

- the database should have at least five tables <br />

- each table should have at least three rows <br />

- the **_galaxy_** and **_star_** tables should each have at least six rows <br />

- **_planet_** should have at least 12 rows <br />

- **_moon_** table should have at least 20 rows <br />

- each table should have at least three columns <br />

- **_galaxy_**, **_star_**, **_planet_** and **_moon_** should each have at least five columns <br />

- at least two columns per table should not accept _NULL_ values <br />

- at least one column from each table should be required to be _UNIQUE_ <br />

- all columns named name should be of type _VARCHAR_ <br />

- each _primary key_ column should follow the naming convention table_name_id <br />

- each _foreign key_ column should have the same name as the column it is referencing <br />
