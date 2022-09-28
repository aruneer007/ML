use animal;

SET SQL_SAFE_UPDATES = 0;

select * from cats;

update cats set breed = 'shorthair'
where breed ='Tabby';

update cats set age=14
where name='misty';

show warnings;

update cats set name='Jack'
where name ='Jackson';

update cats set breed='British shorthair'
where name='Ringo';

update cats set age = 12
where breed='Maine coon';