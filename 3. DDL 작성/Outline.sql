-- Outline
create table Outline (
    outline_seq number primary key,
    seq references Movie(seq),
    genre varchar2(50),
    area varchar2(100),
    running number,
    opendate date
);
