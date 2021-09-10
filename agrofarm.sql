-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 148.72.232.177:3306
-- Generation Time: Mar 31, 2020 at 10:18 AM
-- Server version: 5.5.51-38.1-log
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrofarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pass`, `email`) VALUES
(1, 'admin', 'admin', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`) VALUES
(1, 'Vegetables', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable.jpg'),
(2, 'Fruits', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/fruit.jpg'),
(3, 'Grains', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/grain.jpg'),
(4, 'Oil seeds', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/oilseed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `scp_id` varchar(20) NOT NULL,
  `sfp_id` varchar(20) NOT NULL,
  `c_type` varchar(20) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cost_est`
--

CREATE TABLE `cost_est` (
  `id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `p_cost` varchar(20) NOT NULL,
  `total_wages` varchar(20) NOT NULL,
  `fp_cost` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `etc_cost` varchar(20) NOT NULL,
  `total_exp` varchar(20) NOT NULL,
  `toal_sale` varchar(20) NOT NULL,
  `profit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crop_ferti`
--

CREATE TABLE `crop_ferti` (
  `id` int(20) NOT NULL,
  `crop_id` int(20) NOT NULL,
  `fp_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crop_info`
--

CREATE TABLE `crop_info` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_id` varchar(20) NOT NULL,
  `season` text NOT NULL,
  `irrigation` text NOT NULL,
  `varieties` text NOT NULL,
  `soil_type` text NOT NULL,
  `plant_material` text NOT NULL,
  `spacing` text NOT NULL,
  `harvesting` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_info`
--

INSERT INTO `crop_info` (`id`, `name`, `cat_id`, `season`, `irrigation`, `varieties`, `soil_type`, `plant_material`, `spacing`, `harvesting`, `img`) VALUES
(1, 'Potato', '1', 'October-December', 'Irrigation must be done immediately after sowing. To maintain moisture in soil, irrigation should be done once in a week.', 'Kufri Jyoti, Kufri Muthu, Kufri Swarna, Kufri Thangam, Kufri Malar, Kufri Soga and Kufri Giriraj.', 'The soil should be flexible, porous and well drained. The optimum soil pH range is 4.8 to 5.4. It prefers a cool weather. Potato is mostly grown as a rainfed crop in regions receiving a rainfall of 1200-2000 mm per annum.', 'Use disease-free, well-spouted tubers weighing 40-50 grams for planting. Plant the tubers at 20 cm apart.', 'Ridges and furrows with a spacing of 45 cm between ridges either by hand hoe or ridge.', 'The harvesting time of potato is usually dependent on the weather and market prospects. In case of high demand in the market, harvesting is done slightly early. Irrigation of the plants is stopped at least a week before harvesting potatoes. Harvesting is done once the soil is completely dry. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/potato.jpg'),
(2, 'Brinjal', '1', 'December-January, May-June', 'Install the drip irrigation with main and sub-main pipes and place lateral tubes at an interval of 1.5 m.Place the drippers in lateral tubes at an interval of 60 cm and 50 cm spacing with 4 LPH and 3.5 LPH capacities respectively.Form raised beds of 120 cm width at an interval of 30 cm and place the laterals at the center of each bed.Before planting, wet the beds using a drip system for 8-12 hrs.', 'Pusa Purple Long,Pusa Purple Long,Pusa Purple,Pusa Kranti,Pusa Barsati,,Manjri Gota,Vaishali. ', 'The brinjal plants can be grown in all types of soil.', 'Seeds, Plant', 'Spacing is 90x60x75 cm in the paired row system, using ropes marked at 75 cm spacing. ', 'It is harvested when it attains full size and colour before the start of ripening. Tenderness bright colour and glossy appearance of the fruit is the optimum stage of harvesting it. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/brinjal.jpg'),
(3, 'Onion', '1', 'May-June is best season for planting.', 'Irrigation is done at the time of seedling plantation, during transplantation period, 3 days after transplantation and subsequently at regular intervals depending on the moisture content in soil. Being a shallow-rooted crop, onions need small amounts of irrigation at regular intervals. The last irrigation is done 10 days before harvesting onion.', 'White varieties: Pusa White round, Pusa 1White flat, Bhima Shweta, Bhima Shubra, Agrifound White, Punjab-48 (S-48)     Red varieties: Pusa Red, Pusa Ratnar, Pusa Madhavi, Pusa Ridhi, Arka Pragati, Arka Niketan, Arka Kalyan, Arka Bindu', 'It can grow in almost all types of soils.', 'Plant 45 days old seedlings at a spacing of 10 cm apart on both sides of the ridges.', 'Plants 4 to 5 inches apart in rows 12 to 18 inches apart.', 'Onion harvesting is done when the still green tops start drooping. The plants are gently pulled out from the soil. However, 10-15 days before harvesting irrigation of the field is stopped. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/onion.jpg'),
(4, 'Ladyfinger ', '1', 'June-August, January-March', 'It requires adequate moisture in the soil during summer months for faster growth. Drip irrigation is most suitable to it as it provides uniform moisture throughout the season.', 'Kamini, Pusa Mukhamali, Parbhani kranti, Pusa Sawani, Vaishali, Vagmi, Padmini', 'Lady finger\'s crop grows on Sandy loam and clay loam soil.', 'Seeds, plants', '45x30 cm is the suitable spacing for lady finger. ', 'Flowering begins from 35-40 days after sowing. The crop is harvested in 55-60 days after planting when pods are 2-3 inches long.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/ladyfinger.jpg'),
(5, 'Cucumber', '1', 'June, January-April', 'In summer, crop irrigation should be given to maintain moisture. So drip irrigation is the most effective method for cucumber.', 'Slicing, Pickling, Seedless', 'Sandy lawn is suitable soil for cucumber.', 'Seeds', '18x36 inches spacing is required for cucumbers crop.', 'Harvesting can be done 40-45 days after sowing. timely picking of cucumber is more important for better quality of it.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/cucumber.jpg'),
(6, 'Cabbage', '1', 'Plain: August-November, Hills: January-February, July-August, September- October', 'Provide continuous supply of moisture. Drip system is most effective system.', 'Hills, Plain', 'Suitable soil type is Sandy loam and Clay loam.', 'Seeds', 'For Plain area 45x30 cm spacing is required and for Hills  40x40 cm spacing is required.', 'It is normally harvested when heads reach full size and firm. It is mostly depending upon the maturity of the head and demand in the market. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579509514_green-cabbage.jpg'),
(7, 'Peas', '1', 'October-December', 'Frequent irrigation should be carried out in green peas, again it all depend on season. If it is rainy season, low intervals of irrigation required. However, each irrigation should be carried out at an 8-10 days interval. ', 'Early Bejar, Arket, Jawahar, Bonevilla', 'Well drained soils with pH range 6 to 8.', 'Seeds', '45x25 cm land spacing is required.', 'Green peas pods should be harvested while just short of reaching maturity while it starts changing color from dark to green. For early variety, it may be harvested in 40-60 days, mid season crop can be harvested in 75 days and late season crop can be harvested in 100 days.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/vegetable/peas.jpg'),
(8, 'Banana', '2', 'June-July', 'Requires lots of water to grow. (Mostly use drip irrigation) Irrigation in banana crop is stopped about a week or so before harvesting. ', 'Robusta, Monthan, Poovan, Dwarfcavenish, Nandran, Red banana', 'Rich, Well drained, Fertile, Moisture retentive', 'Tissue culture banana', 'Required spacing for banana crop 1.8x1.8 meter 2.7x1.2 meter', 'While the banana bunches are cut from the fields, other operations like cutting the hands, application of fungicides, etc. must be carried out in the shade. Sunlight may prove detrimental to the shelf life of bananas. The bunch must be 75% ripe, whole, and free from injuries, blemishes and green in color. The bunch is cut with a single stroke and the latex is allowed to flow freely.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581664629_banana.jpg'),
(9, 'Ber', '2', 'March-May', 'First irrigation should be given after pruning. No irrigation should be applied during rainy season. When there is drought apply irrigation after fruit set.', 'Gola, Umran, Banarasi Karka, Mundia, Kaithli, Umran, Mehrun, Parbani, Elaichi and Sanam 5', 'It is a very hardy fruit tree and performs well under adverse climate and poor soil conditions.', 'Seed, plant', 'Spacing required for ber crop is 7.5x7.5 meter, 8x8 meter.', 'Ber fruit matures deferentially, depending upon the time of fruit set. Some cultivars mature earlier than other. Fruit should be picked up at right stage of maturity. It should be picked when it has acquired normal size and characteristic color of the cultivar. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581663323_ber.jpg'),
(10, 'Chikoo', '2', 'January-February, May-July', 'The plants or trees should be irrigated at an interval of 30 days during the winter season and 15 days during the summer season. A drip irrigation is considered to be the best way of irrigation.', 'Kalipatti, Pilipatti, Cricket ball, PKM-1', 'The soil for chikoo tree should be well-drained, deep and porous type. The pH of the soil should be around 6-8.', 'Grafting', 'Spacing required for chikoo is 10x10 meter', 'It starts bearing from the third year of planting but economic yields can be obtained from 5th year onward. The two main seasons of flowering are October-November, and February-March and two corresponding harvesting seasons are January-February and May-June. It takes four months from flowering to maturity of fruits. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581663673_chikoo.jpg'),
(11, 'Guava', '2', 'October-December', 'The trees are regularly irrigated during the fruiting season from flowering to harvest of the crop. Excess of water adversely affects the quality of the fruits besides it favours excessive vegetative growth and invites fungal diseases. Drip irrigation and fertilization are the latest techniques, which economise the use of water and fertilisers. However, during the vegetative growth period moisture is necessary and the system should be on as per requirements.', 'Sardar (Lucknow-4a), Allahabad Safeda, Banarasi Surkha, Apple colour, Red fleshed, Chittidar, Seedless', 'Guava crop can grows on Heavy clay soil or sandy soil.', 'Seed, Plants', '7x7 meter is the suitable spacing for guava.', 'The fruits should be harvested at full maturity but in semi ripe conditions.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/fruits/guava.jpg'),
(12, 'Mango', '2', 'May-July', 'The irrigation requirement of mango plant depends on the climate and soil of the area of cultivation. Soil with good water retention capacity needs lesser irrigation while clayey soils need no irrigation at all. Mango saplings need frequent watering till they establish themselves properly. This also helps promote vigorous plant growth. Once established which is after a period of 6 months, they are irrigated once in every 10-15 days. It must be increased in case of soil with good drainage capacity. Irrigation should also be followed during winter to avoid the saplings from getting affected by frost. It is generally stopped 2-3 months before flowering because it might promote vegetative growth during the flowering period indirectly affecting the yield of the fruits.', 'Neelum, Dasheri, Langra, Badami, Kesar, Amrapali', 'Suitable soil for mango crop is Lateritic, alluvial, sandy lawn.', 'Epicotyl graft', '4-5 meter spacing is required.', 'Mango trees start bearing fruits from the 5th year of planting. The yield however varies depending on the variety and climatic conditions. The first year yields are generally low (3-5 Kg per tree) increasing gradually in subsequent years. Some trees at the age of 30-40 years can bear upto 600 Kg of fruits a year.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/fruits/mango.jpg'),
(14, 'Desi Chana', '3', 'Chana is sown during October-November at end of north-east monsoon where soil moisture is left after the rainfall.', 'Chana can be cultivated mainly as rainfed crop. This crop requires light irrigation, excessive watering should result in extra vegetative growth and reduces the yield of chana. Pre-sowing irrigation is required for better germination of the seed. In case of no rains, irrigation should be given at various stages like pre-flowering, flowering, pod developing.', 'Desi chana: Avrodhi, Pant G-186, Gora Hisari, Pusa-372   Kabuli chana: C-104, L-144, L-550, Pusa-10003, Pusa-053, Sadabahar', 'Chana grows well in sandy, loamy soils which have an appropriate drainage system as water logging is detrimental to the crop. It needs relatively cooler climatic conditions as excessive heat will affect the pod development and pod maturation badly.', 'Seeds', 'The chickpea seeds are sown by local country plough (or) seed drill at a row spacing of 30 cm to 45 cm.', 'The maturity period for desi chana is 95-105 days and for kabuli chana it ranges form 100-110 days. The harvesting is done during the months of February-April when the leaves start drying and shedding.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579509005_desichana.jpg'),
(15, 'Corn', '3', 'Kharif crop: Last week of June to first fortnight July, Rabi crop: Last week of October for inter cropping and up to 15th of November for sole crop, Spring: First week of February.', 'In areas with assured irrigation facilities are available, depending upon the rains and moisture holding capacity of the soil, irrigation should be applied as and when required by the crop. First irrigation should be applied very carefully wherein water should not overflow on the ridges/beds. In general, the irrigation should be applied in furrows up to 2/3rd height of the ridges/beds. Young seedlings, knee high stage (V8), flowering (VT) and grain filling (GF) are the most sensitive stages for water stress and hence irrigation should ensured at these stages. In raised bed planting system and limited irrigation water availability conditions, the irrigation water can also be applied in alternate furrow to save more irrigation water. In rain fed areas, tied-ridges are helpful in conserving the rainwater for its availability in the root zone for longer period. For winter maize, it is advisable to keep soil wet (frequent & mild irrigation) during 15 December to 15 February to protect the crop from frost injury.', 'Hybrid varieties are GM-6 , GM-4 , Narmada Moti, Himalayan 123,30V92,30B07,Sona,Kidan,30R77,Hi-Starch,32T25,31T15,Ganga-1,Ganga-101,Ranjit,Deccan,Ganga-5,Ganga-Safed-2,Ganga-4,Ganga-3 and V.L. 54,Vijay,Amber,Jawahar and Vikram.', 'Corn can be grown successfully in variety of soils ranging from loamy sand to clay loam. However, soils with good organic matter content having high water holding capacity with neutral pH are considered good for higher productivity. Being a sensitive crop to moisture stress particularly excess soil moisture and salinity stresses.', 'Seeds', 'Plant seeds 1.5 to 2 inches deep and 4 to 6 inches apart. Rows should be spaced 30 to 36 inches apart. You may choose to fertilize at planting time; corn is meant to grow rapidly.', 'Harvesting should be done when the crop outer cover of the cob turns from green to white color. Harvesting can be done by hand. Machines are available to separate the seeds. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/grain/corn.jpg'),
(16, 'Rice', '3', 'Rice is grown under rain fed condition during June-August to October-December.', 'Rice crop is strongly influenced by water supply. Water should be kept standing in the field throughout the growth period. Critical stages of water requirements are tillering, panicle initiation, boot leaf stage, heading/panicle emergence and flowering/anthesis(reproductive phase).', 'Traditional basmati, Sharbati, Sugandha, PUSA Basmati ', 'Rice can be cultivated on a wide variety of soils such as slits, loam, gravels and can tolerate acidic as well as alkaline soils. ', 'Seed, Grafting', 'The spacing for rice is 20 X 30 cm at 2-3 seeding/hill.', 'The crop should be harvested when the grains turn yellow, moisture content is below 25%.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/grain/rice.jpg'),
(17, 'Juar (sorghum)', '3', 'Juar crop is grown in almost all the seasons of the year. Kharif juar is sown nearly in the last week of june or first week of july depending upon onset of monsoon. Whereas Rabi juar is sown in the month of October-November.', 'Monsoon sown crop needs almost up to 3 irrigations based on rainfalls. Whereas November sown needs almost up to 7 irrigations because of the high temperature. Rabi Jowar needs almost 5 to 6 irrigationsÂ in the southern parts of India', 'Single cut: HC-136, Rajchari-1 & 2  Double cut: CO-27, AS-16  Multicut: SSG-988, 898, 855 ', 'Juar crop adapts wide range of soils but grows well in sandy loam soils having good drainage.  Soil pH range of 6-7.5 is ideal.', 'Seed', 'A spacing of 40-45 cm between the rows and 15-20 cm between the plants is quite satisfactory.', 'Juar crop is ready for harvesting after 65-75 days after sowing depending upon the variety. The crop should be harvessted at proper stage to avoid grey mold damage.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579508778_Juar.jpg'),
(18, 'Wheat', '3', 'Late November or Early December', 'Wheat crop requires 8 irrigations, first irrigation should be given at CRI stage, second at 12-13 days of sowing and subsequent irrigations should be given at 8-10 days interval. ', 'GW-173, GW-366, GW-503, GW-451, Lok-1', 'Wheat needs soil with a moderate amount of water holding capacity. Being very sensitive to water logging, heavy soils with poor drainage capacity is not preferred for wheat cultivation. If wheat is grown as a dry crop heavy soil with a good drainage capacity is preferred. On the contrary, soil with moderate drainage capacity is preferred for wheat as irrigated crop. The soil used for wheat cultivation must be free from coarse sand, gravel, stones, have a uniform texture and should be deep. It must be soft enough to permit deeper root penetration.', 'Seeds', 'The distance between two plant should be 22.5 to 23 cm.', 'Harvesting is done by March-April when grains become hard, straw become golden yellow, dry and brittle.', 'http://service.techfusiontechnologies.com/agrofarm/upload/agrotrade/grain/wheat.jpg'),
(20, 'Mustard (Rai)', '4', 'Mustard usually sown in September- october months. ', 'Pre- soaking irrigation should be given before sowing the seeds. 3 irrigation should be applied at 4 weeks interval after sowing the seeds.', 'Pusa Agrani(SEG-2), Kranti, Pusa Vijay(NPJ-93), Pusa Mustard-27(EJ-17), Sita, NPJ-112(Pusa Mustard-25), Varuna, Krishna', 'Mustard can be grown in wide varieties of soils that ranges from light to heavy loamy soils. Medium to deep soils with good drainage is best suitable for mustard cultivation. Soil ideal pH range for mustard is 6.0- 7.5. ', 'Seeds, Plants. ', 'Spacing of plant should be about 45X20 cm. In pure mustard crop, seed rate could be about 4-6 kg per hectare. In mixed crop, seed rate could be about 2-3 kg per hactare. For better germination, seeds should be sown maximum of 6 cm depth in the soil. Make sure there is enough moisture present in the soil when seeds are sown.', 'Harvesting should be carried out as soon as the pods begins to turn yellow color and seed becomes hard. The mustard crop matures in about 110-140 days. Harvesting should be done in early morning hours to avoid any shattering of seeds. Use sickle to cut the crop close to the ground.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579587772_Mustard-Seeds.jpg'),
(21, 'Peanuts,Groundnuts(Magaphali)', '4', 'It can be grown in January-May.', 'Adequate available water in the uper 60 cm layer of soil is an important for high yield and good quality groundnut seed. Most soils at field capacity will hold about 3.1 cm of water at 30 cm of depth. The highest groundnut yields are observed when available soil moisture is kept above 50% of field capacity. Therefore, sprinkler irrigation is recommended when the moisture has been depleted to 50% of field capacity in the top 60 cm. During peak water use period(0.6-0.7 cm day-1) the field may require 3.0-3.5 cm of water every 5 days. Irrigation intervals can be prolonged for 7-10 days during periods of low daily water requirements.', 'Kadiri-2, Kadiri-3, BG-1, BG-2, Kuber , GAUG-1, GAUG-10, PG-1 , T-28, T-64, Chandra, Chitra, Kaushal, Parkash, Amber', 'Groundnut is perfectly grown in well-drained sandy loam or sandy clay loam soil. Soil ideal pH for groundnut is 6.5-7.', 'Seed, Plant', 'The spacing should be 22.5 to 30.0 cm between the rows and 10 cm between the plants. Cross sowing can also be used but there was no any remarkable difference in yield was observed in cross and line sowing crop of groundnut.', 'Groundnut types produce pods all along the running stem. It is harvested either manually or by using a blade harrow or even a country plough. The soil should be sufficiently moist for easy harvesting and without loosing pods in the soil.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579589470_groundnut.jpg'),
(22, 'Sunflower', '4', 'Sunflower can be grown successfully in any season viz., kharif, rabi and spring throughout the india.', 'In sunflower farming, normally no irrigation is needed for kharif crop. Hpwever, one irrigation may be given in case of uneven distribution of rainfall. Rabi crop may be irrigated thrice after 40, 75 and 110 days of sowing. It is highly sensitive to water stress between flowering and grain filling stages. Therefore, one irrigation may be provided in case of moisture deficiency during this stage. Irrigation requirement of the crop during summer is relatively higher. Irrigation at the grain filling should be light and given on calm and windless evening to avoid lodging. Among the various stages, bud initiation, flowering period and seed development stages are critical stages in terms of irrigation.', 'JAUSUF-15, Morden TNAUSUF-7, KBSH-1, Jwalamukhi, PAC-36, PAC-1091, MLSFH-47, Sunjene-85', 'Sunflowers generally grow best on well-drained soil, are tolerant of clay loam or silty clay loam soils and perform comparatively well on sandy loam soils.', 'Seed, Plant', 'Sunflower should be sown 60 cm apart in lines with a plant to plant spacing of 20 cm. A seed rate of 8-10 kg per hectare is sufficient to ensure good crop stand. The seed should be sown at 3-4 cm depth for better stand.', 'Sunflower crop is ready to harvest when moisture in the seed is 20 percent. The heads are right when the back of the head turns yellowish-brown. All heads may not be ready for harvesting art one time. Harvesting may, therefore, be done in 2 or 3 installments to avoid shattering. The harvested head should be dried well in sun and then only threshes by beating the center of the head with a small stick.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579590568_sunflower.jpg'),
(23, 'Soyabean', '4', 'Best season to plant soyabean from 3rd week of June to mid of July.', 'The soyabean crop generally does not require any irrigation during kharif season but if there were any a long drought at the time of pod filling, 1 irrigation would be required. During rainy season make sure crop soil has proper drainage to avoid the water logging. Spring crop would require about 6-7 irrigation.', 'Phule Kalyani, Pant soybean-1029, Pusa-9712, TAMS-38, Pusa-16, Ahilya-2', 'Soyabean requires wee-drained and fertile loamy soils with a pH range between 6.0-7.5 are most favorable for it\'s cultivation. Water logging damages the crop, so it is mandatory to have good soil drainage in rainy season.', 'Seeds, Plant', 'In soyabean, plant to plant distance can be kept from 4-5 cm. The sowing should be done in lines 45-60 cm apart with the help of seed driller or behind the plough. The sowing depth of the soyabean seed should not be more than 3-4 cm under ideal moisture conditions.', 'The maturity of soyabean crop period ranges from 50-145 days depending on the varieties used for cultivation. It should be an indication of maturity when the leaves turn yellow and drop and soyabean pods dry out very quickly. There would be a rapid loss of moisture from the seed. At harvesting time, the moisture content in the seeds should be about 15%. Harvesting should be done by breaking the stalks on the ground level or the hand, or with sickle. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579593374_Soybean.jpg'),
(24, 'Sesame (Til, Tal)', '4', 'The sesame crop grown as summer crop, Kharif crop and also as semi-rabi crop.', 'Irrigate the field at sowing to keep enough moisture for good germination. Depending upon the soil type and climatic condition, provide life irrigation at 7 days after sowing.There are 3 critical stages of watering in sesame farming, first one at pre-flowering stage (22-25 days after sowing), second one at  flowering stage (35 to 45 days after sowing) & 1 (or) 2 irrigations at pod setting stage. During the seed maturity stage, maintain low moisture status because seed maturity is affected and filling up of the capsules would be poor. Hence, stop watering after 65 to 70 days of sowing.', 'Hybrid varieties: CO-1, TMV-3, TMV-4, TMV-5, TMV-6, TMV-7, VRI(SV)-1, VRI(SV)-2, SVPR-1 ', 'Sesame thrives well on soils with neutral reaction (or) slightly acidic type. There should not be any water stagnation in the soil, so make sure soil is well drained and light loamy', 'Seeds', 'Sowing of sesame can be done in broadcast or line. However sowing the seeds in lines is preferred.Make row-to-row spacing of 25 cm to 35 cm and plant-to-plant spacing of 10 cm to 20 cm.', 'Depending on the variety, this crop comes to maturity in 3 to 5 months. Harvesting can be started when the leaves, stems and capsules begin to turn yellow and the lower leaves of the plant start shedding. Don\'t wait until the crop becomes dead ripe which will cause the shedding of seed. The ripe sesame plants should be cut at the ground level and should be stacked for 7 to 10 days in sun to make them ready for threshing.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581407571_sesame.jpg'),
(25, 'watermelon', '2', 'Dry season (winter).if you live in cooler climate then summer is best season.', 'The watermelon beds are irrigated two days prior to sowing and then again 5 days after sowing the seeds.as the plant grows , irrigation is done on a weekly basis.', ' Vandana,kiran,sugar baby,watermelon sultan,improved shipper,madhubala , arjun', ' Watermelon grow best in sandy loam soil,it also grow well in black soil and sandy soil.', 'Seeds', 'The seeds are sown at a depth of 2-3cm from the top soil.', 'The tendrils near the stem start drying The white colored part of the fruit touching the ground turn yellowish A thudding sound is produced when the melons are thumped (a dense sound is produced from immature fruits).', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581407544_watermelon.jpg'),
(26, 'Piegon pea(tuvar)', '1', 'November-March', 'There is need of three irrigation.  1st at branching stage , 2nd one in flowering stage ,and 3rd at the time of podding stage.', 'Arhar, Tuvar, Toor, tur dal.', 'It grows well on all types of soils but loam to sandy loam soil is suitable.', 'seeds', 'Row to Row  45 - 60 cm & Plant to Plant - 10 - 15 cm', 'Harvesting when nearly 75% of the pods get matured at a time, the crop should be harvested.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581406929_tuver.jpg'),
(27, 'mug(mug bean)', '3', 'March to  June ', 'Irrigation should be done after sowing, followed by life irrigation on the 3rd day. Irrigate at intervals of 6 to 9 days depending upon climatic conditions and soil type. Irrigation must be provided at flowering & pod formation stages. Make sure soil has proper drainage and avoid water logging at all stages of plant growth.', 'RUM-1,HUM-12,BM-4,PDM-54,JM-72,K-851,PDM-11', ' For best production of Green Gram One should select the soil like well-drained loamy to sandy loam soil.', 'Seeds', 'Dibble the Green Gram seeds making a  space of 30 cm x 10 cm in Green Gram farming. In the case of bund crop, dibble the seeds with 30 cm spacing.', 'The best time to harvest the crop, when 85% of the pods are fully matured. Avoid harvesting in bad weather condition and keep the harvested stack for drying in the field after cutting on the threshing floor. Remove any admixtures before the start of harvesting.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581406771_mugbean.jpg'),
(28, 'papaya', '2', 'Papaya is planted during Spring (February-March), Monsoon (June-July) and Autumn (October-November).', 'The irrigation schedule is fixed on the basis of soil type and weather conditions of the region. Protective irrigation is provided in the first year of planting. During the second year, irrigation is provided at the fortnightly interval in winter and at an interval of 10 days in summer. Basin system of irrigation is mostly followed. In areas having low rainfall, sprinkler or drip system can be adopted.', 'Varieties of Papaya are: Co-1 to Co-8, Pusa Majesty, Pusa Delicious, Pusa Nanha, Pusa Dwarf, Pusa Giant, Surya, Arka Prabhat, Coorge Honey Dew, Washington, SoloÂ varieties, Ranchi, RCTP-1and Red Lady are someÂ varietiesÂ ofÂ papaya', 'Papaya can be farmed in many types of soils, except sandy and sticky or heavy clay soils.In heavy soils, slightly sloppy land is preferred to a perfectly leveled one. Hilly soil of this region is best suited, being well drained in organic matter.', 'Papaya is commercially propagated by seed and tissue culture plants.', 'A spacing of 1.8 X 1.8 m. is normally followed.However, higher density cultivation with spacing of 1.5 X 1.5 m./ha enhances the returns to the farmer and is recommended. ', 'Fruits are graded on the basis of their weight, size, and color. A good crop may fail if the harvesting of fruits is not done properly due to the perishable nature of fruits. The fruits should be left on the tree until they mature fully. Usually, the fruits are harvested when they are full size, light green with a tinge of yellow at the apical end. On ripening, fruits of certain varieties turn yellow but some of them remain green. When the latex ceases to be milky and become watery, the fruits are considered suitable for harvesting. While picking the fruits from the trees, care must be taken that these are not scratched and are free from any blemishes, otherwise, there will be an attack of fungus and the fruits may start decaying during marketing.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581406458_papaya.jpg'),
(29, 'sugarcane', '2', 'It can be grown both as rain-fed and irrigated crop in most of the tropics.For rain-fed crop, the field should be prepared at least 2 to 3 months in advance of monsoons.', 'Watering the sugarcane crop is crucial in different stages of growth. Before starting the commercial cultivation of sugarcane, you must ensure proper irrigation facilities, though you are growing as a rain-fed crop. On an average, a sugarcane crop requires 40 to 45 irrigations for its complete growth. However, this number of irrigation may depend on the soil, variety, a plating method, and climate. Usually, black soils take fewer irrigations they retain moisture for long. 	Irrigate the field once in 7 days during the emergence of sprouting of setts. Usually, this sett sprouting lasts for 30 to 35 days after planting the setts. 	Subsequent irrigations should be provided at an interval of 10 to 12 days during the tillering stage. You follow this irrigation 90 days after the plantation on the main field. During the high growth period, this crop requires a good amount of water to establish proper stems. This period can last for 180 days. 	Finally, Maintain a frequency of irrigation once in 11 to 14 days till the harvesting point. 	You can use subsurface drip irrigation or furrow method of irrigation depending on available water sources.', 'Bhima,Prabha,Nayna,Bhavani,Kalyani,uttara,sarayu,Moti,Dhanush,Krishna,Co plant,Raseeli,Pramod,Sweta', 'the soil require for sugarcane:- Black cotton soils with good drainage.Deep and loamy soils rich in humus (organic matter) with good drainage. The optimum soil pH for Growing Sugarcane is 6.5, however, it can tolerate certain extent of soil acidity and alkalinity. Hence, it can be grown in soil with a pH in the range of 5 to 8.5. Avoid water logging fields as sugarcane crop may be affected by many diseases such as root rot etc.', 'Sugarcane is vegetatively propagated for commercial cultivation. Different kinds of planting materials viz., cane setts; settlings and bud chips are used for raising sugarcane crop.', 'Usually, sugarcane is planted in ridges and furrows with a spacing of 60â€“135 cm between the rows, the most common spacing being 90 cm.', 'The maturity of sugarcane depends on the variety; some varieties will be ready for cutting in 10 months some to 15 months after planting. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581674465_sugercanee.jpg'),
(30, 'Jack fruit', '2', 'Jack-fruit season is September through December, and again from June to August. Peak production is during the monsoon season. The Maharajapuram variety yields fruits even during the off-season from December through July.', 'Generally Jackfruit is grown under rainfed conditions. There is no specific schedule of irrigation but jack-fruit plants need watering regularly during the initial 2 to 3 years. These trees are sensitive to drought conditions; hence irrigation should be given in hot dry weather conditions. Ring system can be adopted in watering this trees.The frequency of irrigation always depends on the soil moisture holding capacity and weather conditions. They donâ€™t need any watering in rainy season. In case of floods or heavy rains, make sure to drain out the water from the soil as water stagnation will impact the tree growth and fruit development.', ' Black gold,china,cochin,dang Rasimi,golden-nugget,golden pillow ', 'Jack-fruit tree requires fertile and well-drained sandy loam soil land should be selectedÂ  with well drainage. Supplementing the soil with organic fertilizers always help in the growth of the jack-fruit tree. Lands nearby river beds are suitable for jackfruit cultivation.', 'seed are use for planting jackfruit.', 'The square system of planting is commonly practiced for planting but hexagonal system may be followed in less fertile soils. In fertile soils, a spacing of 12 x 12 m accommodating 70 plants per hectare will suffice for this fruit crop', 'Harvesting in Jack-fruit Farming:- Jack-fruit will be ready for harvesting after 7 years of planting. Grafted jack-fruit plants starts bearing fruits from 4th year itself. In Singapore jack-fruit variety, plants that were grown from seedling start bearing fruits in 3rd year. Generally, jackfruits are available from March to June period.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581674668_jackfruit.jpg'),
(31, 'Pomegranate', '2', 'Air layering is usually done during the rainy season and also in November-December.Â  Planting is usually done in spring (February-March) and July-August in sub-tropical and tropical regions respectively.', 'First irrigation is provided in case of mrig bahar crop in the middle of May followed by regular irrigation till the monsoon sets in. Weekly irrigation in summers and that during winters at fortnightly intervals is recommended', 'Ganesh, Mridula, Arakta, Ruby, Phule Bhagwa, and Phule Bhagwa Super', 'Pomegranates prefer well-drained loam, pH 5.5 - 7, but tolerate considerable amounts of alkalinity and sodium in the soil. It should be mulched annually with rotted manure or compost.', ' Pomegranate is propagated vegetatively by cuttings, air layering or gootee', 'A spacing of 4-5 m. on marginal and very light soils is recommended. Pits of 60 X 60 X 60 cm. size are dug (at a spacing of 5 cm.', 'Pomegranate harvesting begins in August, just before the fruit is fully mature.9 Pomegranates do not continue to ripen after harvest and should be picked when fully ripe for best eating quality.10 The fruit is ready for harvest if it makes a metallic sound when tapped. Certain environmental conditions can cause pomegranate fruit to crack open, including rain, wind, and insufficient irrigation.8 The stem is generally removed at harvest to prevent damage to other fruits during the shipping and handling process.8 In north and central Florida, pomegranate fruit ripen from July to October.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581410261_pomegranate.jpg'),
(32, 'Cauliflower (Fulevar)', '1', 'There are main two seasonal type of cauliflower: 1) Early seasonal crop, 2)Late seasonal crop. Late cauliflower types are grown for a longer period compared to Early crop.', 'Watering should be provided to crop every 4â€“7 days to the early planting and 10 to 15 days for late crop cultivation. At head formation time, there should be enough moisture content in the main field, so irrigation is required at this point in time. When cauliflower is cultivated late in the season, it should be irrigated frequently. Drip irrigation or Sprinkler irrigation can also be considered for utilizing the water source effectively.', 'Early seasonâ€“Early kunwar, Early Synthetic,Pusa Katki, Pant Gobhi-2, Pant Gobhi-3,  Late seasonâ€“ Pusa Snowball-1, Pusa Snowball-2, Sonwball-16, Dania Kalimpong', 'Cauliflower needs fertile, well-drained, moist soil with plenty of rich organic matter.', 'Sow your seeds in fertile material at a depth of half an inch (1.25 cm) and water them thoroughly. Cover the soil with plastic wrap until the seeds have sprouted. Cauliflower seed germination usually takes 8 to 10 days. When the seedlings appear, remove the plastic and keep the soil evenly moist', 'Use spacing of 45 x 45 cm for main season crop whereas for early and late maturing crop use spacing of 45 x 30 cm.', 'Cauliflower crop is ready for harvest  90-120 days after planting.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581411271_cauliflower.jpg'),
(33, 'Lemon', '2', ' July-August', 'Lemon requires irrigation at regular intervals. Lifesaving irrigation should be given in winters and summers. Irrigation is necessary for Flowering, Fruiting and proper plant growth. Over irrigation may also leads to diseases like Root rot and collar rot. High frequency irrigation is beneficial. Salty water is injurious for crop plants. Partial drying out of soil in spring may not affect plants', 'Assam lemon, Italian lemon, Pant lemon, Galgal and Eureka lemon', 'Lemons can be grown in all types of soils. Light soils having good drainage are suitable for its cultivation.', 'Plants are use budding or air layering.', 'Spacing between plants should be kept between 4.5X4.5amd  Pits of size 60X60X60cm should be dug for planting seedlings. ', 'For harvesting Depending upon variety fruits are generally ready for harvesting in Mid- January to Mid- February. Do harvesting at proper time as too early or too late harvesting will give poor quality.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581412139_lemon.jpg'),
(34, 'Jamun (jambu)', '2', 'Jamun trees can be planted in both spring (from Feb-Mar) and monsoon season (July-August). Trees planted during spring season should be provided enough irrigations to survive in dry hot summer weather.', 'Young Jamun plants in early stages requires frequent watering but subsequently, irrigations should be reduced, initial stages of plants requires about 12 irrigation per year (monthly once). Mature trees require once in 2 months in a year, this is important at the fruit ripening stage, occasional irrigation may be carried out when the soil becomes dry and to keep the soil in moist condition.', 'The most common variety is \"Ram Jamun\" (or) \"Raja Jamun\"', 'The Jamun trees can be grown on a wide variety of soils. However, loamy and well-drained soils are best suited for good yield and plant growth. Jamun thrives well under waterlogged and salinity conditions as well but these plants does not like very heavy and light sandy soils. Field should be selected such a way that soil should retain good moisture content for better fruit growth.', 'Plant material use for jamun is both seed and vegetative.', '10mX10m (for seedling trees) and 8mX 8m apart (for budded and grafted plants).', 'The seedling Jamun trees start bearing after 9 to 10 years of planting. Grafted or Budded trees start bearing in 5 to 7 years. The Jamun plant can bearÂ  for the life span of 60 years. Generally Jamun fruits come to ripening stage in June-July. After full bloom, It takes about 4 to 5 months to ripen the fruits. Fully ripen Jamun fruits should be harvested daily by shaking the tree branches (or) hand picking & collect the fruits on a polythene sheet. As all fruits do not ripen at the same time, hence it requires number of pickings.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581413107_jamun.jpg'),
(35, 'Bottle Gourd (Lauki , Dudhi)', '1', 'January-March and September-December are the ideal seasons for growing bottle gourd. For the rain fed crop, sowing can be started after the receipt of first few showers during May-June.', 'First Irrigation may be given just after sowing. The crop requires frequent irrigation.Summer season crop requires irrigation at 6-7 days interval whereas sparingly during the rainy season. The total number of irrigation would be 8-9.', 'Pusa Navven, Arka Bahar, Summer prolific Round,Summer prolific long, Pusa Manjiri,Pusa Meghdoot, Samrat.', 'Bottle gourd tolerates a wide range of soil but prefers a well drained sandy loam soil that is rich in organic matter.', 'Approximately 3-4 seeds are required', 'Prepare 2.0 to 2.5m wide beds and sow seed on both the sides of beds at a distance of 45-60 cm', 'The crop is ready for harvesting in about 60-70 days after sowing depending upon variety and season.Harvest only tender and medium sized fruits which are still tender and shining in color.In peak season,perform picking activity in every 3 or 4 days.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581572655_bottlegourd.jpg'),
(36, 'Beetroot', '1', 'Suitable season for planting is Mid-April- Mid July', 'Avoid over-watering. This causes beetroot to produce more leaves and less root, risking them ', 'Detroit Dark Red, Crimson Globe, Crosby Egyptian, Early Wonder', 'Garden beets are produced on a wide variety of soils but deep, well-drained loams and sandy loams are considered the best. Heavy soils are not satisfactory for beets because the roots are likely to be unsymmetrical in shape when grown on such soils.Beetroot likes neutral, moist, fertile soil without too much lime or acidity. The soil should be soft and not have too much clay or too much sand; however, since the root develops at the surface, clay soil can be tolerated if the top has been loosened by the addition of lots of well-rotted organic matter(don\'t add this unless the soil has much clay).', 'Seeds, each seed is sown is really a fruit containing 2-6 seeds.', 'Beet root preferred to be sown on ridges by keeping the row to row distance 30 to 40 cm and plant to plant about 15 -25 cm.', 'Harvesting of beetroot can begin around nine weeks after sowing the seed. At this stage, the bulbs will be about 2.5 cm (1 in) in diameter and they will be at their most tender-important for salads.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581572944_beetroot.jpg'),
(37, 'Oats', '3', 'Oats are an annual plant, and can be planted either in autumn (for late summer harvest) or in the spring (for early autumn harvest). drilling method is the mostly used.', 'Oats are cultivated as rainfed crop, in case of irrigated crop, it requires 1 irrigation for every 15 days after sowing the seeds.', 'Brunker-10, NP-2,Weston-11,Np-1,Kent,Palampur-1,OS-6,OS-7,OL-9,HFO -114,UPO-94,Algerian,Bundel Jai-822,Harita (RO -19),Sabzaar (SKO-7),Haryana Javi-8 and Bundel Jai 2001-3.', 'Oat can be cultivated on wide range of soils. However they thrive best on well drained loamy soils having good organic matter.', 'seeds', '20 cmÂ to 30 cm distance between any two rows.', 'Oat crop will become available for harvesting after 4 months of sowing. If it is for fodder use, 2 cuttings should be taken @ 40 to 45 day\'s interval and leave for seed setting. In order to avoid grain shedding, crop harvesting should be done in early April month.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581573228_oats.jpg'),
(38, 'Bell papers (Capsicum)', '1', 'Winter is the suitable season for planting ', 'drip irrigation started daily to supply 2-3 liters of water per square meter per day depending on the local weather condition. Capsicum plants are trained to retain 2-4 stems per plant. Pruning is done at weekly interval starting from 15-20 days after transplanting.', 'bomby(red),indra(yellow),orobelle(green)', 'Capsicums grow best on deep (minimum of 30 cm) loamy and well-drained soils', 'The planting material should be healthy, resistant to diseases & pests.Age of the seedling should be 35 to 40 days old. Height of the seedling should be 16-20 cm. The plant should possess good rooting system. The seedling should have at least 4-6 leaves on the stem at the time of plantation and also seeds are planted in zig-zag manner', '75 cm width with 45 cm height and leaving 45 cm working space between two beds.', 'Harvesting of capsicum fruits starts from 60 days of planting in case of green color capsicum, 80-90 days in case of yellow and red fruited hybrids. Harvesting continues up to 170-180 days at 10 days interval in green and up to 200-250 days in red and yellow. Fruits that are mature green, yellow when it is 75% yellow and red when it is 100% red are harvested and kept in a cool place.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581574338_capsicum.jpg'),
(39, 'Tindora (Tinda)(Ivy Gourd)', '1', 'The planting should be done before rainy season/monsoon starts (June to July) or in the spring season (Feb to Mar).', 'Irrigate the plants immediately after plantation is done. During the hot summer season, these plant requires light irrigation at 1-week interval. Irrigation may not be required in the rainy season. Using drip irrigation will be beneficial to maintain adequate moisture during the flowering stage', 'Major types are Striped Tindora and Non-Striped Tindora. Sulabha, Indira Kundru-5, and Indira Kundru-35 ', 'Well-drained rich sandy loam soils are best for its cultivation. Heavy clay soils, acidic and alkaline soils should be avoided. ', 'seeds ', 'Tinda is primarily grown as a sole crop.Three or four seeds are sown per hill at a depth of 2-3 cm, spaced at approximately 90 cmX150 cm', 'These vegetables will be ready for harvesting in 3 months period. Hand-picking or sickle is used to harvest the vegetable. handpicking may damage the vine, so better use a small cutter to harvest the Tindora vegetable.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581575122_tinde.jpg'),
(40, 'Valor papdi', '1', 'Monsoon (month of July) is the suitable season for planting', 'Generally this is grown as a rainfed crop, however in case of irrigated conditions, watering should be provided  weekly interval in summer andÂ  2 weeks interval in winters. In other times, depending on the soil moisture, irrigation can be given.', 'Deepali,Rajni,Dasara,KDB 403,KDB 405,Kankan Bushan,Phule Gauri,Pusa Early Prolific,Pusa Sem 2.Pusa Sem 3.', 'This crop is grown in wide range of soils. However, loam soils are best suited for its cultivation. This crop also grows well in alkaline and saline soils.', 'seeds', 'Spacing is dependent on the variety creeping nature and general spacing is 1 meter X 1 meter and The seeds can be sown in rows or on ridges by drilling or by dibbling method. Flat bed, ridges and furrow layout is used in the seed sowing method.', 'The Indian bean crop will be ready for harvesting after 3 months of sowing.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581837276_valorpapdi.jpg'),
(41, 'Garlic ', '1', 'Garlic is planted as both kharif (June-July) and rabi (October-November) crop- it depends on the regions.', 'Garlic needs proper amount of water for moisture , but too much water cause problems. The best way is to irrigate crop frequently like immediate after planting or after a week or 10days depending on moisture of a soil.', 'Bhima Omkar,Yamuna Safed (G-1),Yamuna Safed-3 (G-282),Yamuna Safed-5  (G-189),GG-4,Godavri,Shweta', 'Garlic can grow in different types of soil, loamy soil with natural drainage is optimum for this crop. It grows at an altitude of 1200 to 2000 m above sea level. It is sensitive to acidic and alkaline soils, hence, a pH of 6-8 is suitable for optimal growth of garlic. A clayey, water-logging type soil is also not suitable for garlic growing. Soils with rich organic content, good moisture, high amount of nutrients aid in proper bulb formation. A heavy soil with less moisture and more water logging would result in deformed bulbs. Soils with poor drainage capacity causes discolored bulbs', 'Fully-matured and well-developed bulbs of medium-to-large cloves should be selected as planting materials.', 'The distance of planting varies from 15 cm x 15 cm to 20 cm x 10 cm to 25 cm. Planting is done using dibble or pointed stick to insert two-thirds of the length of the clove vertically into the soil or about 2 cm to 3 cm deep.', 'Garlic is ready to harvest within 120-150 days of sowing depending on the variety. They are ready when the leaves start yellowing and become dry. The bulbs are then pulled out, sheath cut near the bulb and roots are trimmed. They are then sun-dried for a week. This process is important for the hardening of the bulbs. Before storing they are graded according to the size and weight.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581837399_garlic.jpg');
INSERT INTO `crop_info` (`id`, `name`, `cat_id`, `season`, `irrigation`, `varieties`, `soil_type`, `plant_material`, `spacing`, `harvesting`, `img`) VALUES
(42, 'Snake Gourd (Parval)', '1', 'Season for planting in cropland is Jan to July.', 'Watering lands on the alternative days or in an interval of 2-3 days is a good practice. During the summer days, a regular irrigation might be required. Furrow irrigation is a very consistent way to support plants without having the risk of over-watering or under-watering. However, when considering furrow irrigation, itâ€™s essential to judge the soil condition, row-spacing among furrows, needed slops like factors to fetch the best outcome of irrigating your plants. Land should be well-drained and be cautious to avoid over-watering. In places, where rainfall is less, choose deep watering that not only helps save water but also provide needed nourishment to tree root in deep soil areas.', 'CO-1, CO-2, PKM -1, MDU -1 , PLR (SG)-1,PLR 2.', 'Snake gourd grows well in any good soil, however, they yield highest productivity in the areas with sandy loam soils.', 'Seeds,Sow 5 seeds in each pit.', 'Prepare pits having 30-40 cm depth and 50-60 cm diameter with spacing of 2.5 x 2.5 M and then consider fertilizing the topsoil of the pit.', 'The Snake Gourd become ready for harvest from  45 to 60 days of sowing depending on the Variety.As you should not be harvest them immature, uniformly, make sure to reap the fruits as they reach the desired size and before becoming ripe.Cut the full-grown Snake Gourd with a knife and this can be done weekly.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581578525_parval.jpg'),
(43, 'Lineseed(Flax seed),(Alsi) ', '4', 'the main season for sowing linseed is October to November depending upon the availability of soil moisture', 'Under dry climate irrigation is done. ', 'K-2, T-397, No.55, NP (RR) 9, S-4, Jawahar-17, Jawahar-7 (R-7), M-10, Mayurbhanj, LC 185, Hira, Mukta, Neelum, B-67, B.S.44 .', 'It does best on clay loams, deep clayey black soils. It does well on the deep clayey black soils of central and peninsular India and on the alluvium loams of the Indo-Gangetic plains except The sandy and badly drained heavy clays,', 'seed,plant', 'The optimum spacing is 20-30 cm between rows and 10 cm between plants.', 'Crop should be harvested by sickle when the leaves are dry, the capsules have turned brown and seeds become shiny.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581581508_flaxseed.jpg'),
(44, 'Custord Apple', '2', 'Planting is done in rainy season.', 'It does not require and prefers semi-arid conditions.For Atemoya after manuring irrigation may be given. However, when the fruits are developing one or two irrigation will improve the fruit size and yeild.', 'Balanagar. Red Seethaphal. Washington. British Guinea. Island Gem. Pink\'s Mammoth. Atemoya. Stone Fruits.', 'Custard apples grow best in sandy loam soils, but well-structured clay loams are also suitable. Although the tree\'s main feeder roots are relatively shallow, at least 1 m of well-drained soil without heavy clay or rock is needed to avoid root rot and ensure good tree performance', 'Grafts and budded plants.', 'The pits of 60x60x60 cm at spacing 4X4 m or 5X5 m or 6X6 m depending on soil type are dug prior to monsoon and filled with a good quality FYM(Farmyard Manure), single super phosphate and neem or Karanj cake under dry conditions and with drip irrigation system planting at 6X4 meters has given good growth and better fruit setting.', 'Harvesting Should be done at the proper stage of maturity. Fruits are harvested when the color is light green,segments become flat,the interspaces between segments become yellowish white and initiated cracking of skin between the carpel.Fully mature fruits ripen in  2-3 days after harvest. ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581583891_custurdapple.jpg'),
(45, 'Coconut', '2', 'Planting can be done during April also. In low-lying areas, plant the seedlings in September after the cessation of heavy rains.', 'Soil moisture very often limits coconut production in those areas where long spell of dry weather prevail or where the rainfall is scanty and ill-distributed. The irrigation requirement varies according to the soil type and climatic condition. Drip irrigation is the best suited method of irrigation for coconut. It saves water, labour and energy. Coconut palm responds to summer irrigation. ', 'Mainly two types of Varieties , Tall ,Dwarf and Hybrid. and this divided in sub types. ', 'Coconut is grown under different soil types such as loamy, laterite, coastal sandy, alluvial, clayey and reclaimed soils of the marshy low lands. The ideal soil conditions for better growth and performance of the palm are proper drainage, good water-holding capacity, presence of water table within 3m and absence of rock or any hard substratum within 2m of the surface.', 'Coconut is propagated through seedlings raised from selected seednuts.', 'Spacing depends upon the planting system, soil type etc. For Triangular 7.6m , for square 7.6mX7.6m or 8X8 m or 9X9,for single 6.5 m in rows to 9m between rows and for double hedge 6.5 m to 6.5 m in rows - 9m between pairs of rows', 'Twelve months old nuts are harvested at the interval of 30-45 days for seed as well as copra making and culinary purposes.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581608239_coconut.jpg'),
(46, 'Safflower (Saffron)', '4', 'Safflower is usually planted in late April or early May. This crop may not mature if planted after mid-May.', 'One irrigation in a month should be provided after planting as this helps in better growth of the safflower crop.', 'NARI-38,AKS-207,JLSF-414,A-2,BSF-168-4', 'Safflower crop can be grown in wide range of soils like sandy loams, clay loams and alluvial shallow and light textured soils. However, well-drained fertile deep soils are the best for safflower cultivation', 'The safflower crop requires a clod-free seedbed with sufficient moisture for good germination and establishment of seedlings.', 'Spacing for pure or solo crop, row spacing of 45-50 cm x 20-25 cm and for mixed crop or intercrop, row spacing of 20-25 cm x 20-25 cm and for rainfed crop, a row spacing of 60 cm x 30-35 cm should be followed. Safflower is usually planted at a depth of 30 to 45 mm.', 'The leaves and entire plant loose their colour and turn brown at maturity. Cut the plants at the bottom. Keep the plants in the threshing floor and beat the plants (heads) with sticks till the mature seeds are separated. Winnow the seed and dry in the sun.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581609345_safflover.jpg'),
(47, 'Barley ( Jau)', '3', 'October is the best time to plant.', '2 to 3 irrigations are enough in Barley cultivation for optimum yield. First irrigation should be given at crown root initiation, 25 to 30 days after sowing. Second irrigation should be given at panicle emergence, 65-75 days after sowing', 'Malt Barley Varieties: BH-75, PL-426, BH-393 Alfa93*, BCU73*, RD2503,K551,DL88,DWR 28*,DWRUB52*,RD2668*, DWRB 73*,DWRUB64 and DWRUB52*. Feed Barley Varieties (Irrigated): RD2035, RD2503,RD 2552,BH 902,PL426,K329,K508,K 409,Narendra Barley-2 (NDB940),BH 393,RD2592 and PL751. Feed Barley Varieties (Rainfed): RD2508, K560, K603, RD2624, PL419,RD2660 and Getanjali (K1149).', 'Barley crop can be grown on wide range of soils including saline, sodic & lighter soils. However, this crop thrives best in sandy to moderately heavy loam soils having neutral to saline reaction and medium fertility. Acidic soils are not suitable for Barley cultivation.', 'seeds', 'The 16-cm row spacing was found to be the most suitable. Wide row spacing (32 cm) gave lower yields and tiller numbers than 24- and 16-cm spacings and favoured the growth of weeds between rows.', 'Usually, Barley crop will be ready for harvesting by end of the March to mid of April. Barley should be harvested in right time to prevent from over ripening to avoid breaking of spikes. Barley grain has a property of absorbing moisture from the atmosphere so the crop should be stored in dry place. Machine harvesting is preferred in Barley farming.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581609928_jau.jpg'),
(48, 'Pearl millet (Bajra)', '3', 'Bajra should be sown from july to mid august and for fodder purpose it can be sown from last week of june to first week of july.', 'Bajra is grown rainfed and crop being drought resistant hardly needs any irrigation, however it is observed that the yield may be significantly increased by irrigating the crop at critical growth stages like maximum tillering, flowering and grain filling stage', 'ICM4-155,VBH-4,NBH-149,MH-306,NH-338,MP-204, and MP-205.', 'Bajra can be grown in a wide range of soils. However, It thrives best in black cotton soils, sandy loam soils having good drainage. This crop does not prefer acidic and waterlogging soils. Avoid saturated soils for its cultivation. It grows successfully well in soils with low pH (or) high salinity. Bajra can be easily grown in regions where other cereal crops like wheat or maize would not survive.', 'Seeds', 'Row spacing of 40 cm to 45 cm should be maintained and within rows, 10 cm-15 cm should be kept.', 'The crop is ready for harvesting when the grain become hardy & contain moisture. Two methods can be followed in harvesting Bajra crop: Cutting earhead or cutting of entire plants by sticks. stalk the cut plants for 4 to 5 days in the sun for drying grains. Grains can be separated by beating the earheads.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581611729_bajra.jpg'),
(49, 'Black Gram(Udad)', '3', 'Second fortnight of June (15 to 30 June) is the proper time of black gram sowing in kharif season. In summer, sowing should be done from third week of Feb. to First week of April.', 'Being kharif crop black gram is not required irrigation unless there is dry spell during the kharif season. Irrigation should be given according to soil type. Irrigation interval should be 8-10 days in summer. Flowering and pod filling are the critical stages for irrigation.', 'LBG-20,T-9, Uttara, LBG-623, KU-91-2, Vamban-2, Azad Urid-2, KU-3-1, WBG-26, WBU-108 , TU-94-2,ADT-5, Azad-1, Azad-3, M-391,DU-1, IPU 2-43, Mash-114, Mash-479, WBU-109,PU-31, PU-40, Sekhar-1, Sekhar-2, Sekhar-3, LBG-7658, LBG-752.', 'Soil in Black Gram cultivation should have a neutral pH. Loam or clay loam soils are best suited soils for its cultivation. Adding higher organic matter in the soil will result in vigorous seed production.', 'Seeds', 'The Black Gram seeds are sown 2 cm depth with a spacing of 10 cm and 30 cm between rows in the main field.', 'The ripened pods can be collected from the plants in one or two pickings and dried on the floor. In case, If the plants come to harvest, then the crop should cut and the plants spread over the floor to dry. The plants become dry and turn into black and pods may start splitting. The plants should be beaten using pliable sticks to prevent damage to seeds. Then seeds are separated from pods. These plants after harvesting can be used as fodder for animals.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581612195_udad.jpg'),
(50, 'Horse Gram (Kuleeth)', '3', 'June-August is noted as the main season for planting.', 'Horse gram field must be monitored regularly for any water stress or drought conditions. Frequent irrigations should be given to keep the soil moisture, In case of water stress, this crop produces low vigor hardy small seeds and yield will be less due to flower shedding. Irrigation should be given immediately after sowing the seeds. Next life irrigation should be given on 3rd day. Subsequent irrigation should be carried out whenever the field becomes dry or on need basis. Make sure to irrigate the field especially at the time of flowering, pod forming and seed development stages.', 'CO-1, VL Gahat 1, VL Gahat 8, VL Gahat 10, VL Gahat 15, VL Gahat 19 , CRIDA 18R, CRHG-01, CRHG-02, CRHG-03, CRHG-04, KBHG-1,BJPL-1,AK-42(C), PHG-9(C) and AK-21(C).', 'Black cotton soils, deep red loam and clay loam paddy soils are the best for its cultivation. Even stony soils can be used for its cultivation. It can be cultivated in poor soils where other crops donâ€™t grow. Highly acidic or alkaline soils are not suitable for its cultivation', 'Seeds must have genetic purity and should be bought from an authentic source.', 'Dibble the seeds with a spacing of 30X10 cm.', 'Horse gram crop becomes ready for harvesting when pods turns from green to straw color. Harvesting should be done in clear sky conditions as rain may damage the seed crop. Seed crop can be harvested by using sickles. The cut plants should be spread on threshing floor to dry for 1 or 2 days. By beating with sticks, seeds can be separated from the pods. Cleaned seeds should be allowed to dry for some time to reduce the moisture content for best storing. Separated dry pods can be used as cattle feed.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581660018_Horse-Gram-Seeds.jpg'),
(51, 'Sweet Potato', '1', 'June-July and September are highly suitable for planting.', 'Sweet potato crop requires less irrigation.Avoid excessive irrigation as it checks the yield by allowing more vegetative growth. In kharif season, sweet potato crop requires less irrigation. During rabi and hot dry seasons, 10-12 irrigations are required at an interval of 8 to 10 days for high production. However, make sure to have sufficient moisture in the soil after 40 to 45 days of planting.', 'Varsha, Sree Nandini, Sree Vardhini, Sree Ratna, Cross-4, Kalmegh, Rajendra Shakarkand-5, Sree Varun, Sree Arun, Sree Bhadra, Konkan Ashwini, Pusa Safed, Pusa Sunheri.', 'Sweet potato cultivation requires a well-drained sandy loam soil rich in humus with clay (loose) sub soil for best tuber production.In case of heavy soils, tuber size will be less.', 'Tubers clips or vine cuttings', 'The ridges of 25 to 30 cm height at 60 cm apart after giving couple of ploughings in the main field. Vine cuttings with the length of 20 to 30 cm should be buried horizontally with 2 to 3 nodes below the soil by leaving the remaining portion of the cutting above the soil.', 'The period of sweet potato maturity ranges between 3 months to 5 months based on the variety grown. In general this crop will be ready harvesting 4 months. This crop will be ready for harvesting when leaves turn yellow in colour. Use pick-axe or fork to dig out the tuber from the soil.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581664065_sweetpotato.jpg'),
(52, 'Finger Millet (Bavdo)(Ragi)', '3', 'Kharif (June - September)', 'For red soil and heavy soil 1st irrigation can be done immediately after sowing,for red soil 2nd irrigation can be done on 3rd day after sowing and for heavy soil  it can be done on 4th day after sowing, for red soil 3rd irrigation can be done on 7th day after sowing and for heavy soil it can be done on 9th day after sowing ,for red soil 4th irrigation can be done on 12th day after sowing and for heavy soil it can be done on 16th day after sowing.', 'Inger Millet (English), Mandua/Finger Millet (Hindi), Kelvarugu/Aariyam (Tamil), Koovarugu/ Finger Millet (Malayalam), Ragulu (Telugu), Finger Mille CO-9, CO-13, CO (Ra)-14 and TRY-1,Paiyur-1,Paiyur-2, VL Mandua-101,VL Mandua-124,VL Mandua-149,VL Mandua-204,VLMandua-146,VLMandua-314,VLMandua-315,H-22,K-1,Hullubele,Karegidda,Gidda ,Jasarilambi ,Madayyanagiri-1 ,Madayyanagiri-2, Dodda, Jadesanga and Jenumudda.  ', 'Finger Millet crop can be grown on a wide range of soils from rich loam to poor shallow upland soils with good organic matter. However, porous/light red loam/sandy loam soils with good internal drainage are good for its cultivation. Black soils with good drainage can also be considered for this crop cultivation as it tolerates somewhat water stagnation.', 'Seeds', 'Seeds are very small so  seed drill is used for thinning within the row leaving a spacing of 7.5 â€“ 10 cm between plants, must be followed.', 'Finger Millet crop will be ready and matured in 4 months to 5 months period. Finger Millet starts flowering in 2 to 3 months. This crop should be cut above ground level and dry them in the sun for 2 to 3 days.  Bullocks or sticks can be used to separate the seeds from the plants.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581660751_fingerMillet.jpg'),
(53, 'Bitter gourd (karela)', '1', 'January to March for summer season crop, June-July for rainy season crop in the plains and March to June in the hills.', 'Bitter gourds do not tolerate drought. Maintain good soil moisture in the upper 50 cm of soil where the majority of roots are located. During the initial stages of growth, irrigate at 3-4 days interval, and alternate days during flowering/fruiting. Furrow irrigation is the ideal method of irrigating.', 'Pusadomousami, Coimbatore green long, white long ,ArkaHarith, Pusavishesh, DK 1, Priya, Mahyco green long ', 'Bitter gourd can be grown on well drained sandy to sandy loam, medium black soils rich in organic matter. Alluvial soil along the river beds is also good for production of bitter gourds. ', 'Seeds', 'The seed is sown by dibbling method at a spacing of 120Ã—90 cm. Generally, three to four seeds are sown in a pit at 2.5 to 3.0 cm depth.', 'Bitter gourd takes about 55-60 days from seed sowing to reach first harvest. Further pickings should be done at an interval of 2-3 days as bitter gourd fruits mature very fast and turn red.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581663105_bittergourd.jpg'),
(54, 'Rapeseed', '4', 'Winter rapeseed is usually sown during August, but can be planted in September also. Although delay of planting into September may cause the crop to be less developed, limit the crop\'s ability to survive winter conditions, competitiveness to weeds, maturity date and potential insect damage.', 'Require 3 irrigations. First irrigation should be given at 20 to 25 days of sowing immediately after thinning is over.', 'Toria, Yellow sarson , Gobhi Sarson , Brown sarson , Karan rai ,Taramira and Black mustard .', 'Rapeseed grows well on a wide variety of well-drained soils.', 'Seeds', 'Rows 30 cm apart while sarson and rai are sown in rows 45 cm apart. Thinning is done three weeks after sowing to maintain a plant to plant distance of 10 to 15 cm.', 'As soon as the pods turn yellowish-brown, harvest the crop. The crop is liable to shattering, hence it should be harvested just before the pods open in order to avoid losses. Sarson is less liable to shattering as compared to toria and mustard.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581663004_rapeseed.jpg'),
(55, 'Carrot', '1', 'Hills: July-February,  Plains: August.', 'Water supply should be given once in five days. During the drought period, after giving irrigation in the evening, beds should be covered with wet gunny bags. This prevents excessive water loss during sunny days. Germination of the seeds is also improved.', 'Hills: Ooty-1, Early Nantes and New Koroda     Plains: India Gold, Pusa Kesar, and Half Long Danvers', 'Carrot crop needs a deep loose loamy soil.', 'Seeds or carrot top', 'Mark the rows with spacing of 25 â€“ 30 cm apart. Sow the seeds mixed with sand (one portion of seed with 4 portions of sand).Thinning of Carrot Plants: Hills: 10 cm between plants and Plains: 5 cm between plants.', 'Carrot ready to harvest 50 to 60 days from the planting date. Mature carrots need a few more weeks and are usually ready in about 75 days. Most carrots are ready to harvest when the shoulders are 1/2 to 3/4 inch in diameter, but again, there is much variation depending on the variety.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581666701_carrots.jpg'),
(56, 'Elephant foot yam (Suran)', '1', 'Elephant foot yam corms planted from March to April, sprouted faster in South Gujarat conditions.', 'Generally, elephant foot yam is cultivated under rainfed conditions. However, in case of dry season or under commercial cultivation, this crop requires irrigation. Irrigation should be given once a week depending on the climate and soil moisture holding capacity. In case of heavy rains and floods, make sure to drain out the water from the soil as soon as possible as water logging in the crop damages the crop and causes diseases.', 'Sree Padma and Gagendra ', 'Elephant foot yam grows well in fertile red-loamy and well-drained soil. ', 'Corm', 'The cut corm planted at a distance of 45 cm x 30 cm.', 'Generally, elephant foot yam is cultivated under rainfed conditions. However, in case of dry season or under commercial cultivation, this crop requires irrigation. Irrigation should be given once a week depending on the climate and soil moisture holding capacity. In case of heavy rains and floods, make sure to drain out the water from the soil as soon as possible as water logging in the crop damages the crop and causes diseases.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581669810_elephantfootyam.jpg'),
(57, 'Methi Bhaji', '1', 'June-July and October-November.', 'As soon as sowing is completed, give a light watering. Subsequent irrigations are given as 4 irrigations  30, 70 to 75, 85 to 90 and 105 to 110 days after sowing the seeds. At the time of Pod and seed development stages, make sure the sufficient water is provided and in case of water lagging, good drainage should be provided.', 'Kasuri,Pusa,Hissar Sonali , Methi No- 47, No- 14', 'Using good quality commercial potting soil, instead of gardening soil.', 'Seeds', 'Seed sowing should be carried out 30 cm apart in rows with a planting space of 10 cm. The seed should be sowed in depth of not more than 5.0 cm. ', 'Harvesting period of Methi leaves 30-35 days. Just pick the Fenugreek leaves on the top of the plants whenever you need. Regular picking will encourage growth of new leaves, harvesting fresh leaves for every 2 weeks.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581669978_methibhaji.jpg'),
(58, 'Palak Bhaji (Spinach)', '1', 'Spinach sown from October as the main crop and in January- February as a summer crop in this region.', 'First irrigation should be given after sowing. In summer month, apply irrigation at interval of 4-6 days where as in winter month apply irrigation at interval of 10-12 days. Avoid over irrigation also care should be taken not to water on leaves, as it will leads to occurrence of disease and deterioration of quality. Drip irrigation is proves to be beneficial for spinach cultivation.', 'Savoy has dark green, crinkly, curly leaves', 'Spinach grows in any type of well-drained soil. However loamy soil is ideal. Soil should be loose too so that spinach seedlings could establish roots easily and quickly. ', 'Seeds', 'Use row to row spacing of 25-30 cm and plant to plant spacing of 5-10 cm.', 'Depending upon variety, crop is ready for first cutting 25-30 days after For harvesting, use sharp knife or sickle. Depending upon variety and season, subsequent cutting should be done at interval of 20-25 days.  ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581673421_palak.jpg'),
(59, 'Green Chilli', '1', ' Chilli crop, for Khari, it is sown in May-June and for the summer crop, it is sown in the month of January.', 'It cant withstand heavy moisture so apply irrigation only when needed. Heavy irrigation causes lanky vegetative growth and flower drop. Number of irrigation and interval of irrigation depend on soil and climatic condition. If plant show dropping at 4 pm, it is indication of plant needed irrigation. Flowering and fruit development are most critical stages of water requirement. Stagnation of water should not be allowed in nursery and field as it causes fungal infection.', 'Pusa Sadabahar, Pusa Jwala, and Pant C-1', 'Chilli can be grown in all type of soft but the sandy-loam,clay loam and loam soils are best suited for it, the soil must be well drained and well aerated.Acidic soils are not suitable for chili cultivation.', 'Seeds', 'Use row to row spacing of 75 cm and plant to plant spacing of 45 cm.', 'Harvesting should be done at the right stage of maturity.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581674809_chilli.jpg'),
(60, 'Purple Yam (Kand)', '1', 'May-June is suitable for planting. ', 'Copious watering once in a week is necessary.', 'Ratalu Discorea bulbifera', 'It requires warm and humid conditions with a mean temperature of 300C and a well distributed annual rainfall of 1200-2000 mm. Sandy loam soil is preferred with good drainage and cool weather.', 'Seeds', '90 x 90 cm is required spacing for kand.', 'Greater yam and white yam become ready for harvest by 9-10 months after planting. Lesser yam takes 8-9 months for attaining maturity. Carefully dig out the tubers without causing injury.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1581674000_purpleyum.jpg'),
(61, 'Tomato', '1', 'December to January, June to July and September to October', 'Tomato is very sensitive to water application. Heavy irrigation provided after a long spell of drought causes cracking of the fruits. Hence it should be avoided. Light irrigation should be given 3-4 days after transplanting. Irrigation intervals should be according to soil type and rainfall, irrigation should be given 7-8 days interval during kharif, during rabi 10-12 days and 5-6 days during summer.', 'Pusa Rohini, Pusa Sadabahar, Pusa Hybrid 8, Pusa Hybrid 4, Pusa Uphar, Pusa Hybrid 2, Sioux,Arka Vikas, Arka Saurabh, Arka Meghali, Arka Ahuti, Arka Ashish, Arka Abha, Arka Alok, Arka Vishal, Arka Vardan, Arka Shreshta, Arka Abhijit, Pb. Kesari, Punjab Chhuhara, S-12, Sel-152, PAU-2372 ,Pant T-10, AC-238, Pant T-3 , H-24, H-86, Pusa Early Dwarf, CO-3, CO-1, BT-12', 'Loam and sandy loam soils are best for tomato production, but these plants will grow in almost all soil types except heavy clay.', 'Seeds', 'Spacing depends upon the type of variety grown and the season of planting. Normally the seedlings are transplanted at a spacing of 75-90 x 45-60 cm.', 'Tomatoes can be harvested within 2-3 months of plantation. Depending on the market demand, 8-10 harvesting of tomato is done on yearly basis. The average tomato crop yield per acre in India is about 10 tonnes although the yield varies from 15-20 tonnes per acre in case of irrigated crops.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1584425983_tomato.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `password` varchar(25) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `verify` varchar(10) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lgt` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `mobileno`, `password`, `otp`, `verify`, `lat`, `lgt`, `username`) VALUES
(1, 'neha', 'italva', '9408997342', 'Tech123456', '2546', '1', '20.199', '34.876', ''),
(2, 'nisha', 'nvs', '8200595467', 'Tech1234', '9644', '0', '', '', ''),
(3, 'nisha', 'sarvoday', '9913200994', 'Tech123456', '9547', '0', '20.199', '34.876', ''),
(4, 'Sakshi ', 'Surat ', '9714156998', 'sakshi1234', '9746', '0', '20.199', '34.876', '');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fp_id` int(20) NOT NULL,
  `sympt` text NOT NULL,
  `crop_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `f_cost` varchar(100) NOT NULL,
  `p_cost` varchar(100) NOT NULL,
  `half_no_worker` varchar(100) NOT NULL,
  `half_sal` varchar(100) NOT NULL,
  `full_no_worker` varchar(100) NOT NULL,
  `full_sal` varchar(100) NOT NULL,
  `extra_cost` varchar(100) NOT NULL,
  `extra_note` varchar(100) NOT NULL,
  `total_income` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `f_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `f_cost`, `p_cost`, `half_no_worker`, `half_sal`, `full_no_worker`, `full_sal`, `extra_cost`, `extra_note`, `total_income`, `date`, `f_id`, `pro_id`) VALUES
(21, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(22, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(23, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(24, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(25, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(26, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(27, '5', '', '', '', '', '', '', '', '', '', 0, 0),
(28, '100', '', '10', '1', '10', '1', '10', '10', 'd', '100', 5, 6),
(29, '500', '', '10', '1', '10', '1', '10', '10', 'gsjwjwj', '600', 5, 6),
(30, '1000', '', '50', '5', '50', '5', '100', '10', '', '1000', 5, 8),
(31, '10', '', '1', '10', '1', '10', '10', 'jyhgddfd', '50', '12-12-2020', 0, 0),
(32, '10', '', '1', '10', '1', '10', '10', 'tddtdgfh', '2000', '17/3/2020', 3, 0),
(33, '10', '', '1', '10', '1', '10', '10', 'yrzxyuugchfxugx', '5000', '20/3/2020', 3, 0),
(34, '2', '', '2', '2', '2', '2', '2', 'wrgeejyrunrut', '500', '24/3/2020', 3, 6),
(35, '3', '', '3', '3', '3', '3', '3', 'udyihckhcfgic', '600', '25/3/2020', 3, 6),
(36, '5', '', '5', '5', '5', '5', '5', 'ugccutciyhkvbljljb', '800', '31/3/2020', 3, 8),
(37, '1', '', '1', '1', '1', '1', '1', 'eeff', '800', '30-3-2020', 3, 1),
(38, '10', '', '1', '10', '1', '10', '10', 'jyhgddfd', '50', '12-12-2020', 0, 0),
(39, '10', '10', '1', '10', '1', '10', '10', 'jyhgddfd', '50', '12-12-2020', 0, 0),
(40, '2', '2', '2', '2', '2', '2', '2', 'udfjjckgkv', '600', '25/3/2020', 3, 0),
(41, '1', '11', '1', '1', '1', '1', '1', 'eeff', '800', '31-3-2020', 3, 2),
(42, '10', '10', '1', '10', '1', '10', '10', 'jyhgddfd', '50', '12-12-2020', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lgt` varchar(100) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `otp` varchar(25) NOT NULL,
  `verify` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `name`, `address`, `mobileno`, `lat`, `lgt`, `pass`, `otp`, `verify`) VALUES
(3, 'Neha Patel', 'Italva', '9408997342', '', '', 'Tech1234', '7669', '1'),
(5, 'Sakshi', '', '9714156998', '', '', 'Sakshi68', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ferti_pesti_info`
--

CREATE TABLE `ferti_pesti_info` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `pro_info` varchar(100) NOT NULL,
  `crop_name` varchar(100) NOT NULL,
  `pest_name` varchar(100) NOT NULL,
  `direction` varchar(100) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ferti_pesti_info`
--

INSERT INTO `ferti_pesti_info` (`id`, `name`, `price`, `weight`, `unit`, `description`, `pro_info`, `crop_name`, `pest_name`, `direction`, `img`) VALUES
(4, 'Azoxystrobin,Amistar,Abound,Bankit, Heritage, and Quadris.', '1500', '200', 'ml', 'Azoxystrobin is a broad spectrum fungicide.', '95% of azoxystrobin', 'Used in cereals, vegetables, fruit crops, peanuts, turf, ornamental, stone fruit, bananas, rice, app', 'Used for protecting plants and food crops from foliar and soil-borne fungal diseases', 'Use with water bodies', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582180548_azoxystrobin.jpg'),
(6, 'Combisafe (Carbendazim (MBC))', '580', '1', 'Kg', 'It is in powdered form.Found to be acutely toxic to honeybees, having an effect on long term survival of colonies.', 'Carbendism 12 % + Mancozeb 63 %', ' Strawberries, Green beans, Apples, Citrus, Bananas, Pineapple', 'It is used for Ascomycetes, Fungi Imperfecti, and Basidiomycetes', 'It is in powdered form', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582264211_combi.jpg'),
(8, 'Antracol', '360', '500', 'g', 'Antracol contains Propineb, a contact fungicide with broad spectrum activity,Propineb is a polymeric zinc-containing dithiocarbamate. Due to the release of zinc, the application of Antracol results in greening effect on the crop and subsequent improvement in quality of produce.', 'Antracol contains Propine,some amount of zinc', 'Apple,Rice, Chilli, Grapes, Potato,Tomato,Pomegranate , WATERMELON and other vegetables and fruits.', 'It controls scab, early and late blight, dieback, buck eye rot, downy mildew and leaf and fruit spot', 'To the required quantity of Antracol add a small amount of water and stir to make a paste. Add furth', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582263107_Antracol.jpg'),
(9, '4 control(Hexaconazole 5% Sc)', '300', '500', 'ml', 'It is a systematic fungicide used for the control of powdery mildew', ' Hexaconazole 5% Sc', 'Apples,Peanuts,Banana,Peppers,Mango,Grapes,Rice and other crops', 'This fungicide is used for the control of powdery mildew', 'Preparation of spray Mixture: Take the required quantity of Hexaconazole 5% SC dulute with a little ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582262464_4control.jpg'),
(10, 'Ailette', '630', '1', 'Kg', 'A systemic fungicide rapidly absorbed through the plant leaves or roots. Aliette as the best prophylactic solution for downy mildew control in grapes.', 'Fosetyl present as aluminium salt 800 g/kg', 'Grapes,Citrus,Vegetables and Strawberries', 'fungicide effective against Oomcytes fungi like downy mildew diseases and damping off and Azhukal di', 'Mix ailette  with a small volume of water.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582263873_aliette.jpg'),
(11, 'Blast off', '200', '120', 'g', 'BLAST OFF is highly systemic in nature used to control paddy blast disease.', 'Tricyclazole 75% Wettable Powder', 'Rice crops', 'Removes Blast disease of rice plant.', 'It dissolves rapidly in water', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582265545_blastoff.jpg'),
(12, 'Urea', '150', '1', 'Kg', 'When urea is placed on the surface of the soil, a chemical reaction takes place that changes the urea to ammonium bicarbonate. The ammonium will convert into a gas, which is then lost if not protected. This means that urea should be mixed in with the soil for maximum effectiveness. This may be done either by broadcasting the urea then plowing it into the soil immediately or by injecting the urea into the soil. This may also be done by broadcasting urea then irrigating heavily to push dissolved urea into the soil.', 'Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio', 'Urea is apply on mostly all crop beacause the main function of Urea fertilizer is to provide the pla', '', '1:-Minimize ammonia loss by applying urea on a cool day. Urea is best applied on a cool day, in weat', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582269140_Urea.jpg'),
(13, 'Kena plus', '178', '1', 'L', 'Highly effective systemic fungicide with protective, curative and eradicative action,It gives phytotonic effect and improves the plant visible characteristics yield & quality of the produce', 'Hexaconazole 5% SC', ' rice, wheat, peas cumin, tur, groundnut, mango coffee, tea, chilly, tomato, grapes etc.', 'Uses Control of many fungi, particularly Ascomycetes and Basidiomycetes, e.g. Podosphaera leucotrich', '', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582267924_kenaplus.jpg'),
(14, 'Diammonium phosphate', '255', '400', 'g', 'Diammonium phosphate is one of a series of water-soluble ammonium phosphate salts that can be produced when ammonia reacts with phosphoric acid.', 'Diammonium phosphate is a granulated fertilizer, with granules in size 5-5 mm (min. 95%). Granules c', 'Winter cereal,Spring cereals,Rapseed,Potatoes,Corn.', '-', '1:-It is applied homogeneously on the surface of the soil and, if possible, dug in so that it gets n', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582269067_diammonium-phosphate.jpg'),
(15, 'Calcium nitrate', '150', '500', 'g', 'Calcium nitrate is mainly produced as a fertilizer, used for plant nutrition purposes, and for wastewater treatment. It is a source of both calcium and nitrogen, for plants.', 'Calcium Nitrate is a white granular soluble fertilizer that has two kinds of nutrients and that is e', 'Tomatoes, apples and peppers are examples of crops that may benefit from calcium nitrate application', '-', 'Calcium nitrate fertilizer can be used as a foliar spray. This is most effective in treating and pre', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582269784_calciumnitrate.jpg'),
(16, 'Potassium chloride', '1000', '45', 'Kg', 'Potash (potassium chloride, KCl) is the most highly valued and widely used potassium fertilizer in the world. Potash efficiently delivers potassium nutrient to the growing crop. Potassium increases disease resistance, drought tolerance, plumpness of grain and seed, and improves stem rigidity and cold hardiness.', 'In potassium chloride 50 to 52 percent K (60 to 63 percent Kâ‚‚O) and 45 to 47 percent Cl. More than', 'Corn,Cotton,Peanut,Soybeans,Wheat', '-', 'Farmers spread KCL onto the soil surface prior to tillage and planting. It may also be applied in a ', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582270142_potash.jpg'),
(18, 'Ammonium sulfate', '400', '1', 'Kg', 'The primary use of ammonium sulfate is as a fertilizer for alkaline soils. In the soil the ammonium ion is released and forms a small amount of acid, lowering the pH balance of the soil, while contributing essential nitrogen for plant growth. The main disadvantage to the use of ammonium sulfate is its low nitrogen content relative to ammonium nitrate, which elevates transportation costs.', 'Ammonium sulfate (NHâ‚„)â‚‚SOâ‚„, is an inorganic salt with a number of commercial uses. The most co', ':- Potato,Rapssed,Grains,Root vegetable', '-', 'Ammonium sulphate, used directly before sowing, should be mixed thoroughly with the soil. Leaving th', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582270313_ammoniumsulfet.jpg'),
(19, 'Actara ', '260', '100', 'g', 'Actara Insecticide is second generation neonicotinoid for controlling foliar and soil pests in many crops at low use rates, in a variety of application types such as Soil applications, seed treatments and foliar sprays.', 'Thiamethoxam (25% WG)', 'Vegetables, Ornamentals, Coffee, Cotton, Tropical Plantations, Rice and Potatoes', 'Aphids, Ash weevil, Black aphids, Brown plant leafhopper, Bugs, Cardamom aphid, Chilli thrips, Fruit', '0.5 gm/litre of water and 100 gm in 200 liters of water per acre', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582438415_actara.jpg'),
(20, 'Billion', '650', '250', 'g', 'Billion belongs to the thiourea group that has additional benefits. It has an excellent contact and stomach action and some ovicidal activity. Due to having vapour action, it renders great coverage area to flying insects also. Billion offers a unique mode of action that controls resistant populations. ', 'Diafenthuron 50% WP', 'Cabbage, Chilli, Brinjal ', 'DBM, mites, white fly, thrips and capsule borers.', '240gms/acre.', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582438330_billion.jpg'),
(21, 'Admire', '315', '30', 'g', 'Admire contains Imidacloprid, one of the world\'s best selling insecticides. It is a Contact, Systemic insecticide belonging to the chemical pesticide class of neonicotinoids and is very effective against various insect pests. Admire 70 WG is a product of most advanced German technology called Fluidised Bed Granulation Process which dissolves very fast in the water and forms a uniform and stable spray suspension. It is safe for the plant and has better spread faster absorption of the active ingredient by the plants resulting in better efficacy.', 'Imidacloprid 70 WG (70% W/w)', 'Cotton,Rice,Cucumber,Sugarcane', 'Aphids, Black aphids, Brown plant leafhopper, Bugs, Cardamom aphid, Chilli thrips, Fruit rust thrips', '0.3 gm/litre,60 grams/acre', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582439083_admire.jpg'),
(25, 'Foilo gold', '420', '250', 'ml', 'Folio Gold is a combination of contact and systemic fungicide It is effective on all four groups of fungus It is a pure isomer of Metalaxyl, with no wastage .Its dual action gives more effective & long lasting control against diseases. It improves crop health & helps in developing crop stand.', '3.3%Mefenoxam33.1%Chlorothalonil', 'Potato,Grapes', 'Effective on a wide range of fungus from lower to higher groups Protects the crops from the existing', 'Use 2 ml Folio Gold per liter water. It is important to ensure application is done on the the comple', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582443161_foliogold.jpg'),
(27, 'Mancofil', '225', '500', 'g', 'It is a broad-spectrum fungicide with protective action. The product is fungitoxic when exposed to air. It is converted to an isothiocyanate, which inactivates the sulphahydral (SH) groups in enzymes of fungi. Some times the metals are exchanged between mancozeb and enzymes of fungi, thus causing disturbance in fungal enzyme functioning', 'M-45 Mancozeb 75% WP (a complex of zinc and maneb containing 20% of manganese and 2.55% of zinc, the', 'Wheat, Maize, Paddy, Jowar, Potato, Tomato, Chilli, Beans, Cucurbits, Ground nut, Soybean, Sun flowe', 'Black & Yellow rust, Downy Mildew, Early & Late blight, Buck eye rot, Leaf spot, Tikka', '', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582444161_mancofil.jpg'),
(28, 'Sulphur 80% WP', '170', '500', 'g', 'It is broad spectrum contact and protective fungicide & miticide. It also provides. Sulphur which is essential plant nutrient.', '80% W/W Sulphur powder as active ingredient and balance 20 %, other inert ingredients', 'Apple, grapes, mango, citrus, strawberry ,cabbage, cauliflower, potato, chilies and many more.', 'powdery mildew, scab, leaf spots and all types of mites.', 'Equipment used in application: Knapsack sprayer, foot sprayer, compression knapsack sprayer, compres', 'http://service.techfusiontechnologies.com/agrofarm/upload/1582444666_sulphur.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image1`
--

CREATE TABLE `image1` (
  `id` int(11) NOT NULL,
  `image_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `avai_status` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `c_date` varchar(100) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `f_id`, `cat_name`, `crop_name`, `qty`, `avai_status`, `price`, `description`, `c_date`, `img`) VALUES
(2, 5, 'Vegetable', 'tomato', '18', '', '10', 'its a fresh one', '2020/03/11', 'http://service.techfusiontechnologies.com/agrofarm/upload/1583901210_'),
(5, 1, 'Vegetable', 'a', '30', '', '120', '', '2020/03/11', 'http://service.techfusiontechnologies.com/agrofarm/upload/1583917417_'),
(6, 3, 'Vegetable', 'cabbage', '42', '', '40', '', '2020/03/11', 'http://service.techfusiontechnologies.com/agrofarm/upload/1579509514_green-cabbage.jpg'),
(7, 5, 'Vegetable', 'potato ', '63', '', '20', 'fresh from farm', '2020/03/12', 'http://service.techfusiontechnologies.com/agrofarm/upload/1584002315_'),
(8, 3, 'vegetable', 'cabbage', '2', '', '20', 'healthy', '2020/03/15', 'http://service.techfusiontechnologies.com/agrofarm/upload/1584274709_Agro Trade Logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(20) NOT NULL,
  `cust_id` int(20) NOT NULL,
  `f_id` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saledetail_crop`
--

CREATE TABLE `saledetail_crop` (
  `id` int(20) NOT NULL,
  `scp_id` int(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `total_amt` varchar(20) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `gst` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saledetail_crop`
--

INSERT INTO `saledetail_crop` (`id`, `scp_id`, `qty`, `total_amt`, `cust_id`, `pro_id`, `gst`) VALUES
(1, 1, '1', '100.00', 0, 1, ''),
(2, 2, '3', '30.00', 0, 2, ''),
(3, 3, '1', '100.00', 0, 1, ''),
(4, 3, '1', '10.00', 0, 2, ''),
(6, 5, '6', '60.00', 0, 2, ''),
(7, 6, '2', '200.00', 0, 1, ''),
(8, 7, '5', '50.00', 0, 2, ''),
(9, 7, '3', '300.00', 0, 1, ''),
(10, 8, '1', '100.00', 0, 1, ''),
(11, 9, '2', '20.00', 0, 2, ''),
(12, 10, '1', '10.00', 0, 2, ''),
(13, 11, '1', '10.00', 0, 2, ''),
(14, 11, '1', '10.00', 0, 2, ''),
(15, 12, '2', '520.00', 0, 0, ''),
(16, 13, '2', '520.00', 0, 0, ''),
(17, 14, '5', '50.00', 0, 2, ''),
(18, 15, '5', '50.00', 0, 2, ''),
(19, 16, '1', '100.00', 0, 1, ''),
(20, 16, '1', '10.00', 0, 2, ''),
(21, 17, '1', '580.00', 0, 0, ''),
(22, 17, '1', '1500.00', 0, 0, ''),
(23, 17, '1', '1500.00', 0, 0, ''),
(24, 18, '1', '1500.00', 0, 4, ''),
(25, 18, '1', '580.00', 0, 6, ''),
(26, 19, '1', '100.00', 0, 1, ''),
(27, 19, '1', '10.00', 0, 2, ''),
(28, 20, '2', '40.00', 0, 7, ''),
(29, 21, '3', '60.00', 0, 7, ''),
(30, 22, '2', '100.00', 0, 7, ''),
(31, 22, '3', '90.00', 0, 6, ''),
(32, 22, '2', '200.00', 0, 17, ''),
(33, 23, '2', '40.00', 0, 7, ''),
(34, 24, '2', '80.00', 0, 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `saledetail_fp`
--

CREATE TABLE `saledetail_fp` (
  `id` int(20) NOT NULL,
  `sfp_id` int(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `total_amt` varchar(20) NOT NULL,
  `f_id` int(11) NOT NULL,
  `fp_id` int(11) NOT NULL,
  `gst` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saledetail_fp`
--

INSERT INTO `saledetail_fp` (`id`, `sfp_id`, `qty`, `total_amt`, `f_id`, `fp_id`, `gst`) VALUES
(1, 1, '1', '360.00', 0, 8, ''),
(2, 1, '1', '630.00', 0, 10, ''),
(3, 2, '1', '580.00', 0, 0, ''),
(4, 3, '1', '1500.00', 0, 0, ''),
(5, 4, '1', '1500.00', 0, 4, ''),
(6, 5, '1', '1500.00', 0, 4, ''),
(7, 5, '1', '580.00', 0, 6, ''),
(8, 6, '1', '1500.00', 0, 4, ''),
(9, 7, '1', '360.00', 0, 8, ''),
(10, 7, '1', '630.00', 0, 10, ''),
(11, 8, '1', '360.00', 0, 8, ''),
(12, 8, '1', '630.00', 0, 10, ''),
(13, 9, '1', '178.00', 0, 13, ''),
(14, 10, '1', '650.00', 0, 20, ''),
(15, 11, '1', '360.00', 0, 8, ''),
(16, 11, '1', '630.00', 0, 10, ''),
(17, 12, '1', '580.00', 0, 6, ''),
(18, 13, '1', '580.00', 0, 6, ''),
(19, 14, '1', '1500.00', 0, 4, ''),
(20, 15, '1', '225.00', 0, 27, '');

-- --------------------------------------------------------

--
-- Table structure for table `salemaster_crop`
--

CREATE TABLE `salemaster_crop` (
  `id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `cust_id` int(20) NOT NULL,
  `pro_id` int(20) NOT NULL,
  `receipt_no` varchar(20) NOT NULL,
  `order_status` text NOT NULL,
  `pay_type` text NOT NULL,
  `pay_status` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `del_date` varchar(10) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `t_cost` float(10,2) NOT NULL,
  `total_amt` varchar(20) NOT NULL,
  `t_id` int(20) NOT NULL,
  `img` text NOT NULL,
  `order_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salemaster_crop`
--

INSERT INTO `salemaster_crop` (`id`, `f_id`, `cust_id`, `pro_id`, `receipt_no`, `order_status`, `pay_type`, `pay_status`, `address`, `del_date`, `qty`, `t_cost`, `total_amt`, `t_id`, `img`, `order_date`) VALUES
(6, 0, 1, 0, 'RCPT663', 'Delivered', 'cod', 'unpaid', 'italva', '', '', 0.00, '200.00', 10, 'http://service.techfusiontechnologies.com/agrofarm/upload/test4da10d4dcd7c26b013eb7ff3fd0f0890.png', '11-03-2020'),
(7, 0, 1, 0, 'RCPT770', 'Delivered', 'cod', 'unpaid', 'italva', '', '', 0.00, '350.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/test3242bb43c6c7552ff0af934ae6c17174.png', '11-03-2020'),
(8, 0, 1, 0, 'RCPT681', 'Delivered', 'cod', 'unpaid', 'italva', '', '', 0.00, '100.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/test95b85867d066f658afe3f7ae940a447e.png', '11-03-2020'),
(9, 0, 1, 0, 'RCPT231', 'Delivered', 'online', 'unpaid', 'italva', '', '', 0.00, '20.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testbba4231837313b358579e103a22a9ca1.png', '11-03-2020'),
(10, 0, 1, 0, 'RCPT348', 'Delivered', 'online', 'paid', 'italva', '22-03-2020', '', 0.00, '10.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testf2c24d6fe88ad0557722cd35514424cd.png', '11-03-2020'),
(11, 0, 1, 0, 'RCPT840', 'pending', 'online', 'unpaid', 'italva', '', '', 0.00, '20.00', 10, 'http://service.techfusiontechnologies.com/agrofarm/upload/test3481485acd916174d57635f63ce8ce7e.png', '11-03-2020'),
(12, 0, 3, 0, 'RCPT826', 'pending', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', 0.00, '520.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test19db2e6c34c2bb585c6f8a7eb63ddb0c.png', '12-03-2020'),
(13, 0, 3, 0, 'RCPT97', 'pending', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', 0.00, '520.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test25538ba279be4658209da90865ce1224.png', '12-03-2020'),
(14, 0, 0, 0, 'RCPT951', 'pending', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', 0.00, '50.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testab8c8c7904bc9b56cbb229f9af81009f.png', '12-03-2020'),
(15, 0, 0, 0, 'RCPT54', 'pending', 'cod', 'unpaid', 'faliya NVS sarpore 396445 GJ', '', '', 0.00, '50.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test4868cfd5b891b988a9f119be4e039e3c.png', '12-03-2020'),
(16, 0, 1, 0, 'RCPT206', 'pending', 'online', 'unpaid', '', '', '', 0.00, '110.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testd174361201a260ef3fdc3ef425f4e96d.png', '12-03-2020'),
(17, 0, 5, 0, 'RCPT868', 'pending', 'cod', 'unpaid', 'Saruvan soc surat\n suart 395009\n GJ', '', '', 0.00, '3580.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test89d04896125b3ba7e16f4ed2610158db.png', '12-03-2020'),
(18, 0, 3, 0, 'RCPT588', 'pending', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', 0.00, '2080.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/testd31f144b6f5911c0ae7b359504ecfa3a.png', '12-03-2020'),
(19, 0, 1, 0, 'RCPT156', 'Delivered', 'cod', 'unpaid', 'italva', '', '', 0.00, '110.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/test6756be05b39f0c8dca64fad615bdfb32.png', '12-03-2020'),
(20, 0, 1, 0, 'RCPT0', 'Delivered', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', 0.00, '40.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/test21a7a00d258cc23475f7d08fa28fb8a8.png', '13-03-2020'),
(21, 0, 1, 0, 'RCPT554', 'Delivered', 'cod', 'unpaid', 'At. and Po. Surat NVS surat 396445 GJ', '', '', 0.00, '60.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testf8e6eaf9b20781f408dab654ef97af1c.png', '13-03-2020'),
(22, 0, 4, 0, 'RCPT918', 'pending', 'online', 'unpaid', '', '', '', 39.00, '390.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test62d1460bebdb381d56edb911d0e25ed1.png', '22-03-2020'),
(23, 0, 1, 0, 'RCPT921', 'pending', 'cod', 'unpaid', 'italva', '', '', 4.00, '40.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testefa8937015bdb8895ab8d43c62c60e73.png', '22-03-2020'),
(24, 0, 1, 0, 'RCPT629', 'Delivered', 'cod', 'paid', 'italva', '22-03-2020', '', 8.00, '80.00', 10, 'http://service.techfusiontechnologies.com/agrofarm/upload/test616a039383eb0edaaecdf94733a29c5b.png', '22-03-2020');

-- --------------------------------------------------------

--
-- Table structure for table `salemaster_fp`
--

CREATE TABLE `salemaster_fp` (
  `id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `receipt_no` varchar(20) NOT NULL,
  `saledetail` text NOT NULL,
  `order_status` text NOT NULL,
  `pay_type` text NOT NULL,
  `pay_status` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `del_date` varchar(10) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `total_amt` varchar(20) NOT NULL,
  `t_id` int(20) NOT NULL,
  `img` text NOT NULL,
  `fp_id` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salemaster_fp`
--

INSERT INTO `salemaster_fp` (`id`, `f_id`, `receipt_no`, `saledetail`, `order_status`, `pay_type`, `pay_status`, `address`, `del_date`, `qty`, `total_amt`, `t_id`, `img`, `fp_id`, `order_date`) VALUES
(1, 3, 'RCPT468', '', 'Delivered', 'cod', 'unpaid', '', '', '', '990.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test7c8d3295e258184af9468b2eda576037.png', 0, '12-03-2020'),
(2, 5, 'RCPT710', '', 'pending', 'cod', 'unpaid', '', '', '', '580.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test4ad2075ac4b579f7a3bdd7f99e2a90cd.png', 0, '12-03-2020'),
(3, 3, 'RCPT224', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '1500.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test5f9ac92d72ba44ac901f762a5aeda2a8.png', 0, '12-03-2020'),
(4, 3, 'RCPT690', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '1500.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test77c014f0ce93e2e17043a67d0279d2ac.png', 0, '12-03-2020'),
(5, 3, 'RCPT155', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '2080.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test480c224f7a9c8aa850d11c29aad556ef.png', 0, '12-03-2020'),
(6, 3, 'RCPT364', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '1500.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test4da10d4dcd7c26b013eb7ff3fd0f0890.png', 0, '12-03-2020'),
(7, 3, 'RCPT672', '', 'pending', 'cod', 'unpaid', '', '', '', '990.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test3242bb43c6c7552ff0af934ae6c17174.png', 0, '12-03-2020'),
(8, 3, 'RCPT47', '', 'pending', 'cod', 'unpaid', 'Jamalpore', '', '', '990.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test95b85867d066f658afe3f7ae940a447e.png', 0, '12-03-2020'),
(9, 3, 'RCPT247', '', 'Delivered', 'cod', 'unpaid', 'At. and Po.ITA NVS ITA 396445 GJ', '', '', '178.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/testbba4231837313b358579e103a22a9ca1.png', 0, '13-03-2020'),
(10, 3, 'RCPT124', '', 'Delivered', 'cod', 'unpaid', 'Italva', '', '', '650.00', 9, 'http://service.techfusiontechnologies.com/agrofarm/upload/testf2c24d6fe88ad0557722cd35514424cd.png', 0, '13-03-2020'),
(11, 3, 'RCPT318', '', 'pending', 'cod', 'unpaid', 'Jamalpore', '', '', '990.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test3481485acd916174d57635f63ce8ce7e.png', 0, '13-03-2020'),
(12, 3, 'RCPT212', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '580.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test19db2e6c34c2bb585c6f8a7eb63ddb0c.png', 0, '15-03-2020'),
(13, 3, 'RCPT534', '', 'pending', 'online', 'unpaid', 'Italva', '', '', '580.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test25538ba279be4658209da90865ce1224.png', 0, '15-03-2020'),
(14, 3, 'RCPT447', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '1500.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/testab8c8c7904bc9b56cbb229f9af81009f.png', 0, '15-03-2020'),
(15, 3, 'RCPT976', '', 'pending', 'cod', 'unpaid', 'Italva', '', '', '225.00', 0, 'http://service.techfusiontechnologies.com/agrofarm/upload/test4868cfd5b891b988a9f119be4e039e3c.png', 0, '22-03-2020');

-- --------------------------------------------------------

--
-- Table structure for table `transporter`
--

CREATE TABLE `transporter` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `verify` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transporter`
--

INSERT INTO `transporter` (`id`, `name`, `mobileno`, `password`, `otp`, `verify`) VALUES
(6, 'nj1', '3212', '203.', '0', ''),
(7, 'iu4hrf4ewi', '546532', '54634', '0', ''),
(8, 'abc', '9624523472', 'Abc', '1050', '1'),
(9, 'trans', '9408997342', 'Tech1234', '3170', '1'),
(10, 'NehaTransporter', '7984942006', 'Tech1234', '6647', '0');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `w_per_day` varchar(20) NOT NULL,
  `total_sal` varchar(20) NOT NULL,
  `sal_status` varchar(20) NOT NULL,
  `total_wages` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `attendance`, `w_per_day`, `total_sal`, `sal_status`, `total_wages`) VALUES
(1, 'abc', 'p', '200', '2000', 'paid', '3000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_est`
--
ALTER TABLE `cost_est`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_ferti`
--
ALTER TABLE `crop_ferti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_info`
--
ALTER TABLE `crop_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dummy`
--
ALTER TABLE `dummy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ferti_pesti_info`
--
ALTER TABLE `ferti_pesti_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image1`
--
ALTER TABLE `image1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saledetail_crop`
--
ALTER TABLE `saledetail_crop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saledetail_fp`
--
ALTER TABLE `saledetail_fp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salemaster_crop`
--
ALTER TABLE `salemaster_crop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salemaster_fp`
--
ALTER TABLE `salemaster_fp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter`
--
ALTER TABLE `transporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cost_est`
--
ALTER TABLE `cost_est`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crop_ferti`
--
ALTER TABLE `crop_ferti`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crop_info`
--
ALTER TABLE `crop_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dummy`
--
ALTER TABLE `dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ferti_pesti_info`
--
ALTER TABLE `ferti_pesti_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `image1`
--
ALTER TABLE `image1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saledetail_crop`
--
ALTER TABLE `saledetail_crop`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `saledetail_fp`
--
ALTER TABLE `saledetail_fp`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `salemaster_crop`
--
ALTER TABLE `salemaster_crop`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `salemaster_fp`
--
ALTER TABLE `salemaster_fp`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transporter`
--
ALTER TABLE `transporter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
