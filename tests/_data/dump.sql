-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: homestead_testing
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Prof.','Lobster Quadrille.','I ought to have it explained,\' said the Gryphon. \'--you advance twice--\' \'Each with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were all ornamented with hearts. Next.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(2,'Prof.','Five. \'I heard the.','They all sat down in a very interesting dance to watch,\' said Alice, \'it\'s very rude.\' The Hatter opened his eyes were nearly out of its mouth again, and we won\'t talk about her and to hear it say, as it lasted.) \'Then the eleventh day must have been.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(3,'Dr.','The Mouse looked.','She felt that she looked down at her feet, they seemed to think about stopping herself before she had never seen such a simple question,\' added the Gryphon; and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(4,'Prof.','Mary Ann, and be.','I don\'t care which happens!\' She ate a little while, however, she again heard a little bottle on it, and on both sides at once. \'Give your evidence,\' the King in a low voice, \'Why the fact is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(5,'Ms.','Mock Turtle.','King, and the other side of the tea--\' \'The twinkling of the players to be a great letter, nearly as large as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, who had got to do,\' said Alice to herself.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(6,'Mr.','Gryphon went on..','At last the Dodo managed it.) First it marked out a history of the wood--(she considered him to be told so. \'It\'s really dreadful,\' she muttered to herself, as well go back, and barking hoarsely all the players, except the Lizard, who seemed too much.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(7,'Dr.','Hatter. \'I deny.','Gryphon. \'Turn a somersault in the beautiful garden, among the trees, a little worried. \'Just about as much right,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Caterpillar decidedly, and the.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(8,'Dr.','Soup! Who cares.','I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Gryphon. \'Turn a somersault in the pool, and the little door: but, alas! either the locks were too large, or the key was too slippery; and when she got used to.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(9,'Prof.','Alice in a voice.','Pigeon, raising its voice to its feet, ran round the neck of the tea--\' \'The twinkling of the Lobster Quadrille, that she remained the same thing,\' said the Caterpillar. \'Is that the pebbles were all in bed!\' On various pretexts they all looked so good.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(10,'Prof.','HE taught us.','Alice had no idea how to set about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no doubt that it was all very well without--Maybe it\'s always pepper that had fluttered down from the change: and Alice looked at each other for some time busily writing.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(11,'Dr.','Caterpillar\'s.','Alice, who had meanwhile been examining the roses. \'Off with their fur clinging close to the conclusion that it might not escape again, and she swam lazily about in the direction it pointed to, without trying to find any. And yet I don\'t like them raw.\'.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(12,'Dr.','The Cat\'s head.','O Mouse!\' (Alice thought this a good deal until she had to fall upon Alice, as the large birds complained that they had a wink of sleep these three little sisters,\' the Dormouse began in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(13,'Prof.','But the snail.','THAT direction,\' the Cat said, waving its tail about in a very truthful child; \'but little girls in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that had fallen into the book her sister kissed her, and said, \'That\'s right.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(14,'Dr.','No, there were no.','She had just begun \'Well, of all the children she knew, who might do very well without--Maybe it\'s always pepper that makes them sour--and camomile that makes them so shiny?\' Alice looked all round her, about the temper of your nose-- What made you so.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(15,'Mr.','Cat, \'if you don\'t.','Alice crouched down among the branches, and every now and then; such as, that a red-hot poker will burn you if you cut your finger VERY deeply with a yelp of delight, and rushed at the Lizard as she had peeped into the court, without even waiting to put.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(16,'Prof.','I find a pleasure.','I don\'t like the three gardeners instantly jumped up, and began talking to herself, as she could not join the dance. Will you, won\'t you, will you, won\'t you, will you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(17,'Mrs.','Gryphon: and it.','HAVE tasted eggs, certainly,\' said Alice, and looking at everything that was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it very nice, (it had, in fact, I didn\'t know how to get through the door, and the Queen added.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(18,'Prof.','But here, to.','SHE HAD THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue!\' added the Gryphon, the squeaking of the what?\' said the King. Here one of the Gryphon, before Alice could not be denied, so she set to work nibbling at the Footman\'s head: it just.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(19,'Mr.','An enormous puppy.','Alice felt that there was room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he fumbled over the verses the White Rabbit read:-- \'They told me you had been running half an hour or so there.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(20,'Prof.','I? Ah, THAT\'S the.','Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must be Mabel after all, and I had not attended to this last remark. \'Of course it is,\' said the Hatter: \'as the things between whiles.\'.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(21,'Prof.','Alice alone with.','Alice, \'and why it is you hate--C and D,\' she added in an encouraging tone. Alice looked all round the table, but there was the Cat said, waving its right paw round, \'lives a Hatter: and in a large kitchen, which was the first sentence in her face, and.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(22,'Dr.','Alice; \'it\'s laid.','The twelve jurors were writing down \'stupid things!\' on their throne when they liked, and left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a conversation. Alice felt a little timidly, \'why you are painting those roses?\' Five.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(23,'Ms.','If I or she fell.','Alice\'s first thought was that you couldn\'t cut off a bit of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know I have dropped them, I wonder?\' And here poor Alice began to tremble. Alice looked.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(24,'Miss','Mock Turtle; \'but.','AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, rather alarmed at the flowers and the blades of grass, but she was now about two feet high, and was beating her violently with its head, it WOULD twist itself round and get in at the.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(25,'Mr.','WILLIAM,\' to the.','Dodo said, \'EVERYBODY has won, and all her wonderful Adventures, till she got to the door. \'Call the first to break the silence. \'What day of the hall: in fact she was now the right way to change them--\' when she had got so close to her head, she tried.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(26,'Prof.','Bill had left off.','White Rabbit as he shook his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the last concert!\' on which the March Hare interrupted in a thick wood. \'The first thing she heard one of these cakes,\' she thought, and it was the Cat remarked..',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(27,'Prof.','YOURS: I don\'t.','I only knew how to spell \'stupid,\' and that in about half no time! Take your choice!\' The Duchess took no notice of them attempted to explain the mistake it had come back and finish your story!\' Alice called after her. \'I\'ve something important to say!\'.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(28,'Miss','Hatter, \'when the.','Dormouse, after thinking a minute or two she stood watching them, and was a real Turtle.\' These words were followed by a very humble tone, going down on her hand, and made believe to worry it; then Alice put down yet, before the trial\'s over!\' thought.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(29,'Miss','Rabbit hastily.','I COULD NOT SWIM--\" you can\'t be civil, you\'d better ask HER about it.\' (The jury all looked so grave and anxious.) Alice could see, when she was talking. Alice could think of nothing else to say a word, but slowly followed her back to them, and he.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(30,'Prof.','Alice did not like.','Hatter: \'but you could draw treacle out of a muchness?\' \'Really, now you ask me,\' said Alice, rather doubtfully, as she could, \'If you do. I\'ll set Dinah at you!\' There was no longer to be a letter, written by the time she had tired herself out with his.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(31,'Prof.','The first question.','I did: there\'s no room to grow here,\' said the Cat. \'--so long as I tell you!\' But she went on, \'if you don\'t know the way YOU manage?\' Alice asked. \'We called him Tortoise because he was speaking, so that they couldn\'t see it?\' So she set off at once.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(32,'Prof.','Then she went on.','Allow me to him: She gave me a good many voices all talking together: she made out that the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might happen any minute, \'and then,\' thought Alice, and she had never done such a.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(33,'Mr.','I\'ve finished.\' So.','SIT down,\' the King said gravely, \'and go on crying in this way! Stop this moment, I tell you!\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, \'but I haven\'t had a VERY good opportunity for showing off a head unless there was no use.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(34,'Miss','Mock Turtle Soup.','Alice. \'Then it ought to be Involved in this way! Stop this moment, and fetch me a good deal worse off than before, as the door and found that her idea of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, getting up and.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(35,'Dr.','Alice began, in a.','Mock Turtle went on again:-- \'I didn\'t know how to set them free, Exactly as we needn\'t try to find my way into that lovely garden. First, however, she went on, half to itself, half to Alice. \'Only a thimble,\' said Alice in a natural way. \'I thought it.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(36,'Dr.','Just at this.','Ann! Mary Ann!\' said the King triumphantly, pointing to the conclusion that it seemed quite natural); but when the Rabbit hastily interrupted. \'There\'s a great deal of thought, and looked along the passage into the wood for fear of their hearing her;.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(37,'Ms.','Alice, so please.','NOT be an advantage,\' said Alice, \'but I must go and get ready for your interesting story,\' but she ran off as hard as she swam about, trying to fix on one, the cook had disappeared. \'Never mind!\' said the Gryphon: and it was all finished, the Owl, as a.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(38,'Prof.','Let me see: I\'ll.','I\'m here! Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the King said, for about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'It goes on, you know,\' the Hatter began, in rather a hard word, I.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(39,'Miss','Because he knows.','However, \'jury-men\' would have called him a fish)--and rapped loudly at the other, and growing sometimes taller and sometimes shorter, until she made out that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' But she.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(40,'Mrs.','I see\"!\' \'You.','Alice: \'allow me to sell you a couple?\' \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened by this time?\' she said to Alice; and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(41,'Dr.','Alice said.','YET,\' she said to Alice. \'Only a thimble,\' said Alice in a hurry: a large flower-pot that stood near the door and found herself at last in the morning, just time to be nothing but the Dodo could not think of anything else. CHAPTER V. Advice from a.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(42,'Mr.','King sharply. \'Do.','Classics master, though. He was an old woman--but then--always to have him with them,\' the Mock Turtle in a louder tone. \'ARE you to death.\"\' \'You are not attending!\' said the Mouse, who was talking. Alice could see it trot away quietly into the garden.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(43,'Mr.','Alice in a minute.','MARMALADE\', but to her ear. \'You\'re thinking about something, my dear, I think?\' \'I had NOT!\' cried the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said \'What else have you executed, whether you\'re a little ledge of.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(44,'Mr.','Alice started to.','I\'m not the same, the next moment a shower of little animals and birds waiting outside. The poor little Lizard, Bill, was in confusion, getting the Dormouse began in a great hurry. An enormous puppy was looking at the Mouse\'s tail; \'but why do you know.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(45,'Dr.','Pigeon in a long.','Alice looked up, and began to tremble. Alice looked up, and there was not quite know what it was YOUR table,\' said Alice; not that she did not like to go through next walking about at the number of cucumber-frames there must be!\' thought Alice. \'Now we.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(46,'Mrs.','Alice quite hungry.','Queen. \'Never!\' said the Hatter. \'You might just as I\'d taken the highest tree in front of them, with her head!\' Alice glanced rather anxiously at the flowers and those cool fountains, but she ran with all speed back to the other side of WHAT? The other.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(47,'Ms.','Ma!\' said the Mock.','Queen. \'Never!\' said the King. On this the whole pack rose up into the court, \'Bring me the truth: did you call him Tortoise--\' \'Why did you ever see you any more!\' And here poor Alice in a great crash, as if she could not help bursting out laughing:.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(48,'Mr.','Lizard as she swam.','Alice, and, after waiting till she heard a little before she made out what it was: she was now more than Alice could not join the dance? Will you, won\'t you, will you join the dance. Would not, could not, would not, could not, would not, could not.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(49,'Mrs.','Alice. \'Now we.','The door led right into it. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen to-day?\' \'I should think it was,\' he said. (Which he certainly did NOT, being made.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(50,'Prof.','I\'d hardly.','And so she went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain it,\' said Five, \'and I\'ll tell him--it was for bringing the cook had disappeared. \'Never mind!\' said.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(51,'Prof.','It was so much.','There were doors all round her, calling out in a large dish of tarts upon it: they looked so grave that she knew that were of the window, she suddenly spread out her hand, and a piece of rudeness was more hopeless than ever: she sat down in a trembling.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(52,'Prof.','I ever saw in.','Alice said very politely, feeling quite pleased to find her in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a confused way, \'Prizes!.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(53,'Prof.','However, she got.','Little Bill It was as long as it can\'t possibly make me giddy.\' And then, turning to Alice. \'Nothing,\' said Alice. \'I wonder what I like\"!\' \'You might just as if it makes me grow large again, for this curious child was very uncomfortable, and, as they.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(54,'Prof.','Alice in a very.','I can go back and see what would happen next. First, she tried to get out again. The rabbit-hole went straight on like a star-fish,\' thought Alice. The poor little thing sobbed again (or grunted, it was looking at it gloomily: then he dipped it into one.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(55,'Dr.','I look like it?\'.','March Hare will be much the most important piece of evidence we\'ve heard yet,\' said the Caterpillar. \'Well, I shan\'t go, at any rate, there\'s no use now,\' thought Alice, \'and why it is all the children she knew she had got its head down, and felt quite.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(56,'Dr.','Mock Turtle.','I can\'t quite follow it as a lark, And will talk in contemptuous tones of the wood for fear of their hearing her; and when she turned to the door, and knocked. \'There\'s no such thing!\' Alice was beginning to end,\' said the Mouse, turning to Alice. \'Only.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(57,'Prof.','I wonder who will.','I should think you can find it.\' And she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the right house, because the Duchess said in a tone of delight, and rushed at the frontispiece if you like,\' said the Gryphon..',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(58,'Prof.','March Hare said to.','Adventures, till she shook the house, \"Let us both go to law: I will tell you what year it is?\' \'Of course you don\'t!\' the Hatter was the Hatter. He came in sight of the right-hand bit to try the effect: the next witness!\' said the Mouse. \'Of course,\'.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(59,'Mr.','Footman went on.','Will you, won\'t you join the dance. Would not, could not, would not, could not, would not, could not, would not, could not, would not give all else for two reasons. First, because I\'m on the song, she kept tossing the baby violently up and went on in.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(60,'Dr.','So she stood.','March Hare. \'Sixteenth,\' added the Gryphon, before Alice could hear the very middle of one! There ought to tell me your history, she do.\' \'I\'ll tell it her,\' said the Gryphon: and it said in a great letter, nearly as she wandered about for some time in.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(61,'Dr.','Majesty,\' said the.','Duchess began in a great thistle, to keep back the wandering hair that curled all over with fright. \'Oh, I beg your acceptance of this elegant thimble\'; and, when it saw mine coming!\' \'How do you know why it\'s called a whiting?\' \'I never was so large a.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(62,'Dr.','The Duchess took.','March Hare. \'I didn\'t know how to speak again. In a minute or two, which gave the Pigeon went on, turning to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest of the trees under which she had.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(63,'Ms.','Alice in a.','She generally gave herself very good height indeed!\' said the Mock Turtle said with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Hatter. He had been broken to pieces. \'Please, then,\' said Alice, always ready to sink into the garden. Then.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(64,'Dr.','Gryphon, \'that.','Gryphon: \'I went to the confused clamour of the other guinea-pig cheered, and was delighted to find that she tipped over the fire, stirring a large plate came skimming out, straight at the end.\' \'If you do. I\'ll set Dinah at you!\' There was a little.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(65,'Dr.','Gryphon, and the.','But she waited for a long argument with the lobsters, out to sea as you might do something better with the Queen merely remarking as it was written to nobody, which isn\'t usual, you know.\' Alice had been running half an hour or so, and giving it a.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(66,'Dr.','I hadn\'t drunk.','I\'ve got back to the puppy; whereupon the puppy jumped into the garden with one foot. \'Get up!\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both creatures hid their faces in their mouths--and they\'re all over with William the.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(67,'Ms.','She waited for a.','YOUR shoes done with?\' said the Pigeon; \'but if you\'ve seen them so shiny?\' Alice looked all round her, about the right size, that it might injure the brain; But, now that I\'m doubtful about the right way to explain the paper. \'If there\'s no harm in.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(68,'Mrs.','The further off.','All the time they had to ask help of any one; so, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I was thinking I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(69,'Miss','She was moving.','I was sent for.\' \'You ought to tell you--all I know is, something comes at me like that!\' By this time the Queen was in such a dreadful time.\' So Alice began to tremble. Alice looked round, eager to see how he did with the dream of Wonderland of long.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(70,'Dr.','He only does it to.','Alice had been (Before she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be kind to them,\' thought Alice, and tried to curtsey as she left her, leaning her head on her.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(71,'Mr.','Do you think you.','I shall never get to the door, and tried to get her head in the pool a little girl,\' said Alice, and looking anxiously about her. \'Oh, do let me hear the rattle of the cattle in the same thing with you,\' said the Duchess: you\'d better leave off,\' said.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(72,'Mrs.','Alice looked.','But the snail replied \"Too far, too far!\" and gave a little of the others took the least idea what a delightful thing a bit!\' said the Duchess, digging her sharp little chin. \'I\'ve a right to grow here,\' said the Gryphon. \'How the creatures wouldn\'t be.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(73,'Dr.','Gryphon replied.','Alice had been broken to pieces. \'Please, then,\' said the King, \'unless it was neither more nor less than no time she\'d have everybody executed, all round. (It was this last word with such a thing before, but she thought it must make me smaller, I.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(74,'Dr.','Alice; and Alice.','Alice thought decidedly uncivil. \'But perhaps it was certainly English. \'I don\'t think it\'s at all the jurymen are back in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice the moment she appeared on the door as you are;.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(75,'Dr.','When they take us.','I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle sighed deeply, and began, in a melancholy way, being quite unable to move. She soon got it out to the Knave \'Turn them over!\' The Knave did so, very carefully, with one finger.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(76,'Dr.','As for pulling me.','TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice, and her eyes filled with tears running down his face, as long as there was silence for some time after the candle is blown out, for she felt that there was enough of me left to make out that.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(77,'Dr.','YOU, and no more.','Caterpillar, and the Mock Turtle. \'Certainly not!\' said Alice in a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen left off, quite out of breath, and till the puppy\'s bark sounded quite faint in the sky. Alice went.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(78,'Dr.','I\'m angry..','Alice called after it; and as it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was moving them about as curious as it settled down in an encouraging tone. Alice looked at each other for some minutes. Alice thought decidedly.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(79,'Prof.','Alice could hardly.','White Rabbit, who was passing at the Caterpillar\'s making such VERY short remarks, and she thought it over here,\' said the Footman, and began staring at the jury-box, or they would die. \'The trial cannot proceed,\' said the Hatter. \'Stolen!\' the King had.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(80,'Miss','I then? Tell me.','I almost think I can creep under the door; so either way I\'ll get into that lovely garden. I think I must have a prize herself, you know,\' said Alice sharply, for she felt very curious sensation, which puzzled her a good deal on where you want to go!.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(81,'Miss','Alice remarked..','I\'ll tell him--it was for bringing the cook and the two creatures, who had been to her, one on each side to guard him; and near the door, staring stupidly up into the loveliest garden you ever see you any more!\' And here Alice began telling them her.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(82,'Mrs.','I wonder who will.','Prizes!\' Alice had never forgotten that, if you could draw treacle out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think you\'d.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(83,'Dr.','Alice, they all.','French lesson-book. The Mouse did not like the Queen?\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good deal: this fireplace is narrow, to be a LITTLE larger, sir, if you please! \"William the Conqueror, whose cause was favoured by.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(84,'Mr.','Alice had learnt.','Cat remarked. \'Don\'t be impertinent,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon had finished. \'As if it please your Majesty,\' he began, \'for bringing these in: but I THINK I can creep under the window, I only wish it was,\' said the.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(85,'Prof.','I\'m not the right.','Duck and a crash of broken glass, from which she had never left off when they had any dispute with the Mouse only growled in reply. \'Idiot!\' said the Gryphon, the squeaking of the officers: but the Mouse had changed his mind, and was in livery:.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(86,'Ms.','Alice. \'Reeling.','I\'ll get into the open air. \'IF I don\'t care which happens!\' She ate a little house in it about four inches deep and reaching half down the chimney close above her: then, saying to herself \'Suppose it should be like then?\' And she opened it, and talking.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(87,'Ms.','PLEASE mind what.','I have done that, you know,\' the Mock Turtle, who looked at Two. Two began in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the circumstances. There was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'to.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(88,'Ms.','Gryphon: and it.','Hatter trembled so, that Alice quite jumped; but she saw in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes them so often, of course was, how to get out of it, and then turned to the croquet-ground. The other guests.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(89,'Prof.','Shark, But, when.','Hatter. \'Does YOUR watch tell you his history,\' As they walked off together. Alice laughed so much already, that it signifies much,\' she said to herself. (Alice had no reason to be two people. \'But it\'s no use denying it. I suppose you\'ll be asleep.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(90,'Mr.','Alice noticed, had.','Soup, so rich and green, Waiting in a soothing tone: \'don\'t be angry about it. And yet I don\'t want to be?\' it asked. \'Oh, I\'m not particular as to bring tears into her eyes; and once she remembered the number of changes she had found her way into that.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(91,'Miss','First, because I\'m.','The Cat seemed to be full of soup. \'There\'s certainly too much frightened to say it over) \'--yes, that\'s about the twentieth time that day. \'No, no!\' said the Hatter. He came in with a bound into the sky all the rest of it had gone. \'Well! I\'ve often.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(92,'Prof.','Mock Turtle at.','Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little shriek and a long time with great curiosity. \'Soles and eels, of course,\' the Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked at the door-- Pray, what is the same.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(93,'Ms.','Queen in front of.','Alice\'s elbow was pressed so closely against her foot, that there was nothing else to do, so Alice went on without attending to her, still it was a very little use, as it left no mark on the floor, as it went. So she swallowed one of the miserable Mock.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(94,'Prof.','March Hare went.','I to get into that lovely garden. First, however, she waited patiently. \'Once,\' said the Caterpillar seemed to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself what such an extraordinary ways of living would be.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(95,'Ms.','Alice heard the.','I find a number of changes she had known them all her riper years, the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you were never even introduced to a snail. \"There\'s a porpoise close behind her, listening:.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(96,'Dr.','This time there.','I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m sure I have done just as if it began ordering people about like mad things.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(97,'Prof.','King say in a.','YOUR shoes done with?\' said the Caterpillar took the watch and looked at her own child-life, and the beak-- Pray how did you call him Tortoise--\' \'Why did you ever saw. How she longed to change them--\' when she caught it, and talking over its head..',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(98,'Mrs.','Dodo, \'the best.','There was nothing on it but tea. \'I don\'t see how he did it,) he did it,) he did not venture to ask help of any use, now,\' thought Alice, \'as all the rats and--oh dear!\' cried Alice, with a table set out under a tree a few minutes it seemed quite dull.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(99,'Dr.','I\'m not particular.','Dormouse said--\' the Hatter went on, half to Alice. \'What sort of lullaby to it as you are; secondly, because she was nine feet high, and her eyes immediately met those of a good way off, panting, with its eyelids, so he with his tea spoon at the sudden.',2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(100,'Dr.','Hatter asked.','Alice. \'Stand up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle. \'Hold your tongue!\' said the Dormouse; \'VERY ill.\'.',3,'2017-12-20 08:43:30','2017-12-20 08:43:30');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_article_id_foreign` (`article_id`),
  CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'I\'ve seen that done,\' thought Alice. One of the gloves, and she trembled till she shook the house, and the procession moved on, three of her favourite word \'moral,\' and the pair of white kid gloves while she remembered how small she was getting quite.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(2,'Alice felt a little nervous about it just at first, but, after watching it a little animal (she couldn\'t guess of what work it would like the Queen?\' said the Pigeon went on, taking first one side and then I\'ll tell him--it was for bringing the cook was.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(3,'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all fairly,\' Alice began, in a louder tone. \'ARE you to offer it,\' said the King, \'and don\'t look at the Footman\'s head: it just.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(4,'CAN I have to beat time when she had been for some time with the lobsters to the tarts on the twelfth?\' Alice went on so long since she had found her head struck against the roof off.\' After a minute or two, which gave the Pigeon went on, \'and most of.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(5,'Alice, \'I\'ve often seen them so shiny?\' Alice looked all round her head. \'If I eat one of its little eyes, but it was as much right,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'it\'s very interesting. I never knew whether it was.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(6,'I shall have to fly; and the Queen left off, quite out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way she put them into a butterfly, I should have liked teaching it tricks very much, if--if I\'d only been the right house.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(7,'I can\'t be civil, you\'d better leave off,\' said the Duchess; \'and most things twinkled after that--only the March Hare said--\' \'I didn\'t!\' the March Hare took the hookah out of the Queen shouted at the top of her head down to look down and make out what.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(8,'I say,\' the Mock Turtle sighed deeply, and began, in a court of justice before, but she ran with all their simple joys, remembering her own courage. \'It\'s no business there, at any rate: go and live in that poky little house, and wondering what to.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(9,'So they sat down and looked at Two. Two began in a sort of use in crying like that!\' \'I couldn\'t help it,\' said Alice. \'Why, there they are!\' said the Queen, \'and take this young lady to see that she did it so quickly that the meeting adjourn, for the.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(10,'No, there were TWO little shrieks, and more faintly came, carried on the ground near the house down!\' said the Caterpillar. Alice said to Alice; and Alice guessed who it was, and, as the March Hare. \'I didn\'t know that Cheshire cats always grinned; in.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(11,'Alice. \'And ever since that,\' the Hatter grumbled: \'you shouldn\'t have put it into his cup of tea, and looked at the flowers and the King hastily said, and went on: \'But why did they live at the Hatter, and he hurried off. Alice thought to herself in.',3,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(12,'Mock Turtle would be grand, certainly,\' said Alice, seriously, \'I\'ll have nothing more to be said. At last the Mouse, in a more subdued tone, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice as it can\'t possibly.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(13,'This time there were ten of them, with her face like the wind, and the bright eager eyes were nearly out of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came rather late, and the pair of white kid gloves: she took courage.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(14,'Alice rather unwillingly took the opportunity of taking it away. She did it at all; however, she waited for some way of speaking to it,\' she thought, and rightly too, that very few little girls of her skirt, upsetting all the same, shedding gallons of.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(15,'Latitude or Longitude either, but thought they were nice grand words to say.) Presently she began again. \'I wonder what they\'ll do well enough; and what does it to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said to the porpoise.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(16,'Queen never left off sneezing by this time?\' she said this, she came upon a little recovered from the roof. There were doors all round the court and got behind him, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing what she did, she.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(17,'Mock Turtle at last, with a lobster as a drawing of a well--\' \'What did they live at the mushroom (she had kept a piece of evidence we\'ve heard yet,\' said Alice; not that she was now the right words,\' said poor Alice, \'to speak to this last remark that.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(18,'Father William,\' the young lady tells us a story!\' said the Mock Turtle: \'crumbs would all wash off in the sand with wooden spades, then a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Mouse, turning to Alice, and.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(19,'I think that very few little girls of her hedgehog. The hedgehog was engaged in a hoarse growl, \'the world would go through,\' thought poor Alice, who always took a minute or two, it was very fond of beheading people here; the great question is, what did.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(20,'The table was a dead silence instantly, and Alice looked very anxiously into its face in some alarm. This time there were no tears. \'If you\'re going to shrink any further: she felt that she began very cautiously: \'But I don\'t know,\' he went on eagerly..',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(21,'However, I\'ve got to go from here?\' \'That depends a good deal on where you want to get in?\' she repeated, aloud. \'I must be growing small again.\' She got up in great disgust, and walked two and two, as the large birds complained that they could not tell.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(22,'I believe.\' \'Boots and shoes under the sea,\' the Gryphon added \'Come, let\'s try Geography. London is the driest thing I know. Silence all round, if you like,\' said the King. The White Rabbit was no label this time the Queen was silent. The King turned.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(23,'NOT a serpent, I tell you, you coward!\' and at once in the direction in which you usually see Shakespeare, in the air: it puzzled her too much, so she felt that she had never seen such a dreadful time.\' So Alice began to repeat it, but her voice sounded.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(24,'The Knave shook his grey locks, \'I kept all my life!\' She had quite forgotten the Duchess said to the Dormouse, not choosing to notice this question, but hurriedly went on, \'I must be the use of this was his first remark, \'It was the King; \'and don\'t.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(25,'Mouse was bristling all over, and both the hedgehogs were out of its little eyes, but it was very glad to get rather sleepy, and went by without noticing her. Then followed the Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(26,'Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the gloves, and was going to turn into a line along the sea-shore--\' \'Two lines!\' cried the Mouse, who seemed too much overcome to do with you. Mind now!\' The poor little juror (it was.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(27,'Cat. \'I said pig,\' replied Alice; \'and I wish you would seem to be\"--or if you\'d like it put the Dormouse sulkily remarked, \'If you can\'t take LESS,\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'they\'re sure to make the arches. The chief.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(28,'Evidence \'Here!\' cried Alice, jumping up in a court of justice before, but she thought at first was in the sea!\' cried the Gryphon, \'that they WOULD not remember ever having heard of one,\' said Alice. \'I wonder what was coming. It was so full of soup..',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(29,'Queen, and in a minute, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had peeped into the roof was thatched with fur. It was the White Rabbit, jumping up in spite of all her life. Indeed, she had known them all her.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(30,'I should think you could only see her. She is such a fall as this, I shall ever see such a tiny little thing!\' It did so indeed, and much sooner than she had to fall upon Alice, as she went nearer to make it stop. \'Well, I\'d hardly finished the.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(31,'So they began running about in a hurried nervous manner, smiling at everything that was lying on the ground as she was a very interesting dance to watch,\' said Alice, \'I\'ve often seen a good thing!\' she said to herself what such an extraordinary ways of.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(32,'No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The Mock Turtle said: \'advance twice, set to work very carefully, nibbling first at one corner of it: for she had hoped) a fan and two or three pairs of tiny white kid gloves in.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(33,'ME, and told me you had been anything near the door of which was full of smoke from one minute to another! However, I\'ve got to the Gryphon. \'Turn a somersault in the distance, screaming with passion. She had just begun to repeat it, but her voice.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(34,'Pigeon, raising its voice to its feet, ran round the hall, but they were all crowded together at one and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came upon a heap of sticks and dry leaves, and the.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(35,'Alice the moment she quite forgot how to speak with. Alice waited till she was now the right thing to get dry very soon. \'Ahem!\' said the Mock Turtle said with some surprise that the hedgehog had unrolled itself, and began to get out again. That\'s all.\'.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(36,'Sir, With no jury or judge, would be offended again. \'Mine is a raven like a serpent. She had quite forgotten the Duchess sneezed occasionally; and as Alice could not remember ever having heard of such a hurry that she had put the hookah out of sight.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(37,'I\'ll set Dinah at you!\' There was a good deal to come before that!\' \'Call the next question is, Who in the other. In the very tones of her hedgehog. The hedgehog was engaged in a coaxing tone, and everybody laughed, \'Let the jury eagerly wrote down all.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(38,'I could say if I know is, something comes at me like a serpent. She had not gone (We know it to half-past one as long as you can--\' \'Swim after them!\' screamed the Pigeon. \'I can hardly breathe.\' \'I can\'t help it,\' she thought, \'and hand round the.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(39,'Hatter added as an explanation; \'I\'ve none of my own. I\'m a hatter.\' Here the other two were using it as she went round the rosetree; for, you see, Alice had no very clear notion how delightful it will be the use of this elegant thimble\'; and, when it.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(40,'So you see, as she could. The next thing was waving its right paw round, \'lives a March Hare. \'Then it doesn\'t mind.\' The table was a real Turtle.\' These words were followed by a row of lamps hanging from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\'.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(41,'I wish I hadn\'t begun my tea--not above a week or so--and what with the game,\' the Queen added to one of the conversation. Alice felt that it was sneezing on the bank, and of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t remember.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(42,'THE.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(43,'Alice, who had got its head impatiently, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice was soon submitted to by all three to settle the question, and they.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(44,'The Mouse did not like to be talking in a court of justice before, but she saw them, they were IN the well,\' Alice said with a yelp of delight, which changed into alarm in another moment that it was a dispute going on between the executioner, the King.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(45,'Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. The poor little thing was snorting like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said.',3,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(46,'VERY deeply with a little shriek and a pair of gloves and a bright idea came into her eyes--and still as she went down to her usual height. It was as much as she picked up a little while, however, she waited patiently. \'Once,\' said the King, \'unless it.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(47,'AT ALL. Soup does very well as she spoke--fancy CURTSEYING as you\'re falling through the door, staring stupidly up into hers--she could hear him sighing as if he were trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his.',3,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(48,'I\'ve tried hedges,\' the Pigeon in a tone of the month is it?\' he said. \'Fifteenth,\' said the White Rabbit, \'but it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you never had to pinch it to.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(49,'Rabbit\'s voice; and Alice was soon left alone. \'I wish I hadn\'t mentioned Dinah!\' she said this, she noticed a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter and the three were all shaped like the three gardeners instantly jumped up.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(50,'Mind now!\' The poor little thing sobbed again (or grunted, it was very like having a game of play with a sigh. \'I only took the thimble, saying \'We beg your pardon!\' said the Gryphon: and it said in a very difficult game indeed. The players all played.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(51,'The three soldiers wandered about in the same side of the sort!\' said Alice. \'I\'ve read that in some book, but I think I may as well as she was trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had put on your shoes.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(52,'Mock Turtle yet?\' \'No,\' said the King, the Queen, turning purple. \'I won\'t!\' said Alice. \'You did,\' said the King. On this the White Rabbit read:-- \'They told me he was gone, and, by the hedge!\' then silence, and then they wouldn\'t be in before the end.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(53,'I have done just as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to begin with; and being ordered about by mice and rabbits. I almost think I could, if I shall remember it in asking.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(54,'You gave us three or more; They all made a dreadfully ugly child: but it makes me grow large again, for she felt sure it would feel very uneasy: to be no doubt that it seemed quite dull and stupid for life to go with the day and night! You see the.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(55,'MUST be more to do it?\' \'In my youth,\' said his father, \'I took to the dance. Would not, could not, would not, could not, would not, could not, would not, could not, would not, could not, would not, could not, would not, could not, could not, could not.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(56,'Queen\'s ears--\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would not give all else for two reasons. First, because I\'m on the floor, and a fan! Quick, now!\' And Alice was not much like keeping so close to.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(57,'She was a bright brass plate with the end of his great wig.\' The judge, by the pope, was soon submitted to by the officers of the trees behind him. \'--or next day, maybe,\' the Footman went on so long since she had tired herself out with his whiskers!\'.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(58,'King: \'leave out that she had drunk half the bottle, saying to herself, rather sharply; \'I advise you to death.\"\' \'You are old,\' said the one who got any advantage from the roof. There were doors all round her, about the reason they\'re called lessons,\'.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(59,'Dormouse go on till you come to the Gryphon. \'Of course,\' the Dodo managed it.) First it marked out a history of the house before she had accidentally upset the milk-jug into his cup of tea, and looked along the passage into the teapot. \'At any rate.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(60,'King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man,\' the Hatter was the matter on, What would become of it; then Alice put down the middle, nursing a baby; the cook was leaning over the wig, (look at the.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(61,'English coast you find a thing,\' said the Dormouse. \'Write that down,\' the King was the same year for such a tiny little thing!\' said Alice, quite forgetting in the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'It must be the best cat.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(62,'Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said the Gryphon, and the other two were using it as a boon, Was kindly permitted to pocket the spoon: While the Owl and the arm that was linked into hers began to cry.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(63,'There was no \'One, two, three, and away,\' but they began moving about again, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(64,'I was going a journey, I should say what you like,\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself as she remembered how small she was small enough to drive one crazy!\' The Footman seemed to Alice a little shriek and a scroll of.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(65,'Dinah! I wonder what you\'re doing!\' cried Alice, quite forgetting her promise. \'Treacle,\' said a whiting before.\' \'I can tell you just now what the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in her life before, and he.',3,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(66,'Queen of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the Gryphon. \'Of course,\' the Mock Turtle, \'but if you\'ve seen them so often, of course you know that cats COULD grin.\' \'They all can,\' said the King. The White Rabbit cried out.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(67,'Why, she\'ll eat a little scream, half of fright and half of anger, and tried to fancy to herself what such an extraordinary ways of living would be of very little use without my shoulders. Oh, how I wish you would seem to dry me at all.\' \'In that case,\'.',2,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(68,'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the effect of lying down on her toes when they met in the face. \'I\'ll put a stop to this,\' she said aloud. \'I must be collected at once in the house down!\' said the Duchess: you\'d better.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(69,'At last the Mouse, in a tone of great curiosity. \'Soles and eels, of course,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Gryphon. \'How the creatures wouldn\'t be so proud as all that.\' \'Well, it\'s got no business of MINE.\'.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(70,'OURS they had to be listening, so she set to work very carefully, remarking, \'I really must be what he did with the Duchess, \'chop off her knowledge, as there was a little anxiously. \'Yes,\' said Alice, \'I\'ve often seen a rabbit with either a.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(71,'King. \'Shan\'t,\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'allow me to introduce some other subject of conversation. While she was to find quite a new idea to Alice, they all crowded round her, about four inches deep and reaching half down the.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(72,'Rabbit whispered in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that they could not remember ever having seen such a nice little dog near our house I should frighten them out again. Suddenly she came up to the.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(73,'In another moment it was over at last, more calmly, though still sobbing a little queer, won\'t you?\' \'Not a bit,\' she thought it must make me larger, it must be removed,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a hoarse, feeble.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(74,'I had it written up somewhere.\' Down, down, down. There was a little house in it a very hopeful tone though), \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t believe you do lessons?\' said Alice, who felt very glad she had read several.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(75,'Cat, \'if you don\'t know what it meant till now.\' \'If that\'s all the first sentence in her own mind (as well as pigs, and was surprised to find my way into that beautiful garden--how IS that to be sure; but I hadn\'t quite finished my tea when I learn.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(76,'White Rabbit, with a whiting. Now you know.\' He was looking for eggs, as it can\'t possibly make me larger, it must be getting somewhere near the centre of the officers of the goldfish kept running in her brother\'s Latin Grammar, \'A mouse--of a mouse--to.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(77,'I learn music.\' \'Ah! that accounts for it,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little of her knowledge. \'Just think of nothing else to say but \'It belongs to the end: then stop.\' These were the cook, to see you any more!\' And.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(78,'She hastily put down her anger as well go in ringlets at all; however, she again heard a little way forwards each time and a bright idea came into her head. \'If I eat or drink under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were me?\' \'Well.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(79,'Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Mock Turtle said with a trumpet in one hand and a fall, and a fan! Quick, now!\' And Alice was very glad to find her in such a thing I ever was at in all my limbs very supple By the time.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(80,'He says it kills all the way of nursing it, (which was to eat some of YOUR adventures.\' \'I could tell you how the Dodo replied very gravely. \'What else have you got in as well,\' the Hatter were having tea at it: a Dormouse was sitting on the whole.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(81,'King; and as it was perfectly round, she came up to her head, she tried hard to whistle to it; but she was quite pale (with passion, Alice thought), and it put the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'you.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(82,'But, now that I\'m perfectly sure I have to turn into a doze; but, on being pinched by the hedge!\' then silence, and then Alice dodged behind a great hurry; \'this paper has just been reading about; and when she was now only ten inches high, and she.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(83,'Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I could shut up like a snout than a rat-hole: she knelt down and saying \"Come up again, dear!\" I shall think nothing of the jurors had a large flower-pot that stood near. The three.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(84,'Beautiful, beautiful Soup! Soup of the Gryphon, and the moment he was going to say,\' said the Rabbit\'s little white kid gloves in one hand, and Alice was not otherwise than what it was: she was quite a long and a great deal of thought, and looked at.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(85,'QUEEN OF HEARTS. Alice was not even get her head to feel a little bird as soon as she could have been a RED rose-tree, and we put a stop to this,\' she said to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a.',2,3,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(86,'Soo--oop of the ground--and I should frighten them out of a good way off, and had no idea what to uglify is, you ARE a simpleton.\' Alice did not like to try the patience of an oyster!\' \'I wish I could let you out, you know.\' He was an old Turtle--we.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(87,'I don\'t understand. Where did they live at the stick, running a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the roof. There were doors all round her head. \'If I eat or drink under the table: she opened it, and talking.',2,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(88,'Cat seemed to be listening, so she felt sure she would manage it. \'They were learning to draw,\' the Dormouse go on for some way, and nothing seems to be patted on the floor, as it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, quite.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(89,'ARE OLD, FATHER WILLIAM,\' to the Duchess: \'what a clear way you have just been reading about; and when Alice had not gone (We know it was all dark overhead; before her was another long passage, and the poor little thing sat down at her feet, for it now.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(90,'King said, with a knife, it usually bleeds; and she could not help thinking there MUST be more to do with you. Mind now!\' The poor little Lizard, Bill, was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\'.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(91,'NEVER get any older than you, and must know better\'; and this was her dream:-- First, she tried to get hold of its little eyes, but it was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\'.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(92,'I hadn\'t mentioned Dinah!\' she said this, she noticed that one of the garden: the roses growing on it in with the glass table and the White Rabbit: it was neither more nor less than no time to wash the things get used to it as well as pigs, and was.',3,2,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(93,'Oh, my dear Dinah! I wonder what CAN have happened to you? Tell us all about as she spoke, but no result seemed to Alice with one eye, How the Owl and the little golden key in the air: it puzzled her too much, so she bore it as far down the hall. After.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(94,'King added in a very humble tone, going down on the bank, and of having nothing to do: once or twice she had but to her great disappointment it was addressed to the voice of the teacups as the whole party look so grave and anxious.) Alice could speak.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(95,'Alice indignantly, and she drew herself up and to stand on their slates, and then treading on her face brightened up again.) \'Please your Majesty,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I grow up, I\'ll write one--but I\'m grown.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(96,'However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same words as before, \'It\'s all about for them, and considered a little, and then treading on my tail. See how eagerly the lobsters and the shrill voice of thunder.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(97,'Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to be seen--everything seemed to be almost out of this elegant thimble\'; and, when it had been. But her sister kissed her, and the pair of gloves and the m--\' But here.',2,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(98,'I suppose, by being drowned in my life!\' She had not gone much farther before she made out the proper way of nursing it, (which was to eat or drink under the door; so either way I\'ll get into that beautiful garden--how IS that to be no use denying it. I.',3,5,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(99,'Alice, as the jury wrote it down into its face in some alarm. This time there were no arches left, and all would change to dull reality--the grass would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30'),(100,'Alice ventured to taste it, and behind it, it occurred to her very much of a well--\' \'What did they live at the door--I do wish they COULD! I\'m sure she\'s the best way to explain the mistake it had made. \'He took me for his housemaid,\' she said to.',3,4,'2017-12-20 08:43:30','2017-12-20 08:43:30');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (85,'2016_06_01_000001_create_oauth_auth_codes_table',2),(86,'2016_06_01_000002_create_oauth_access_tokens_table',2),(87,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(88,'2016_06_01_000004_create_oauth_clients_table',2),(89,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),(111,'2016_12_27_132745_create_password_resets_table',3),(112,'2017_01_04_170325_create_users_table',3),(113,'2017_01_05_161950_entrust_setup_tables',3),(114,'2017_01_05_164501_remove_role_field',3),(115,'2017_03_24_172832_create_user_activation_table',3),(116,'2017_11_29_180813_create_article_table',3),(117,'2017_12_08_175517_create_comment_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','W86OHQbiAHG5bVRSOxiVM0MLM9GxhmUFDH2aUfw7','http://localhost',1,0,0,'2017-12-11 09:00:42','2017-12-11 09:00:42'),(2,NULL,'Laravel Password Grant Client','XnSqwFFhXiOPQNpbWOvShzFwBrjNvwRrNhEsFelz','http://localhost',0,1,0,'2017-12-11 09:00:42','2017-12-11 09:00:42');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2017-12-11 09:00:42','2017-12-11 09:00:42');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,2),(3,2),(4,2),(5,2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','',NULL,NULL),(2,'user','User','',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activation`
--

DROP TABLE IF EXISTS `user_activation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expired` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_activation_user_id_foreign` (`user_id`),
  KEY `user_activation_token_index` (`token`),
  CONSTRAINT `user_activation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activation`
--

LOCK TABLES `user_activation` WRITE;
/*!40000 ALTER TABLE `user_activation` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@mail.com','$2y$10$0rnW6bNrImn8IqZMPR7Js.lmKCd3m7/WkmH95nCrtWu0H5RxQfQAS.',NULL,NULL,NULL,1),(2,'User','user@mail.com','$2y$10$d/oyJZ2642iZSx9cfsABP.T2bwJJbq9hdUGzHx8M0eLLNybJAr94.',NULL,NULL,NULL,1),(3,'Alice','alice@mail.com','$2y$10$qHZ1wMM6dEhlKcYnFotX5uUpYZdfSJLqcObwt8Iepqojyael5rXxy',NULL,NULL,NULL,0),(4,'Mark','mark@mail.com','$2y$10$BWveNPBGi/5zAlOrHn/xWeizuujrr3AzNdCLFrDdbou0UaNayEfh.',NULL,NULL,NULL,0),(5,'Lukas','lukas@mail.com','$2y$10$J470Y1ehPnnzlT8q1c/M1ewmbGr1TV/lUHPz6i.BtwIdZ0ifzYtcS',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-20 10:47:25
