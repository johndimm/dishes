drop table if exists uploaded_photo;
create table uploaded_photo
(
  filename varchar(255),
  dish varchar(255),
  restaurant varchar(255),
  rating int,
  menu_item varchar(255),
  description varchar(255),
  comments text,
  email varchar(255)
);

