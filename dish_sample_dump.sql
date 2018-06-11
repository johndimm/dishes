-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: yelp_db_caption
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dish_sample`
--

DROP TABLE IF EXISTS `dish_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish_sample` (
  `dish` varchar(255) DEFAULT NULL,
  `dish_id` int(11) NOT NULL DEFAULT '0',
  `business_id` varchar(22) CHARACTER SET utf8,
  `photo_id` varchar(22) DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `business_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `stars` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_sample`
--

LOCK TABLES `dish_sample` WRITE;
/*!40000 ALTER TABLE `dish_sample` DISABLE KEYS */;
INSERT INTO `dish_sample` VALUES ('Almond Croissant',122,'-rLP6lfoQmOO_5Pf2bTkqg','42k537XGBH4801y_a1-h-A','Almond croissant cross-section','Lazy Jane\'s',4),('Appetizer',192,'-uRKqmzVCRxsuuH0nXq6Bw','-3opeS4GOZ_cKu734yEyog','Crab claw appetizer','La Matraca',4),('Baklava',42,'-8hAGEWRSKtpLZ8e3L2xhA','-xWHqE3mX1mbKx9eTzydog','Baklava (Inside)','57 Cals',4),('Beef',329,'0LA4HKI7ydji1zwnqDbgnw','-MLfLTqTKxHnNQ_pRiKEiA','Beef pad kee mao','Sweet Lulu',3.5),('Bibimbap',67,'-mUXTkHOxfLxFDnaMcvqAA','-OypfGl84MYIyCYScXEm3w','Bibimbap','Kantapia',4),('bread',17,'-7EwIdxcRC5McO35DVfeSQ','-659vY9sdVpI43UbUttjZA','Charcuterie board with warm bread - so good!','Xin Jiang Restaurant',3.5),('Breakfast',193,'-2R--HQiUyvN4qld52oL6g','--cVXmD-VlTB5dw6MjSQew','Breakfast on the patio at the Henhouse Cafe with Saint Carmen.  Today is her Saint celebration day in Spain!','L\'Oeufrier NDG',4),('Brisket',76,'1KhBzrqmU164bss64jR5uA','3DC1VZXJaB1RPyRMdstUdw','Jumbo brisket sandwich on sourdough and whole fried okra!','Rick\'s Rollin Smoke BBQ & Tavern',4),('brunch',127,'0nddnkjG1RV8hdFdy_wCMA','0L22D_BP_tUNaZgCrqODdg','Artizen Brunch','Pain Perdu',3.5),('Bruschetta',13,'0eJG77JOkyMIBhc4Xbuqfw','1zkG78efWIdxmCiD2P_yZg','Bruschetta','A Thyme For All Seasons',4),('Bulgogi',190,'0pi1DQ3N8gC6jhdHfDWEMA','5J4rZYMJXwC74lF1GfflAw','Rice cakes, bulgogi, spicy bulgogi and little side items','MR Bulgogi',5),('Bun',1202,'8enR8Wc0ot9L41JY1FxMlA','2-k9x64gdCKzA1jT9xnaLg','More of the gang with a family member who likes bunny ears, lol!','Andaz Scottsdale Resort / Spa-a concept by Hyatt',4.5),('Burger',41,'-1m9o3vGRA8IBPNvNqKLmA','-37NVwmvhNZb5loCSKHYDA','Blue Heaven Burger with the Rosemary Parm Frites Passionfruit Sour','Bavette\'s Steakhouse & Bar',4.5),('Burrito',341,'-6c23X5Qf922FmsX_QHFqg','2FqKeFvnWeMQ2voIeqRPSw','Burrito Bowl','Burreatos',4),('Butter',805,'-EwVs_4fsdWoHebCOa6_FA','1mFBdwj-pDizquc7a3kpsQ','Vegan G/F Peanut Butter Cups','Sanctuary on Green',4.5),('Calamari',1,'-3Haoc0l9DZRSXxIHi9oJg','-FZy-IzDgwXlvUSOnyPz0w','Calamari','Klondike',2),('Cappuccino',135,'-otvy1Q2hPQ1VvnEJPhX0g','4kKY2nTrpxjz_fLCw1Abaw','12oz cappuccinos. Great flavorful coffee!','Mouton Vert',4.5),('Carrot Cake',59,'Arx42aGpdfI6XRH9lnKdaQ','-ebOmiGioL7JzXBXE1PxoQ','Carrot Cake','GlutenZero Bakery',4.5),('ceviche',55,'4tiFtmGNFcvKRSPXPVT8Hw','3f69UQtejwrfbmxGgoXfdw','Shrimp ceviche, Las Vegas rolls, California roll & 2 gyros','Mercadito',3.5),('cheese',566,'-JPz4W7MPOy-rQO8OKNk0g','-AM_UP5nvnmXuzQdZfligw','Gatherers Platter - Stuffed cabbage, potato cheese pierogi and a side dish!','Locanda de Gusti',4.5),('Cheesecake',43,'0IskseT5dEro86A_Jy8zBA','0Rm_SZjIQr4OmsCXEa8BUQ','Cheesecake','Le Bistro du Magasin Général du Vieux Montréal',4),('Chicken',49,'-0T0jfPnuBRdpNTXpOQZcA','-2WAmoJCu8hnd8_9sH9tVw','Carnitas and chicken','Tim Hortons',2),('Chocolate',1408,'-9eNGMp8XiygI8t8QFuFWw','0OiaH9ai6-ZGCAFYJ9KZlQ','Chocolate Silk Pie','The Melting Pot - Phoenix',3.5),('Cocktails',1410,'5vgieFiCubi43G6ciiFhNQ','6B5-v7muVuwW7XQKmt0zXA','\"Rosie Lee\" cocktails - so yummy!','CC Lounge & Whisky Bar',4.5),('Coffee',558,'-OhQws_Si3YOYDfm6DilxA','-1I1sns7zC_NfNy1uhUtEw','The Coffee Gallerie','Cafe Aunja',4),('Combo',333,'1247DTKzVm84bOH8tjfzwA','-fWeTIWc7sbMsrjTrrZo5A','Fasenjun combo + extra kobideh kabob','Altona Kebob',3.5),('Corn',330,'-YSCL35R3g6qqvHordSxVw','1KBev_xb78WmJitEnomqOQ','Baker Wee, on Thunderbird southeast corner of 43rd Av.','The Forest',3),('Crab',272,'-9YyInW1wapzdNZrhQJ9dg','3gC39UFPJhRYKjS-EpzZuA','Bottom is their pork (B2) and top is their crab and pork (B3). The B2 is way better.','Fresh Buffet',2.5),('Crepe',1228,'8NMf2dCmEGGKYR3SbMcnNA','2TIalU0xgqRuMNpGuwB_YA','Savory Crepes','Moga Crepes',4),('Delicious',51,'-1vfRrlnNnNJ5boOVghMPA','-319lqSZ-JnQD3Nz51bWLQ','They have brown rice roll,so delicious,u should have it!!','Red Ginseng Narita Sushi & BBQ',3),('Desert',420,'3-6biVwm7VwPZ-k67jml-Q','6EEv9E4etbflj8wpPo6AMg','Fruits and Desert Cart','Andreoli Italian Grocer',4),('Dessert',12,'-4TMQnQJW1yd6NqGRDvAeA','-a8iyXUg8z5sdU7kO5fxSQ','Strawberry ice cream and honeydew milky dessert!','The House Brasserie',4),('Dim sum',77,'410NJLoLryd-vYNwRA58pw','4MBWnIapuJ8KeQPD0qmyYQ','Assortment of Dim Sum dishes','Ruby Rouge',3),('Donut',1230,'5P7zzVhWvO8nXGPdy7xqhw','68C_OzQUqEW3iiMjwbTP8g','Carrot cupcake and orange citrus donut','LaMar\'s Donuts & Coffee',4.5),('Duck',47,'-Mrg_QlG-S_PjfRNEs3COA','-v14J-2VHOcctxVAFV43xw','Bei king duck only for Chinese New Year!! Dont miss it','Rollo',4.5),('egg',1205,'-_Ph_Y9mJWNdKqArDxp0lQ','-vpyScdMH0pRaHsWJZDFdg','Veggie lovers','Davidson Street Public House',4),('Eggplant',158,'-V-fpvR47iZJ5jq8Eit7ng','2wIyzfe-HE2qnaMwGZxxLA','Eggplant minced beef hot pot','Murray Hill Market',4.5),('eggs benedict',38,'-FLnsWAa4AGEW4NgE8Fqew','0Bmmp4ZXrunLPqPvy-CCCA','Kobe steak eggs benedict.  It comes with an apple coleslaw.','Breakfast Club- Scottsdale',4),('Enchiladas',163,'5OAO9TxfvsvccFFD4pjmeg','--daSIW0JaPBNaJIC0-p8A','Enchiladas poblanos.','Chacho\'s Fine Mexican Dining',3.5),('Espresso',840,'-bJ6Y5QmO8Uvc383xjC-OA','7rV2DJTWa96xmCsMLvzItA','Every drink is topped with a white chocolate espresso bean !','The Monarch Tavern',4),('Falafel',50,'5NlWRwyyGA6FYZTU_Rue4w','0YO-lqeZD1UcFGBwO2b1nQ','Falafel Sandwich','Nader\'s Middle Eastern Grill & Bakery',2.5),('Filet Mignon',35,'3iyQGSZSmUWLXIe3CkBsjg','-sTsRARoxoTKH-SBzlRgHQ','Gorgonzola Filet:garlic parm oil, asiago & gorgonzola, mushrooms, filet mignon, balsamic drizzle, arugula, parm reggiano','Mr. Falafel',4.5),('Fish',215,'0LDW1WT4mQ6r9GBf4G4kzA','--CTOdfZ8W5_5n8LePlIpg','This was the winner--fish and veggies were excellent, Mac-n-cheese, not so much','Money Plays',4),('Fish and chips',71,'-01XupAWZEXbdNbxNg5mEg','5OCnK8TRmzowpiajR90Ttw','Fish and Chips','18 Degrees Neighborhood Grill',3),('Fish taco',68,'-Ut87cwGFsO3444Rd11p0Q','1D0kzFrxibujL4d-zKJqTg','Fish taco','Federico\'s Mexican Food',3.5),('French toast',8,'-ICGmF2qUVKdvOehVNgPbg','-0sdV0MTbJ_zGcvyubtFZA','Doughnut French Toast','Lamesa Filipino Kitchen',4),('Fried Chicken',23,'--SrzpvFLwP_YFwB_Cetow','-DkcGHnQl8nNVj-GJX7yRQ','Lunch buffet - tofu, fried chicken, sesame chicken, spicy chicken wings','Keung Kee Restaurant',3.5),('Fried rice',58,'-Uix-n4Jqo4W7ERagC5qAA','-XOo4xklrnPECkTIUktGOw','Mixed fried rice','Wok & Roll \"TAPSILOGAN\"',4),('Fries',155,'-JVDTSgNMx2eqOCft3At-w','-xAm-yvX-ejga9eaTPbd_Q','Longanisa banh mi and ranch fries','IKEA Restaurant',3),('gnocchi',93,'277ETKOLg1XreTWL8hGlHw','0bpf81rmPKpDBRK0ViEoXQ','Gnocchi lunch special $14','Molto Bene Italian Eatery',4.5),('Grill',1232,'10tJuB_YkVQWuk4PtoI7iA','-2GJPyruudMrelhFasEBMw','The grilled vegetable plate','Intermezzo Pizzeria and Cafe',4),('Grilled Cheese',176,'6hKY8sj-ikAQdzrkrBcvuQ','6fJ4UpFaDNrn-5MOz_bo5w','All the manly guys in the grilled cheese eating contest!','Cafe io',4.5),('Gyro',153,'3tPemruVItQW12O3tYnsxg','2NbEW51A5SLYiBV3-8ZY-Q','Gyro meat on a regular whole wheat pita with tons of toppings!','Bylo Gyro Bob\'s',4.5),('Happy hour',1471,'14O6gNqpd3bcnIAHPFT58g','3Es_Tk7BjLWAI0lWftZj7A','Happy hour...','Salute Ristorante Italiano',4),('Hummus',18,'1Lm1euBdgzxuPGjJbHTudg','17pxvb34NvlxM1MIefIm2A','Hummus and pita. Hummus was tasty but pita was thin, cold and stale. :(','Grasslands',4),('Italian',1305,'-httBl6DSZiUtDX4SQWtag','14C4N6bCCWGztRV_9KaOUg','Restaurant Trebbiano. Italian Restaurant. 135, rue St.-Charles O., Longueuil, QC  J4H-1C7.  Tel.# : 450-332-9588.','The Enrico Biscotti',4),('Lamb',33,'-2hOglg7Lh8ZgclQJ9ba2w','-2DYLJuxfaWt_A2MUsKjpA','\"Toothpick\"Lamb','URSA',3.5),('Lasagna',44,'2l7LQigjnRhhfUOtvYOKKQ','4pfjMWG7IwbZbHJ9p_v2eQ','I\'ll be back for you vegetable lasagna','Eatery X Press',4.5),('Latte',1234,'0F42T07SdUQY24pidn9QwQ','-L_3CoqrZHODELA5Y0QXZA','Latte.','Daisuki Sushi',2.5),('Lobster',27,'-Mz3M0g6iFZczs6a7ddf5g','-f4BtJfxMlPT9Uu4RI2DJA','Lobster dumpling','Le Serpent',4.5),('Mango',1235,'2OJrznHaA4Gz_KYbQnAuzQ','-0cLSwqBZH9tGCbAf9D44w','Raspberry Mango single layer cake. Beautiful! The icing/writing did bleed onto the ribbon.','Volcano Tea House',3.5),('Meat',785,'-8iwcXhLnyqbLgvcrJGgaw','05iOFdUOCLnT3Y-t4-j4tA','The hot coals beneath kept the meat nice and hot.','Red Rocks Cafe',4),('mmm',544,'-jZ1TrvY56HFqmxjbpcU2A','5zFuOtR5bYOO-b34eP2P4g','Ummm','Gotham Bagels',3.5),('Mussels',28,'0i95sgY7pzYW9k88SOVJ8A','5PBXCC2oJcgSuWUT0RbAXg','Coconut Thai mussels, crisp squid','Cork & Cleaver Social Kitchen',4),('Nachos',7,'-0WegMt6Cy966qlDKhu6jA','-GJvu5PjWZWKdO7GNfEieA','Shredded beef nachos','Game Seven Grill',2),('noodles',433,'2ZZp5V8N0nHlsml01XBJUQ','2yPqPx61W3z9_KgTHafc8w','Woo\'s noodles','JXY Dumpling Restaurant',3.5),('oyster',218,'2pHvdKA1J43-85mfVPvAyw','-hDRok1FWAjCgaX9eKjGew','Paradise and Fanny Bay oysters from British Columbia','Champions Seafood Grill and Bar',3.5),('Pad Thai',2,'-ed0Yc9on37RoIoG2ZgxBA','-8SINvJObXXOkzirWBiupg','Chicken lo mein and pad Thai with chicken and shrimp','Le Thai',4),('Pancake',571,'08-b4GbZxOzzo9XSJsR-tw','1njW8eiupVkfgHrq_QPloA','all berry pancakes','Another Broken Egg Cafe',3.5),('Pasta',216,'-dqK97OczNSfrfa71cuYmA','-3jtn75lus_tVwFebPbWjA','Spicy Basil (Pasta)','Piazza Del Sogno',4),('Pho',410,'-92cC6-X87HQ1DE1UHOx3w','-0Z-Fa2yLhWyvBPhEn-IrQ','Their pho special','Junior',3.5),('Pita',1213,'1LG6qcTXLCCaZmIEHwSDeg','9_99ILhBYgRkk03YOV77Pg','Pretty Pink Pitaya','Pita Licious',4),('Pizza',48,'-Gy0BAMgRN4sGlY7theqxQ','-3Qw3CjHh9QeTtuWYQTdgg','What they call a vegetarian pizza.','MOD Pizza',4),('Pork',332,'-FcZY7a7qgxTUlTvwuyJnQ','-02MQ0bJMkx6eD1s4PARyA','Rice roll with dried and minced pork and fried dough stick','8 Noodle Bar',3.5),('Pork Belly',20,'-BbnAc9YEO6pjvJGEtFbVQ','-6KdyF5c1tW7nCF6C4PtQQ','Euro Special ($5.95): Pork Belly Bacon, Cheddar Cheese, Herb Blend Garlic Mayo. This is one of my most favorite french fries!','Sansotei',4),('Pork Chop',133,'7ddnq3YQSKguGK15etqGLQ','0co-N7xGHEYASeJpadJDAg','What about a back in the day pork chop sandwich.','Ditka\'s Restaurant in Wexford',3),('Poutine',29,'-c8J9ox5dywGzAwkwytydw','--0uqWanwN31OkuuwJ1zjQ','Le Gadboi: Poutine with pogos and onion rings.','Restaurant Quebec Delicatessen',4.5),('Prime Rib',45,'3ropqVM-UMYXun6WGbi1hA','0nbQaMv8cNwYKube_Wu10A','Dry Aged Bone In Prime Rib','Peties Family Restaurant',4),('Pulled Pork',80,'4vzxDkAcnOQEQcs4rk_7-Q','AcMRTdIXdB9CXCQIlp8IuA','Pulled Pork','Bofinger Barbecue Smokehouse',2.5),('Pulled pork sandwich',63,'22LyWivLY_y_b3ohASfP2Q','1k8zDHWG9jbEMBFid_nA2g','Pulled Pork Sandwich w/ Slaw','Porkopolis',3.5),('Quesadilla',114,'3-aEgS7X2jrbxA7sA1nARw','4URp7qUAWXd6PHzWXHsRVQ','Aperitivos, quesadillas y lorenzas!','La Flor De Calabaza',3),('Ramen',126,'1Q2_qfRwRziYXdCX5Oda6Q','-gA7t4PqtO4SPLGKLfmTPg','Ramen and the burrito!','Hakata Ramen',3),('Ribs',125,'1q7pY0KDlJJC_wNdGdSs7Q','4l_knbMraVDNDyQE2GHGfg','St. Louis Pork ribs','Pavao Meat\'s & Deli',3.5),('rice',414,'-cBQKodqi77Q0vk-9iDvQA','1s86P8sNEWpwbwRkcKBg-Q','Curry mutton with rice and peas','Fat Tuesday',3.5),('Risotto',281,'25m6rM6hFw2CGADUjbYKXg','0hUKnbD1C2i2sW4JYlrd_g','Risotto de seiche, fruits de mer','Pastaga',4.5),('Rolls',554,'-H3hHmLfDmXQyuAlb3qFfg','5xMiAwxa9oCepH2u_GWPzw','Springrolls','Ohiyo 68 Asian Cuisine',4.5),('Salad',9,'-1xCh7Cocn6IwFzhELyohA','--ifyOhCW51WtECbrsEbbA','Shrimp and avocado salad !','Jose\' and Tony\'s Mexican Restaurant',2.5),('Salmon',4,'--9e1ONYQuAa-CB_Rrw7Tw','-4FERYIXqxEaxuA-Bc_MPg','Caviar with cauliflower. Lobster & corn chowder, salmon tartare','Delmonico Steakhouse',4),('Sandwiches',624,'8ighogZ3nMpwdMiAXrS3EQ','2gNz4e3FF1AUZRbD5lTeEw','Didn\'t see any one eating any of their sandwiches.','Blynk Organic',4),('Sashimi',92,'Akl6WDSUwYQ3zanxczLNSg','5M-wyOJenLmuyFiW9XOAzA','sashimi','Rice & Company',3),('Sausage',827,'-tseCGdDvepLP8IIWtZikQ','3oaEMoepIosqT034QalLmQ','Korean Sausage (NEW!!)','Polish Deli',4.5),('Seafood',431,'-o0xWAEO-C2oqlyt9TO8qg','2Qcj-4UCpGVvuo5yv6oBVw','Seafood Pajeon','McCormick & Schmicks Seafood Restaurant',4),('Shrimp',91,'-CfFjcCcGGDM9MVH_d42RQ','-GMGjDYaIBiZACvIlo8UZA','Kribich (creole shrimp)','The Ivy',4),('Side dishes',69,'59OgPGGzKFYqwSG_U06kuA','2e2EbFwCtt7_e7yi-scWgA','Banchan (side dishes) - Korean beansprouts, kimchi, spicy cabbage,  fried zucchini, spicy fish cake','Chodang',4),('Sliders',66,'0uMK11Hq5pTLyxLE1lWRzQ','5HvCw7dDwTXeybZdqll0tA','Tenderloin Sliders for AeroMexico event','Fring\'s',3.5),('Soup',546,'079CV1EE5WLdQqVEVYFeHQ','-oR6ChTbYNodALw_VtvWYw','Cauliflower augratin and leek soup','The Prime Chinese Restaurant',4),('Spaghetti',447,'0P46EQN6wGc52nONZX0kgQ','0Ia6rqh4ifcKtQJhjm5Yuw','Bracciolie with spaghetti! One of the Best!!','Amalfi Ristorante Italiano',4),('spring roll',367,'2YsKefH250qxg28QCyEWZw','-d3b_qTxL_bTEgiPR97gBw','Delivering Spring Roll','Samosa King - Embassy Restaurant',4),('Steak',90,'-bd4BQcl1ekgo7avaFngIw','-5aIjPZbFIStflCMI1z9hg','Bobo de crevettes, Xinxim, Feijoada, notre steak coupe a la brésilienne\r\nBobo de Camarao, Xinxim, Feijoada and our Brazilian cut','Eggstasy',3.5),('Sushi',24,'-AVRReI-nfsa0lKlehEojw','-JUbo9E_lhtL9AhXQy6-Lg','Miyaki Sushi','Sushi Bar',3),('Sweet Potato Fries',31,'-I7Vz5eDjc63xKmmt4Qx4g','-NcOBI8YjL78FVpvbbrSiw','The Bacon Explosion with sweet potato fries','Go For Tea',2.5),('Tacos',25,'-PKUAor_Nz_IaNjP_jIwyA','-HxJ4KzGDSnIkZUMAoWgTQ','#8, Two Super Tacos Al Pastor With Rice and Beans','Playa Cabana - Hacienda',3.5),('Takoyaki',10,'-K82LBrI3H0FVuhTbNDpRA','-kDXNTnXs7Lsk1JJCfvOVg','Takoyaki ($6.45)','Shoku Ramen',3.5),('Tart',1219,'1PVFYjySeMsHUYnshzpAGw','0t5pA3N4pI6BJgOTvZsdUA','VIP Bottle Service starts at just $250 plus tax and gratuity. Includes VIP no line entry, table, mixers and cocktail server for the night.','Piranha Nightclub',3),('Tempura',129,'-3rvpkYkYD_N1IP4hSvD0A','-QPEpuzaQR3-5IJlQL2seQ','Sweet Potato Tempura Roll','Sushi Three',3.5),('Tiramisu',5,'0Lqwt0DER_Wjzh-t1ihwXw','-4fuKsO-N3-xLgz1NpLW5Q','Tiramisu and hazelnut gelato','Valle',4),('Tofu',275,'-cZOrBfMRkNRSYm02SiY7w','-dIe_rNPr_laTxs5f5Oh_g','Tofu bowl','V Deep',3),('Toro',788,'1FAvxOUOGGyZoYNlAXACag','--GzO8rojTrDTa2UYzglSA','We Are Wearables Toronto - Aug 1 event at House of VR','Dal Toro Ristorante',2.5),('Tuna',108,'1MrSwj8i2VEBHdp3IsWCpQ','-a_PsJVlPp_xJMk8CHoWtA','Tuna','El Fish Taco',4.5),('Turkey',426,'-YUq9cyBDncEIDf5aUEGhw','62WTQKNMUV-rE37CjwNrSA','California Turkey Dog','Hole \'n One',4),('Uni',64,'-WmQxBr4jsdZs_7RgamNmQ','-KJsEAavCmy2AKvXTape5Q','At the union for some brews and some Pat McCurdy. Fantastic place with great people and great atmosphere.','Cee Cee\'s On The Corner',4),('Waffle',339,'-VWbzdy0FctEs48LnQg_2w','-6idmJX3eg1YMKZFlgpShQ','Banana walnut waffle','De Code Adventures',4),('Wings',26,'-fTO9qRo70bblJmbNxOnag','-PLKav5vU5GvUI1bV_Vi_w','Wings, Shrimp, and Fish get some','Giorgio\'s Place',3.5);
/*!40000 ALTER TABLE `dish_sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 12:13:04
