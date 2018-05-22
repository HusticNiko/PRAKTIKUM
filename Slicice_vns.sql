#ZBIRKA: idZbirka, naziv, leto, st vseh 
insert into ZBIRKA values (1, 'FIFA WORLD CUP RUSSIA',2018,670);
insert into ZBIRKA values (2, 'NBA',2017,420);
insert into ZBIRKA values (3, 'PANINI FIFA 365',2018,602);
insert into ZBIRKA values (4, 'ROAD TO 2018 FIFA WORLD CUP RUSSIA',2018,100);
insert into ZBIRKA values (5, 'PUJSA PEPA - IGRAJMO SE Z NASPROTJI',2017,190);
insert into ZBIRKA values (6, 'HARRY POTTER IN MAGIČNE ŽIVALI',2017,240);
insert into ZBIRKA values (7, 'NBA',2016,443);
insert into ZBIRKA values (8, 'PANINI FIFA 365',2017,672);
insert into ZBIRKA values (9, 'LEDENO KRALJESTVO- ANGLEŠČINA JE ZABAVNA',2016,143);
insert into ZBIRKA values (10, 'UEFA EURO',2016,680);

#UPORABNIK idUporabnik ime priimeek email ulica kraj država
insert into UPORABNIK values (1, 'Tone','Kos','tone.kos@gmail.com','Slovenska 3','Maribor','Slovenija','Moški', 'geslo1','2018-4-20',5);
insert into UPORABNIK values (2, 'Joze', 'Grm','joze.grm@gmail.com','Ljubljanska','Ljubljana','Slovenija','Moški','geslo2','2017-4-27',21);
insert into UPORABNIK values (3, 'Janez', 'Frim','janez.frim@gmail.com','Grčna 41','Nova Gorica','Slovenija','Moški','geslo3','2016-8-13',312);
insert into UPORABNIK values (4, 'Marjan', 'Novak','marjan.novak@gmail.com','Trubarjeva 5','Celje','Slovenija','Moški','geslo4','2018-5-5',2);
insert into UPORABNIK values (5, 'Anton', 'Bukovec','anton.bukovec@gmail.com','Celovška 160','Ljubljana','Slovenija','Moški','geslo5','2015-1-6',4);
insert into UPORABNIK values (6, 'Marija', 'Adamič','marija.adamic@gmail.com','Korenčanova 47','Ljubljana','Slovenija','Ženska','geslo6','2018-7-29',21);
insert into UPORABNIK values (7, 'Nevenka', 'Babič','nevenka.babic@gmail.com','Regentova 7','Maribor','Slovenija','Ženska','geslo7','2018-12-21',3);
insert into UPORABNIK values (8, 'Ana', 'Bevk','ana.bevk@gmail.com','Cesta zmage 31','Maribor','Slovenija','Ženska','geslo8','2016-4-3',52);
insert into UPORABNIK values (9, 'Lea', 'Cvikl','lea.cvikl@gmail.com','Rezike Zalaznik 8','Maribor','Slovenija','Ženska','geslo9','2017-5-9',12);
insert into UPORABNIK values (10, 'Jadranka', 'Fekonja','jadranka.fekonja@gmail.com','Pri Hrastu 13','Nova Gorica','Slovenija','Ženska','geslo10','2016-3-3',46);





#UPORABNIKOVA ZBIRKA
insert into UPORABNIKOVA_ZBIRKA values (1, 1, 1);
insert into UPORABNIKOVA_ZBIRKA values (2, 2, 2);
insert into UPORABNIKOVA_ZBIRKA values (3, 3, 3);
insert into UPORABNIKOVA_ZBIRKA values (4, 4, 4);
insert into UPORABNIKOVA_ZBIRKA values (5, 5, 5);
insert into UPORABNIKOVA_ZBIRKA values (6, 6, 6);
insert into UPORABNIKOVA_ZBIRKA values (7, 7, 7);
insert into UPORABNIKOVA_ZBIRKA values (8, 8, 8);
insert into UPORABNIKOVA_ZBIRKA values (9, 9, 9);
insert into UPORABNIKOVA_ZBIRKA values (10, 10, 10);



#SLICICE
insert into SLICICA values (1, 'Naziv',2,1,1);
insert into SLICICA values (1, 'Naziv',3,2,2);
insert into SLICICA values (1, 'Naziv',1,3,3);
insert into SLICICA values (1, 'Naziv',1,4,4);
insert into SLICICA values (1, 'Naziv',2,5,5);
insert into SLICICA values (1, 'Naziv',1,6,6);
insert into SLICICA values (1, 'Naziv',6,7,7);
insert into SLICICA values (1, 'Naziv',1,8,8);
insert into SLICICA values (1, 'Naziv',2,9,9);
insert into SLICICA values (1, 'Naziv',1,10,10);


#Menjava
insert into MENJAVA values (1, 'ZA DENAR','5',1,1,10);
insert into MENJAVA values (1, 'ZA SLICICO',null,2,2,9);
insert into MENJAVA values (1, 'ZA SLICICO',null, 3,3,8);
insert into MENJAVA values (1, 'ZA DENAR', '5.5', 4,5,7);
insert into MENJAVA values (1, 'ZA DENAR','2.7', 5,6,6);
insert into MENJAVA values (1, 'ZA SLICICO',null, 6,5,5);
insert into MENJAVA values (1, 'ZA DENAR','15', 7,7,4);
insert into MENJAVA values (1, 'ZA SLICICO',null, 8,8,3);
insert into MENJAVA values (1, 'ZA SLICICO',null, 9,9,2);
insert into MENJAVA values (1, 'ZA DENAR','1',10,10,1);
