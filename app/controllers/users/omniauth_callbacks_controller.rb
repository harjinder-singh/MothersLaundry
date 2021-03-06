class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in @user
        redirect_to @user.phone_no.present? ? root_path : verification_path
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
  end
end