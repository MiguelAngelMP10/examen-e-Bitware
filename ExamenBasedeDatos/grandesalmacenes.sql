-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: grandesalmacenes
-- ------------------------------------------------------
-- Server version	5.6.45-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cajeros`
--

DROP TABLE IF EXISTS `cajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cajeros` (
  `idcajeros` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidoPaterno` varchar(45) DEFAULT NULL,
  `apellidoMaterno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcajeros`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajeros`
--

LOCK TABLES `cajeros` WRITE;
/*!40000 ALTER TABLE `cajeros` DISABLE KEYS */;
INSERT INTO `cajeros` VALUES (1,'Bronny','Di Claudio','Hrycek'),(2,'Mattie','Blankau','Skentelbury'),(3,'Mattie','Blankau','Skentelbury'),(4,'Hamil','McLauchlin','Rawlcliffe'),(5,'Sawyer','Mumm','Wolfart'),(6,'Hiram','Benck','Dobbie'),(7,'Filbert','Zoellner','Etuck'),(8,'Artair','Shankland','Tolputt'),(9,'Forest','Hanshaw','Bruckman'),(10,'Joel','MacMickan','McOwan'),(11,'Fred','Mahoney','Harden'),(12,'Bronny','Di Claudio','Hrycek');
/*!40000 ALTER TABLE `cajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maquinas_registradoras`
--

DROP TABLE IF EXISTS `maquinas_registradoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maquinas_registradoras` (
  `idmaquinas_registradoras` int(11) NOT NULL AUTO_INCREMENT,
  `piso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmaquinas_registradoras`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquinas_registradoras`
--

LOCK TABLES `maquinas_registradoras` WRITE;
/*!40000 ALTER TABLE `maquinas_registradoras` DISABLE KEYS */;
INSERT INTO `maquinas_registradoras` VALUES (1,1),(2,1),(3,3),(4,3),(5,1),(6,3),(7,2),(8,3),(9,3),(10,1),(11,3),(12,2),(13,2),(14,1),(15,1);
/*!40000 ALTER TABLE `maquinas_registradoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idproductos`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Country Roll',149.21),(2,'Sauce - Apple, Unsweetened',159.31),(3,'Sauce - Apple, Unsweetened',159.31),(4,'Wine - White Cab Sauv.on',166.41),(5,'Pepper - White, Ground',158.70),(6,'Chicken - Whole Roasting',46.60),(7,'Flounder - Fresh',99.78),(8,'Wiberg Super Cure',68.34),(9,'Longan',22.45),(10,'Mustard - Pommery',93.35),(11,'Olives - Stuffed',78.16),(12,'Syrup - Monin, Irish Cream',41.15),(13,'Oil - Olive',130.67),(14,'Mushroom - Chanterelle, Dry',186.00),(15,'Puree - Blackcurrant',176.04),(16,'Cheese - Feta',10.84),(17,'Cherries - Fresh',83.86),(18,'Wine - White, Pinot Grigio',189.05),(19,'Veal - Inside, Choice',192.36),(20,'Puree - Mango',142.81),(21,'Vinegar - Champagne',86.04),(22,'Pate - Liver',73.01),(23,'Soup - Campbells Asian Noodle',89.71),(24,'Dried Apple',37.94),(25,'Milk - Condensed',39.05),(26,'Wine - Red, Lurton Merlot De',181.92),(27,'Muffin Batt - Carrot Spice',90.77),(28,'Orange - Blood',56.98),(29,'Compound - Raspberry',195.81),(30,'Chip - Potato Dill Pickle',183.96),(31,'Onions - Green',111.18),(32,'Chinese Foods - Chicken',154.45),(33,'Oneshot Automatic Soap System',71.06),(34,'Table Cloth 54x54 White',28.50),(35,'Wine - Magnotta - Bel Paese White',85.58),(36,'Bread Base - Toscano',21.36),(37,'Propel Sport Drink',88.78),(38,'Beets - Mini Golden',80.45),(39,'Chicken - Tenderloin',44.56),(40,'Laundry - Bag Cloth',96.00),(41,'Wine - White, Antinore Orvieto',16.49),(42,'Sobe - Orange Carrot',13.06),(43,'Lettuce - Radicchio',80.66),(44,'Juice - Clam, 46 Oz',174.61),(45,'Soup - Campbells Beef Noodle',102.93),(46,'Placemat - Scallop, White',183.79),(47,'Daikon Radish',151.43),(48,'Muffin Batt - Choc Chk',65.06),(49,'Pepsi - 600ml',163.86),(50,'Sugar - White Packet',39.02),(51,'Kiwi Gold Zespri',138.63),(52,'Frangelico',10.21),(53,'Tequila Rose Cream Liquor',27.66),(54,'Peach - Fresh',146.18),(55,'Sauce - Marinara',107.07),(56,'Lumpfish Black',94.39),(57,'Pasta - Ravioli',135.60),(58,'Trueblue - Blueberry',168.48),(59,'Tea - Herbal - 6 Asst',49.45),(60,'Cookie Dough - Chunky',34.11),(61,'Flour - Strong',46.44),(62,'Crackers - Graham',69.36),(63,'Sauce - Apple, Unsweetened',65.94),(64,'Peas - Pigeon, Dry',172.99),(65,'Sugar - Individual Portions',104.81),(66,'Dill Weed - Dry',21.64),(67,'Wine - Zonnebloem Pinotage',63.54),(68,'Lid Tray - 16in Dome',153.01),(69,'Bar Nature Valley',158.43),(70,'Wine - Pinot Noir Stoneleigh',39.15),(71,'Lobster - Canned Premium',75.28),(72,'Cherries - Frozen',17.06),(73,'Pastry - Chocolate Chip Muffin',188.68),(74,'Sauce - Soya, Dark',151.73),(75,'Cheese - Asiago',131.64),(76,'Orange Roughy 6/8 Oz',99.09),(77,'Tomatoes - Vine Ripe, Yellow',90.25),(78,'Napkin White - Starched',159.03),(79,'Egg - Salad Premix',164.53),(80,'Chicken - Wings, Tip Off',101.74),(81,'Sambuca - Opal Nera',182.38),(82,'Madeira',185.15),(83,'Beer - Rickards Red',49.99),(84,'Tomatoes - Vine Ripe, Red',179.82),(85,'Wine - White Cab Sauv.on',136.03),(86,'Steamers White',103.36),(87,'Sole - Fillet',146.46),(88,'Spinach - Frozen',85.25),(89,'Wine - Puligny Montrachet A.',82.48),(90,'Cheese - Grie Des Champ',54.49),(91,'Pasta - Cappellini, Dry',90.05),(92,'Burger Veggie',12.91),(93,'Eggplant - Baby',110.46),(94,'Orange - Tangerine',80.58),(95,'Capicola - Hot',97.70),(96,'Russian Prince',182.52),(97,'Syrup - Monin - Blue Curacao',84.61),(98,'Island Oasis - Sweet And Sour Mix',25.63),(99,'Veal - Nuckle',13.93),(100,'Eggwhite Frozen',27.81),(101,'Beer - Paulaner Hefeweisse',195.56),(102,'Sword Pick Asst',156.08),(103,'Pastry - Trippleberry Muffin - Mini',137.06),(104,'Table Cloth 62x120 Colour',35.24),(105,'Yogurt - Banana, 175 Gr',46.01),(106,'Wine - Beaujolais Villages',188.81),(107,'Wine - Vouvray Cuvee Domaine',38.24),(108,'Compound - Mocha',196.96),(109,'Beer - Upper Canada Lager',144.22),(110,'Chips - Doritos',66.95),(111,'Pineapple - Canned, Rings',75.60),(112,'Pur Value',134.95),(113,'Silicone Paper 16.5x24',188.47),(114,'Salsify, Organic',77.76),(115,'Tea - Darjeeling, Azzura',57.04),(116,'Arctic Char - Fresh, Whole',184.09),(117,'Scallops - In Shell',194.81),(118,'Flour - All Purpose',48.84),(119,'Cup - 3.5oz, Foam',185.34),(120,'Cheese - St. Andre',176.43),(121,'Rabbit - Whole',156.29),(122,'Cup - 8oz Coffee Perforated',69.54),(123,'Caviar - Salmon',175.58),(124,'Chicken - Leg, Fresh',149.33),(125,'Cheese - Goat',125.91),(126,'Brandy Apricot',136.53),(127,'Tea - Apple Green Tea',125.17),(128,'Pork - Suckling Pig',126.43),(129,'Grapes - Green',198.71),(130,'Pomegranates',41.26),(131,'Chocolate - Pistoles, Lactee, Milk',195.94),(132,'Bread - Bagels, Plain',186.19),(133,'Teriyaki Sauce',92.89),(134,'Thermometer Digital',135.82),(135,'Pork - Sausage, Medium',103.85),(136,'Cake - Dulce De Leche',115.13),(137,'Wine - Merlot Vina Carmen',104.93),(138,'Sterno - Chafing Dish Fuel',180.01),(139,'Pasta - Tortellini, Fresh',28.68),(140,'Cocoa Powder - Natural',25.43),(141,'Wine - Beaujolais Villages',143.07),(142,'Hummus - Spread',67.92),(143,'Lamb - Loin, Trimmed, Boneless',39.70),(144,'Sage - Ground',137.00),(145,'Dill Weed - Fresh',182.97),(146,'Limes',38.68),(147,'Wine - Casillero Deldiablo',113.81),(148,'Vector Energy Bar',157.38),(149,'Cheese - Camembert',131.40),(150,'Bread Roll Foccacia',195.43),(151,'Soup - Campbells Beef Noodle',91.08),(152,'Irish Cream - Butterscotch',48.42),(153,'Flour Dark Rye',128.73),(154,'Wine - Cave Springs Dry Riesling',189.87),(155,'Beans - Wax',115.44),(156,'Cotton Wet Mop 16 Oz',138.46),(157,'Coffee - Hazelnut Cream',82.74),(158,'Alize Gold Passion',33.71),(159,'Stock - Veal, Brown',125.95),(160,'Ginger - Crystalized',42.68),(161,'Vermouth - Sweet, Cinzano',138.91),(162,'Cheese - Goat With Herbs',53.35),(163,'Anchovy Fillets',117.33),(164,'Lamb - Whole Head Off,nz',88.27),(165,'Lime Cordial - Roses',137.68),(166,'Worcestershire Sauce',180.55),(167,'Wine - White, French Cross',66.62),(168,'Celery Root',64.63),(169,'Bok Choy - Baby',32.75),(170,'Compound - Pear',21.54),(171,'Beef Dry Aged Tenderloin Aaa',58.27),(172,'Beans - Black Bean, Canned',59.94),(173,'Pike - Frozen Fillet',144.91),(174,'Water - Tonic',143.84),(175,'Bread - French Baquette',87.16),(176,'Coffee Cup 16oz Foam',169.55),(177,'The Pop Shoppe - Grape',178.01),(178,'Pasta - Orecchiette',140.48),(179,'Wine - Puligny Montrachet A.',93.40),(180,'Liners - Banana, Paper',149.38),(181,'Ham Black Forest',145.57),(182,'Lady Fingers',179.65),(183,'Pasta - Penne Primavera, Single',58.97),(184,'Pepperoni Slices',18.89),(185,'Soup Campbells Beef With Veg',76.47),(186,'Spinach - Spinach Leaf',129.13),(187,'Yogurt - Cherry, 175 Gr',63.22),(188,'Pork - Tenderloin, Fresh',157.26),(189,'Yucca',125.35),(190,'Spice - Pepper Portions',192.99),(191,'Country Roll',149.21),(192,'Aspic - Clear',183.38),(193,'Garbage Bags - Black',64.64),(194,'Beef - Rib Eye Aaa',135.71),(195,'Chocolate Bar - Smarties',34.72),(196,'Apricots - Dried',11.22),(197,'Mushroom - Enoki, Dry',52.24),(198,'Oil - Pumpkinseed',60.65),(199,'Cake Circle, Foil, Scallop',197.81),(200,'Cakes Assorted',41.54),(201,'Chicken Breast Wing On',162.32),(202,'Blouse / Shirt / Sweater',28.17);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idcajeros` int(11) DEFAULT NULL,
  `idmaquinas_registradoras` int(11) DEFAULT NULL,
  `idproductos` int(11) DEFAULT NULL,
  KEY `ventas_cajero_idx` (`idcajeros`),
  KEY `ventas_maquina_idx` (`idmaquinas_registradoras`),
  KEY `ventas_producto_idx` (`idproductos`),
  CONSTRAINT `ventas_cajero` FOREIGN KEY (`idcajeros`) REFERENCES `cajeros` (`idcajeros`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_maquina` FOREIGN KEY (`idmaquinas_registradoras`) REFERENCES `maquinas_registradoras` (`idmaquinas_registradoras`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_producto` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (9,8,35),(3,10,97),(1,10,64),(12,2,52),(7,14,126),(1,14,19),(11,7,83),(2,14,82),(5,11,79),(12,5,144),(5,12,160),(4,13,128),(11,2,192),(12,14,161),(5,11,163),(7,8,81),(6,14,98),(3,9,188),(12,5,177),(9,1,54),(12,4,23),(10,9,135),(3,3,67),(8,2,12),(12,14,4),(11,4,134),(8,5,186),(2,3,3),(11,10,64),(6,5,6),(5,13,89),(11,8,116),(12,8,14),(9,10,114),(2,8,167),(5,11,89),(9,6,192),(4,1,174),(3,8,74),(12,14,182),(5,6,138),(7,11,144),(12,13,14),(5,14,160),(3,5,135),(11,8,197),(4,12,27),(12,3,201),(6,4,159),(10,2,189),(1,1,171),(4,5,139),(6,8,61),(12,5,33),(5,12,180),(10,11,154),(8,11,127),(7,9,120),(11,7,150),(12,9,176),(1,14,102),(8,5,177),(4,4,50),(9,7,177),(2,2,65),(10,9,149),(1,7,30),(10,3,23),(10,1,157),(12,12,163),(10,9,50),(8,3,42),(9,13,30),(10,1,187),(2,14,73),(3,4,110),(3,14,59),(8,12,168),(12,8,153),(8,5,118),(8,5,192),(9,11,133),(11,3,51),(2,11,80),(3,3,20),(11,11,196),(9,4,88),(5,7,146),(10,12,1),(4,14,145),(3,2,196),(6,7,121),(8,5,131),(11,12,61),(5,9,121),(7,7,148),(6,6,18),(8,4,169),(3,2,177),(5,1,184),(4,2,43),(5,5,191),(12,14,165),(1,1,144),(5,10,90),(7,1,47),(2,3,168),(7,5,97),(4,13,83),(12,3,55),(10,8,182),(3,6,1),(2,6,139),(5,6,43),(2,10,171),(3,10,64),(10,11,89),(3,7,63),(9,11,131),(11,10,9),(1,14,70),(4,1,62),(9,5,77),(2,10,198),(5,8,179),(7,14,44),(7,12,26),(11,7,121),(9,8,24),(12,3,193),(8,5,42),(8,1,147),(8,10,42),(4,8,26),(12,9,9),(12,3,165),(8,4,150),(6,12,2),(1,10,82),(6,10,41),(10,2,106),(9,9,100),(6,12,64),(5,4,7),(5,6,166),(9,5,19),(1,2,147),(4,3,180),(5,1,72),(11,6,24),(9,3,54),(6,11,56),(3,5,185),(7,1,95),(12,13,43),(4,8,147),(1,3,117),(11,8,68),(11,6,194),(1,12,62),(5,10,114),(4,13,42),(3,14,183),(7,9,192),(7,14,41),(6,7,35),(11,2,70),(11,2,113),(9,14,177),(2,8,116),(11,10,99),(5,1,181),(3,10,131),(7,3,28),(3,14,32),(1,8,171),(4,1,102),(7,11,93),(6,7,184),(6,1,5),(3,10,18),(1,13,196),(11,10,156),(7,14,171),(1,8,161),(10,6,111),(7,14,34),(1,5,141),(4,3,171),(9,13,5),(5,9,128),(5,2,171),(12,5,106),(3,4,7),(8,12,138),(8,14,93),(1,14,147),(8,8,185),(2,12,150),(5,12,68),(4,10,15),(8,9,130),(7,2,107),(11,11,146),(6,4,31),(1,9,65),(2,6,141),(6,3,177),(2,8,66),(7,6,73),(12,4,189),(5,6,50),(1,2,37),(8,14,84),(8,13,187),(7,10,158),(6,12,74),(8,7,30),(10,9,68),(11,13,155),(8,12,188),(4,10,45),(5,13,101),(8,11,167),(4,9,101),(7,4,67),(4,9,123),(1,4,184),(9,14,124),(2,13,149),(5,6,24),(8,7,47),(1,12,105),(11,5,164),(3,8,1),(8,5,146),(8,5,131),(4,5,118),(3,5,146),(3,12,53),(12,11,130),(7,10,135),(1,5,159),(4,4,149),(6,14,31),(3,11,176),(10,10,77),(8,3,101),(4,12,177),(10,6,202),(3,4,46),(8,1,57),(7,10,150),(2,11,114),(12,5,60),(8,7,184),(9,8,7),(11,13,25),(5,1,50),(7,6,129),(6,9,126),(10,6,144),(9,2,130),(8,2,115),(7,2,161),(4,11,128),(1,6,32),(5,5,188),(7,4,161),(7,14,164),(4,14,107),(12,13,29),(4,13,46),(5,8,126),(9,3,189),(8,13,98),(8,7,168),(9,12,118),(8,14,77),(3,7,190),(6,5,71),(1,7,170),(12,13,159),(8,1,74),(10,2,122),(9,11,128),(7,14,138),(3,2,59),(6,9,120),(11,11,152),(6,4,33),(9,11,17),(9,12,46),(4,4,175),(11,8,161),(7,2,104),(12,8,122),(8,1,85),(4,4,142),(2,2,176),(2,10,125),(9,3,22),(7,12,140),(12,4,194),(3,12,125),(3,12,81),(12,4,173),(12,13,183),(9,12,185),(3,9,56),(5,10,4),(10,1,65),(6,14,174),(9,7,69),(1,2,88),(1,13,59),(9,1,27),(1,11,162),(4,2,45),(10,3,187),(8,8,95),(6,7,34),(4,14,183),(9,3,157),(12,8,192),(9,7,38),(2,13,77),(11,2,14),(7,9,135),(5,10,201),(11,13,197),(5,11,191),(6,3,118),(12,12,95),(5,3,76),(11,4,63),(11,12,6),(8,13,176),(11,5,105),(3,9,35),(7,6,121),(7,10,78),(11,9,89),(5,11,23),(6,1,100),(8,1,98),(2,7,189),(6,3,95),(5,10,173),(3,9,168),(3,5,64),(9,6,120),(7,9,85),(9,8,6),(9,13,62),(6,12,152),(6,10,17),(10,13,88),(4,8,5),(2,1,137),(2,2,148),(4,9,115),(6,4,70),(4,1,135),(1,1,115),(3,13,176),(5,5,69),(1,6,11),(1,6,152),(8,2,133),(8,5,31),(3,3,182),(2,5,46),(7,7,123),(4,3,196),(5,10,64),(11,8,179),(12,10,70),(2,8,136),(10,8,200),(1,11,75),(3,12,16),(6,8,60),(2,8,168),(12,1,106),(4,9,27),(5,4,201),(5,6,31),(10,11,24),(3,4,71),(5,12,2),(4,9,86),(8,12,118),(12,14,10),(5,6,148),(4,7,142),(8,13,4),(9,2,125),(9,13,10),(2,8,137),(3,6,161),(3,8,101),(1,14,193),(9,9,142),(6,14,89),(4,7,119),(9,4,78),(7,1,40),(11,13,159),(5,10,26),(4,5,190),(2,9,12),(4,3,185),(2,3,46),(8,9,148),(2,5,180),(6,9,136),(8,5,3),(7,6,50),(1,5,50),(5,6,64),(8,3,74),(11,1,98),(11,6,118),(9,5,64),(10,2,190),(7,5,143),(5,11,199),(7,6,61),(5,5,3),(1,10,100),(4,7,199),(6,3,29),(6,13,177),(6,7,91),(1,11,199),(12,7,70),(3,11,161),(10,6,86),(9,8,33),(6,6,42),(6,9,29),(8,5,112),(1,14,87),(8,8,156),(10,1,177),(12,14,75),(4,3,28),(10,2,190),(11,12,1),(4,4,91),(9,5,62),(9,4,128),(6,5,12),(5,14,9),(7,9,31),(3,14,85),(12,7,159),(5,4,128),(4,3,133),(5,6,23),(10,12,65),(2,12,7),(9,5,145),(12,4,20),(10,3,26),(6,2,200),(5,7,50),(5,5,176),(5,13,117),(6,6,97),(7,6,128),(9,14,89),(8,10,193),(12,8,180),(12,8,151),(4,5,140),(9,10,113),(9,1,119),(11,2,156),(1,3,164),(1,1,145),(5,5,71),(4,4,28),(10,11,84),(4,4,148),(8,6,150),(12,13,75),(10,6,178),(2,13,198),(6,3,126),(11,4,177),(5,7,55),(6,14,139),(10,13,20),(11,2,74),(10,9,151),(9,13,130),(10,11,80),(2,9,32),(3,10,85),(8,2,201),(11,1,166),(1,14,182),(11,11,174),(9,9,119),(2,1,111),(8,6,28),(1,6,86),(7,3,50),(9,12,65),(10,9,41),(12,14,186),(3,14,16),(5,4,87),(9,6,75),(6,4,6),(2,14,90),(6,6,201),(2,4,87),(6,10,8),(5,10,51),(10,12,154),(1,1,134),(6,9,64),(9,5,100),(10,7,118),(6,8,123),(6,12,28),(3,3,62),(7,10,51),(3,2,147),(6,13,66),(7,7,3),(12,2,31),(3,1,74),(7,14,80),(10,11,30),(4,11,130),(3,4,51),(3,13,103),(10,12,83),(10,4,34),(11,2,201),(10,7,115),(10,10,63),(7,7,127),(5,11,76),(5,14,139),(12,10,186),(12,2,141),(12,11,16),(1,8,186),(9,14,101),(7,13,187),(11,6,117),(4,12,172),(7,12,142),(9,11,201),(10,7,33),(3,7,106),(4,12,179),(2,10,64),(12,6,126),(9,12,49),(7,14,76),(3,12,31),(8,8,192),(9,4,164),(8,5,165),(10,4,107),(3,2,125),(2,8,79),(4,11,88),(9,8,184),(6,9,84),(1,11,146),(5,8,58),(2,10,155),(6,8,32),(4,9,131),(1,11,71),(2,4,178),(9,5,77),(11,10,107),(8,13,136),(1,3,145),(8,1,131),(3,12,48),(8,9,153),(11,10,13),(8,12,182),(12,3,121),(8,6,114),(11,12,17),(8,9,28),(10,13,89),(11,11,88),(11,13,43),(1,9,62),(1,2,89),(8,2,22),(6,6,172),(7,7,27),(2,10,11),(7,14,87),(6,14,12),(2,10,30),(3,11,202),(1,2,129),(9,8,13),(9,5,24),(11,3,7),(11,13,13),(10,12,188),(12,11,52),(1,5,49),(9,9,30),(4,4,82),(8,11,153),(3,7,172),(11,3,80),(12,3,127),(12,13,97),(12,2,106),(8,9,19),(5,8,135),(12,8,66),(7,8,190),(12,4,35),(10,9,53),(11,12,150),(4,10,92),(9,13,183),(9,1,91),(7,2,130),(2,7,131),(10,2,63),(1,1,105),(5,7,180),(2,12,157),(10,11,199),(8,7,108),(7,6,47),(1,4,127),(11,8,81),(1,10,175),(9,7,149),(11,13,53),(4,1,68),(3,3,165),(2,6,106),(3,9,172),(8,11,116),(4,1,93),(11,11,138),(2,3,80),(6,12,78),(11,11,143),(8,9,136),(2,9,96),(12,7,163),(7,12,183),(10,9,101),(7,6,68),(6,1,181),(8,7,9),(4,7,20),(3,6,76),(8,10,88),(3,6,169),(7,4,127),(5,6,24),(3,11,188),(2,1,73),(11,11,85),(2,5,89),(5,4,156),(1,11,171),(9,5,29),(5,13,62),(5,1,160),(11,5,15),(1,4,132),(10,11,39),(9,9,35),(1,12,154),(3,10,70),(6,12,197),(8,2,78),(3,13,41),(12,3,74),(6,13,128),(11,8,35),(2,1,63),(1,13,77),(3,3,130),(3,8,186),(11,11,21),(8,11,83),(6,10,58),(1,12,112),(3,9,73),(3,1,37),(1,4,129),(11,3,93),(1,8,72),(7,1,90),(9,6,184),(6,5,72),(2,13,74),(2,14,65),(6,8,72),(10,13,170),(7,10,60),(4,6,120),(5,10,80),(2,6,59),(10,11,147),(9,3,110),(9,14,67),(2,7,176),(5,4,192),(7,10,32),(4,12,168),(12,2,51),(10,13,179),(5,6,34),(1,6,188),(9,3,60),(3,4,178),(3,11,142),(12,13,80),(11,5,101),(4,9,73),(5,5,168),(9,2,71),(2,6,147),(1,6,95),(5,11,29),(1,10,39),(12,5,9),(9,7,79),(4,1,136),(4,11,124),(1,9,131),(5,11,16),(11,11,17),(9,14,116),(5,8,164),(11,10,58),(7,9,56),(4,10,148),(6,2,190),(6,13,11),(12,5,151),(12,2,45),(8,5,50),(11,8,71),(8,1,153),(3,12,55),(10,9,151),(3,4,30),(6,4,113),(1,8,12),(5,14,32),(8,10,177),(12,6,198),(10,8,35),(9,9,10),(6,1,13),(1,9,182),(7,6,23),(2,2,110),(5,13,100),(2,2,44),(1,8,2),(12,12,46),(4,2,172),(1,11,104),(1,2,134),(5,8,197),(12,7,80),(2,3,111),(7,2,47),(3,10,119),(8,8,127),(3,10,172),(4,9,133),(8,2,130),(9,12,181),(2,11,119),(1,3,157),(10,14,179),(8,3,101),(11,13,137),(9,4,72),(6,8,76),(10,3,81),(9,2,54),(7,10,22),(1,1,135),(8,12,200),(2,11,101),(10,9,112),(7,11,141),(11,1,185),(2,14,185),(8,8,68),(1,13,110),(1,12,158),(4,12,80),(10,10,156),(12,9,84),(5,9,25),(12,9,119),(3,3,32),(6,13,147),(12,13,129),(8,4,164),(10,8,93),(10,10,180),(3,7,193),(4,9,190),(10,7,3),(3,9,180),(4,4,153),(4,6,140),(4,6,120),(6,7,4),(11,12,12),(12,2,113),(10,2,127),(7,8,99),(1,8,29),(2,2,92),(11,6,134),(10,4,193),(11,11,56),(6,13,132),(10,2,55),(12,5,100),(5,12,162),(1,5,146),(6,1,141),(9,13,130),(2,12,68),(4,3,162),(9,13,135),(10,7,172),(4,13,95),(5,8,89),(2,1,191),(8,6,78),(2,6,86),(12,7,54),(7,13,195),(1,5,12),(7,7,29),(6,7,181),(11,14,54),(11,3,178),(6,14,17),(8,8,170),(9,7,198),(6,4,16),(7,10,190),(1,6,83),(8,12,182),(5,5,192),(6,3,127),(11,5,129),(7,12,189),(9,13,164),(3,11,123),(4,13,111),(4,14,12),(6,1,147),(5,11,160),(2,12,46),(6,6,43),(1,13,191),(10,13,52),(11,10,111),(6,2,154),(5,6,38),(10,3,81),(2,14,75),(3,5,1),(10,13,6),(1,10,100),(6,1,96),(6,5,6),(3,3,4),(1,3,5),(2,2,114),(5,6,23),(2,9,18),(10,9,118),(10,4,150),(3,3,15),(1,9,76),(4,9,152),(6,4,91),(12,8,185),(6,1,172),(6,1,143),(5,8,70),(2,2,43),(6,11,123),(2,14,163),(3,7,120),(4,7,73),(9,5,47),(11,11,151),(10,11,181),(8,9,78),(2,12,52),(11,4,173),(11,9,76),(7,13,77),(7,6,30),(3,5,151),(5,6,195),(3,3,89),(1,8,107),(5,9,185),(4,3,31),(4,5,91),(1,1,35),(5,2,40),(8,5,72),(9,9,124),(3,7,48),(1,2,20),(10,6,157),(3,1,179),(4,3,34),(4,8,161),(4,2,179),(11,8,76),(7,8,178),(10,3,195),(11,12,141),(4,10,49),(6,13,114),(12,11,70),(11,4,25),(7,12,81),(6,2,27),(9,13,62),(12,4,195),(5,7,137),(6,5,50),(10,2,103),(9,2,183),(10,7,187),(2,10,113),(12,7,38),(8,8,19),(6,2,162),(7,10,163),(12,4,189),(7,12,144),(4,13,102),(3,1,191),(5,12,32),(4,2,8),(1,2,177),(7,2,59),(3,13,38),(4,10,178),(5,4,177),(8,14,97),(11,8,108),(1,7,92),(6,2,11),(7,9,98),(7,11,34),(8,10,154),(2,12,141),(10,14,43),(7,11,155),(8,9,182),(4,13,175),(12,5,135),(6,9,127),(7,2,192),(10,2,22),(3,2,94),(11,6,104),(3,14,176),(6,2,118),(12,10,105),(9,5,108),(3,14,103),(10,10,110),(2,14,181),(2,8,78),(3,6,183);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'grandesalmacenes'
--

--
-- Dumping routines for database 'grandesalmacenes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-05  0:19:29
