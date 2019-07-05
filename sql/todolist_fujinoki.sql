create table todolist(
	id int auto_increment primary key,
	title  varchar(100),
	details varchar(100),
	importance int,
	deadline date
);

insert into todolist(id,title,details,importance,deadline)
values('1','テストテキスト','詳細',1,'2015/06/20');

insert into todolist(id,title,details,importance,deadline)
values('2','テストテキスト','',3,'2015/07/25');

insert into todolist(id,title,details,importance,deadline)
values('3','テストテキスト',null,1,'2015/06/20');

insert into todolist(id,title,details,importance,deadline)
values('4','テスト','詳細',1,null);
