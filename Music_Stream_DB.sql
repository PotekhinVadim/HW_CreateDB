create table if not exists Genres (
	Genre_ID SERIAL primary key,
	Genre_Name VARCHAR(60) not null
);

create table if not exists Artists (
	Artist_ID SERIAL primary key,
	Artist_Name VARCHAR(100) not null
);

create table if not exists Albums (
	Album_ID SERIAL primary key,
	Album_Name VARCHAR(100) not null,
	Album_Year smallint not null check (Album_Year > 0)
);

create table if not exists Tracks (
	Track_ID SERIAL primary key,
	Track_Name VARCHAR(100) not null,
	Track_Lenght INTEGER not null check (Track_Lenght > 0),
	Album_ID INTEGER not null references Albums(Album_ID)
);

create table if not exists Mixtapes (
	Mixtape_ID SERIAL primary key,
	Mixtape_Name VARCHAR(100) not null,
	Mixtape_Year smallint not null check (Mixtape_Year > 0)
);

create table if not exists Genres_Artists (
	Genre_ID INTEGER references Genres(Genre_ID),
	Artist_ID INTEGER references Artists(Artist_ID),
	constraint Genre_Artist_ID primary key (Genre_ID, Artist_ID)
);

create table if not exists Artists_Albums (
	Artist_ID INTEGER references Artists(Artist_ID),
	Album_ID INTEGER references Albums(Album_ID),
	constraint Artist_Album_ID primary key (Artist_ID, Album_ID)
);

create table if not exists Mixtape_Tracks (
	Track_ID INTEGER references Tracks(Track_ID),
	Mixtape_ID INTEGER references Mixtapes(Mixtape_ID),
	constraint Mixtape_Track_ID primary key (Track_ID, Mixtape_ID)
);