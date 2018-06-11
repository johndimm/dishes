drop table if exists photo;
create table photo like yelp_db.photo;
insert into photo
select * from yelp_db.photo
limit 1000
; 
