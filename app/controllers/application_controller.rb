class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
def appid
  RakutenWebService.configuration do |c|
  c.application_id = Rails.application.secrets.rakuten_app_id
  c.affiliate_id = Rails.application.secrets.rakuten_affiliate_id
  end
end
  layout 'flatly'
  protect_from_forgery with: :exception
end



