class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_filter :authenticate_user!, :except => [:index, :show]
end
