class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_filter :authenticate_user!, :except => [:index, :show]

private
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
