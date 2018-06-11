drop table if exists photo;
create table photo like yelp_db.photo;
insert into photo
select * from yelp_db.photo
where id in ('-4MNx8aL1xK4tkJehGB1bQ','-1GrF7OU1NP11c_t8H2rYw' )

#limit 1000
; 

drop table if exists business;
create table business like yelp_db.business;
insert into business 
select * from yelp_db.business
where id in ('DZbMvBWb3OjC9045XLHmVg', '-uYAkAplo7a4WM7c6lDrWQ')
; 

