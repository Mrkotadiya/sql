create table SALESMAN_MASTER(
    SALESMANNO Varchar(6) primary key,
    SALESMANNAME Varchar(20) not null,
    ADDRESS1 varchar(30)not null,
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE numeric(8),
    STATE varchar(20),
    SALAMT numeric(8,2)not null,
    TGTTOGET numeric(6,2)not null,
    YTDSALES numeric(6,2)not null,
    REMARKS Varchar(60),
    constraint ck_SALESMANNO check(SALESMANNO like 'S%'),
    constraint ck_SALAMT check(SALAMT <> 0),
    constraint ck_TGTTOGET check(TGTTOGET <> 0),
 );



insert into SALESMAN_MASTER Values('S00001','Aman','A-14','Worli','Mumbai','400002','Maharashtara','3000','100','50','Good');
insert into SALESMAN_MASTER Values('S00002','Omkar','65','Nariman','Mumbai','400001','Maharashtara','3000','200','100','Good');
insert into SALESMAN_MASTER Values('S00003','Raj','P-7','Bandara','Mumbai','400032','Maharashtara','3000','200','100','Good');
insert into SALESMAN_MASTER Values('S00004','Ashish','A-5','Juhu','Mumbai','400044','Maharashtara','3500','200','150','Good');