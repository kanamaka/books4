class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except: [:top, :about]
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger

  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end
  private
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end
end
