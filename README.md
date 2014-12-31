Blueprint .02
=====

If you've ever had to set up a web application from scratch, you know it's a road that can have many pitfalls. Blueprint strives to help make this process easier by gluing together the stack for you and providing a standard codebase with basic functionality. It ships with a basic user authentication module to start, and can be altered, updated to fit your needs.

The stack currently consists of:
* Hibernate 4.3.7 - PostgresSQL dialect
* Hikari CP 2.2.5
* Spring Core, MVC, ORM etc 4.1.2
* Spring Security 3.2.5
* bag.js and basket.js for local storage resource cacheing
* Web.xml 3.0
* Gradle 2.0+ build

The architecture leverages a feature domain approach that strives for microservices.

So far the following rudimentaty features have been added:
* Simple Signup
* Login and Authentication
* Basic error handling

And possibly others..

Tested and run on Wildfly 8.2.
