drop table if exists Authority;
drop table if exists Company;
drop table if exists Company_users;
drop table if exists Experience;
drop table if exists Geolocation;
drop table if exists Job;
drop table if exists p_user;
drop table if exists p_user_companies;
drop table if exists Star;
drop table if exists Vacation;


alter table Company drop foreign key FKkw02f19q6kf7st09kd3aqclfv;
alter table Company_users drop foreign key FK6nv5gefse2iv2g96jihpfdxq1;
alter table Company_users drop foreign key FK6d72vhbs6b9of28s0pv5k72i0;
alter table Geolocation drop foreign key FKlusp5c4ppkvol5nkijbvwibl4;
alter table Geolocation drop foreign key FKfyq7y2sm17hdtsj4j0pmopmar;
alter table Job drop foreign key FKcjwk9tehdh80dkahboblwnl29;
alter table Job drop foreign key FKmo8sc3h669ub3n4svx8dhlpy6;
alter table p_user drop foreign key FK9ktllu092bth8qr7abja3fes1;
alter table p_user drop foreign key FKis0rqbrwcsp69mow66aj8o7ue;
alter table p_user_companies drop foreign key FKcvkn40hole12foeefh37pa75c;
alter table p_user_companies drop foreign key FK47kc2d25kvv1y7kir105uu53p;
alter table Star drop foreign key FK4yjs7go1ysh0cdrg8kb2wj052;
alter table Vacation drop foreign key FKj9uui8w4ke721ou8ixampc9ck;
