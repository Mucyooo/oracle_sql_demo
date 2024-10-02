# Oracle SQL Tests

This repository contains SQL test scripts for managing a student-project-teacher system using Oracle database queries.

## Problem Statement

The goal of this system is to manage and track the relationship between students, teachers, and projects in a university environment. 

- **Students** are enrolled in various departments and work on multiple projects.
- **Teachers** are responsible for managing projects and belong to different departments.
- **Projects** are assigned to students and managed by teachers, with each project tied to a specific teacher.

The system needs to store, update, and retrieve information about students, teachers, and the projects they are working on. Additionally, the system should be able to handle many-to-many relationships between students and projects, and one-to-many relationships between teachers and projects. This allows us to efficiently track which students are working on which projects, and which teacher is overseeing the project.

The main entities in this system are:
- **Teachers**: Manage multiple projects and belong to specific departments.
- **Students**: Work on various projects and are assigned to specific departments.
- **Projects**: Each project is managed by a single teacher but may have multiple students working on it.

This repository includes SQL scripts that define the tables, relationships, and queries to manage this system in an Oracle database.

## Files

- **ORACLE_ASSIGNMENT_I.sql**: Contains SQL commands for creating, updating, and querying tables in an Oracle database, such as creating the `TEACHER`, `STUDENT`, `PROJECT`, and `STUDENT_PROJECT` tables, managing the many-to-many relationship between students and projects, and inserting data.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/oracle_sql_demo.git
