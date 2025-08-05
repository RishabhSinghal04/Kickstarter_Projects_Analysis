select * from kickstarter_projects;

-- Aggregate total and successful count per category
select category,
	count(*) as total_projects,
	sum(case when state = 'Successful' then 1 else 0 end) as successful_projects,
	round(sum(case when state = 'Successful' then 1 else 0 end)::decimal / count(*) * 100, 2) as success_rate
from kickstarter_projects
group by category
order by success_rate;

-- Pledge-to-goal ratio for each project and flag overfunded ones
select id, name, goal, pledged,
	round(pledged::decimal / nullif(goal, 0), 2) as pledge_to_goal_ratio
from kickstarter_projects
where goal > 0
order by pledge_to_goal_ratio desc
limit 50;

-- Average pledge ratio by category to see where backers overdeliver
select category,
	round(avg(pledged::decimal / nullif(goal, 0)), 2) as avg_pledge_to_goal_ratio
from kickstarter_projects
group by category
order by avg_pledge_to_goal_ratio desc;

-- Monthly launch volume and success count
with monthly as(
select date_trunc('month', launched) as month,
	count(*) as launches,
	sum(case when state = 'Successful' then 1 else 0 end) as successes
from kickstarter_projects
group by month
)
select month, launches, successes,
	round(successes::decimal / launches * 100, 2) as success_rate
from monthly
order by month;

-- Total pledged by country and average backers
select country,
	sum(pledged) as total_pledged,
	round(avg(backers), 2) as avg_backers
from kickstarter_projects
group by country
order by total_pledged desc;

-- Rank projects by backer count within each category
select id, name, category, backers,
	dense_rank() over(
		partition by category
		order by backers desc
	) as backer_rank
from kickstarter_projects
order by category, backer_rank;