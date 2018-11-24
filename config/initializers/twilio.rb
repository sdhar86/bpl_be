Twilio.configure do |config|
  config.account_sid = ENV["TWILIO_SID"]
  config.auth_token = ENV["TWILIO_AUTH_TOKEN"]
end

# usage
# @client = Twilio::REST::Client.new
# @client.api.account.messages.create(
#   from: '+14696208075',
#   to: '+12148643507',
#   body: 'Hey there!'
# )