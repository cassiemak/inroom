class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :init

  private def init
    if (request.env['HTTP_USER_AGENT'].include?('6040'))
      @viewport = 'user-scalable=0, initial-scale=1, target-densitydpi=283'
    else
      @viewport = 'user-scalable=0, initial-scale=1, target-densitydpi=285'
    end

    I18n.locale = params[:locale] || I18n.default_locale
  end
end
