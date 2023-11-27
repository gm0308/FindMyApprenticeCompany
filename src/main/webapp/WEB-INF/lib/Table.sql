create table userMember (
	member_id varchar2(20) constraint member_id_pk primary key,
	member_pwd varchar2(20),
	member_name varchar2(20)
);

insert into userMember (member_id, member_pwd, member_name) values ('test', '1234', 'yangyoung');
select * from userMember order by member_id asc;
	
update userMember set member_pwd = '5678', member_name = 'guy' where member_id = 'white';
select member_id from userMember;
