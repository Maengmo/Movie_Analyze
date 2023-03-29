-- movie_inforamtion
create table Movie_information(
    movie_seq number primary key,
    seq number references Movie(seq),
    dir varchar2(50),
    actor varchar2(50),
    grade varchar2(50),
    answer varchar2(250)
);
