# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* 
* How to setup database in Cloud 9:
<pre><code>$ sudo service postgresql start
$ sudo sudo -u postgres psql
postgres=# ALTER USER postgres WITH PASSWORD 'password';
postgres# UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
postgres# DROP DATABASE template1;
postgres# CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';
postgres# UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';
postgres# \c template1
postgres# VACUUM FREEZE;
postgres# \q
$ rails db:create
$ rails db:migrate</code></pre>
# exp-r510app
