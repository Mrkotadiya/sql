create table CLIENT_MASTER(
    CLIENTNO Varchar(6) primary key, 
    NAME Varchar(20) Not null,
    ADDRESS1 VARCHAR(30),
     ADDRESS2 varchar(30),
     CITY varchar(15),
     PINCODE numeric(8),
     STATE varchar(15),
     BALDUE DEC(10,0) 
);
insert into CLIENT_MASTER Values('C00001','ivan bayroos','Swastiktower','Jakatnaka','Mumbai','400054','Maharastra','15000');
insert into CLIENT_MASTER Values('C00002','Mamta Muzumdar','Swastiktower','Jakatnaka','Madras','780001','Tamil Nadu','0');
insert into CLIENT_MASTER Values('C00003','Chhaya Bankar','Swastiktower','Jakatnaka','Mumbai','400057','Maharastra','5000');
insert into CLIENT_MASTER Values('C00004','Ashwini Joshi','Swastiktower','Jakatnaka','Banglore','560001','Karnataka','0');
insert into CLIENT_MASTER Values('C00005','Hansel colaco','Swastiktower','Jakatnaka','Mumbai','400060','Maharastra','2000');
insert into CLIENT_MASTER Values('C00006','Deepak Sharma','Swastiktower','Jakatnaka','Manglore','560050','Karnataka','0');

C00001	ivan bayroos	Swastiktower	Jakatnaka	Mumbai	400054	Maharastra	15000
C00002	Mamta Muzumdar	Swastiktower	Jakatnaka	Madras	780001	Tamil Nadu	0
C00003	Chhaya Bankar	Swastiktower	Jakatnaka	Mumbai	400057	Maharastra	5000
C00004	Ashwini Joshi	Swastiktower	Jakatnaka	Banglore	560001	Karnataka	0
C00005	Hansel colaco	Swastiktower	Jakatnaka	Mumbai	400060	Maharastra	2000
C00006	Deepak Sharma	Swastiktower	Jakatnaka	Manglore	560050	Karnataka	0

create table PRODUCT_MASTER(
    PRODUCTNO Varchar(6) primary key , 
    DESCRIPTION Varchar(15) not null,
    PROFITPERSENTAGE DEC(4,2) not null,
    UNITEMASURE varchar(10) not null,
    QTYONHAND numeric(8) not null,
    RECORDERLVL numeric(8) not null,
    SELLPRICE DEC(8,2) not null,
    COSTPRICE DEC(8,2)  not null
);
insert into PRODUCT_MASTER Values('P00001','T-Shirts','5','Piece','200','50','350','250');
insert into PRODUCT_MASTER Values('P00002','Shirt','6','Piece','150','50','500','350');
insert into PRODUCT_MASTER Values('P00003','Cotton jeans','5','Piece','100','20','600','450');
insert into PRODUCT_MASTER Values('P00004','Jeans','5','Piece','100','20','750','500');
insert into PRODUCT_MASTER Values('P00005','Trousers','2','Piece','150','50','850','550');
insert into PRODUCT_MASTER Values('P00006','Pull Overs','2.5','Piece','80','30','700','450');
insert into PRODUCT_MASTER Values('P00007','Denim Shirts','4','Piece','100','40','350','250');
insert into PRODUCT_MASTER Values('P00008','Lycra Top','5','Piece','70','30','300','175');
insert into PRODUCT_MASTER Values('P00009','Shirts','5','Piece','75','30','450','300');

P00001	T-Shirts	5.00	Piece	200	50	350.00	250.00
P00002	Shirt	6.00	Piece	150	50	500.00	350.00
P00003	Cotton jeans	5.00	Piece	100	20	600.00	450.00
P00004	Jeans	5.00	Piece	100	20	750.00	500.00
P00005	Trousers	2.00	Piece	150	50	850.00	550.00
P00006	Pull Overs	2.50	Piece	80	30	700.00	450.00
P00007	Denim Shirts	4.00	Piece	100	40	350.00	250.00
P00008	Lycra Top	5.00	Piece	70	30	300.00	175.00
P00009	Shirts	5.00	Piece	75	30	450.00	300.00

create table SALESMAN_MASTER(
    SALESMANNO Varchar(6) Primary key ,
    SALESMANNAME Varchar(20) not null,
    ADDRESS1 varchar(30)not null,
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE numeric(8),
    STATE varchar(20),
    SALAMT numeric(8,2)not null,
    TGTTOGET numeric(6,2)not null,
    YTDSALES numeric(6,2)not null,
    REMARKS Varchar(60)
);
insert into SALESMAN_MASTER Values('S00001','Aman','A-14','Worli','Mumbai','400002','Maharashtara','3000','100','50','Good');
insert into SALESMAN_MASTER Values('S00002','Omkar','65','Nariman','Mumbai','400001','Maharashtara','3000','200','100','Good');
insert into SALESMAN_MASTER Values('S00003','Raj','P-7','Bandara','Mumbai','400032','Maharashtara','3000','200','100','Good');
insert into SALESMAN_MASTER Values('S00004','Ashish','A-5','Juhu','Mumbai','400044','Maharashtara','3500','200','150','Good');

create table SALES_ORDER(
    ORDERNO Varchar(6) Primary Key,
    CLIENTNO varchar(6) references  CLIENT_MASTER ,
    ORDERDATE Date Not Null,
    DELYADDR Varchar(25),
    SALESMANNO varchar(6)  references SALESMAN_MASTER ,
    DELYTYPE Char(1),
    BILLYN Char(1),
    DELYDATE Date,
    ORDERSTATUS Varchar(10)
);
insert into SALES_ORDER values ('019001','C00001','12-june-04','Surat','S00001','F','N','20-july-02','In Process');
insert into SALES_ORDER values ('019002','C00002','25-june-04','Mumbai','S00002','P','N','27-June-02','Cancelled');
insert into SALES_ORDER values ('046865','C00003','18-Feb-04','Kalkata','S00003','F','Y','20-Feb-02','Fulfilled');
insert into SALES_ORDER values ('019003','C00001','03-Apr-04','Maharastra','S00001','F','Y','07-Apr-02','Fulfilled');
insert into SALES_ORDER values ('046866','C00004','20-May-04','Delhi','S00002','P','N','22-May-02','Cancelled');
insert into SALES_ORDER values ('019008','C00005','24-May-04','Ahmdabad','S00004','F','N','26-July-02','In Process');

Select * from SALES_ORDER 

019001	C00001	2004-06-12	Surat	S00001	F	N	2002-07-20	In Process
019002	C00002	2004-06-25	Mumbai	S00002	P	N	2002-06-27	Cancelled
019003	C00001	2004-04-03	Maharastra	S00001	F	Y	2002-04-07	Fulfilled
019008	C00005	2004-05-24	Ahmdabad	S00004	F	N	2002-07-26	In Process
046865	C00003	2004-02-18	Kalkata	S00003	F	Y	2002-02-20	Fulfilled
046866	C00004	2004-05-20	Delhi	S00002	P	N	2002-05-22	Cancelled


create table SALES_ORDER_DETAILS(
    ORDERNO varchar(6) references  SALES_ORDER , 
    PRODUCTNO varchar(6) references  PRODUCT_MASTER ,
    QTYORDERD numeric(8),
    QTYDISP numeric(8),
    PRODUCTRATE DEC(10,2)
);
--insert into SALES_ORDER_DETAILS values('019001','P00001','4','4','525')
--insert into SALES_ORDER_DETAILS values('019001','P00002','2','1','8400');
--insert into SALES_ORDER_DETAILS values('019001','P00003','2','1','5250');
--insert into SALES_ORDER_DETAILS values('019002','P00001','10','0','525');
--insert into SALES_ORDER_DETAILS values('046865','P00004','3','3','3150');
--insert into SALES_ORDER_DETAILS values('046865','P00005','3','1','5250');
--insert into SALES_ORDER_DETAILS values('046865','P00001','10','10','525');
--insert into SALES_ORDER_DETAILS values('046865','P00006','4','4','1050');
--insert into SALES_ORDER_DETAILS values('019003','P00007','2','2','1050');
--insert into SALES_ORDER_DETAILS values('019003','P00008','1','1','12000');
--insert into SALES_ORDER_DETAILS values('046866','P00009','1','0','8400');
--insert into SALES_ORDER_DETAILS values('046866','P00006','1','0','1050');
--insert into SALES_ORDER_DETAILS values('019008','P00001','10','5','525');
--insert into SALES_ORDER_DETAILS values('019008','P00007','5','3','1050');

019001	P00001	4	4	525.00
019002	P00001	10	0	525.00
046865	P00001	10	10	525.00
019008	P00001	10	5	525.00
019008	P00007	5	3	1050.00
046866	P00006	1	0	1050.00
019001	P00002	2	1	8400.00
019001	P00003	2	1	5250.00
046865	P00004	3	3	3150.00
046865	P00005	3	1	5250.00
046865	P00006	4	4	1050.00
019003	P00007	2	2	1050.00
019003	P00008	1	1	12000.00
046866	P00009	1	0	8400.00
