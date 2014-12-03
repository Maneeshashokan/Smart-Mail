create database smart_mail

use smart_mail

create table registration
(
reg_id int not null identity primary key,
name varchar(50) not null,
lname varchar(50) not null,
sex varchar(10) not null,
dob datetime not null,
city varchar(100) not null,
address varchar(max) not null,
mob varchar(15) unique not null,
nationality varchar(100) not null,
uname varchar(100) unique not null,
password varchar(80) not null,
image varchar(100),
qstn varchar(max) not null,
ans varchar(150) not null,
status bit ,
chat_status bit,
secur_type varchar(20),
date datetime  
);
create table feedback
(
feedback_id int not null identity primary key,
funame varchar(100)not null foreign key(funame) references registration(uname),
comment varchar(max),
date datetime
);
--drop table feedback
--drop table qstn

--select * from feedback

create table contact
(
contact_id int not null primary key identity,
name varchar(50) not null,
contact varchar(15) not null,
comment varchar(max) not null,
date datetime 
);

create table inbox
(
msg_id int not null primary key identity,
frm varchar(100) not null foreign key(frm) references registration(uname),
to1 varchar(50) not null,
subject varchar(100) not null,
msg varchar(max) not null,
sent_status bit ,
draft_status bit ,
trash_status bit ,
imp_path varchar(50) not null ,
secure bit,
attch bit,
date datetime 
);

create table secure
(
s_id int not null foreign key(s_id) REFERENCES registration(reg_id), 
master_key varchar(50) unique not null,
usb_key varchar(100) unique
);

create table gp_mail
(
gp_id int not null primary key identity,
sender varchar(50),
gp_status bit,
gp_key varchar(100) not null ,
update_status bit,
date datetime 
); 

create table gp_member
(
id int not null foreign key(id) references gp_mail(gp_id),
uname varchar(50) not null 
primary key(id,uname)
);
--drop table gp_mail
create table attach
(
id int primary key not null identity,
m_id int not null  foreign key(id) references inbox(msg_id),
attchment varchar(200) 
);

create table qstn
(
qstn_id int identity primary key not null,
qstn varchar(max) not null,
);
create table mycontacts
(
id int primary key not null identity ,
contact_id int not null foreign key(contact_id) REFERENCES registration(reg_id),
uname varchar(100) not null foreign key(uname) REFERENCES registration(uname)
);
--drop table mycontacts
select * from registration

insert into registration values('levin','sibi','M','1994-01-02','peravoor','JK house','8281343785','German','levichan','123','','Time?','12',1,0,'USB Security',getdate());
insert into registration values('manu','p','Male','1993-01-02','peravoor','JK house','8281343799','German','manumon','183','','number','666',1,0,'USB Security',getdate());
insert into registration values('Geo','kutty','Male','1999-01-02','tly','KK house','8288843785','Keniyan','kutty','883','','jungle','amazon',1,0,'Normal',getdate());
insert into registration values('Ammu','k.p','female','1983-01-6','pulpally','pitten house','7081343799','Indian','ammu14','zoom','','love','krishna',0,0,'Normal',getdate());
insert into registration values('Priya','Pappu','Female','1979-12-12','kannur','flat no 41 SFS Bulding Kannur','9309122170','Indian','Priya','krishna','','My Number','12',0,0,'USB Security',getdate());
insert into registration values('Alan','raj','Male','1979-12-12','kannur','flat no 45 SFS Bulding Kannur','9309122189','Indian','alan','123','','My Number','17',0,0,'USB Security',getdate());


insert into contact values('Arnold','9447549691','please provide the usb security features','12-01-2014');
insert into contact values('Rock','9447549551','what are the procedures to be followed when the usb is lost?','12-01-2014');
insert into contact values('John Cena','9447544521','can i use usb security via a mobile supporting usb? ','3-02-2014');
insert into contact values('Tom Cruse','9447549644','any special feature is reqired for the usb? ','12-04-2014');

insert into feedback values('levichan','my usb is damaged ,could you please forward the key if i sent you the serial no.?','12-06-2014');


insert into secure values('1','34358906','kj7');

insert into inbox values('alan','manumon','hai, friend...','Our collage will start on 20th july 2014',1,0,0,'Images/1.jpg',0,1,'12-04-2014');
insert into inbox values('levichan','manumon','hai, friend','how was your xm?',0,1,0,'Images/2.jpg',0,1,'12-05-2013');
insert into inbox values('manumon','levichan','collage opening.,','Our collage will start on 20th july 2014',1,1,0,'Images/1.jpg',1,0,'12-04-2014');
insert into inbox values('alan','levichan','hlw....','Hwru achaya?enna varuva?',1,0,1,'Images/2.jpg',1,0,'1-08-2013');
insert into inbox values('levichan','alan','miss u dear..','will arrive on 25th.....keep in touch dear',1,0,1,'Images/1.jpg',1,1,'1-5-2011');

insert into mycontacts values('2','alan');
insert into mycontacts values('2','kutty');
insert into mycontacts values('2','priya');
insert into mycontacts values('5','manumon');
insert into mycontacts values('5','alan');
insert into mycontacts values('3','alan');

insert into gp_mail values('manumon',0,'0',0,'1-08-2013');
insert into gp_member values('1','kutty');
insert into gp_member values('1','alan');
insert into gp_member values('1','priya');
insert into gp_member values('1','ammu14');

insert into gp_mail values('manumon',1,'4783091',1,'1-08-2013');
insert into gp_member values('2','kutty');
insert into gp_member values('2','alan');



insert into attach values('7','ZJ876I87F')

--drop table gp_mail
select * from inbox where frm='manumon' and sent_status=1 and secure=1
select MAX(gp_id) from gp_mail where sender='manumon'
select msg_id from inbox where to1='manumon'and secure=0 and trash_status=0 and draft_status=0 and attch=1
select * from attach where m_id='7'
select * from inbox where to1='manumon'and secure=0 and trash_status=0 

select * from gp_mail g,gp_member b where g.sender='manumon' and b.uname='priya' 
select count(uname) from gp_member where id=1

select * from inbox 
select * from secure
select * from registration
select * from attach
select * from inbox
select * from gp_mail;
select * from gp_member;
select * from mycontacts

select uname from gp_member where id='3'
update gp_mail set gp_status=1,gp_key='986109' where gp_id='7'
select g.gp_id,g.sender,g.date,m.uname from gp_mail g,gp_member m where gp_status=0 

insert into gp_mail values('manumon',0,'0',0,'2011-04-23')
select count(uname) from gp_member where id='0'
select gp_id from gp_mail where sender='manumon'
SELECT r.uname,name,lname,city from registration r,mycontacts c where c.contact_id='2'and r.uname=c.uname
update registration set status='1' where reg_id=9;

select * from gp_member where id='9'

select * from inbox where (to1='manumon' and trash_status=1) or (frm='manumon' and sent_status=0 and trash_status=1) or (frm='manumon' and draft_status=0 and trash_status=1)
select gp_id,sender,date from gp_mail  where gp_status=1 
select i.*,a.attchment from inbox i full outer join attach a on attch=1 and i.msg_id=a.m_id where  to1='manumon' and trash_status=0 and secure=0 
select m_id from  attach a where   COUNT(attchment)>1
select distinct(i.msg_id),i.frm,i.date,i.subject,i.msg,a.attchment from inbox i full outer join attach a on attch=1 and i.msg_id=a.m_id where  to1='manumon' and trash_status=0 and secure=0
(select * from inbox where  (to1='manumon'and secure=0 and trash_status=0 ) and(attch=0));

select uname,name,lname,city from registration where uname='manumon'

select id from mycontacts where contact_id='2' and uname='manumon';
select * from inbox where to1='manumon'and secure=0 and trash_status=0 and draft_status=0

delete from registration where reg_id='3';
select name,lname,sex,dob,address,mob,city,nationality,uname,image,secur_type,date from registration where status='1';
update registration set status='0' where reg_id=8;

select a.name,a.lname,i.frm,i.subject,i.date from registration a,inbox i where i.frm =a.uname and to1='manumon'and secure=0 and trash_status=0 and draft_status=0 

delete from gp_mail where gp_id=''

drop table inbox
drop table attach

update inbox set trash_status=1 where msg_id=3;
--select frm,subject,date from inbox where to1='manumon'and secure='0' and trash_status=0 and draft_status=0 and imp_status=0

select * from inbox where frm='alan';
update inbox set trash_status=1 , sent_status=0 where msg_id='6'

select a.name,a.lname,i.frm,i.subject,i.date from attach a,inbox i where attach.id=msg_id and to1='manumon'and secure=0 and trash_status=0 and draft_status=0 
 
select * from inbox where to1='manumon'and secure=0 and trash_status=0 and draft_status=0 

update inbox set trash_status=0 where msg_id='7'

insert into inbox values('manumon','Arun M.R','The Object Definition Language','The ODL is designed to support the semantic constructions of the ODMG object model.',1,0,1,'Images/1.jpg',0,0,'1-5-2011');


select master_key from secure s, registration r where s.s_id=r.reg_id and reg_id='1'  
select * from inbox where to1='manumon'and secure=0 and trash_status=0 and draft_status=0

update gp_mail set gp_status=1,gp_key='876',update_status=0 where gp_id='3'