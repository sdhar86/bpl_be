require 'resque/errors'

module TestJob
  @queue = :default

  def self.perform(the_date = Time.current)
    Rails.logger.info("- Start #{self}")

    puts "test"

    Rails.logger.info("- Finish #{self}")
    JobResult.new(status: true)

  rescue Resque::TermException
    Rails.logger.error "Error in #{self}: job asked to terminate while doing work"
    Resque.enqueue(TestJob)
  end
end