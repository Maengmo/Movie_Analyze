-- Actor
create table Actor (
    actor_seq number primary key,
    movie_seq  references Movie_information(movie_seq),
    name varchar2(100)
);
