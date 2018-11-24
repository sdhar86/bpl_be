require "resque/tasks"
require 'resque/scheduler/tasks'

task "resque:setup" => :environment do

  Resque.before_fork do
    # Rails.logger.info "in resque.rake before fork"
    defined?(ActiveRecord::Base) and
        ActiveRecord::Base.connection.disconnect!
  end

  Resque.after_fork do
    # Rails.logger.info "in resque.rake after fork"
    defined?(ActiveRecord::Base) and
        ActiveRecord::Base.establish_connection
  end

  require 'resque'
  require 'resque/scheduler'

  # you probably already have this somewhere
  Resque.redis = ENV["REDIS_URL_INT"]
end

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"

namespace :resque do
  task :setup_schedule => :setup do
    require 'resque-scheduler'

    Resque::Scheduler.dynamic = true

    # if Rails.env.development?
    #   puts "***** blanking out the schedule of resque_schedule.yml"
    #   Resque.schedule = {}
    # else
      # puts "***** once again LOADING the resque_schedule.yml"
      resque_schedule_file_path = File.join(Rails.root, "config", "resque_schedule.yml")
      Resque.schedule = YAML.load_file(resque_schedule_file_path)
    # end

  end

  task :scheduler => :setup_schedule
end