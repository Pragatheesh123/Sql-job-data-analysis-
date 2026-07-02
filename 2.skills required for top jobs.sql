--top 10 high paying jobs for data analyst  
with top_paying_jobs as (
    select job_id,job_title,
    job_location,
    job_Schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
    from job_postings_fact
    left join company_dim on job_postings_fact.company_id = company_dim.company_id
    where job_title = 'Data Analyst'and
    job_location = 'Anywhere' and
    salary_year_avg is not null
    order by salary_year_avg desc
    limit 10
    )
select * from top_paying_jobs   
inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
order by salary_year_avg desc
limit 20

/* results 
[
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-12-08 09:16:37",
    "company_name": "Plexus Resource Solutions",
    "job_id (1)": 1246069,
    "skill_id": 1,
    "skill_id (1)": 1,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-12-08 09:16:37",
    "company_name": "Plexus Resource Solutions",
    "job_id (1)": 1246069,
    "skill_id": 56,
    "skill_id (1)": 56,
    "skills": "mysql",
    "type": "databases"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-12-08 09:16:37",
    "company_name": "Plexus Resource Solutions",
    "job_id (1)": 1246069,
    "skill_id": 76,
    "skill_id (1)": 76,
    "skills": "aws",
    "type": "cloud"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 0,
    "skill_id (1)": 0,
    "skills": "sql",
    "type": "programming"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 1,
    "skill_id (1)": 1,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 5,
    "skill_id (1)": 5,
    "skills": "r",
    "type": "programming"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 7,
    "skill_id (1)": 7,
    "skills": "sas",
    "type": "programming"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 15,
    "skill_id (1)": 15,
    "skills": "matlab",
    "type": "programming"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 93,
    "skill_id (1)": 93,
    "skills": "pandas",
    "type": "libraries"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 182,
    "skill_id (1)": 182,
    "skills": "tableau",
    "type": "analyst_tools"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 185,
    "skill_id (1)": 185,
    "skills": "looker",
    "type": "analyst_tools"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "165000.0",
    "job_posted_date": "2023-08-14 16:01:19",
    "company_name": "Get It Recruit - Information Technology",
    "job_id (1)": 712473,
    "skill_id": 186,
    "skill_id (1)": 186,
    "skills": "sas",
    "type": "analyst_tools"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "151500.0",
    "job_posted_date": "2023-09-25 10:59:56",
    "company_name": "Get It Recruit - Healthcare",
    "job_id (1)": 456042,
    "skill_id": 0,
    "skill_id (1)": 0,
    "skills": "sql",
    "type": "programming"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "151500.0",
    "job_posted_date": "2023-09-25 10:59:56",
    "company_name": "Get It Recruit - Healthcare",
    "job_id (1)": 456042,
    "skill_id": 1,
    "skill_id (1)": 1,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "151500.0",
    "job_posted_date": "2023-09-25 10:59:56",
    "company_name": "Get It Recruit - Healthcare",
    "job_id (1)": 456042,
    "skill_id": 5,
    "skill_id (1)": 5,
    "skills": "r",
    "type": "programming"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "job_id (1)": 479485,
    "skill_id": 0,
    "skill_id (1)": 0,
    "skills": "sql",
    "type": "programming"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "job_id (1)": 479485,
    "skill_id": 1,
    "skill_id (1)": 1,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "job_id (1)": 479485,
    "skill_id": 5,
    "skill_id (1)": 5,
    "skills": "r",
    "type": "programming"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "job_id (1)": 479485,
    "skill_id": 27,
    "skill_id (1)": 27,
    "skills": "golang",
    "type": "programming"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "job_id (1)": 479485,
    "skill_id": 59,
    "skill_id (1)": 59,
    "skills": "elasticsearch",
    "type": "databases"
  }
*/
