drop procedure if exists etl;
delimiter //
create procedure etl()
begin
  insert into business
  (id, name)
  select to_base64(random_bytes(15)), restaurant
  from uploaded_photo as up
  left join business as b on b.name = up.restaurant
  where b.name is null
  and restaurant != ''
  group by restaurant
  ;

  insert into dish
  (dish)
  select up.dish
  from uploaded_photo as up
  left join dish as d on d.dish = up.dish
  where d.dish is null
  and up.dish != ''
  group by dish
  ;

  replace into photo
  (id, business_id, caption, label)
  select up.filename as id, b.id as business_id, '' as caption, 'food' as label
  from uploaded_photo up
  join business as b on b.name = up.restaurant
#  left join photo as p on p.id = up.filename
  where up.dish != ''
  and up.restaurant != ''
#  and p.id is null
  ;


  replace into photo_review
  (photo_id, dish_id, rating, menu_item, description, comments, email)
  select up.filename, d.id, up.rating, up.menu_item, up.description, up.comments, up.email
  from uploaded_photo as up
  join dish as d on d.dish = up.dish
#  left join photo_review as pr on pr.photo_id = up.filename
  where up.dish != ''
  and up.restaurant != ''
#  and pr.id is null
  ;

  insert into business_dish
  (business_id, dish_id, photo_id)
  select b.id, d.id, p.id
  from uploaded_photo as up
  join dish as d on d.dish = up.dish
  join business as b on b.name = up.restaurant
  join photo as p on p.id = up.filename
  left join business_dish as bd on bd.photo_id = p.id
  where bd.photo_id is null
  ;

  truncate uploaded_photo;

end //
delimiter ;
