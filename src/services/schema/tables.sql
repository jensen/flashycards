create table decks(
  id integer primary key,
  name text not null
);

create table cards(
  id integer primary key,
  question text not null,
  answer text not null,
  deck_id integer not null,
  foreign key (deck_id) references decks (id)
);