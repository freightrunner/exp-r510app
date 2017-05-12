# README

* Ruby version 2.3.1

* How to setup postgresql development database in Cloud 9:
<pre><code>$ gem install rails-5.1.0
$ bundle install
$ sudo service postgresql start
$ sudo sudo -u postgres psql
postgres=# ALTER USER postgres WITH PASSWORD 'password';
postgres=# UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
postgres=# DROP DATABASE template1;
postgres=# CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';
postgres=# UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';
postgres=# \c template1
postgres=# VACUUM FREEZE;
postgres=# \q
$ rails db:create
$ rails db:migrate</code></pre>

* Database Initialization <br>

<code>$ sudo service postgresql start</code>

* How to run the test suite <br>
* Migration for test db (1st time): <br>
<code>$ rails db:migrate RAILS_ENV=test</code>
* To run tests <br>
<code>$ rails test</code>

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
Currently running on Heroku under desolate-sea-88056


# exp-r510app
