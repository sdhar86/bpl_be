require 'resque'
require 'resque/throttler'

# Rate limit at 100 jobs from `sitescout_campaign_creation` per 3600 seconds
# Rate limit at 9900 jobs from `sitescout` per 3600 seconds

begin
  Resque.rate_limit(:beeswax, :at => 3600, :per => 3600)
rescue => e
  Rails.logger.error "unable to setup queue throttling limits #{e}"
end