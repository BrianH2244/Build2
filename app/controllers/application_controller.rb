class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  protected

  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource)
    current_user
  end
end
