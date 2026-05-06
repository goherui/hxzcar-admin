@echo off
mysql -h localhost -u root -pmysql_2SASaZ hxzcar-admin -e "UPDATE sys_users SET password = '$2a$10$GfKJoURKy7B.Cg//lUcU4efW3/LX/fBfXkru.eD9pczlw485KDz7y' WHERE username = 'admin';"