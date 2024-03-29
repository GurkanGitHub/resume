
--SCRIPT OF MY HOUSE EXPENDITURES DATABASE

--DATABASE CREATION

create database expenditures

--drop database expenditures 

--TABLE CREATION

create table company(
comId int not null identity(1,1),
comName varchar(50),
comAddr varchar(50),
CONSTRAINT [PK_comId] PRIMARY KEY CLUSTERED ([comId]  ASC)
) ON [PRIMARY]
GO

--drop table company

create table category(
catId int not null identity(1,1),
catName varchar(50),
CONSTRAINT [PK_catId] PRIMARY KEY CLUSTERED ([catId] ASC)
)ON [PRIMARY]
GO

--drop table category

create table product(
proId int not null identity(1,1),
catId int,
proName varchar(50) not null,
proBrand varchar(50),
proQty int,
proWght float(3),
proVol float(3),
proType varchar(50)
CONSTRAINT [PK_proId] PRIMARY KEY CLUSTERED ([proId] ASC)
)ON [PRIMARY]
GO

--SETTING categoryId AS FOREIGN KEY OF PRODUCT TABLE

alter table product
add foreign key (catId) references category(catId)

alter table product
add foreign key (catId) references category(catId)

create table purchase(
proId int not null,
comId int not null,
purDT datetime not null,
purQnty int,
purPrc float(2),
purTotPrc float(2),
foreign key (proId) references product(proId),
foreign key (comId) references company(comId),
CONSTRAINT [PK_proId_comId_purDT] PRIMARY KEY CLUSTERED (proId, comId, purDT ASC)
)

--DATA ENTRIEDS TO TABLE --Company

insert into company(comName, comAddr) values('carrefour contact', 'rue colbert, vire')
insert into company(comName, comAddr) values('zeeman', 'avenue de bischwiller, vire')
insert into company(comName, comAddr) values('lidl', 'route de caen, vire')
insert into company(comName, comAddr) values('mangeons frais', 'rue colbert, vire')
insert into company(comName, comAddr) values('action', 'route de caen, vire')
insert into company(comName, comAddr) values('supérette flérienne', 'flers')
insert into company(comName, comAddr) values('e.leclerc', 'flers')
insert into company(comName, comAddr) values('boulangerie', 'a cote du carrefour contact, vire')
insert into company(comName, comAddr) values('restaurants du cœur', 'vire')
insert into company(comName, comAddr) values('croix rouge', 'vire')
insert into company(comName, comAddr) values('daltoner', '60 Avenue de Bischwiller')
insert into company(comName, comAddr) values('opthometrist', '7 rue de chenedolle')
insert into company(comName, comAddr) values('daltoner', null)
insert into company(comName, comAddr) values('pharmacie du val', null)
insert into company(comName, comAddr) values('viroise express', null)
insert into company(comName, comAddr) values('intersport', null)
insert into company(comName, comAddr) values('distri center', null)
insert into company(comName, comAddr) values('netflix', null)
insert into company(comName, comAddr) values('udemy', null)
insert into company(comName, comAddr) values('gemo', null)
insert into company(comName, comAddr) values('lidl', '10 Rue La Haye Mariaise')
insert into company(comName, comAddr) values ('boucherie anadolu', '10 avenue de la grande cavee')
insert into company(comName, comAddr) values ('carrefour', 'cote de nacre, caen')
insert into company(comName, comAddr) values ('aldi', '5 rue jb colbert zi du mont coco, caen')
insert into company(comName, comAddr) values ('joue club', '4 avenue de biscwiller, vire')
insert into company(comName, comAddr) values ('nomad', null)
insert into company(comName, comAddr) values ('total energies', '29 route de caen, vire')
insert into company(comName, comAddr) values ('bizim market', '25 rue du pont feron, flers')
insert into company(comName, comAddr) values ('carrefour station', '24 rue nationale, flers')

--DATA ENTRIEDS TO TABLE-Category

insert into category(catName) values('nourriture')
insert into category(catName) values('beverages')
insert into category(catName) values('produits de nettoyage')
insert into category(catName) values('vetements')
insert into category(catName) values('matériel électronique')
insert into category(catName) values('papeterie')
insert into category(catName) values('éducation')
insert into category(catName) values('décoration')
insert into category(catName) values('jouet')
insert into category(catName) values('sante')
insert into category(catName) values('cosmétiques')
insert into category(catName) values('quincaillerie')
insert into category(catName) values('factures')
insert into category(catName) values('materiels de cuisine')
insert into category(catName) values('carburant')


--DATA ENTRIEDS TO TABLE-Product

insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bread', 'market', null, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette', 'carrefour', null, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette', 'boulangerie', null, 0.22, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette', 'lidl', null, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette croustille', 'lidl', 1, 0.25, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette cereales', 'lidl', 1, 0.23, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'demi baguette rustiq', 'lidl', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'baguette rustiq', 'lidl', 1, 0.25, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pain special graines', 'lidl', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pain', 'carrefour', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pain', 'boulangerie', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'croissant', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'croissant', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'croissant pur beurre', 'lidl', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mini-viennoiseries croissant', 'lidl', 8, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mini croissant', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mini croissant', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mini croissant', 'viroise express', 8, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'croissant', 'e leclerc', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'farine de ble', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'farine de ble', 'label rouge', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'farine de ble', 'navarre', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'farine fluide', 'navarre', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'sucre', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'sucre en poudre', 'navarre', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'camambert de carac', 'carrefour',null, 0.125,null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'camambert de campaigne', 'president',null, 0.250, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'camambert', 'president',null, 0.250, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'camambert', 'cœur de lion',null, 0.150, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage de brebis', 'lou perac',null, 0.1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage de chevre', 'savencia', null, 0.18, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage fondu a la creme', 'kiri', 8, 0.16, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage blanc fondu', 'milbona', null, 0.24, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage a pate molle', 'mini caprice', null, 50, null, 'gr')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fromage au lait cru de chevre', 'petit pouligny', null, 150, null, 'gr')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'emmantel rape', 'carrefour', null, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'emmantel rape', 'president', null, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bio coulommiers', 'paturage', null, 0.35, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mozarella', 'casa azzura', null, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'confiture framboise', 'maribel', null, 0.45, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'confiture 4fruits', 'maribel', null, 0.45, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'nutella', 'ferrero', null, 0.825, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'nutella', 'ferrero', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pate a tartiner speculoos', 'lotus', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pate a tartiner speculoos', 'favorina', null, 0.35, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'miel de fleurs', 'maribel', null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'miel de fleurs glass', 'maribel', null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pizza 4 fromages', 'toque du chef', null, 0.470, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pizza crust', 'sodebo', null, 0.580, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'noodle', 'noodlicious', null, 0.065, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'noodle poule aroma', 'noodlicious', null, 0.065, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'noodle', 'banzai', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'yaourt nature', 'carrefour', 12, 1.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'yaourt', 'danone', 4, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'yaourt brasse', 'envia', 16, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'yaourt nature', 'envia', 16, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'yaourt fraise', 'yoplait', 4, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'perle de lait', 'yoplait', 4, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'graines de chanvre', 'activa', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre', 'president', 1, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre demi sel', 'envia', 1, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre demi sel gastronomique', 'envia', 1, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre doux', 'fs', null, 0.250, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'beurre traditionel', 'surgeres', null, 0.250, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf de poules plein air', 'Carrefour', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf plein air', 'lidl', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf frais moyen', 'Carrefour', 20, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf moyen', 'Carrefour', 20, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf de poulet', 'Carrefour', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œufs au sol', 'carrefour', 10, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œufs frais', 'kervenach', 10, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œufs frais', 'kervenach', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œufs gros crf', 'carrefour bio', 4, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'Œuf de poules plein air','carrefour', 20, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'legume vapeur broc carot mais', 'freshona', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'melange de legume mexicaine', 'freshona', 1, 0.75, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme banane puree', 'le berger des fruits', 4, 0.1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mini viennoiserie', 'e leclerc', 15, 0.375, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'boules de cereals', 'pp blanc', null, 0.750, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'muesli', 'carrefour', null, 0.750, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'muesli bio cereal', 'lidl', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'petales de ble', 'carrefour', 1, 0.75, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ketch-up', 'heinz', null, 0.46, 0.4, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ketch-up', 'heinz', null, 1.5, 1.32, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mayonnaise', 'ulker', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mayonnaise', 'saucee', 1, 0.465, 0.5, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'hot sauce', 'saucee', 1, 0.505, 0.5, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'lentil', null, null, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'olive', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile vegetale', 'carrefour', null, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile vegetale', 'vita dor', null, null, 5, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile olive', null, 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile olive vierge', 'companie extremena', 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile olive vierge', 'companie extremena', 1, null, 2, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'huile olive vierge', 'companie extremena', 1, null, 3, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'betteraves bio', 'carrefour', null, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'la gache', 'la fournee doree', null, null, null, null)
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'legumes du soleil, semoule, poulet', 'nestle naturnes', 2, 0.19, null, null)
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'carottes', 'nestle naturnes', 2, 0.13, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mais extra doux', 'freshona', null, 0.285, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'riz long grain', 'uncle bens', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'riz long grain', 'comptoir du grain', null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pates', 'macaroni', null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'gnocchi avec pommes de terre', 'rana', null, 0.3, null, null)
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'creps de bretagne', 'galettes bertel', 4, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'galettes cereals', 'cereal bio', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'haricot lingot', null, null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'levure boulangere', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'olives vertes', 'saladinettes', 1, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'batonnets poisson','ocean sea', 30, 0.9, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'batonnets panes colin alaska','ocean sea', 30, 0.9, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'batonnets poisson',null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'filets de saumon', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'colin alaska', 1, 0.8, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'filet de colin alaska', 'ocean sea', 0.95, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'saumon', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'paves de saumon', null, 4, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'2 paves de saumon', 'ASC', 2, 0.28, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'viande hache', 'supérette flérienne', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bifteck', 'supérette flérienne', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'cuisse de poulet', 'supérette flérienne', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'saucisse', 'ozyorem', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'salami', 'ozyorem', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'salade de legumes, poisson et boulgour','petit pierre', null, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ravioli saumon', 'William Saurin', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ravioli saumon', 'William Saurin', null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'saumon', null, null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'sel fin', 'cerebos', null, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'sel fin verseuse', 'chantefin', null, 0.75, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poivre noir moulu', 'kania', null, 0.044, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'herbes provence', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'origan', 'kania', null, 0.012, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clous girofle', 'ducros', null, 0.023, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'curcuma moulu', 'kania', null, 0.040, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'gingembre moulu', 'ducros', null, 0.026, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'cannelle', 'ducros', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'curry', 'kania', null, 0.046, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'orange', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'orange declasse', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'orange', null, null, 3, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'orange navelina', null, null, 3, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'orange a jus', null, null, 1.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme', 'breburn', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme golden', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme golden', null, null, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poire', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'banane', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'banane', 'darier', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bananes cavendish', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'banane bio fairtrade', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate ronde', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate ronde grappe', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate allongees', 'saveol', null, 0.6, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine corse', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine feuille', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine oronule', 'exportaciones s aranda', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine clemenules', null, null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'clamentine berkane', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron filet', null, null, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron bio', 'mamarica', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron primofiori', 'lapaz', 1, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron primofiori', 'garcia', 1, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron primofiori', 'tyler', 1, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'citron primofiori', 'rosegar', 1, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'avocat', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'cerise', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'fraise', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'raisin', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'raisin blanc', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'peche', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'melon', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ananas', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'kiwi', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'figue caque', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'grenade', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'myrtille', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'myrtille', 'driscoll', 1, 0.125, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'framboise', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'framboise', 'driscolls', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme de terre', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme de terre europe', 'sas paul marc', 1, 5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme de terre europe', 'sas paul marc', 1, 10, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme de terre amandine', 'princesse', 1, 1.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'pomme de terre grenailles', 'cote marche', 1, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'oignon', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'oignon jaune', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'oignon jaune', 'cote marche', 1, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'oignon blanc', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'epinard', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'celeri rave', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poireaux', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chou bruxelles', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chou brocoli', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'mais', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tomate cerise', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'concombre', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'concombre', 'unica fresh', null, 0.25, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'carotte', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'carotte', 'conso', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'carotte', 'primeale', null, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'carotte', 'gosselin', null, 2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ail', 'violet', null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'courge', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chou fleur', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'aubergine', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'artichout', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poivron', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poivron jaune', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'poivron mix', null, 3, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'paprika mix', 'hortalizas', 3, 0.5, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'asperge', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bette', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'betterave', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'radis', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'navet', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'navet rave', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'brocoli', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'celeri', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'champignon', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chayote', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'endive', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'haricot', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'haricot coco', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'haricot coco fonce', 'provence vivarais', null, 0.4, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chou', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'laitue', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'laitue', 'batavia blond', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'menthe', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'persil', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'basilic', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'salade iceberg', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'coriandre', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'noix fraiche', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'noix', 'grenoble', 1, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'goûter melanges cranberry', 'alesto', 5, 0.2, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'goûter melanges mix choco', 'alesto', 5, 0.2, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'cranberries sechee', 'alesto', 1, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'madeleines coquilles', 'sondey', 16, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'petite gâteau', 'madeleines coquilles M', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chocolat lait eclats', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tartelettes choco-caramel', 'sondey', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tartelettes citron', 'sondey', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'petit beurre choco', 'sondey', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'barni choco', 'mondolez', 5, 0.150, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'lu petit ecolier biscuit', 'mondolez', null, 0.150, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'lu petit ecolier biscuit', 'mondolez', null, 0.250, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tablette', 'carrefour', null, 0.14, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'kinder surprise chocolat', 'kinder', 3, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'lol surprise chocolat', 'zaini', 3, 20, null, 'gr')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'kinder bueno', 'kinder', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'kinder schokobons', 'kinder', null, 0.2, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'kinder country', 'kinder', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ferrero kinder chocolat', 'kinder', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'biscuit', 'nutella', null, 0.304, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'brownie', 'franprix', null, 0.285, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'biscuits carres', 'monoprix gourmet', null, 0.125, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'biscuits vitalite', 'sondey', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'biscuits', 'oreo', 2, 0.492, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'crepes dentelles', 'casino bio', null, 0.085, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'gateau', 'marbre', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chocolat', 'snickers', 5, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chocolat', 'milkway', 14, 0.227, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chocolat', 'toblerone', 0.1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'chocolat lait eclats', 'fin carre', 3, 0.1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tarte pommes', 'eleclerc', 1, 0.87, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'tzatziki', 'marque repere', 1, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'ktiriti', 'marque repere', 1, 0.2, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'eau mineral', 'badoit', null, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'eau mineral', 'perrier', null, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'lait', 'candia', null, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'lait', 'lactel', null, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'lait fraiche', null, 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'lait baby croissance', 'candia', 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé', 'filiz', null, 1, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé noir', 'lord nelson', 20, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé ceylan', 'lord nelson', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé early grey', 'lord nelson', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé english breakfast', 'carrefour', 25, 50, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'thé earl grey', 'twinings', 25, 50, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'ice tea', 'lipton', null, 1, null, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'ice tea citron vert', 'lipton', null, null, 1.5, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'eau mineral naturelle', 'bar le duc', 1, null, 0.5, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'cola', 'pepsi', 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'cola', 'coca cola', 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'cappucino', 'viroise express', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2,'cafe allonge', 'viroise express', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'essuie-tout 3 plis', 'floralys', 204, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'essuie-tout maxi rouleau', 'Floralys', 350, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'couche', 'lupidu', 44, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'lingettes bebes', 'lupidu',null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'lingettes comfort', 'lupidu', 100, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'lingettes', 'huggies', 56, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'eponges vegetales', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'liquid vaisselle', 'w5', null, null, 0.5, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'liquid vaisselle', 'w5', null, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'liquid vaisselle citron', 'mir', null, null, 0.75, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'lessive liquide', 'henkel', null, null, 3, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'détergent à lessive liquide', 'ariel', null, null, 1.815, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'mouchoirs blancs', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'papier toilette', 'floralys', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'papier toilette', 'floralys', 20, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'always ultra', null, 26, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'brosse dent', 'signal', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'dentifrice anti tartre', 'signal', 1, null, 75, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'sac poubelle', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'sac poubelle 5 lt', 'dumil', 30, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'sac caisse papier', 'carrefour', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'sac en papier', 'lidl', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'freeze bag 24x32', 'dumil', 75, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'savon olive', 'cien', null, null, 1.25, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'savon liquide', 'cien', null, null, 0.5, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'savon liquide amande', 'cien', null, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'shampoo', 'head&shoulders', null, null, 0.28, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3,'dentifrice', 'signal', null, null, 75, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'gel douche coconut','cien', null, null, 1, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'gel douche melon','cien', null, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'lotion hydrante lait damande','cien', null, null, 0.3, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'gel raser','cien', null, null, 0.2, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'creme hydratante','dove', null, null, 0.2, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'mouchoir blancs','floralys', 60, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'spray nettoyant',null, null, null, null, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'rasoir jetable',null, 3, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'gel douche', 'cadum', null, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'adoucisseur', 'silan', 1, null, 0.9, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'adoucisseur', 'cojoline', 1, null, 1.16, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'nettoyant menager salle de bain', 'ajax', 1, null, 0.75, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'gel wc javel', 'w5', 1, null, 1, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'serviettes', 'always', 26, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'deboucheur poudre', 'tarax', 1, 60, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (3, 'deboucheur gel', 'destop', 1, null, 500, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'chemise fille', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'slip garçon', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'slip fille', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'veste enfant', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'robe', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'parka', 'jack&jones', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'chausures', 'nike air max', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'botte fille', 'FPC', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'parka fille', 'Charlie Prune', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'sous pull', 'Charlie Prune', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'jupe fille', 'Charlie Prune', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'pantouf', null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'jammer', 'technopro', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'sac de sport', 'nike', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'slipper', 'technopro', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'bonnet', 'jack&jones', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'bonnet de natation', 'its', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'swimsuit', 'arena', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'sweat rouge 3 ans', 'gemo', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'tee-shirt jaune 3 ans', 'gemo', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (4,'tee-shirt bleu 3 ans', 'gemo', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'charger mural', 'linkster', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'ampul halogene 28 watt', 'dimmable', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'ampul led 3 watt 250 lumen', 'livarnolux', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'pil, 1.5 V zinc carbon aa','panasonic', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'pil, 1.5 V zinc carbon aaa','panasonic', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'cell phone','redmi note 9', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (5, 'montre', 'intersport', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'guirlande wit', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'ballons',null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'ruban adhesif', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'ciseaux grijs', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'papier cadeau', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'collant enfant', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'sac cadeau', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'accesoir cheveux', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'elastiques spirale dans balle', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'clic-clacs', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'set brosses cheveux', null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'etui a crayon', 'dlp industry', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'tasse',null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'livre 24x32 96 pages','harmelin', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'livre 17x22 96 pages','oxford', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'feutres','bic', 10, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'feutres de couleur','bic', 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, 'print','bison', 2, 21, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6, null,'amazon', 1, null, null, null)
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'backpack', 'nike', null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'ruban adhesif', 'washi', 3, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'trousse avec paillettes', null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (6,'baton de colle', 'bison', 2, 21, null, 'gr')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (7,'course python&machine learning', 'udemy', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'canards en plastique',null, null, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'patins en feutre','crelando', 32, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'aiguilles a coudre','crelando', 80, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'fil universe','crelando', 8, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'trousse beau',null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'pate a modeler','creative kids', 5, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'action poly','cabas', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'puzzel 24 pieces',null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (10, 'gel desinfectant', 'kapa-reynolds', 1, null, 75, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (10, 'hand gel', 'sanicur', 1, null, 50, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (10, 'masque protection', 'chiara ambra', 10, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (10, 'doliprane', null, null, 500, null, 'miligram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (10, 'masque jetables 3 couches', null, 10, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'baume a levres', 'cien', null, 4.8, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'vernis à ongle', 'cien', null, null, 10, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'hydratant matifiant','henkel france', null, null, 0.05, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (13, 'ligne telephone','reglo', null, null, null, 'mois')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (13, 'abonnment','netflix', null, null, null, 'mois')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (14, 'tasse de the','pasabahce', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (14, 'tasse de eau','doro', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (9, 'smartphone pt',null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (16, 'caen-vire / vire-caen bus ticket', null, 1, null, null, 'alle')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'donut au chocolat', 'lidl', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'mandarine orri vrac', null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'chips ondulee multi', null, 4, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'LU pepito choco', 'lu', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'look o look collies', null, 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'fruit blast muti vitamin', null, 4, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'eau mineral', null, 12, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'baume a levres', 'cien', null, 4.8, null, 'gram')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'vernis à ongle', 'cien', null, null, 10, 'mililiter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (11, 'hydratant matifiant','henkel france', null, null, 0.05, 'liter')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (13, 'ligne telephone','reglo', null, null, null, 'mois')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (13, 'abonnment','netflix', null, null, null, 'mois')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (14, 'tasse de the','pasabahce', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (14, 'tasse de eau','doro', 6, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'galette suedoises','sondey', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'coffee corse','senseo', 54, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'poulet ail sauce',null, null, null, null, 'kg')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1, 'mandarine caissette','mazaria moroc', 1, null, null, 'piece')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'jus orange','solevita', 1, null, 1, 'lt')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'oasis tropical','oasis', 1, null, 2, 'lt')
insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (2, 'chips nature',null, null, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'concentre de tomate', 'oncu', 1, 830, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pate a tartiner', 'choco nussa', 1, 400, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pain complet', 'lidl', 1, null, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pain rustique', 'lidl', 1, null, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'thon entier', 'petite navire', 3, 110, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'Œuf plein air', 'interdis', 12, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'baguette tradition', 'carrefour', 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'biscuits vitalite', 'carrefour', 1, 200, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage emmental', 'president', 1, 450, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pate a tartiner aux noisettes', 'tartichoc', 1, 400, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'yaourt a la greque noix de coco', 'milsani', 4, 600, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'sacs poignees', 'lidl', 1, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pamplemousse', null, 1, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'barchetta 4 fromage', 'lidl', 1, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'baguette', 'aldi', 1, 250, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'baguette', 'lidl', 1, 250, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'confiture de fraise', 'tamara', 1, 370, null, 'g')	
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'salade niçoise au thon', 'msc', 1, 280, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'poivron rouge vrac', 1, null, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'baguette', 'aldi', 1, 250, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'noix de grenoble en vrac', null, 1, 1, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'biscuit sesame', 'gerble', 1, 230, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'baguette', 'aldi', 1, 250, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'the noir', 'lord nelson', 1, 50, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'the noir', 'carrefour', 1, 50, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage emmental', 'chene dargent', 1, 500, null, 'g')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(17, 'gazoil', null, 1, null, null, 'litre')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(9, 'set de jeu dino avec son+lumiere', null, 1, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'olive noir m', 'oncu', 1, 1, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'the noir', 'filiz', 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage kasar', 'sutas', 1, 0.7, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage blanc erzurum', 'garmo ag', 1, 0.8, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'uzum yaprak', 'erbaa', 1, 0.8, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pain durum', 'sibel', 1, 1.62, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'saucisse kangal', 'destan', 1, 1, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'olive avec poivron', 'unlu', 1, 0.715, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'jalaoeno biber', 'ciloglu', 1, 0.4, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'tarhana soupe poudre', null, 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pulbiber', 'inci', 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'the rize turist', 'caykur', 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'sardine', null, 1, 0.75, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'soupe domates', 'bizim', 1, 0.065, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'soupe ezogelin', 'bizim', 1, 0.065, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'aycekirdek', 'O S', 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'tomato paste', 'oncu', 1, 1.65, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'riz', null, 1, 5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'lentille', 'duru', 1, 1, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'cornichon', null, 1, 3, null, 'lt')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'alice the', 'ceylan', 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'cafe turc', 'kocatepe', 1, 0.250, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'jam de fig', 'seyidoglu', 1, 0.7, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'sauce nar', null, 1, 0.7, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage blanc', null, 1, 1, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'cemen', 'yorem', 1, 0.2, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage cecil', 'aslanaga', 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'fromage kasar', null, 1, 0.4, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'yufka', 'oz', 1, 0.4, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(12, 'piles aa alcaline', 'panasonic', 10, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(9, 'voiture stunt dinosaure radiocommande', null, 1, null, null, 'piece')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(9, 'microfone avec son', null, 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'datte rav.alg.', 'brousse & fils', 1, 0.250, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pizza 4 fromage', 'carrefour', 1, null, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'tournesol grille', 'houdecoeur', 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'biscuit chocola au lait petit ecolier', 'lu', 1, 0.150, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'miel de fleur', 'famille michaud', 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'citron jaune primofiori', null, 1, 0.5, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'pate a tartiner', 'kaonuts', 1, 0.4, null, 'kg')
insert into product(catId, proName, proBrand, proQty, proWght, proVol, proType) values(1, 'beurre moule de bretagne', 'carrefour', 1, 0.5, null, 'kg')

select * from product
where proName like 'pat%'
select * from category



--DATA ENTRIEDS TO TABLE-Purchase

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (723, 41, '20201006 11:30:05 PM', 1, 5, 5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (723, 41, '20201006 11:30:05 PM', 1, 74.99, 74.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (723, 41, '20201006 11:30:05 PM', 1, 74.99, 74.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (724, 41, '20201006 11:30:05 PM', 1, 19.99, 19.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (725, 41, '20201006 11:30:05 PM', 1, 24.99, 24.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201021 10:30:00 PM', 3, 0.72, 2.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (18, 1, '20201021 10:30:00 PM', 2, 1.70, 3.4)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201103 10:30:00 PM', 1, 0.8, 0.8)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201103 10:30:00 PM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (19, 1, '20201103 10:20:00 PM', 1, 2.14, 2.14)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (20, 9, '20201030', 2, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (23, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (24, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (35, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (36, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (37, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (40, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (46, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (48, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (56, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (57, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (58, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (59, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (61, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (62, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (63, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (64, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (65, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (66, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (67, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (68, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (79, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (80, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (92, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (96, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (113, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (114, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (116, 9, '20201030', 0.5, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (128, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (164, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (165, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (166, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (167, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (171, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (203, 9, '20201030', 3, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (73, 6, '20201025', 3.184, 6.9, 21.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (74, 6, '20201025', 2.38, 12.9, 30.7)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (75, 6, '20201025', 3.198, 3.89, 12.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (73, 6, '20201006', 3.072, 6.9, 21.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (74, 6, '20201006', 1.04, 10.9, 11.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (75, 6, '20201006', 3.216, 3.9, 12.54)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (197, 5, '20201023 16:15:37 PM', 1, 0.56, 0.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (198, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (199, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (200, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (201, 5, '20201023 16:15:37 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (162, 5, '20201023 16:15:37 PM', 1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (31, 5, '20201023 16:15:37 PM', 2, 0.29, 0.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (27, 1, '20201101 10:00:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201101 10:00:00 PM', 2, 0.72, 1.44)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 1, '20201101 18:00:00 PM', 1, 1.61, 1.61)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (176, 3, '20201102 17:11:00 PM', 1, 7.29, 7.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (206, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (207, 1, '20201102 17:11:00 PM', 1, 1.62, 1.62)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (161, 1, '20201102 17:11:00 PM', 2, 0.94, 1.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (29, 1, '20201102 17:11:00 PM', 1, 2.97, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (154, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (208, 1, '20201102 17:11:00 PM', 1, 6.99, 6.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (209, 3, '20201102 17:11:00 PM', 1, 3.39, 3.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (205, 1, '20201102 17:11:00 PM', 1, 2.37, 2.37)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 1, '20201102 17:11:00 PM', 2.044, 2.49, 5.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (177, 3, '20201102 17:11:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (213, 1, '20201102 17:11:00 PM', 1, 0.47, 0.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (210, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (156, 1, '20201102 17:11:00 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (212, 1, '20201102 17:11:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (211, 1, '20201102 17:11:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (214, 3, '20201102 18:02:00 PM', 1, 2.82, 2.82)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (176, 3, '20201102 17:11:00 PM', 1, 7.29, 7.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (215, 11, '20201102 16:00:00 PM', 1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (216, 11, '20201102 16:00:00 PM', 1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (217, 12, '20201103 16:30:00 PM', 2, 22.10, 44.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (218, 4, '20201102 16:51:00 PM', 1.218, 1.49, 1.81)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (219, 4, '20201102 16:51:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (100, 4, '20201102 16:51:00 PM', 0.5, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (130, 4, '20201102 16:51:00 PM', 0.76, 1.59, 1.27)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (224, 4, '20201102 16:51:00 PM', 1, 1, 1)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (99, 4, '20201102 16:51:00 PM', 1.828, 1.95, 3.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (91, 4, '20201102 16:51:00 PM', 1.424, 1.09, 1.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (223, 4, '20201102 16:51:00 PM', 1, 1.20, 1.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (221, 4, '20201102 16:51:00 PM', 1, 0.9, 0.9)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (222, 4, '20201102 16:51:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (169, 1, '20201104 17:00:00 PM', 1, 0.56, 0.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (51, 1, '20201104 17:00:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (225, 1, '20201104 17:00:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (31, 2, '20201105 11:00:00 PM', 4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (228, 2, '20201105 11:00:00 PM', 4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (226, 2, '20201105 11:00:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (227, 2, '20201105 11:00:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (229, 1, '20201105 11:12:00 PM', 1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (230, 1, '20201105 11:12:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201105 11:12:00 PM', 1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (232, 1, '20201105 11:12:00 PM', 1, 1.66, 1.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201106 08:30:00 PM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201106 08:30:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (230, 1, '20201106 08:30:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (19, 1, '20201106 08:30:00 PM', 1, 2.14, 2.14)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (235, 1, '20201106 08:30:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (163, 3, '20201106 15:01:00 PM', 1, 2.79, 2.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (83, 3, '20201106 15:01:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (244, 3, '20201106 15:01:00 PM', 1, 0.35, 0.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (249, 3, '20201106 15:01:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (159, 3, '20201106 15:01:00 PM', 1, 0.98, 2.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (245, 3, '20201106 15:01:00 PM', 1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (238, 3, '20201106 15:01:00 PM', 1, 1.65, 1.65)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (241, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (243, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (242, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (86, 3, '20201106 15:01:00 PM', 1, 1.35, 1.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (60, 3, '20201106 15:01:00 PM', 2, 0.44, 0.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (29, 3, '20201106 15:01:00 PM', 2, 2.97, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (177, 3, '20201106 15:01:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (247, 3, '20201106 15:01:00 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (237, 3, '20201106 15:01:00 PM', 1, 1.59, 1.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (240, 3, '20201106 15:01:00 PM', 1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (236, 3, '20201106 15:01:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (246, 3, '20201106 15:01:00 PM', 1, 2.15, 2.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (239, 3, '20201106 15:01:00 PM', 1, 2.18, 2.18)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (109, 3, '20201106 15:01:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (248, 3, '20201106 15:01:00 PM', 1.308, 1.79, 2.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 3, '20201106 15:01:00 PM', 1.130, 2.49, 2.81)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (250, 3, '20201106 15:01:00 PM', 1, 1.65, 1.65)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 3, '20201106 15:01:00 PM', 1, 1.50, 1.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (251, 3, '20201106 15:01:00 PM', 1, 1.70, 1.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (252, 3, '20201106 15:01:00 PM', 1, 1.66, 1.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (253, 3, '20201106 15:01:00 PM', 1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (254, 3, '20201106 15:01:00 PM', 1, 2.59, 2.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201107 10:30:00 AM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (27, 1, '20201107 10:30:00 AM', 1, 4.91, 4.91)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (28, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (50, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1225, 1, '20201107 10:30:00 AM', 1, 1.8, 1.8)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1228, 4, '20201107 17:39:00 PM', 2, 1.99, 3.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (155, 4, '20201107 17:39:00 PM', 0.598, 5.99, 3.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (130, 4, '20201107 17:39:00 PM', 1.174, 1.59, 1.87)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (91, 4, '20201107 17:39:00 PM', 0.63, 1.09, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (101, 4, '20201107 17:39:00 PM', 2, 1, 2)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (140, 4, '20201107 17:39:00 PM', 0.736, 2.29, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (99, 4, '20201107 17:39:00 PM', 2.918, 1.95, 5.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (53, 1, '20201107 10:50:00 AM', 1, 1.85, 1.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1226, 1, '20201107 10:50:00 AM', 2, 1.33, 2.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201107 10:50:00 AM', 1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201107 10:50:00 AM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201107 10:50:00 AM', 1, 1.05, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (235, 1, '20201107 10:50:00 AM', 1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1241, 1, '20201109 17:53:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1242, 1, '20201109 17:53:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1243, 1, '20201109 17:53:00 PM', 2, 2.02, 4.04)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1236, 3, '20201109 17:53:00 PM', 1, 1.36, 1.36)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1232, 3, '20201109 17:53:00 PM', 1, 0.88, 0.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1244, 1, '20201109 17:53:00 PM', 1, 0.66, 0.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201109 17:53:00 PM', 1, 1.5, 1.5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (212, 1, '20201109 17:53:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (245, 1, '20201109 17:53:00 PM', 1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (251, 1, '20201109 17:53:00 PM', 1, 1.70, 1.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (30, 1, '20201109 17:53:00 PM', 3, 1.75, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 1, '20201109 17:53:00 PM', 1, 1.50, 1.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1233, 3, '20201109 17:53:00 PM', 1, 3.33, 3.33)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1245, 1, '20201109 17:53:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1235, 3, '20201109 17:53:00 PM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (154, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 1, '20201109 17:53:00 PM', 1.75, 1.99, 3.48)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1231, 9, '20201109 17:53:00 PM', 1, 1.75, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (94, 1, '20201109 17:53:00 PM', 1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (116, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (131, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1240, 1, '20201109 17:53:00 PM', 1, 2.79, 2.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1238, 1, '20201109 17:53:00 PM', 1, 1.79, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1234, 3, '20201109 17:53:00 PM', 1, 1, 1)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201111 10:30:00 AM', 3, 0.72, 2.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201110 10:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201110 10:30:00 AM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201112 10:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201112 10:30:00 AM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201113 08:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201113 08:30:00 AM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201115 08:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (380, 8, '20201115 08:30:00 AM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (503, 1, '20201118 12:01:00 AM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (505, 1, '20201118 12:01:00 AM', 1, 1.5, 1.5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 2, '20201118 12:01:00 AM', 6, 3.72, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (413, 1, '20201116 18:15:00 PM', 1, 1.94, 1.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201116 18:15:00 PM', 2, 1.63, 3.26)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (421, 1, '20201116 18:15:00 PM', 1, 2.08, 2.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (589, 1, '20201116 18:15:00 PM', 1, 3.32, 3.32)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (503, 1, '20201116 18:15:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201116 18:15:00 PM', 1, 0.09, 0.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201116 18:15:00 PM', 1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (702, 39, '20201117 14:09:00 PM',1, 2.09, 2.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201120 07:55:00 AM',3, 0.85, 2.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201117 09:03:00 AM',2, 0.85, 1.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (684, 1, '20201119 08:58:00 AM', 1, 1.40, 1.40)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 1, '20201119 08:58:00 AM', 1, 1.67, 1.67)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (392, 1, '20201119 08:58:00 AM', 1, 1.50, 1.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201119 08:58:00 AM', 1, 0.09, 0.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (522, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (688, 3, '20201120 17:28:00 PM',1, 1.55, 1.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (689, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (685, 3, '20201120 17:28:00 PM',1, 10.99, 10.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (690, 3, '20201120 17:28:00 PM',1, 2.98, 2.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (525, 3, '20201120 17:28:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (588, 3, '20201120 17:28:00 PM',1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201120 17:28:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201120 17:28:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (507, 3, '20201120 17:28:00 PM',3, 0.99, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (571, 3, '20201120 17:28:00 PM',0.428, 4.29, 1.84)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (687, 3, '20201120 17:28:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (691, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (589, 3, '20201120 17:28:00 PM',1, 3.09, 3.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (692, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (693, 3, '20201120 17:28:00 PM',2, 0.76, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201120 17:28:00 PM',4, 0.76, 3.04)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (695, 3, '20201120 17:28:00 PM',1, 3.39, 3.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (390, 3, '20201120 17:28:00 PM',1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (696, 3, '20201120 17:28:00 PM',1, 0.55, 0.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (433, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (403, 3, '20201120 17:28:00 PM',1, 4.47, 4.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (408, 3, '20201120 17:28:00 PM',1, 2.89, 2.89)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (697, 3, '20201120 17:28:00 PM',2, 1.69, 3.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201120 17:28:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (480, 3, '20201120 17:28:00 PM',1, 0.59, 0.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (698, 3, '20201120 17:28:00 PM',1, 0.45, 0.45)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (699, 3, '20201120 17:28:00 PM',1, 8.92, 8.92)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201120 17:28:00 PM',4, 1.75, 7)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201120 17:28:00 PM',5, 0.35, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (501, 3, '20201120 17:28:00 PM',1.462, 2.99, 4.37)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (701, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (596, 5, '20201116 12:21:32 PM',1, 1.72, 1.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (410, 5, '20201116 12:21:32 PM',10, 0.29, 2.9)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201114 11:33:44 PM',1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (377, 1, '20201114 11:33:44 PM',1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (396, 1, '20201114 11:33:44 PM',1, 1.74, 1.74)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (379, 1, '20201114 11:33:44 PM',1, 1.05, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201114 11:33:44 PM',2, 0.62, 1.24)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201114 16:12:00 PM',3, 0.29, 0.87)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201114 16:12:00 PM',1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201114 16:12:00 PM',2, 1.75, 3.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201114 16:12:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201114 16:12:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201114 16:12:00 PM',1.868, 1.99, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201114 16:12:00 PM',1, 2.02, 2.02)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (408, 3, '20201114 16:12:00 PM',1, 2.89, 2.89)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201118 15:10:00 PM',1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (613, 3, '20201118 15:10:00 PM',1, 7.29, 7.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201118 15:10:00 PM',1, 2.02, 2.02)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (449, 3, '20201118 15:10:00 PM',1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201118 15:10:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (706, 3, '20201123 12:21:00 PM',2, 1.39, 2.78)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201123 12:21:00 PM',3, 0.69, 2.07)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201123 12:21:00 PM',5, 0.35, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (703, 3, '20201123 12:21:00 PM',1, 0.15, 0.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (704, 3, '20201123 12:21:00 PM',0.668, 1.99, 1.33)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (707, 3, '20201123 12:21:00 PM',1, 1.03, 1.03)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (708, 3, '20201123 12:21:00 PM',1, 5.99, 5.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201123 12:21:00 PM',1.214, 1.99, 2.42)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201123 12:21:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201123 12:21:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (501, 3, '20201123 12:21:00 PM',1.408, 2.99, 4.21)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (543, 3, '20201123 12:21:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201123 18:51:59 PM',3, 0.62, 1.86)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201123 18:51:59 PM',1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (677, 3, '20201124 14:21:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (690, 3, '20201124 14:21:00 PM',1, 2.98, 2.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201124 14:21:00 PM',4, 1.75, 7.00)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201124 14:21:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (687, 3, '20201124 14:21:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201124 14:21:00 PM',6, 0.29, 1.74)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (710, 3, '20201124 14:21:00 PM',1, 1.35, 1.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201124 14:21:00 PM',2, 0.76, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201124 14:21:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (525, 3, '20201124 14:21:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (433, 3, '20201124 14:21:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (711, 3, '20201124 14:21:00 PM',1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201124 14:21:00 PM',1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (712,40, '20201125 14:43:00 PM',1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (713,40, '20201125 14:43:00 PM',1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (714,40, '20201125 14:43:00 PM',1, 2.20, 2.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201125 15:30:07 PM',1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (715, 1, '20201125 15:30:07 PM',1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (413, 1, '20201125 15:30:07 PM',1, 1.94, 1.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (397, 1, '20201125 15:30:07 PM',1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (421, 1, '20201125 15:30:07 PM',1, 2.08, 2.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201125 15:30:07 PM',6, 0.62, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201125 15:30:07 PM',1, 0.09, 0.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (735, 1, '20201125 20:30:00 PM',1, 9.99, 9.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (716, 3, '20201126 14:15:00 PM',3, 4.49, 13.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (717, 3, '20201126 14:15:00 PM',2, 0.69, 1.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (718, 3, '20201126 14:15:00 PM',8, 0.19, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (719, 3, '20201126 14:15:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201126 14:15:00 PM',1, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (721, 3, '20201126 14:15:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201126 14:15:00 PM',2, 0.69, 1.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201126 14:15:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201126 14:15:00 PM',1.222, 1.99, 2.43)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201126 14:15:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (495, 3, '20201126 14:15:00 PM',1.362, 1.59, 2.17)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (559, 3, '20201126 14:15:00 PM',5, 0.358, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (722, 3, '20201126 14:15:00 PM',1, 1.43, 1.43)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201126 14:15:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201126 14:15:00 PM',1, 2.01, 2.01)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (442, 2, '20201127 12:19:10 PM',1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (410, 2, '20201127 12:19:10 PM',5, 0.29, 1.45)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (562, 4, '20201127 16:52:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (554, 4, '20201127 16:52:00 PM',0.178, 1.99, 0.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (529, 4, '20201127 16:52:00 PM',0.852, 0.99, 0.84)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (492, 4, '20201127 16:52:00 PM',0.782, 1.59, 1.24)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (497, 4, '20201127 16:52:00 PM',0.652, 0.95, 0.62)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (737, 4, '20201127 16:52:00 PM',1.69, 1.79, 3.03)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201127 17:10:00 PM',1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201127 17:10:00 PM',3, 0.35, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201127 17:10:00 PM',1, 1.5, 1.5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201127 17:10:00 PM',1, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201127 17:10:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201127 17:10:00 PM',1, 0.76, 0.76)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (718, 3, '20201128 09:59:00 PM',9, 0.19, 1.71)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (726, 3, '20201128 09:59:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (727, 3, '20201128 09:59:00 PM',1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (728, 3, '20201128 09:59:00 PM',1, 9.99, 9.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (729, 42, '20201128 15:53:00 PM',1, 24.99, 24.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (730, 42, '20201128 15:53:00 PM',1, 15, 15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (731, 42, '20201128 15:53:00 PM',1, 6.99, 6.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (732, 42, '20201128 15:53:00 PM',1, 9.99, 9.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (733, 42, '20201128 15:53:00 PM',1, 3, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (736, 1, '20201129 11:00:00 AM',1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (734, 1, '20201129 11:00:00 AM',1, 1.93, 1.93)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (436, 1, '20201129 11:00:00 AM',1, 2.48, 2.48)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (403, 1, '20201129 11:00:00 AM',1, 4.91, 4.91)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201129 11:00:00 AM',1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (494, 1, '20201129 11:00:00 AM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201130 10:30:00 AM',1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201130 10:30:00 AM',6, 0.62, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (741, 4, '20201130 14:11:00 PM',2, 1, 2)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (562, 4, '20201130 14:11:00 PM',2, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (739, 4, '20201130 14:11:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (740, 4, '20201130 14:11:00 PM',0.992, 1.09, 1.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (737, 4, '20201130 14:11:00 PM',2.06, 1.79, 3.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (486, 4, '20201130 14:11:00 PM',1.386, 1.29, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (738, 4, '20201130 14:11:00 PM',1, 0.299, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201130 14:36:00 PM',2, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201130 14:36:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201130 14:36:00 PM',2, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201130 14:36:00 PM',2, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201130 14:36:00 PM',3, 0.35, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (726, 3, '20201130 14:36:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201130 14:36:00 PM',10, 0.29, 2.9)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (543, 3, '20201130 14:36:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1394, 57, '20240217 17:53:00 PM', 1, 1.83, 1.83)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1395, 57, '20240217 17:53:00 PM', 2, 1.35, 2.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1396, 57, '20240217 17:53:00 PM', 1, 6.69, 6.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1397, 57, '20240217 17:53:00 PM', 1, 1.95, 1.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1387, 57, '20240221 15:31:00 PM', 1, 2.29, 2.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1388, 57, '20240221 15:31:00 PM', 1, 6.54, 6.54)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (505, 57, '20240221 15:31:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 57, '20240221 15:31:00 PM', 1, 2.60, 2.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (748, 57, '20240221 15:31:00 PM', 3, 0.75, 0.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (407, 57, '20240221 15:31:00 PM', 1, 3.28, 3.28)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1389, 57, '20240221 15:31:00 PM', 1, 1.79, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1390, 57, '20240221 15:31:00 PM', 0.474, 2.99, 1.42)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1391, 58, '20240221 14:56:00 PM', 0.952, 9.90, 9.42)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1351, 58, '20240221 14:56:00 PM', 1, 7.50, 7.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1393, 58, '20240221 14:56:00 PM', 1, 3.99, 3.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1310, 58, '20240221 14:56:00 PM', 1, 15.49, 15.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1398, 59, '20240226 17:02:00 PM', 1, 2.95, 2.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1399, 59, '20240226 17:02:00 PM', 2, 0.90, 1.80)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1400, 59, '20240226 17:02:00 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1401, 59, '20240226 17:02:00 PM', 1, 3.65, 3.65)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1402, 60, '20240226 17:14:00 PM', 1, 1.89, 1.89)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (543, 60, '20240226 17:14:00 PM', 1, 2.49, 2.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1403, 60, '20240226 17:14:00 PM', 1, 2.59, 2.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1397, 57, '20240227 15:30:00 PM', 1, 1.95, 0.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1395, 57, '20240227 15:30:00 PM', 1, 1.35, 0.68)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1404, 57, '20240227 15:30:00 PM', 1, 0.19, 0.19)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1405, 57, '20240227 15:30:00 PM', 1, 0.89, 0.89)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1406, 57, '20240227 15:30:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1412, 60, '20240301 17:02:00 PM', 3, 0.39, 1.17)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1409, 60, '20240301 17:02:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1410, 60, '20240301 17:02:00 PM', 1, 2.19, 2.19)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1404, 57, '20240302 16:39:00 PM', 1, 0.19, 0.19)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1408, 57, '20240302 16:39:00 PM', 2, 0.39, 0.78)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1411, 57, '20240302 16:39:00 PM', 0.6, 2.99, 2.04)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 57, '20240302 16:39:00 PM', 1, 2.60, 2.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (430, 57, '20240302 16:39:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1413, 57, '20240302 16:39:00 PM', 0.204, 4.49, 0.92)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (505, 57, '20240302 16:39:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1414, 57, '20240302 16:39:00 PM', 1, 1.45, 1.45)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1416, 57, '20240302 16:39:00 PM', 1, 0.70, 0.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1418, 57, '20240302 16:39:00 PM', 1, 4.23, 4.23)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1419, 58, '20240307 13:00:00 PM', 1, 14.50, 14.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1310, 58, '20240307 13:00:00 PM', 1, 15.49, 15.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1420, 57, '20240307 14:03:00 PM', 1, 4.79, 4.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1421, 57, '20240307 14:03:00 PM', 1, 1.79, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1422, 57, '20240307 14:03:00 PM', 1, 2.0, 2.0)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1394, 57, '20240307 14:03:00 PM', 1, 1.83, 1.83)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (494, 57, '20240307 14:03:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1408, 57, '20240307 14:03:00 PM', 5, 0.39, 1.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1423, 57, '20240307 14:03:00 PM', 1, 1.79, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1424, 61, '20240309 11:06:00 PM', 1, 21.99, 21.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20240316 15:04:00 PM', 2, 0.45, 0.90)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1426, 3, '20240316 15:04:00 PM', 2, 0.59, 1.18)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 62, '20240309 07:22:00 PM', 1, 4.90, 4.90)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1427, 63, '20240309 10:35:00 PM', 1, 1.838, 50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1428, 3, '20240309 09:56:00 PM', 0.530, 2.49, 1.32)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1429, 3, '20240309 09:56:00 PM', 1, 1.55, 1.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1430, 3, '20240309 09:56:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1426, 3, '20240309 09:56:00 PM', 2, 0.59, 1.18)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1431, 3, '20240309 09:56:00 PM', 1, 1.98, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1404, 3, '20240309 09:56:00 PM', 1, 0.19, 0.19)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20240309 09:56:00 PM', 3, 0.45, 1.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1432, 3, '20240309 09:56:00 PM', 1, 2.28, 2.28)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1433, 3, '20240309 09:56:00 PM', 1, 1.45, 1.45)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (587, 3, '20240309 09:56:00 PM', 1, 3.25, 3.25)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 16, '20240316 18:16:00 PM', 1, 4.90, 4.90)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 16, '20240309 07:10:00 PM', 2, 9.80, 9.80)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1434, 5, '20240309 10:56:00 PM', 1, 9.95, 9.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1391, 58, '20240310 16:25:00 PM', 1.066, 9.90, 10.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1436, 58, '20240310 16:25:00 PM', 1, 8.49, 8.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1437, 58, '20240310 16:25:00 PM', 1, 4.40, 4.40)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1308, 58, '20240310 16:25:00 PM', 2, 0.50, 1.00)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1438, 58, '20240310 16:25:00 PM', 1, 7.49, 7.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1439, 58, '20240310 16:25:00 PM', 1, 7.50, 7.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 16, '20240323 07:39:00 PM', 1, 4.95, 4.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 16, '20240323 18:15:00 PM', 1, 4.95, 4.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1425, 16, '20240309 18:18:00 PM', 1, 4.95, 4.95)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1427, 65, '20240323 15:47:00 PM', 5.95, 1.748, 10.40)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1440, 64, '20240323 15:23:00 PM', 1, 11.99, 11.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1441, 64, '20240323 15:23:00 PM', 1, 4.79, 4.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1442, 64, '20240323 15:23:00 PM', 1, 6.99, 13.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1443, 64, '20240323 15:23:00 PM', 1, 3.99, 3.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1444, 64, '20240323 15:23:00 PM', 1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1445, 64, '20240323 15:23:00 PM', 1, 2.49, 2.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1446, 64, '20240323 15:23:00 PM', 1, 3.59, 3.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1447, 64, '20240323 15:23:00 PM', 1, 3.39, 3.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1448, 64, '20240323 15:23:00 PM', 1, 7.99, 7.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1449, 64, '20240323 15:23:00 PM', 1, 0.55, 1.10)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1450, 64, '20240323 15:23:00 PM', 1, 0.55, 0.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1451, 64, '20240323 15:23:00 PM', 1, 1.79, 3.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1453, 64, '20240323 15:23:00 PM', 1, 14.99, 14.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1452, 64, '20240323 15:23:00 PM', 1, 8.99, 8.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1454, 64, '20240323 15:23:00 PM', 1, 8.79, 8.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1455, 64, '20240323 15:23:00 PM', 1, 5.29, 5.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1456, 64, '20240323 15:23:00 PM', 1, 7.99, 7.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1457, 64, '20240323 15:23:00 PM', 1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1458, 64, '20240323 15:23:00 PM', 1, 3.19, 3.19)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1459, 64, '20240323 15:23:00 PM', 1, 3.49, 3.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1460, 64, '20240323 15:23:00 PM', 1, 8.49, 16.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1462, 64, '20240323 15:23:00 PM', 1, 3.29, 6.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1461, 64, '20240323 15:23:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1463, 64, '20240323 15:23:00 PM', 1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1464, 64, '20240323 15:23:00 PM', 1, 2.49, 4.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1459, 64, '20240323 15:24:00 PM', 1, 3.49, 3.49)


SELECT * from purchase
select * from category
SELECT * from company
SELECT * from product
WHERE proName like 'gaz%'


update product
set proBrand='Charlie Prune'
where proId=732

select * from category

select * from company

select * from product


--HOW MUCH I SPENT TODAY?

select round(sum(purTotPrc),2) as daily_expenditure
from purchase
where purDT between '2024-03-23 00:00:00.000' and '2024-03-23 23:59:00.000' AND comID= 64



--WHAT DID I BUY TODAY?

select * from purchase
where purDT between '2024-02-27 00:00:00.000' and '2024-02-27 23:59:00.000'

--HOW MUCH I SPENT AT XX

SELECT * FROM purchase
WHERE comID = 64

--LIST OF PURCHASES 

select pu.proId, pu.comId, pro.proName, pu.purPrc, pu.purTotPrc, pu.purDT
from product as pro
inner join purchase as pu on pro.proId=pu.proId
where pu.purDT between '2024-03-03 00:00:00.000' and '2024-23-03 23:59:00.000'
order by comId 

--PURCHASES BY CATEGORIES AND MARKET 

select pu.comId, round(sum(purTotPrc),2) as total
from product as pro
inner join purchase as pu on pro.proId=pu.proId 
where pu.purDT between '2024-03-23 00:00:00.000' and '2024-03-23 23:59:00.000' 
group by pu.comId

-- WHICH MARKET IS CHEAPER?

select pro.proName, pu.comId, pu.purPrc,pu.purTotPrc, pro.proWght, pu.purQnty,pro.proType, pro.proBrand
from purchase as pu
inner join product as pro on pu.proId=pro.proId
where purDT between '2024-02-01 00:00:00.000' and '2024-02-29 23:59:00.000'
order by pro.proName

--update purchase
update purchase
set purDT = '2024-02-26 17:02:00.000'
where purDT='2024-02-17 17:53:00.000'

update purchase
set comID = 59 
where purDT='2024-02-26 17:02:00.000'

--deletion of one row from table

delete from purchase 
where purDT between '2024-02-17 00:00:00.000'and '2024-02-26 23:59:00.000'



--Any one shopping sum total query
--select round(sum(purTotPrc),2)
--from purchase
--where purDT='2020-11-20 17:28:00.000'

--any one shopping purchase items and prices

--select * from purchase
--where purDT='2020-11-09 17:53:00.000'

--deletion of one row from table
--delete from purchase 
--where proId=1238 and comId=1 and purDateTime='2020-11-09 17:53:00.000'

delete from product
where proId=755


--seeing together product and purchase query

--select pr.proName,  pu.purQnty, pu.purTotPrc
--from product as pr
--inner join purchase as pu on pr.proId=pu.proId
--where purDT= '20201120 17:28:00 PM'

--updating table

--update purchase
--set purTotPrc=3
--where proId=231 and comId=3 and purDT='2020-11-09 17:53:00.000'

--selecting distinct statements

select distinct comId
from purchase
where purDT between '2020-11-14 00:00:00.000' and '2020-11-24 23:59:00.000'

--aggregate functions
--select count(proName) as num_of_products
--from product

--as data inputs grows i encountered some big id numbers which seems bad and distract my attention.
--so i decided to change these big id nubers. 
--here is my code





--finding row using wildcard

--select * from product
--where proName like '%gel%' 




--select sum(purTotPrc) 
from purchase
where purDT between '20201120' and  '20201120 23:59:59'

--select * from purchase
inner join product on product.proId=purchase.proId
where purDateTime between '20201106' and  '20201106 23:59:59' and comId=3

--update purchase
set purTotPrice=5.94
where purTotPrice=2.97 and purDateTime = '2020-11-06 15:01:00.000'

--select * from purchase
where purDateTime between '20201106' and  '20201106 23:59:59'

--select pu.comId, sum(purTotPrice)
from purchase as pu
where pu.purDateTime between '20201106' and  '20201106 23:59:59'
group by pu.comId

--select proBrand
from product
where proBrand like '%arr%';

--use expenditures


--SELECT round(AVG (purTotPrice),2) AS 'Average Purchase Price'
FROM purchase;

--select count (purTotPrice) as 'total purchased items'
from purchase

--select count(purTotPrice) as 'expensive items'
from purchase
where purTotPrice>20

--select product.proName, purchase.purTotPrice
from purchase
inner join product on product.proId=purchase.proId
where purTotPrice>20

--select cast(purQuantity as decimal(4,2))
from purchase

--alter table purchase 
--alter column purQuantity float;


--SQL DELETE Statement is used to delete existing records in a table.

--delete from purchase
where proId=398 and purDT='2020-11-30 14:36:00.000'

--select * from purchase


--SQL SERVER String Functions

--concat function
--SELECT CONCAT(proName, ' ', proBrand) proidentity
FROM product

--SELECT 
	CONCAT(
		CHAR(20), 
		CONCAT(proName, ' ', proBrand), 
		CHAR(13),
		proWght
		) proidentity
FROM product
ORDER BY 
	proName


--PATINDEX, string içindeki patternin pozisyonunu veriyor

SELECT proName, PATINDEX('%chocolat%', proName) as pos
FROM product
WHERE proName like '%chocolat%'
ORDER BY proName


--length of the product names 

SELECT proName, len(proName) 

--UPPER&LOWER Functions

SELECT proName, UPPER(proName) as uppercase
FROM product
WHERE proName like '%chocolat%'


SELECT proName, LOWER(proName) as lowercase
FROM product
WHERE proName like '%chocolat%'