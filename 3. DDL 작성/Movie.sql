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
