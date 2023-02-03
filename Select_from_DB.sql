select album_name, album_year from albums
where album_year = 2018;

select track_name, ((track_lenght / 60) || ':' || (track_lenght % 60)) from tracks
order by track_lenght desc
limit 1;

select track_name from tracks
where track_lenght >= 210;

select mixtape_name from mixtapes
where mixtape_year between 2018 and 2020;

select artist_name from artists
where artist_name not like '% %';

select track_name from tracks
where track_name like '%my%' or 
		track_name like '%мой%' or 
		track_name like '%My%' or 
		track_name like '%Мой%';