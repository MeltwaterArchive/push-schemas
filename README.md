# DataSift Push Database Schemas

A collection of example schemas for use with our push destinations

## Info

The schemas in this repo are to be used with the MySQL and PostgreSQL DataSift destinations. Available at http://datasift.com/destination

## Structure

We have split the schemas up by interaction type and augmentation. This is to make it easier for you to group the parts of an interaction that you require so you can tailor a schema for your use.

## Schema files

Within each schema directory there are a couple of files

* mapping.ini: This is the format that you send to the DataSift API or front end website
* mysql.sql: This is the file you can use to create the relevant tables in a MySQL database
* postgresql.sql: This is the file you use to create the relevant tables in a PostgreSQL database

## Contributions

Feel free to contribute your own schemas via a pull request. Please make sure that you supply one of each of the files listed above.