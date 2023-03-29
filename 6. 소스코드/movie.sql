-- movie ddl 생성

-- movie
create table Movie (
    seq number primary key,
    title varchar2(100),
    movie_year number,
    popular number,
    movie_like number,
    rank number,
    rankchange number
);

-- movie_inforamtion
create table Movie_information(
    movie_seq number primary key,
    seq number references Movie(seq),
    dir varchar2(50),
    actor varchar2(50),
    grade varchar2(50),
    answer varchar2(250)
);

-- Actor
create table Actor (
    actor_seq number primary key,
    movie_seq  references Movie_information(movie_seq),
    name varchar2(100)
);

-- Review 
create table review (
    review_seq number primary key,
    seq references Movie(seq),
    comments number,
    men number,
    women number,
    tenage number,
    twoage number,
    threeage number,
    fourage number,
    fiveage number,
    cirtic number(4,2),
    netizen number(4,2),
    visitor number(4,2)
);

-- Outline
create table Outline (
    outline_seq number primary key,
    seq references Movie(seq),
    genre varchar2(50),
    area varchar2(100),
    running number,
    opendate date
);

select * from Movie;
select * from Movie_information;
select * from Actor;
select * from Outline;
select * from Review;

drop table Movie;
drop table Movie_information;
drop table Actor;
drop table Outline;
drop table Review;

select * from Movie;


-- 데이터 삽입 Movie
insert into Movie values (1,'스즈메의 문단속',2023,2207370,14527,1,0);
insert into Movie values (2,'웅남이',2023,54783,6138,2,0);
insert into Movie values (3,'소울메이트',2023,147864,4172,3,0);
insert into Movie values (4,'더 퍼스트 슬램덩크',2023,4190212,11908,4,1);
insert into Movie values (5,'샤잠! 신들의 분노',2023,73527,325,5,-1);
insert into Movie values (6,'파벨만스',2023,12876,374,6,0);
insert into Movie values (7,'귀멸의 칼날:상현집결',2023,507505,1690,7,0);
insert into Movie values (8,'대외비',2023,749526,2348,8,0);
insert into Movie values (9,'에브리씽 에브리웨어 올 앳 댄스+',2023,74222,726,9,1);
insert into Movie values (10,'플레인',2023,33046,337,10,1);
insert into Movie values (11,'멍뭉이',2023,165667,2404,11,-2);
insert into Movie values (12,'아임 히어로 더 파이널',2023,218529,9646,12,1);
insert into Movie values (13,'다음 소희',2022,104999,2816,13,-1);
insert into Movie values (14,'모나리자와 블러드 문',2023,8995,711,14,2);
insert into Movie values (15,'던전 앤 드래곤 : 도적들의 명예',2023,null,311,15,6);
insert into Movie values (16,'똑똑똑',2023,30832,275,16,-2);
insert into Movie values (17,'서치2',2023,411589,1216,17,-2);
insert into Movie values (18,'마루이 비디오',2023,165574,1269,17,-2);
insert into Movie values (19,'이니셰린의 밴시',2023,15188,322,19,-2);
insert into Movie values (20,'보스턴 교살자',2023,null,48,20,1);
insert into Movie values (21,'드림',2022,null,13988,21,-1);
insert into Movie values (22,'옥수역귀신',2022,null,212,22,8);
insert into Movie values (23,'TAR 타르',2022,34854,535,22,7);
insert into Movie values (24,'앤트맨과 와스프:퀀텀매니아',2023,1550236,2871,24,-5);
insert into Movie values (25,'카운트',2021,391880,2367,25,-2);
insert into Movie values (26,'리바운드',2022,null,620,26,4);
insert into Movie values (27,'오토라는 남자',2022,null,271,27,-3);
insert into Movie values (28,'포커페이스',2022,349,26,28,20);
insert into Movie values (29,'어쩌면 우린 헤어졌는지 모른다',2021,18136,620,28,-4);
insert into Movie values (30,'더 웨일',2022,46635,883,30,-3);
insert into Movie values (31,'스파이 코드명 포춘',2022,null,128,31,4);
insert into Movie values (32,'어떤 영웅',2021,2992,151,32,-5);
insert into Movie values (33,'곰돌이푸:피와 꿀',2023,null,194,33,5);
insert into Movie values (34,'바빌론',2022,209207,1454,34,-6);
insert into Movie values (35,'아기공룡 둘리 : 어름별 대모험',1996,null,693,35,5);
insert into Movie values (36,'거울 속 외딴 성',2022,null,269,36,5);
insert into Movie values (37,'에어',2023,null,165,37,-4);
insert into Movie values (38,'물안에서',2023,null,38,38,4);
insert into Movie values (39,'존 윅4',2023,null,738,39,-4);
insert into Movie values (40,'서부 전선 이상 없다',2022,null,105,40,4);
insert into Movie values (41,'그대 어이가리',2022,6865,472,41,4);
insert into Movie values (42,'에브리씽 에브리웨어 올 앳 원스',2022,364645,3298,42,-6);
insert into Movie values (43,'팔로우드',2018,633,54,43,4);
insert into Movie values (44,'날씨의 아이',2019,741898,11805,44,4);
insert into Movie values (45,'너의 이름은',2016,3807863,26372,45,4);
insert into Movie values (46,'아바타:물의 길',2022,10799274,23668,46,-4);
insert into Movie values (47,'교섭',2022,null,8843,47,-10);
insert into Movie values (48,'가디언즈 오버 갤럭시 : Volume 3',2023,null,2709,48,1);
insert into Movie values (49,'인디아나 존스 : 운명의 다이얼',2023,null,474,49,1);
insert into Movie values (50,'리벤져',2018,null,439,50,1);

-- 데이터 삽입 movie_inforamtion
create sequence seqNumber;

insert into movie_information values(seqNumber.nextval,1,'신카이 마코토','하라 나노카, 마츠무라 호쿠토', '12세 관람가','이와토 스즈메 - 나는 스즈메의 내일이란다' );
insert into movie_information values(seqNumber.nextval,2,'박성광','박성웅,이이경', '15세 관람가',null);
insert into movie_information values(seqNumber.nextval,3,'민용근','김다미, 전소니', '12세 관람가','전소니 - 각자 다 다르게 살라고, 네 맘 가는대로');
insert into movie_information values(seqNumber.nextval,4,'이노우에 다케히코',null, '12세 관람가',null);
insert into movie_information values(seqNumber.nextval,5,'데이비드F.샌드버그','제커리 레비,애셔 앤젤', '12세 관람가',null);
insert into movie_information values(seqNumber.nextval,6,'스티븐 스필버그','미셸 윌리엄스,폴 다노', '12세 관람가','미셸 윌리엄스 - 모든일에는 이유가 있다');
insert into movie_information values(seqNumber.nextval,7,'소토자키 하루오','하나에 나츠키, 키토 아카리', '15세 관람가',null);
insert into movie_information values(seqNumber.nextval,8,'이원태','조진웅,이성민', '15세 관람가','조진웅 - 예수입니다. 부활 하셨거든');
insert into movie_information values(seqNumber.nextval,9,'다니엘 콴,다니엘 쉐이너트','양자경,스테파니 수', '15세 관람가','키 호이 콴 - 다정함을 보여줘');
insert into movie_information values(seqNumber.nextval,10,'장-프랑소와 리셰','제리드 버틀러,마이크 콜터', '15세 관람가','마이크 콜터 - 더 좋은 계획 있어요?');

insert into movie_information values (seqNumber.nextval, 11, '김주환','유연석,차태현', '전체관람가', '새로운 가족이 와서 다른 가족을 버리는 건 진짜 가족이 아니예요'  );
insert into movie_information values (seqNumber.nextval, 12, '오윤동','임영웅', '전체관람가', '별을 품을 수 있는 더 큰 우주가 되겠습니다'  );
insert into movie_information values (seqNumber.nextval, 13, '정주리','김소원,배두나', '15세 관람가', '힘든 일을 하면 존중받으면 좋을텐데 그런 일이나 한다고 더 무시해'  );
insert into movie_information values (seqNumber.nextval, 14, '애나 릴리','전종서, 케이트 허드슨', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 15, '조나단 골드 스타인','크리스 파인, 미셸 로드리게즈', '12세 관람가',null );
insert into movie_information values (seqNumber.nextval, 16, 'M.나이트 샤말란','데이브 바티스타, 루퍼트 그린트', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 17, '니콜라스 D.존슨','스톰 레이드, 켄 렁', '12세 관람가', '시리야 119전화해줘'  );
insert into movie_information values (seqNumber.nextval, 18, '윤준형','서현우, 조민경', '15세 관람가', '아버지'  );
insert into movie_information values (seqNumber.nextval, 19, '마틴 맥도나','콜린 파렐, 브렌단 글리슨', '15세 관람가', '손가락 자르기 전까지는 분위기 괜찮았다니까!'  );
insert into movie_information values (seqNumber.nextval, 20, '맷 러스킨','키이라 나이틀리, 캐리 쿤', '15세 관람가', null  );

insert into movie_information values (seqNumber.nextval, 21, '이병헌','박서준, 아이유', '전체관람가', null  );
insert into movie_information values (seqNumber.nextval, 22, '정용기','김보라,김재현', '전체관람가', null  );
insert into movie_information values (seqNumber.nextval, 23, '토드 필드','케이트 블란쳇', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 24, '페이튼 리드','폴 러드, 에반젤린 릴리', '12세 관람가', '우리들 전부, 조나단 메이저스'  );
insert into movie_information values (seqNumber.nextval, 25, '권혁재','진선규, 성유빈', '12세 관람가', '니 알아서 해라, 진선규'  );
insert into movie_information values (seqNumber.nextval, 26, '장항준','안재홍, 이신영', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 27, '마크 포스터','톰 행크스', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 28, '러셀 크로우','러셀 크로우, 리암 헴스워스', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 29, '형슬우','이동휘, 정은채', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 30, '대런 아로노프스키','브렌든 프레이저, 세이디 싱크', '15세 관람가', '알아야겠어. 내 인생에서 잘한 일이 하나라도 있단 걸!, 브렌든 프레이저'  );

insert into movie_information values (seqNumber.nextval, 31, '가이리치','제이슨 스타뎀,조쉬 하트넷', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 32, '아쉬가르 파라디','아미르 자디디,모센 타나반데', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 33, '리스 플레이크-워터필드','크레이그 데이빗 다우젯,크리스 코델', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 34, '데이미언 셔젤','브래드 피트,마고 로비', '청소년 관람불가', '영화를 재생시키면, 그 안에서 당신은 몇 번이고 살아나. - 진 스마트');
insert into movie_information values (seqNumber.nextval, 35, '김수정','박영남, 이인성', '전체관람가', '저질? 그래 너 오늘 저질 맛좀 보자. -고길동'  );
insert into movie_information values (seqNumber.nextval, 36, '하라 케이이치','토우마 아미,아시다 마나', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 37, '벤 애플렉','맷 데이먼, 벤 애플렉', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 38, '홍상수','신석호,하성국', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 39, '채드 스타헬스키','키아누 리브스,견자단', '청소년 관람불가', null  );
insert into movie_information values (seqNumber.nextval, 40, '에드워드 버거','알브레히트 슈흐,에딘 하사노빅', '청소년 관람불가', null  );

insert into movie_information values (seqNumber.nextval, 41, '이창열','선동혁, 정아미', '12세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 42, '다니엘 콴','양자경, 스테파니 수', '15세 관람가', '다정함을 보여줘 - 키 호이 콴'  );
insert into movie_information values (seqNumber.nextval, 43, '안토인 르','메튜 솔로몬, 존 세비지', '15세 관람가', null  );
insert into movie_information values (seqNumber.nextval, 44, '신카이 마코토','심규혁, 김유림', '15세 관람가', '푸른 하늘보다 나는 히나가 좋아! 날씨 따위.. 계속 미쳐 있어도 돼! - 호다카 모리시마'  );
insert into movie_information values (seqNumber.nextval, 45, '신카이 마코토','카미키 류노스케,카미시라이시 모네', '12세 관람가', ' (좋아해) 이래선 이름을 알수없잖아 - 미츠하'  );
insert into movie_information values (seqNumber.nextval, 46, '제임스 카메론','조 샐다나, 샘 워싱턴', '12세 관람가', '금방 풀었는데, 또 묶였어! - 트리니티 블리스'  );
insert into movie_information values (seqNumber.nextval, 47, '임순례','황정민, 현빈', '12세 관람가', '자존심이 총알 막아주는거 아닙니다 - 대식'  );
insert into movie_information values (seqNumber.nextval, 48, '제임스 건','크리스 프랫, 조 샐다나', null, null  );
insert into movie_information values (seqNumber.nextval, 49, '제임스 맨골드','해리슨 포드, 피비 윌러-브리지', null, '고고학자가 되고 싶나? 그럼 도서관을 벗어나 - 인디아나 존스'  );
insert into movie_information values (seqNumber.nextval, 50, '이승원','브루스 칸, 박희순', '15세 관람가', '아저씨 제발요..엄마 내가 잘못했어..*무한반복 - 진'  );

-- 데이터 삽입 Actor
-- actor_seq, movie_seq, name
insert into Actor values(1, 1, '하라 나노카');
insert into Actor values(2, 1, '마츠무라 호쿠토');
insert into Actor values(3, 1, '후카츠 에리');
insert into Actor values(4, 1, '마츠모토 코시로');
insert into Actor values(5, 1, '소메타니 쇼타');

insert into Actor values(6, 2, '박성웅');
insert into Actor values(7, 2, '이이경');
insert into Actor values(8, 2, '엄혜란');
insert into Actor values(9, 2, '최민수');
insert into Actor values(10, 2, '오달수');

insert into Actor values(11, 3, '김다미');
insert into Actor values(12, 3, '전소니');
insert into Actor values(13, 3, '변우석');
insert into Actor values(14, 3, '장혜진');
insert into Actor values(15, 3, '박충선');

--movie_seq 4 null

insert into Actor values(16, 5, '제커리 레비');
insert into Actor values(17, 5, '애셔 앤젤');
insert into Actor values(18, 5, '아담 브로디');
insert into Actor values(19, 5, '잭 딜런 그레이저');
insert into Actor values(20, 5, '그레이스 펄튼');

insert into Actor values(21, 6, '미셸 윌리엄스');
insert into Actor values(22, 6, '폴 다노');
insert into Actor values(23, 6, '세스 로건');
insert into Actor values(24, 6, '가브리엘 라벨');
insert into Actor values(25, 6, '주드 허쉬');

insert into Actor values(26, 7, '하나에 나츠키');
insert into Actor values(27, 7, '키토 아카리');
insert into Actor values(28, 7, '시모노 히로');
insert into Actor values(29, 7, '마츠오카 요시츠쿠');

insert into Actor values(30, 8, '조진웅');
insert into Actor values(31, 8, '이성민');
insert into Actor values(32, 8, '김무열');
insert into Actor values(33, 8, '원현주');
insert into Actor values(34, 8, '김민재');

insert into Actor values(35, 9, '양자경');
insert into Actor values(36, 9, '스테파니 수');
insert into Actor values(37, 9, '키 호이 콴');
insert into Actor values(38, 9, '제이미 리 커티스');

insert into Actor values(39, 10, '제리드 버틀러');
insert into Actor values(40, 10, '마이크 콜터');

insert into Actor values(41, 11, '유연석');
insert into Actor values(42, 11, '차태현');

insert into Actor values(43, 12, '임영웅');

insert into Actor values(44, 13, '김스은');
insert into Actor values(45, 13, '배두나');

insert into Actor values(46, 14, '전종서');
insert into Actor values(47, 14, '케이트 허드슨');
insert into Actor values(48, 14, '크레이그 로빈슨');

insert into Actor values(49, 15, '크리스 파인');
insert into Actor values(50, 15, '미셸 로드리게즈');

insert into Actor values(51, 16, '데이브 바티스타');
insert into Actor values(52, 16, '루퍼트 그린트');

insert into Actor values(53, 17, '스톰 레이드');
insert into Actor values(54, 17, '켄 렁');
insert into Actor values(55, 17, '다니엘 헤니');

insert into Actor values(56, 18, '서현우');
insert into Actor values(57, 18, '조민경');

insert into Actor values(58, 19, '콜린 파렐');
insert into Actor values(59, 19, '브렌단 글리슨');

insert into Actor values(60, 20, '키이라 나이틀리');
insert into Actor values(61, 20, '캐리 쿤');
insert into Actor values(62, 20, '알렉산드로 니볼라');

insert into Actor values(63, 21, '박서준');
insert into Actor values(64, 21, '아이유');

insert into Actor values(65, 22, '김보라');
insert into Actor values(66, 22, '김재현');
insert into Actor values(67, 22, '신소율');

insert into Actor values(68, 23, '케이트 블란쳇');

insert into Actor values(69, 24, '폴 러드');
insert into Actor values(70, 24, '에반젤린 릴리');
insert into Actor values(71, 24, '조나단 메이저스');

insert into Actor values(72, 25, '진선규');
insert into Actor values(73, 25, '성유빈');
insert into Actor values(74, 25, '오나라');

insert into Actor values(75, 26, '안재홍');
insert into Actor values(76, 26, '이신영');
insert into Actor values(77, 26, '정진운');

insert into Actor values(78, 27, '톰 행크스');

insert into Actor values(79, 28, '러셀 크로우');
insert into Actor values(80, 28, '리암 헴스워스');
insert into Actor values(81, 28, '엘사 파타키');

insert into Actor values(82, 29, '이동휘');
insert into Actor values(83, 29, '정은채');
insert into Actor values(84, 29, '강길우');

insert into Actor values(85, 30, '브렌든 프레이저');
insert into Actor values(86, 30, '세이디 싱크');
insert into Actor values(87, 30, '홍 차우');

insert into Actor values(88, 31, '제이슨 스타뎀');
insert into Actor values(89, 31, '조쉬 하트넷');
insert into Actor values(90, 31, '휴 그랜트');
insert into Actor values(91, 31, '오브리 플라자');

insert into Actor values(92, 32, '아미르 자디디');
insert into Actor values(93, 32, '모센 타나반데');
insert into Actor values(94, 32, '페레스테헤 사드르 오라파이');
insert into Actor values(95, 32, '사리나 파르허디');

insert into Actor values(96, 33, '크레이그 데이빗 다우젯');
insert into Actor values(97, 33, '크리스 코델');
insert into Actor values(98, 33, '니콜라이 레온');
insert into Actor values(99, 33, '마크 할더');

insert into Actor values(100, 34, '브래드 피트');
insert into Actor values(101, 34, '마고 로비');
insert into Actor values(102, 34, '디에고 칼바');
insert into Actor values(103, 34, '진 스마트');
insert into Actor values(104, 34, '조반 아데포');

insert into Actor values(105, 35, '박영남');
insert into Actor values(106, 35, '이인성');

insert into Actor values(107, 36, '토우마 아미');
insert into Actor values(108, 36, '아시다 마나');
insert into Actor values(109, 36, '키타무라 타쿠미');
insert into Actor values(110, 36, '키류 사쿠라');
insert into Actor values(111, 36, '이타가키 리히토');

insert into Actor values(112, 37, '맷 데이먼');
insert into Actor values(113, 37, '벤 애플렉');
insert into Actor values(114, 37, '제이슨 베이트먼');
insert into Actor values(115, 37, '말론 웨이언스');
insert into Actor values(116, 37, '크리스 메시나');

insert into Actor values(117, 38, '신석호');
insert into Actor values(118, 38, '하성국');
insert into Actor values(119, 38, '김승윤');
insert into Actor values(120, 38, '김민희');
insert into Actor values(121, 38, '김소령');

insert into Actor values(122, 39, '키아누 리브스');
insert into Actor values(123, 39, '견자단');
insert into Actor values(124, 39, '빌 스카스가드');
insert into Actor values(125, 39, '로렌스 피시번');
insert into Actor values(126, 39, '이안 맥쉐인');

insert into Actor values(127, 40, '알브레히트 슈흐');
insert into Actor values(128, 40, '에딘 하사노빅');
insert into Actor values(129, 40, '다니엘 브륄');
insert into Actor values(130, 40, '데비드 스트리에소브');
insert into Actor values(131, 40, '마이클 위텐본');

insert into Actor values(132, 41, '선동혁');
insert into Actor values(133, 41, '정아미');
insert into Actor values(134, 41, '김유미');
insert into Actor values(135, 41, '장태훈');

insert into Actor values(136, 42, '양자경');
insert into Actor values(137, 42, '스테파니 수');
insert into Actor values(138, 42, '키 호이 콴');
insert into Actor values(139, 42, '제이미 리 커티스');

insert into Actor values(140, 43, '메튜 솔로몬');
insert into Actor values(141, 43, '존 세비지');
insert into Actor values(142, 43, '샘 발렌타인');
insert into Actor values(143, 43, '팀 드라이어');

insert into Actor values(144, 44, '심규혁');
insert into Actor values(145, 44, '김유림');
insert into Actor values(146, 44, '최한');
insert into Actor values(147, 44, '강은애');
insert into Actor values(148, 44, '이장원');

insert into Actor values(149, 45, '카미키 류노스케');
insert into Actor values(150, 45, '카미시라이시 모네');

insert into Actor values(151, 46, '조 샐다나');
insert into Actor values(152, 46, '샘 워싱턴');
insert into Actor values(153, 46, '시고니 위버');
insert into Actor values(154, 46, '우나 채플린');
insert into Actor values(155, 46, '지오바니 리비시');

insert into Actor values(156, 47, '황정민');
insert into Actor values(157, 47, '현빈');
insert into Actor values(158, 47, '강기영');

insert into Actor values(159, 48, '크리스 프랫');
insert into Actor values(160, 48, '조 샐다나');
insert into Actor values(161, 48, '데이브 바티스타');
insert into Actor values(162, 48, '빈 디젤');
insert into Actor values(163, 48, '브래들리 쿠퍼');

insert into Actor values(164, 49, '해리슨 포드');
insert into Actor values(165, 49, '피비 윌러-브리지');
insert into Actor values(166, 49, '안토니오 반데라스');
insert into Actor values(167, 49, '존 라이스 데이비스');
insert into Actor values(168, 49, '매즈 미켈슨');

insert into Actor values(169, 50, '브루스 칸');
insert into Actor values(170, 50, '박희순');
insert into Actor values(171, 50, '윤진서');
insert into Actor values(172, 50, '김인권');

-- 데이터 삽입 Review 
create sequence reviewseq;
insert into review values (reviewseq.nextval, 1, 7917, 64, 36, 6, 36, 34, 18, 6,7.79,8.3,8.17);
insert into review values (reviewseq.nextval, 2, 1576, 51, 49, 0, 0,33,41,18,8,3.33,7.1,8.21);
insert into review values (reviewseq.nextval, 3, 1283, 52, 48, 2,24,39,24,11,6.17,8.7,8.08);
insert into review values (reviewseq.nextval, 4, 16943, 61, 39, 2,24,44,24,6,7.83,9.45,9.28);
insert into review values (reviewseq.nextval, 5, 463, 71, 29, 1,32,41,21,5,4.5,6.48,6.91);
insert into review values (reviewseq.nextval, 6, 150, 65, 35, 1,33,40,16,11,8.67,8.71,8.92);
insert into review values (reviewseq.nextval, 7, 1604, 67, 33, 3,35,34,22,6,0,4.97,6.65);
insert into review values (reviewseq.nextval, 8, 2852, 58, 42, 2,24,39,25,10,5.17,6.19,6.15);
insert into review values (reviewseq.nextval, 9, 580, 51, 49, 2,36,40,17,6,0,7.86,8.88);
insert into review values (reviewseq.nextval, 10, 333, 59, 41, 0,20,39,31,10,5,7.9,7.71);
insert into review values (reviewseq.nextval, 11, 1050, 41, 59, 4,26,37,21,11,5,8.68,8.32);
insert into review values (reviewseq.nextval, 12, 5323, 12, 88, 0,5,12,19,64,0,9.82,9.87);
insert into review values (reviewseq.nextval, 13, 2053, 58, 42, 2,19,37,27,15,6.73,9.44,8.75);
insert into review values (reviewseq.nextval, 14, 129, 62, 38, 2,23,45,22,8,5.2,7.37,7.23);
insert into review values (reviewseq.nextval, 15, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 16, 493, 61, 39, 1,27,40,27,6,5.8,5.7,6.01);
insert into review values (reviewseq.nextval, 17, 2035, 52, 48, 1,34,38,19,8,6.5,8.77,8.32);
insert into review values (reviewseq.nextval, 18, 649, 65, 35, 2,31,40,23,4,5.75,5.53,6.19);
insert into review values (reviewseq.nextval, 19, 164, 66, 34, 0,17,47,24,12,8.08,8.29,8.26);
insert into review values (reviewseq.nextval, 20, 35, 0, 0, 0, 0, 0, 0, 0,0,8.77,0);
insert into review values (reviewseq.nextval, 21, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 22, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 23, 446, 61, 39, 1,33,40,18,8,7.55,7.82,7.79);
insert into review values (reviewseq.nextval, 24, 5928, 61, 39, 2,27,42,21,7,5.22,7.09,6.88);
insert into review values (reviewseq.nextval, 25, 2135, 49, 51, 1,24,41,24,9,5.5,8.82,8.01);
insert into review values (reviewseq.nextval, 26, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 27, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 28, 7, 0, 0, 0,0,100,0,0,3.5,6.17,8);
insert into review values (reviewseq.nextval, 29, 198, 79, 21, 4,25,32,25,14,5.67,8.27,7.89);
insert into review values (reviewseq.nextval, 30, 479, 61, 39, 0,34,38,18,9,6.67,8.48,8.27);
insert into review values (reviewseq.nextval, 31, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 32, 61, 70, 30, 0,16,50,25,9,6.75,8.08,8.16);
insert into review values (reviewseq.nextval, 33, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 34, 2072, 60, 40, 1,36,39,16,8,6.86,7.9,8.38);
insert into review values (reviewseq.nextval, 35, 528, 0, 0, 0, 0, 0, 0, 0,0,9.35,0);
insert into review values (reviewseq.nextval, 36, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 37, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 38, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 39, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 40, 186, 0, 0, 0, 0, 0, 0, 0,0,9.03,0);
insert into review values (reviewseq.nextval, 41, 117, 65, 35, 5,35,25,5,30,6,9.57,9.5);
insert into review values (reviewseq.nextval, 42, 3865, 53, 47, 3,47,34,12,4,8.33,8.16,8.81);
insert into review values (reviewseq.nextval, 43, 6, 25, 75, 25,0,50,25,0,1,5.5,5.5);
insert into review values (reviewseq.nextval, 44, 6483, 71, 29, 14,54,19,9,4,6.57,7.98,8.38);
insert into review values (reviewseq.nextval, 45, 32656, 54, 46, 10,55,16,16,3,7.55,8.81,9.02);
insert into review values (reviewseq.nextval, 46, 25052, 64, 36, 2,30,39,23,6,7.8,8.65,8.82);
insert into review values (reviewseq.nextval, 47, 6161, 55, 45, 2,26,38,22,11,6.43,5.8,6.25);
insert into review values (reviewseq.nextval, 48, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 49, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0);
insert into review values (reviewseq.nextval, 50, 1076, 33, 67, 0,57,29,14,0,0,4.73,9.38);

-- 데이터 삽입 outline
insert into outline values (1, 1, '애니메이션', '일본', 122, '2023-03-08');
insert into outline values (2, 2, '코미디, 액션', '대한민국', 97, '2023-03-22');
insert into outline values (3, 3, '드라마', '대한민국', 124, '2023-03-15');
insert into outline values (4, 4, '애니메이션', '일본', 124, '2023-01-14');
insert into outline values (5, 5, '액션, 모험', '미국', 130, '2023-03-15');
insert into outline values (6, 6, '드라마', '미국', 151, '2023-03-22');
insert into outline values (7, 7, '애니메이션', '일본', 110, '2023-03-02');
insert into outline values (8, 8, '범죄, 드라마', '대한민국', 116, '2023-03-01');
insert into outline values (9, 9, '액션, 코미디', '미국', 150, '2023-03-01');
insert into outline values (10, 10, '액션, 스릴러', '미국, 영국', 107, '2023-03-15');
insert into outline values (11, 11, '드라마', '대한민국', 113, '2023-03-01');
insert into outline values (12, 12, '다큐멘터리', '대한민국', 102, '2023-03-01');
insert into outline values (13, 13, '드라마', '대한민국', 138, '2023-02-08');
insert into outline values (14, 14, '판타지', '미국', 107, '2023-03-22');
insert into outline values (15, 15, '액션', '미국', 134, '2023-03-29');
insert into outline values (16, 16, '미스터리', '미국', 100, '2023-03-08');
insert into outline values (17, 17, '미스터리', '미국', 111, '2023-02-22');
insert into outline values (18, 18, '미스터리', '대한민국', 87, '2023-02-22');
insert into outline values (19, 19, '코미디', '아일랜드', 114, '2023-03-15');
insert into outline values (20, 20, '스릴러', '미국', 112, null);
insert into outline values (21, 21, '코미디, 드라마', '대한민국', null, '2023-04-26');
insert into outline values (22, 22, '공포, 미스터리', '대한민국', 80, '2023-04-01');
insert into outline values (23, 23, '드라마', '미국', 158, '2023-02-22');
insert into outline values (24, 24, '액션', '미국', 124, '2023-02-15');
insert into outline values (25, 25, '드라마', '대한민국', 109, '2023-02-22');
insert into outline values (26, 26, '드라마', '대한민국', 122, '2023-04-05');
insert into outline values (27, 27, '코미디, 드라마', '스웨덴, 미국', 126, '2023-03-29');
insert into outline values (28, 28, '스릴러, 범죄', '미국', 91, '2023-03-23');
insert into outline values (29, 29, '드라마', '대한민국', 103, '2023-02-08');
insert into outline values (30, 30, '드라마', '미국', 117, '2023-03-01');
insert into outline values (31, 31, '액션', '미국', null, null);
insert into outline values (32, 32, '드라마', '이란, 프랑스', 128, '2023-03-15');
insert into outline values (33, 33, '공포', '영국', 84, null);
insert into outline values (34, 34, '드라마', '미국', 189, '2023-02-01');
insert into outline values (35, 35, '애니메이션', '대한민국', 80, '2023-05-01');
insert into outline values (36, 36, '애니메이션', '일본', 116, '2023-04-12');
insert into outline values (37, 37, '드라마', '미국', 112, '2023-04-05');
insert into outline values (38, 38, '드라마', '대한민국', 61, '2023-04-14');
insert into outline values (39, 39, '액션', '미국', 169, '2023-04-12');
insert into outline values (40, 40, '드라마', '독일', 147, null);
insert into outline values (41, 41, '드라마', '대한민국', 120, '2023-03-08');
insert into outline values (42, 42, '액션, 코미디', '미국', 139, '2022-10-12');
insert into outline values (43, 43, '공포, 미스터리', '미국', 96, '2023-03-22');
insert into outline values (44, 44, '애니메이션', '일본', 112, '2019-10-30');
insert into outline values (45, 45, '애니메이션', '일본', 106, '2017-01-04');
insert into outline values (46, 46, '액션, 모험, SF, 스릴러', '미국', 192, '2022-12-14');
insert into outline values (47, 47, '드라마', '대한민국', 108, '2023-01-18');
insert into outline values (48, 48, '액션, 모험, SF', '미국', null, '2023-05-01');
insert into outline values (49, 49, '액션, 모험', '미국', null, '2023-06-01');
insert into outline values (50, 50, '액션', '대한민국', 102, '2018-12-06');



--5. select 문 > 검증용
-- a. 조회수 순서대로 가져오시오.(순위, 영화명, 변동폭)
select rank,title,rankchange from Movie order by popular; 
-- b. '박성웅' 배우가 출연한 영화를 가져오시오.
select * from movie where seq = (select seq from movie_information where actor like '%박성웅%');
-- c. '김주환' 감독이 제작한 영화를 가져오시오.
select * from movie where seq = (select seq from movie_information where dir = '김주환');
-- d. 남자들이 선호하는 영화를 가져오시오.
select 
    title, v.men
from movie m
    inner join review v
        on m.seq = v.seq
            where v.men > v.women;
-- e. 20대가 선호하는 영화를 가져오시오.
select 
    m.title, v.twoage
from movie m
    inner join review v
        on m.seq = v.seq
            where v.twoage > v.tenage and v.twoage > v.threeage and v.twoage > v.fourage and v.twoage > v.fiveage;
-- f. '좋아요'를 20,000개 이상 받은 영화를 가져오시오.
select
    title, movie_like
from movie
    where movie_like >= 20000;
-- g. 한줄평 개수가 40,000개 이상 달린 영화를 가져오시오.
SELECT 
    m.title,
    comments
FROM Movie m
    INNER JOIN Review r
        ON m.seq = r.seq
            WHERE r.comments >= 40000;
-- h. 네티즌 관람객 평점이 4.5이상인 영화를 가져오시오.
SELECT 
    m.title,
    r.visitor
    FROM Movie m
        INNER JOIN Review r
            ON m.seq = r.seq
                WHERE r.visitor >= 4.5;
-- i. 영화의 명대사를 영화 제목과 함께 가져오시오.(명대사 배우명도 같이)
SELECT
    m.title,
    i.answer
FROM Movie m
    INNER JOIN movie_information i
        ON m.seq = i.seq
            WHERE i.answer IS NOT NULL;
-- j. 등록된 50개의 영화중 가장 많은 영화에 참여한 배우를 가져오시오.
select name
from (
  select name, count(*) as count from Actor group by name) a 
    where count = (select max(count) from (select count(*) as count from Actor group by name) b
);
-- k. '드라마'와 '코미디' 2개 장르에 속한 영화를 가져오시오.
select * from Movie m
    inner join Outline o
        on m.seq = o.seq
            where o.genre like '%코미디%' and o.genre like '%드라마%';
-- l. 런타임이 120분 미만인 영화를 가져오시오.
select * from Movie m
    inner join Outline o
        on m.seq = o.seq
            where o.running < 120;
-- m. 성인 관람가 영화를 가져오시오.
select title, grade
from movie m
    inner join movie_information mi
        on m.seq = mi.seq
            where grade = '청소년 관람불가';
-- n. 누적 관객 100,000명이 넘는 영화를 가져오시오.
select title, popular
from movie 
    where popular > 100000;
