require 'rubygems'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  c.hook_into :webmock
  c.debug_logger = File.open(Rails.root.join('log/test.log'), 'w')
  c.default_cassette_options = {
    :match_requests_on => [:method, :host, :path]
  }
  # c.allow_http_connections_when_no_cassette = true
end

RSpec.configure do |c|
  c.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join("/").underscore.gsub(/[^\w\/]+/, "_")
    VCR.use_cassette(name, :record => :new_episodes) { example.call }
  end

  c.around(:each, :redo_vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join("/").underscore.gsub(/[^\w\/]+/, "_")
    VCR.use_cassette(name, :record => :all) { example.call }
  end

  c.around(:each, :real_api) do |example|
    WebMock.allow_net_connect!
    VCR.turned_off { example.run }
    WebMock.disable_net_connect!
  end
end