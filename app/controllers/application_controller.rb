class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # Strong parameters within devise prevent user from adding fields to database that arent the ones originally created in devise. 
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name ) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :current_password) }
  end
end
