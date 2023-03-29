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