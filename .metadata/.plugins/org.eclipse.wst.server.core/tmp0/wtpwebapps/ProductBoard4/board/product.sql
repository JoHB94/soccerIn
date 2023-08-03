CREATE TABLE p_PRODUCT
	(
	pno number primary key not null,
	pname varchar2(20) not null,
	pmaker varchar2(20)	not null,
	pprice varchar2(20) not null,
	pdetail	varchar2(2000)	
	) ;
	

drop  table sequence s_pno;



create sequence s_pno nocache
start with 1
increment by 1 ;
select pname,pmaker,pprice,pdetail from p_product where pno='1';
select pno,pname,pmaker from p_product;
select *from p_product;

select * from p_PRODUCT;
update  p_product set pname='나',pmaker='나',pprice='100',pdetail='ㅇ' where pno='4';

insert into p_product(pno,pname, pmaker, pprice, pdetail) values(s_pno.nextval,'갤럭시S','삼성',30000,'1년보상');

