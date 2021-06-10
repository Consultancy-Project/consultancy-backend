require 'rails_helper'

RSpec.describe ExternalApiError do
  it 'exists' do
      error = ExternalApiError.new
      expect(error.error_message).to eq("External API failed to repond as expected")
      expect(error.code).to eq(502)
      expect(error.status).to eq("BAD GATEWAY")
    end
  end