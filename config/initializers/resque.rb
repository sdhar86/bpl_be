Rails.logger.info "In resque.rb conecting to resque url #{ENV["REDIS_URL_INT"]}"

uri = URI.parse(ENV["REDIS_URL_INT"])

Resque.redis = Redis.new(:host => uri.host, :port => uri.port,
                         :password => uri.password, :thread_safe => true)

Resque::Scheduler.dynamic = true
# Dir["app/jobs/*.rb"].each { |file| require file }

# This will make the tabs show up.
require 'resque/scheduler'
require 'resque/scheduler/server'

# need to show static schedule on the web tabs
puts "***** LOADING the resque_schedule.yml as we need for the WEB tabs"
require 'resque'
Resque.schedule = YAML.load_file(File.join('config/resque_schedule.yml'))

# Resque::Server.use(Rack::Auth::Basic) do |user, password|
#   user == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_USER"]
#   password == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD"]
# end

# This will make the history tab show up.
require 'resque-history/server'

# This will make the stats tab show up.
require 'resque-job-stats/server'