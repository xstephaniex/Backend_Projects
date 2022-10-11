# MySQL---Practice

> Practicing basic MySQL (open-source database) concepts, commands and syntax based on Fireship YouTube tutorial.
> This tutorial recreates the Airbnb application basic database structure :grinning:.

## Prerequisites

It requires MySQL (version 8 or later).
[MySQL](https://dev.mysql.com/downloads/) is really easy to install.
To make sure you have it available on your machine,
try running the following command: 

```sh
$ mysql -V
v8.0.30
```

## Table of contents

- [MySQL---Practice](#MySQL---Practice)
  - [Prerequisites](#prerequisites)
  - [Table of contents](#table-of-contents)
  - [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Resources and Acknowledgments](#Resources-&&-Acknowledgments)


## Getting Started

These instructions will get you a copy of the project in your local machine.

This project has a .sql file (the file is called airbnb.tutorial), and inside of it, there are MySQL basic concepts, commands, and syntax.

## Installation

**BEFORE YOU INSTALL:** please read the [prerequisites](#prerequisites)

Start with cloning this repo on your local machine:

```sh
$ git clone git@github.com:xstephaniex/Backend_Projects.git
$ cd mysql_fireshipio
```
## Usage

- Steps for running the .sql file from the terminal are:

    1. Connect to MySQL server as a *root* user: `mysql -uroot -p`
    2. Enter *root* user password
    3. `source /PathToThemysql_fireshipioFolder/airbnb.tutorial.sql` or  `\. /PathToThemysql_fireshipioFolder/airbnb.tutorial.sql`

For more ways, on how to run the .sql file refer to the Nathan Sebhastian guide in the Resource && Acknowledgments section.

## Resources && Acknowledgments

* **Fireship** - *MySQL - The Basics // Learn SQL in 23 Easy Steps* - [Fireship YouTube Tutorial](https://www.youtube.com/watch?v=Cz3WcZLRaWc&t=590s)

* **Fireship** - *Entity relationship diagram -- relational data modeling -- database schema* - [Fireship Diagram](https://drawsql.app/teams/fireship/diagrams/airbnb-mysql-tutorial)

* **Nathan Sebhastian** - *MySQL - How to run SQL file or script from the terminal* - [Natham Sebhastian Article](https://sebhastian.com/mysql-running-sql-file/)


