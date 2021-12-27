DROP TABLE IF EXISTS all_questions2;
CREATE TABLE all_questions2(
	QuestionID INT
);

ALTER TABLE all_questions2
ADD COLUMN Level1 VARCHAR(255),
ADD COLUMN Level2 VARCHAR(255);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Country',1);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Gender',2);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Age',3);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Age Coded',4);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Parent',5);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Parental Status Coded',6);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Employment',7);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Employment Status Coded',8);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('News',9);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Optimistic about my own future','Self Then',10);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Optimistic about the future of the world','Self Then',11);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Happy with my life','Self Then',12);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The environment','World Issues',13);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The global economy','World Issues',14);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The economy','World Issues',15);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The healthcare system','World Issues',16);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The physical health of you and your family','World Issues',17);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The mental health of you and your family','World Issues',18);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Work/job prospects','World Issues',19);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('My personal finances','World Issues',20);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The education system','World Issues',21);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Politics','World Issues',22);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('How we get along as a society','World Issues',23);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Interest One',24);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Interest Two',25);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The environment','Current State',26);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The global economy','Current State',27);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The economy','Current State',28);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The healthcare system','Current State',29);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The physical health of you and your family','Current State',30);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The mental health of you and your family','Current State',31);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Work/job prospects','Current State',32);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('My personal finances','Current State',33);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The education system','Current State',34);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Politics','Current State',35);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('How we get along as a society','Current State',36);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('How serious coronavirus',37);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('When serious',38);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Optimistic about my own future','Self Now',39);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Optimistic about the future of the world','Self Now',40);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Happy with my life','Self Now',41);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Not worried about catching coronavirus','Self Now',42);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Not worried about family and friends catching coronavirus','Self Now',43);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Coronavirus is having no impact on my life','Self Now',44);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Coronavirus has brought out the best of humanity','Self Now',45);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('My family is not worried','Self Now',46);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The situation will get worse before it gets better','Covid-19 Concern',47);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Other people should take this more seriously','Covid-19 Concern',48);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Everyone is over-reacting','Covid-19 Concern',49);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I don''t understand why my life is on hold','Covid-19 Concern',50);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m more worried about the impact on the economy than the actual virus','Covid-19 Concern',51);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('We''re coming out of the worst of it now','Covid-19 Concern',52);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I have become more focused on what is important','Covid-19 Concern',53);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m enjoying finding new ways of doing things','Covid-19 Concern',54);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I understand the need to take precautionary measures','Covid-19 Concern',55);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The environment will be positively affected by coronavirus measures','Covid-19 Concern',56);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The healthcare system will get through this relatively unscathed','Confidence Level',57);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('This won''t cause us long term economic issues','Confidence Level',58);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The government guiding us through this','Confidence Level',59);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('We''ll return to normal everyday life after it passes','Confidence Level',60);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('This will have a positive impact on the environment','Confidence Level',61);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Lessons for Future',62);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Improvements for Future',63);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m out and about as usual','Actions during Covid-19',64);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m taking no precautions','Actions during Covid-19',65);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''ve not cancelled any future plans','Actions during Covid-19',66);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m partaking in more hobbies / interests','Actions during Covid-19',67);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m exercising less now','Actions during Covid-19',68);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m following coronavirus (Covid-19) closely in the news','Actions during Covid-19',69);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I have to remind my family a lot to take precautions','Actions during Covid-19',70);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Prevention Measures',71);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Exercising or playing sports','Behaviour Change One',72);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Yoga / meditation','Behaviour Change One',73);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Gaming (console or mobile)','Behaviour Change One',74);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Board games and jigsaws','Behaviour Change One',75);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Arts and crafts','Behaviour Change One',76);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Going to concerts or gigs','Behaviour Change One',77);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Going to cultural events (e.g. theatre, museums etc.)','Behaviour Change One',78);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Volunteering with a charity','Behaviour Change One',79);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Dining out in restaurants','Behaviour Change One',80);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Eating take away food','Behaviour Change One',81);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Catching up with friends/family','Behaviour Change One',82);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Reading books','Behaviour Change One',83);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Watching TV shows/films','Behaviour Change One',84);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Internet shopping','Behaviour Change One',85);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Listening to music','Behaviour Change One',86);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Listening to podcasts','Behaviour Change One',87);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Video calls with friends/family','Behaviour Change One',88);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Online exercise classes','Behaviour Change One',89);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Watch online theatre/plays','Behaviour Change One',90);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Watch online gigs/concerts','Behaviour Change One',91);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Play games online with friends','Behaviour Change One',92);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Online video gaming','Behaviour Change One',93);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Online quizzes','Behaviour Change One',94);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Watching online videos','Behaviour Change One',95);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Streaming films','Behaviour Change One',96);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Behaviour Change Two',97);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Buying behaviour One',98);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Bulk buying food items to stock up','Buying behaviour Two',99);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Bulk buying non-food items to stock up','Buying behaviour Two',100);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Getting food deliveries from online retailers','Buying behaviour Two',101);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Signing up to food delivery subscription services','Buying behaviour Two',102);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Going to the supermarket','Buying behaviour Two',103);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Going to the local ''corner'' shop','Buying behaviour Two',104);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Ordering non-food items from online retailers (e.g. Amazon)','Buying behaviour Two',105);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Ordering takeaways / deliveries from local restaurants','Buying behaviour Two',106);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Financial Change',107);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Financial Change Cause',108);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Household Devices',109);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Suspicious',110);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('TV set','Device Usage',111);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('PVR/DVR which can record TV programs and allows you to pause or rewind live TV','Device Usage',112);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Device for streaming content to your TV set (e.g. Chromecast, Roku Streaming Stick- but not including video game consoles)','Device Usage',113);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('DVD or Blu-ray player (not in a laptop)','Device Usage',114);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Desktop computer','Device Usage',115);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Laptop computer','Device Usage',116);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Smartphone (this is a phone on which you can download apps and access email, the internet etc., e.g. iPhone, Samsung Galaxy)','Device Usage',117);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Tablet (e.g. iPad, Samsung Galaxy Tab, Microsoft Surface Pro etc.)','Device Usage',118);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('e-Reader (e.g. Kindle)','Device Usage',119);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Video game console (e.g. Xbox, PS4)','Device Usage',120);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Portable gaming console (e.g. Nintendo Switch, PlayStation Vita etc.)','Device Usage',121);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('VR (Virtual Reality) headset (e.g. Google Cardboard, Oculus Rift)','Device Usage',122);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Wireless home speaker systems to play music, TV, or movies (e.g. Bose, Sonos)','Device Usage',123);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Premium headphones that cost $200 or more','Device Usage',124);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Digital radio','Device Usage',125);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Smartwatch (e.g. Samsung Gear, Apple watch)','Device Usage',126);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Fitness tracker (e.g. Fitbit, Garmin)','Device Usage',127);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Smart Home speakers (e.g. Google Home, Amazon Echo)','Device Usage',128);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Voice assistant (virtual assistants that can perform tasks or services based on verbal commands, e.g. Google, Siri, Alexa, Cortana)','Device Usage',129);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Smart home extensions that use technology to control household appliances such as lights, sound systems and thermostats (e.g. NEST, smart heating thermostats, smart lightbulbs etc.)','Device Usage',130);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Smartphones','Device Knowledge',131);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Laptops/desktops','Device Knowledge',132);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Sound and music devices','Device Knowledge',133);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Video game consoles','Device Knowledge',134);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('TV screens/monitors','Device Knowledge',135);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Technology in general','Device Knowledge',136);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Any smartphone can use 5G mobile data connections','Technology Knowledge',137);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('5G mobile connections can be as fast as 300 megabits per second','Technology Knowledge',138);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The iPhone came out in 1998','Technology Knowledge',139);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('OS stands for Operational Server','Technology Knowledge',140);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('MP3 files are audio files','Technology Knowledge',141);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('CPU stands for Central Processing Unit','Technology Knowledge',142);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Dolby provide the technology behind leading edge sound and vision devices','Technology Knowledge',143);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('All wireless speakers include Alexa','Technology Knowledge',144);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Wireless headphones usually connect via Bluetooth','Technology Knowledge',145);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('4K TV has 4000 times the number of pixels that HD TV has','Technology Knowledge',146);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('The first PlayStation came out in the early 2000s','Technology Knowledge',147);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('More than 125 million people play Fortnite','Technology Knowledge',148);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Artificial intelligence is already built into many smartphones','Technology Knowledge',149);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Quantum computing can be up to 100 million times faster than regular computers','Technology Knowledge',150);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Twitter is owned by Facebook','Technology Knowledge',151);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Facebook are developing a digital currency called Ethereum','Technology Knowledge',152);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('95 million photos are uploaded to Instagram each day','Technology Knowledge',153);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('free up my time to do more of what I want to do','Future Technology',154);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('free us up from state control','Future Technology',155);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('put control in the hands of a few major corporations','Future Technology',156);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('take the power away from individuals','Future Technology',157);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('bring me closer to the people I care about','Future Technology',158);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('allow me to meet many more likeminded people','Future Technology',159);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make real-life relationships weaker or harder to maintain','Future Technology',160);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make us more isolated or lonely','Future Technology',161);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make us all safer','Future Technology',162);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('give me more control over my life','Future Technology',163);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make it easier for terrorists to make plans','Future Technology',164);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('open the door to new and frightening types of crime','Future Technology',165);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('help me learn new skills','Future Technology',166);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('allow me to be the person I want to be','Future Technology',167);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make it hard to know what is true and what isn''t','Future Technology',168);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('make it harder to think and act as an individual','Future Technology',169);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('take jobs away from human beings','Future Technology',170);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('increase the divide between rich and poor','Future Technology',171);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('drive positive change in society','Future Technology',172);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('help solve the environmental problems the world faces','Future Technology',173);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m interested in technology and keep up to date with new developments in this area','Opinions on Technology',174);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I trust technology firms with my personal information and dataI feel safe when using technology that I won''t fall victim to fraud or a scam','Opinions on Technology',175);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I feel safe when using technology that I won''t fall victim to fraud or a scam','Opinions on Technology',176);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('When purchasing a new piece of technology, the brand that made it is important to me','Opinions on Technology',177);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Most new technology is over-rated','Opinions on Technology',178);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m worried about the impact new technology is having on the world','Opinions on Technology',179);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Technological advancements are not as dramatic as they once were','Opinions on Technology',180);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Technology and the internet allow me to get to the truth, the things the people in power don''t want you to know','Opinions on Technology',181);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''ll need to keep buying more devices until I''ll have everything I want','Technology Preferences',182);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I prefer using newer technology even if it''s not proven','Technology Preferences',183);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I make my own mind up whether the technology is worth buying or not','Technology Preferences',184);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I trust that I know technology well enough to not need to read instructions','Technology Preferences',185);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('When it comes to gaming, I prefer to play the game myself','Technology Preferences',186);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''ll only upgrade if my older model stops working','Technology Preferences',187);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I enjoy reading about new technology products','Technology Profile',188);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I''m willing to pay more for top quality electronics','Technology Profile',189);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Before buying electronics, I do as much research as possible','Technology Profile',190);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('At first, I was nervous about using computers, but now I''m much more comfortable','Technology Profile',191);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I want others to say "wow" when they see my electronics','Technology Profile',192);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('If I am to be able to use a new technology product, someone has to show me how to use it','Technology Profile',193);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('Building electronics is a hobby of mine','Technology Profile',194);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I enjoy learning about technology or electronic products from others','Technology Profile',195);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I like to have a lot of gadgets','Technology Profile',196);

INSERT INTO all_questions2 (Level1,Level2,QuestionID)
VALUES ('I often take the opportunity to discuss my knowledge of technology or electronic products with others','Technology Profile',197);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Household Size',198);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Household Composition',199);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Personal Health',200);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Children',201);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Children education',202);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Other''s Health',203);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Main Occupation',204);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Autocode Social Grade',205);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Education',206);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Residential Area',207);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Autocode Urban Status',208);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Region UK',209);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Household Income UK',210);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Ethnicity UK',211);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('State US',212);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Region US',213);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Household Income US',214);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Ethnicity US',215);

INSERT INTO all_questions2 (Level1,QuestionID)
VALUES ('Ethnicity Group US',216);

SELECT * FROM all_questions2;