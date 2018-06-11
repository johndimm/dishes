drop view if exists vphoto;
create view vphoto as
select 
  p.id,
  p.business_id,
  concat (d.dish, ' ', pr.menu_item, ' ', pr.description, ' ', pr.comments) as caption,
  pr.rating as stars
from photo p
join photo_review as pr on pr.photo_id
join dish as d on d.id = pr.dish_id
;
  
