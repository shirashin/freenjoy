class ApplicationController < ActionController::API
  before_action :authenticate_user_from_token!
  respond_to :json

  class AuthenticateError < StandardError;end;

  rescue_from AuthenticateError, with: :authorization_error


  def authenticate_user_from_token!
    if auth_token?
      # TODO: auth
    else
      raise AuthenticateError
    end
  end


private

  def auth_token?
    true
  end

  def authorization_error(e = nil)
    logger.info "Rendering 401 with exception: #{e.message}" if e
    render json: { error: '401 Authorization Error' }, status: 401
  end

  

end

