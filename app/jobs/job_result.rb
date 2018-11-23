class JobResult
  attr_reader :status, :message, :data, :errors

  def initialize(status:, message: nil, data: nil, errors: [])
    @status = status
    @message = message
    @data = data
    @errors = errors

    Rails.logger.info self.to_s
  end

  def success?
    status == true
  end

  def failure?
    !success?
  end

  def has_data?
    data.present?
  end

  def has_errors?
    errors.present? && errors.length > 0
  end

  def to_s
    "- Job result: #{success? ? 'Success!' : 'Failure!'} - #{message} - #{data}"
  end
end