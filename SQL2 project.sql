select *from ds_salaries; 
select *from data;
select *from data_company_name;

#Q1 what is the avg salary for all the jobs in the dataset ? 

select avg (salary) from ds_salaries; 

#Q2 what is the highest salary in the dataset and which job role does it correspond to ?
 
select job_title, salary from ds_salaries
order by salary desc limit 1; 

#Q3 what is the avg salaruy for data scientist in US?

select job_title, company_location, avg (salary) as avg  from ds_salaries 
where job_title= "Data Scientist" and company_location = "US";

#Q4 what is the number of jobs available for each job title? 

select job_title, count(job_title) as count from ds_salaries
group by job_title;

#Q5 what is the total salary paid for all data analyst jobs in DE ?

select sum(salary) job_title, company_location from  ds_salaries
 where job_title= "Data Analyst" and company_location= "DE";
 
 #Q6 what are the top 5 highest paying job titles and their corresponding average salaries ?
 
 select avg(salary) as avg , job_title from ds_salaries
 group  by  job_title limit 5;
 
 #Q7 what is the number of jobs available in each location ?
 
 select company_location, count(company_location)  from ds_salaries
 group by company_location;
 
 #Q8 what are  the top 3 job titles that have the most jobs available in the dataset ?
 
 select job_title, count(job_title) as count from ds_salaries
group by job_title 
order by job_title limit 3;

#Q9 what is the average salary for data engineers in boston ?

select avg(salary), job_title from ds_salaries
where job_title = "Data Engineer"and company_location= "US";

#Q10 what are the top 5 cities with the highest avg salaries ?

select company_location as cities , avg(salary)  from ds_salaries
group  by company_location 
order by avg(salary) limit 5; 

#Q11 what is the avg salary for each job title, and total no. of jobs available for each job title ?

select job_title, avg(salary) , count(job_title) from ds_salaries
group by job_title;

#Q12 what are the top 5 jobs titles with the highest total salaries, and what is the total no. of jobs available for each job title ?

select job_title, sum(salary), count(*) from ds_salaries
group by job_title
order by sum(salary) desc limit 5;

#Q13 what are the top 5 locations with the highest toal salaries, and what is the total number of jobs available for each location ? 

select company_location, sum(salary), count(*) from ds_salaries
group by company_location
order by sum(salary) desc limit 5;

#Q14 what is the avg salary for each job title in ecah location, and what is the total no. of jobs available for each job title in each  location ?

select job_title, company_location, avg(salary), count(*) from ds_salaries
group by job_title, company_location;

#Q15 show the experience level of work according by year 2020 ?

select work_year, experience_level from ds_salaries
where work_year = 2020;

