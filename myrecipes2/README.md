<!-- このアプリの概要なので必要なことはここに記入 -->
Create new myrecipes app

Minitest

Layout of the applocation

Integration Testing

Model Tests - unit testing

TDD - design the app functionality based on a test first approach
Write the test for the functionality
Build minimum code necessary to make each test pass

Re-factor the code - *code doesnt small* - clean code, confidense

Look at some sample layouts for homepage, and come up eith a homepage design

Create a mokeup!(Bootstrap -v 3.3.7)


<!-- データーベースについて -->
Dstabase and 1:m associations

-relational Databases
-SQL - strutured Query Langguage
-ActiveRecoad - abstraction - Ruby - translated to SQL

database layer, Associations

1:m, m;m

Pbject Relational Mapper - ORM

Relational Database

has_many

belongs_to


<!-- モデルについて -->
Recipe -
-recipe should be valid
-description should be present
-Chef_id should be present **
-maximum length for name and description, maybe a minimum for description

Chef -
-Chefname should be present
-email should be present
-size restrictions on email and chefname
-email address should be valid format
-email should be unique, case insensitive# rails-TDD
# rails-TDD
