class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :set_locale

    def set_locale
      if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
        l = cookies[:educator_locale].to_sym
      else
        l = I18n.default_locale
        cookies.permanent[:educator_locale] = l
      end
      I18n.locale = l
    end

  private

  	# Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end	
