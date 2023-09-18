class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_path_for(resource)
    books_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end
  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    user_path(user)
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end