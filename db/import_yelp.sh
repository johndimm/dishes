# Dump yelp photo captions.
mysql yelp_db < get_captions.sql > captions.txt

# Grab tables from yelp.
mysql < import_yelp_tables.sql

# Grab the two tables we need from the yelp dataset challenge.
#mysqldump yelp_db business photo > business_photo.sql
#mysql < business_photo.sql

# Exact match of the complete caption.
mysql < total_caption.sql

# Extract noun phrases.
python phrases.py captions.txt > words.txt
mysql < load.sql

# Find phrases that are the only phrase in many captions.
mysql < singleton_phrase.sql

# Import dish info from yelp.
mysql < import_yelp.sql
