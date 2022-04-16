create table SALES_ORDER_DETAILS(
    ORDERNO varchar(6) references  sales_order, 
    PRODUCTNO varchar(6) references  PRODUCT_MASTER ,
    QTYORDERD numeric(8),
    QTYDISP numeric(8),
    PRODUCTRATE DEC(10,2),
    constraint ck_ORDERNO check(like 'O%'),
    constraint ck_PRODUCTNO check(PRODUCTNO LIKE 'P%')

);

select * from SALES_ORDER_DETAILS

drop table SALES_ORDER_DETAILS

insert into SALES_ORDER_DETAILS values('O19001','P00001','4','4','525');
insert into SALES_ORDER_DETAILS values('O19001','P00002','2','1','8400');
insert into SALES_ORDER_DETAILS values('O19001','P00003','2','1','5250');
insert into SALES_ORDER_DETAILS values('O19002','P00001','10','0','525');
insert into SALES_ORDER_DETAILS values('O19001','P00004','3','3','3150');
insert into SALES_ORDER_DETAILS values('O19002','P00005','3','1','5250');
insert into SALES_ORDER_DETAILS values('O19003','P00001','10','10','525');
insert into SALES_ORDER_DETAILS values('O19004','P00006','4','4','1050');
insert into SALES_ORDER_DETAILS values('O19003','P00004','2','2','1050');
insert into SALES_ORDER_DETAILS values('O19003','P00005','1','1','12000');
insert into SALES_ORDER_DETAILS values('O19002','P00001','1','0','8400');
insert into SALES_ORDER_DETAILS values('O19001','P00006','1','0','1050');
insert into SALES_ORDER_DETAILS values('O19003','P00001','10','5','525');
insert into SALES_ORDER_DETAILS values('O19004','P00007','5','3','1050');
