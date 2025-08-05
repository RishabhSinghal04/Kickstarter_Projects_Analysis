drop table if exists kickstarter_projects;

create table kickstarter_projects(
ID integer primary key,
Name text,
Category varchar(50),
Subcategory varchar(50),
Country varchar(50),
Launched timestamp,
Deadline date,
Goal numeric,
Pledged numeric,
Backers int,
State varchar(20)
);

copy kickstarter_projects
from 'D:\Projects\Kickstarter_Projects\data\cleaned_kickstarter_projects.csv'
with (format csv, header true);

select * from kickstarter_projects;
