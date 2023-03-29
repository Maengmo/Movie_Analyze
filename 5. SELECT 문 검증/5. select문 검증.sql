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