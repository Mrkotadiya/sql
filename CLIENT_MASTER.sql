create table CLIENT_MASTER(
	CLIENTNO Varchar(6) primary key,
	NAME Varchar(20) not null,
	ADDRESS1 Varchar(30),
	ADDRESS2 Varchar(30),
	CITY Varchar(15),
	PINCODE NUMERIC(8),
	STATE Varchar(15),
	BALDUE NUMERIC(10,2)
	constraint ck_CKIENTNO CHECK(like 'C%')
);

insert into CLIENT_MASTER Values('C00001','ivan bayroos','Surat','punagam','Mumbai','400054','Maharastra','15000');
insert into CLIENT_MASTER Values('C00002','Mamta Muzumdar','Andheri','Mumbai','Madras','780001','Tamil Nadu','0');
insert into CLIENT_MASTER Values('C00003','Chhaya Bankar','Vesu','Surat','Mumbai','400057','Maharastra','5000');
insert into CLIENT_MASTER Values('C00004','Ashwini Joshi','Borivali','Mumbai','Banglore','560001','Karnataka','0');
insert into CLIENT_MASTER Values('C00005','Hansel colaco','Surat','Varacha','Mumbai','400060','Maharastra','2000');
insert into CLIENT_MASTER Values('C00006','Deepak Sharma','Nanpura','Vapi','Manglore','560050','Karnataka','0');
