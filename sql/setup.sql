-- run before the application is run
-- creates the basic user and database
CREATE ROLE developer LOGIN password 'development';
CREATE DATABASE blueprint ENCODING 'UTF8' OWNER developer;


-- run post user table creation
insert into tb_user (user_name, password, is_active)  values ('admin', md5('admin'), true);

-- run for user roles
insert into tb_user_authority (authority, user_id) values ('ROLE_ADMIN', (select user_id from tb_user where user_name = 'admin'));
insert into tb_user_authority (authority, user_id) values ('ROLE_BASIC', (select user_id from tb_user where user_name = 'admin'));
insert into tb_user_authority (authority, user_id) values ('ROLE_REPORTS', (select user_id from tb_user where user_name = 'admin'));