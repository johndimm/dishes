mysql -e "drop database dishes; create database dishes;"

# Create tables.
mysql < tables.sql
mysql < business.sql
mysql < photo.sql

# Import from yelp captions.
#./import_yelp.sh

# Create count tables.
./build.sh
