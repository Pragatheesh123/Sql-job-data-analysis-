/* top in demand skils required for data analyst role */
select skills ,count(skills_job_dim.skill_id) as skill_count
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
where job_title_short = 'Data Analyst'
group by skills
order by skill_count desc
limit 5


/*
top in demand skils required for data analyst role [
  {
    "skills": "sql",
    "skill_count": "92628"
  },
  {
    "skills": "excel",
    "skill_count": "67031"
  },
  {
    "skills": "python",
    "skill_count": "57326"
  },
  {
    "skills": "tableau",
    "skill_count": "46554"
  },
  {
    "skills": "power bi",
    "skill_count": "39468"
  }
]
*