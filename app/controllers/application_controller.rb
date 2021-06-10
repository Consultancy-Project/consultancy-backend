class ApplicationController < ActionController::API
  rescue_from ExternalApiError, with: :render_external_api_error
  
  def render_external_api_error(exception)
    render json: {
                    errors: [
                      {
                        status: exception.status,
                        message: exception.error_message,
                        code: exception.code
                      }
                    ]
                  }
  end
end
