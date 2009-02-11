# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
 
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
 
  before_filter :maintain_session_and_user
 
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '3ef815416f775098fe977004015c6193'
 
  def ensure_login
    unless @admin
      flash[:notice] = "Please login to continue"
      redirect_to(new_session_path)
    end
  end
 
  def ensure_logout
    if @admin
      flash[:notice] = "You must logout before you can login or register"
      redirect_to(root_url)
    end
  end
 
  private
 
  def maintain_session_and_user
    if session[:id]
      if @application_session = Session.find_by_id(session[:id])
        @application_session.update_attributes(:ip_address => request.remote_addr, :path => request.path_info)
        @admin = @application_session.admin
      else
        session[:id] = nil
        redirect_to(root_url)
      end
    end
  end
end