RSpec.configure do |config|
  config.before(:suite) do
    Resque.redis = REDIS
  end

  config.after(:suite) do
    REDIS.redis.flushdb
  end
end
