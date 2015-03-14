
# 1st try - only going to use the most recent 50 job postings
angel_jobs = AngellistApi.get_jobs(options={}).jobs



angel_jobs.each do |job|

  Job.create( al_url:         job.angellist_url,
              al_created_at:  job.created_at,
              currency_code:  job.currency_code,
              description:    job.description,
              equity_cliff:   job.equity_cliff,
              equity_max:     job.equity_max,
              equity_vest:    job.equity_vest,
              al_job_id:      job.id,
              job_type:       job.job_type,
              remote_ok:      job.remote_ok,
              salary_max:     job.salary_max,
              salary_min:     job.salary_min,
              al_start_id:    job.startup.id,
              title:          job.title,
              al_updated_at:  job.updated_at
              )

end