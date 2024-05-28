Project Overview
The Celestial Bodies Database project is designed to provide hands-on experience with PostgreSQL, one of the most widely used relational database management systems in the industry. This project focuses on designing, creating, and managing a database that models a universe consisting of various celestial entities such as galaxies, stars, planets, satellites, and moons. The goal is to gain familiarity with database operations, SQL queries, and data management, which are crucial skills for any data-related job role.

Objectives
Database Design: Understand and implement database schema design principles by creating tables that represent different celestial bodies.
Data Insertion: Populate the database with realistic data entries for galaxies, stars, planets, satellites, and moons.
SQL Proficiency: Develop proficiency in writing SQL queries to insert, update, delete, and retrieve data from the database.
Database Management: Learn how to manage and maintain a PostgreSQL database, including creating backups and restoring data.
Database Schema
The database consists of the following tables:

galaxy

galaxy_id (integer, primary key)
name (character varying(20), not null)
blackhole_in_center (boolean, not null)
in_cluster (character varying(20), not null)
age_billion (numeric(4,2), not null)
star

star_id (integer, primary key)
name (character varying(20), not null)
exoplanet (integer, not null)
galaxy_id (integer, not null, foreign key referencing galaxy)
description (text)
planet

planet_id (integer, primary key)
name (character varying(20), not null)
avg_temp (numeric(6,2), not null)
is_habitable (boolean, not null)
star_id (integer, not null, foreign key referencing star)
moon_id (integer, not null, foreign key referencing moon)
satellite_id (integer, not null, foreign key referencing satellite)
satellite

satellite_id (integer, primary key)
name (character varying(20), not null)
number_of_ppl (integer, not null)
year_active (integer, not null)
planet_id (integer, not null, foreign key referencing planet)
moon

moon_id (integer, primary key)
name (character varying(20), not null)
planet_id (integer, not null, foreign key referencing planet)
description (text, not null)
composition (text, not null)
