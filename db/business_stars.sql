#
# Set the rating for a business to the average
# over all dish ratings.
#
SET SQL_SAFE_UPDATES = 0;
update business as b1
join (
select b.id, avg(pr.rating) as stars
from business as b
join photo as p on p.business_id = b.id
join photo_review as pr on pr.photo_id = p.id
group by b.id
) as t on t.id = b1.id
set b1.stars = t.stars
;
