class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?
  before_action :authenticate_user!, unless: :json_request?
  before_action :configure_permitted_parameters, if: :devise_controller?
  #skip_before_action :verify_authenticity_token, if: :json_request?
  #skip_before_filter :verify_signed_out_user, if: :json_request?
  include Authenticable
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation, :phone_no, :terms_of_service])
  end

  def json_request?
    request.format.json?
  end
  
end
