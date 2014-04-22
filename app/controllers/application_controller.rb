class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :prepare_for_mobile
  before_filter :set_cache_headers
private 
  def mobile_device?
  	if session[:mobile_param]
  		 session[:mobile_param] == "1"
  	  else
  	   request.user_agent =~ /Mobile|WebOS/
    end
  end
helper_method :mobile_device?
  def prepare_for_mobile
  	session[:mobile_param] = params[:mobile] if params[:mobile]
  	request.format = :mobile if mobile_device?
  end
   def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
   end
end
