# Online Travel Reservation System

## Project Overview

This project implements a relational database system to support the operations of an online travel reservation system. The application integrates a MySQL database with a web-based user interface and connects to the database using Java and JDBC.

### Technologies Used:
- **Frontend**: HTML
- **Backend**: Java
- **Database**: MySQL
- **Server**: Tomcat
- **JDBC**: For connectivity between Java and MySQL

## Features

- User interface for making travel reservations
- Database management for storing and retrieving customer, flight, and booking information
- MySQL database to handle data persistence
- Java and JDBC for backend functionality and database connectivity

## Setup and Installation

Follow these steps to set up the system locally:

### 1. Install MySQL Server
- Download and install MySQL Server from the [official website](https://dev.mysql.com/downloads/).
- Start the MySQL server and create a database for this project.
  - Example SQL command to create a database:
    ```sql
    CREATE DATABASE travel_reservation;
    ```

### 2. Install Apache Tomcat Server
- Download and install [Apache Tomcat](https://tomcat.apache.org/download-90.cgi).
- Set up Tomcat on your local machine to host the web application.
