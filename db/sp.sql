drop procedure if exists insert_photo;
delimiter //
create procedure insert_photo(
  filename varchar(255),
  dish varchar(255),
  restaurant varchar(255),
  rating int,
  menu_item varchar(255),
  description varchar(255),
  comments text,
  email varchar(255)
)
begin
  insert into uploaded_photo
  (filename, dish, restaurant, rating, menu_item, description, comments, email)
  values
  (filename, dish, restaurant, rating, menu_item, description, comments, email)
  ;
end //
delimiter ;

#call insert_photo
#("123456789.jpg", "burger", "Shake Shack", 5, "Double Smokeshack", "double cheeseburger with cherry pepppers", "meaty!", 'jdimm@yahoo.com');

select * from uploaded_photo;

drop procedure if exists my_dishes;
delimiter //
create procedure my_dishes(_email varchar(255))
begin
  select p.id as photo_id, b.name as business_name, b.id as business_id, d.dish, pr.rating as stars
  from business_dish as bd
  join photo as p on p.id=bd.photo_id
  join photo_review as pr on pr.photo_id = p.id
  join business as b on b.id = bd.business_id
  join dish as d on d.id = bd.dish_id
  where pr.email=_email
  ;

end //
delimiter ;