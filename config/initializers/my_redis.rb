Rails.logger.info "In my_redis.rb conecting to redis url #{ENV["REDIS_URL_INT"]}"

uri = URI.parse(ENV["REDIS_URL_INT"])

redis_connection = Redis.new(:host => uri.host, :port => uri.port,
                             :password => uri.password, :thread_safe => true)

namespace = ENV["REDIS_NAMESPACE"]

REDIS = Redis::Namespace.new(namespace, redis: redis_connection)