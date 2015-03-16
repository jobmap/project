
# delete all 
Job.delete_all
Startup.delete_all
Location.delete_all

last_page = AngellistApi.get_jobs(options={page: 100000}).last_page

page_num = 1

while page_num <= last_page
  
  angel_jobs = AngellistApi.get_jobs(options={page: page_num})

  angel_jobs.jobs.each do |job|

    # Number of tags in tag object
    num_tags = job.tags.length
    loc_tag = num_tags - 2
    role_tag = num_tags - 1

    if job.tags[loc_tag].tag_type == "LocationTag"

      Job.find_by_al_job_id(job.startup.id) ||
        Job.create( al_url:         job.angellist_url,
                    al_created_at:  job.created_at,
                    currency_code:  job.currency_code,
                    role_name:      job.tags[role_tag].display_name,
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
                    al_loc_id:      job.tags[loc_tag].id,
                    location:       job.tags[loc_tag].name,
                    title:          job.title,
                    al_updated_at:  job.updated_at
                    )

      Startup.find_by_al_start_id(job.startup.id) ||
        Startup.create( al_url:             job.startup.angellist_url,
                        community_profile:  job.startup.community_profile,
                        url:                job.startup.company_url,
                        al_created_at:      job.startup.created_at,
                        follower_count:     job.startup.follower_count,
                        hidden:             job.startup.hidden,
                        high_concept:       job.startup.high_concept,
                        al_start_id:        job.startup.id,
                        logo_url:           job.startup.logo_url,
                        name:               job.startup.name,
                        prod_desc:          job.startup.product_desc,
                        quality:            job.startup.quality,
                        thumb_url:          job.startup.thumb_url,
                        al_updated_at:      job.startup.updated_at
                        )

      Location.find_by_al_loc_id(job.tags[loc_tag].id) ||
        Location.create(  al_url:       job.tags[loc_tag].angellist_url,
                          display_name: job.tags[loc_tag].display_name,
                          al_loc_id:    job.tags[loc_tag].id,
                          name:         job.tags[loc_tag].name
                          )
    
    end

  end

  page_num += 1

end