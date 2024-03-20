create database ironPillar;
use ironPillar;

create table member(
	memberId char(10) not null primary key,
    memberPw char(15) not null,
    memberNick char(8) not null unique key,
    memberPhone char(11) not null,
    memberAddress varchar(60) not null,
    memberLevel int not null default 1
)default charset=utf8;

select * from member;
drop table member;
insert into member (memberId, memberPw, memberNick, memberPhone, memberAddress, memberLevel) values("admin", 1234, "관리자", "01000000000", "ironPillar,관리자", 999);
insert into member (memberId, memberPw, memberNick, memberPhone, memberAddress) values("whgudals", 1234, "형민", "01012345678", "경상남도 창원시 마산회원구 구암남16길 54, 쀼쀼");

create table item(
	itemTitle varchar(30) not null primary key,
    itemPrice int not null,
    itemImage varchar(50) not null,
    itemText text not null,
    itemCategory varchar(10) not null,
    itemLove int not null default 1,
    itemStar varchar(5) not null default 5
)default charset=utf8;

drop table item;
select * from item;
insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values("굿랜턴", 45000, "랜턴.jpg", "좋은 랜턴", "three");
insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values("굿버너", 50000, "버너.jpg", "좋은 버너", "two");
insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values("굿의자", 55000, "의자.jpg", "좋은 의자", "four");
insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values("굿텐트", 100000, "텐트.jpg", "좋은 텐트", "one");
update item set itemLove=2 where itemTitle="굿버너";

create table wish(
	wishNum int not null auto_increment primary key,
	itemTitle varchar(30) not null,
    itemPrice int not null,
    itemImage varchar(50) not null,
    itemLover char(10) not null,
    foreign key (itemTitle) references item(itemTitle),
    foreign key (itemLover) references member(memberId)
)default charset=utf8;

drop table wish;
insert into wish (itemTitle, itemPrice, itemImage, itemLover) values ("굿버너", 50000, "버너.jpg", "whgudals");
insert into wish (itemTitle, itemPrice, itemImage, itemLover) values ("굿텐트", 100000, "텐트.jpg", "whgudals");
insert into wish (itemTitle, itemPrice, itemImage, itemLover) values ("굿랜턴", 45000, "랜턴.jpg", "whgudals");
insert into wish (itemTitle, itemPrice, itemImage, itemLover) values ("굿의자", 55000, "의자.jpg", "whgudals");
select * from wish;

create table cart(
	cartNum int not null auto_increment primary key,
	itemTitle varchar(30) unique key not null,
    itemPrice int not null,
    itemImage varchar(50) not null,
    memberId char(10) not null,
    itemQuantity int not null,
    foreign key (itemTitle) references item(itemTitle),
    foreign key (memberId) references member(memberId)
)default charset=utf8;

delete from cart where itemTitle="굿텐트";
select * from cart where itemTitle="굿텐트" and memberId="whgudals";
select * from cart;
drop table cart;

create table place(
	placeTitle varchar(30) not null primary key,
    placeImage varchar(50) not null,
    placeText text not null,
    placeCategory varchar(10) not null,
    placeAddress varchar(60) not null,
    placePrice int not null,
    placeLove int not null default 1
)default charset=utf8;

drop table place;
select * from place;
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice) values("강원도 캠핑장", "강원도.png", "강원도강원도강원도강원도강원도", "five", "강원도 어딘가", 260000);
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice) values("경기도 캠핑장", "경기도.jpg", "경기도경기도경기도경기도경기도", "one", "경기도 어딘가", 250000);
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice, placeLove) values("경상도 캠핑장", "경상도.png", "경상도경상도경상도경상도경상도", "four", "경상도 어딘가", 230000, 6);
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice, placeLove) values("전라도 캠핑장", "전라도.png", "전라도전라도전라도전라도전라도", "three", "전라도 어딘가", 180000, 5);
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice, placeLove) values("제주도 캠핑장", "제주도.jpg", "제주도제주도제주도제주도제주도", "six", "제주도 어딘가", 170000, 4);
insert into place (placeTitle, placeImage, placeText, placeCategory, placeAddress, placePrice) values("충청도 캠핑장", "충청도.jpg", "충청도충청도충청도충청도충청도", "two", "충청도 어딘가", 190000);
update place set placeLove=6 where placeTitle="경상도 캠핑장";
update place set placeLove=5 where placeTitle="전라도 캠핑장";
update place set placeLove=4 where placeTitle="제주도 캠핑장";

create table community(
	communityNum int not null auto_increment primary key,
	communityTitle varchar(30) not null,
    communityImage varchar(50),
    communityText text not null,
    communityWriter char(8) not null,
    communityWriterLevel int,
    communityDate varchar(20) not null,
    foreign key (communityWriter) references member(memberNick)
)default charset=utf8;

drop table community;
select * from community order by communityNum desc;

create table orderList(
    itemTitle varchar(30) not null,
    itemPrice int not null,
    itemImage varchar(50) not null,
    itemQuantity int not null,
	orderer char(10) not null,
    orderDate varchar(20) not null,
    foreign key (itemTitle) references item(itemTitle),
    foreign key (orderer) references member(memberId)
)default charset=utf8;
    
drop table orderList;
select * from orderList;
delete from orderList where itemTitle='굿랜턴' and orderer='whgudals' and orderDate='2023-03-31 12:59:42';

create table review(
	reviewNum int not null auto_increment primary key,
	reviewItemTitle varchar(30) not null,
    reviewStar int not null,
    reviewText text not null,
    reviewImage varchar(50),
    reviewWriter char(10) not null,
    reviewWriterLevel int,
    reviewDate varchar(20) not null,
    foreign key (reviewItemTitle) references item(itemTitle),
    foreign key (reviewWriter) references member(memberId)
)default charset=utf8;

select * from review;
select * from review where reviewWriter='whgudals';
insert into review (reviewItemTitle, reviewStar, reviewText, reviewImage, reviewWriter, reviewWriterLevel, reviewDate) values ('굿랜턴', 5, '랜턴 좋습니다 잘 쓰고 있어요', 'star1.png', 'whgudals', 6, '2023-04-04 12:56:26');
insert into review (reviewItemTitle, reviewStar, reviewText, reviewImage, reviewWriter, reviewWriterLevel, reviewDate) values ('굿랜턴', 4, '이쁜 랜턴 굿', '발무지개.png', 'whgudals', 6, '2023-04-05 12:57:02');
insert into review (reviewItemTitle, reviewStar, reviewText, reviewImage, reviewWriter, reviewWriterLevel, reviewDate) values ('굿텐트', 1, '비싼 값 못함..', '', 'whgudals', 6, '2023-04-06 12:57:47');

create table Contact(
	wNum int not null auto_increment primary key,
	memberId char(10) not null,
    memberLevel int not null,
	wTitle varchar(30) not null, 
	wImageName varchar(50),
	wDescription text not null,
	wDate varchar(20) not null,
    foreign key (memberId) references member(memberNick)
)default charset=utf8;

drop table Contact;
select * from Contact;

create table Reply(
	memberId char(10) not null,
    memberLevel int not null,
	rno int not null auto_increment primary key,
	wNum int not null,
	content varchar(100),
	rDate varchar(20) not null,
    foreign key (memberId) references member(memberNick),
	FOREIGN KEY (wNum) REFERENCES Contact(wNum)
)default charset=utf8;

drop table Reply;

create table Notice(
	writer char(8) not null,
	wNum int not null auto_increment primary key,
	wTitle varchar(50) not null, 
	wDescription text not null,
	wDate varchar(20) not null
)default charset=utf8;

select * from Notice;


