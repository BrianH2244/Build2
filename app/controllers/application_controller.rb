class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  redirect_to "http://www.broadenandbuild.com"

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  protected

  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource)
    current_user
  end
end
