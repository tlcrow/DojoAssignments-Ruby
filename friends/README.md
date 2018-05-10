

1. User.first should retrieve the first user information
  2.3.1 :003 > User.first
    User Load (2.8ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
  +----+------------+-----------+-----------------------+------------------------+
  | id | first_name | last_name | created_at            | updated_at             |
  +----+------------+-----------+-----------------------+------------------------+
  | 1  | Free       | Willy     | 2018-05-10 22:15:1... | 2018-05-10 22:15:12... |
  +----+------------+-----------+-----------------------+------------------------+
  1 row in set

2. User.first.friends should display all the friend information of the first user


3. Find out how you can retrieve all users who are NOT a friend with the first User
