create schema "user";

create table "user"."user"
(
	id INT generated by default as identity,
	user_name varchar(256) UNIQUE,
	password_md5 varchar(32)
);

-- Insert test user

insert into "user".user (user_name, password_md5) values ('jcmatase', md5('123'));