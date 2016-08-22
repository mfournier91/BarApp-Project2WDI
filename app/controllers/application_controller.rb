class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_filter :authenticate_user!, :except => [:index, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # this is great that you added a custom parameter for your user. But I would look into generating the devise controllers and writing the code in there. You generally want to keep your application controller pretty clean.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

  end

# private
#   def after_sign_out_path_for(resource_or_scope)
#     root_path
#   end

end
