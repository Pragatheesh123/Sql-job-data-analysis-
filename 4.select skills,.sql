select skills,
round(avg(salary_year_avg),0) as year_salary
 FROM job_postings_fact
 inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst'and
 salary_year_avg is not null
group by  skills
order by year_salary desc
limit 25

/* results
[
  {
    "skills": "svn",
    "year_salary": "400000"
  },
  {
    "skills": "solidity",
    "year_salary": "179000"
  },
  {
    "skills": "couchbase",
    "year_salary": "160515"
  },
  {
    "skills": "datarobot",
    "year_salary": "155486"
  },
  {
    "skills": "golang",
    "year_salary": "155000"
  },
  {
    "skills": "mxnet",
    "year_salary": "149000"
  },
  {
    "skills": "dplyr",
    "year_salary": "147633"
  },
  {
    "skills": "vmware",
    "year_salary": "147500"
  },
  {
    "skills": "terraform",
    "year_salary": "146734"
  },
  {
    "skills": "twilio",
    "year_salary": "138500"
  },
  {
    "skills": "gitlab",
    "year_salary": "134126"
  },
  {
    "skills": "kafka",
    "year_salary": "129999"
  },
  {
    "skills": "puppet",
    "year_salary": "129820"
  },
  {
    "skills": "keras",
    "year_salary": "127013"
  },
  {
    "skills": "pytorch",
    "year_salary": "125226"
  },
  {
    "skills": "perl",
    "year_salary": "124686"
  },
  {
    "skills": "ansible",
    "year_salary": "124370"
  },
  {
    "skills": "hugging face",
    "year_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "year_salary": "120647"
  },
  {
    "skills": "cassandra",
    "year_salary": "118407"
  },
  {
    "skills": "notion",
    "year_salary": "118092"
  },
  {
    "skills": "atlassian",
    "year_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "year_salary": "116712"
  },
  {
    "skills": "airflow",
    "year_salary": "116387"
  },
  {
    "skills": "scala",
    "year_salary": "115480"
  }
]