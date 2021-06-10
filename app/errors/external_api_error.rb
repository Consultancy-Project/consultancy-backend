class ExternalApiError < StandardError
  def error_message
    "External API failed to repond as expected"
  end
  
  def code
    502
  end
  
  def status
    'BAD GATEWAY'
  end
end