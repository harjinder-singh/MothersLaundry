class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #before_action :check_omniauth_users
  before_action :configure_permitted_parameters, if: :devise_controller?

  #def check_omniauth_users
  #  unless current_user.try(:phone_no) && (current_user.try(:terms_of_services) == "yes")
 #     redirect_to verification_path
  #  end
    
  #end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation, :phone_no, :terms_of_service])
  end
end
