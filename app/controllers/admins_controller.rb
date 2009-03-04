class AdminsController < ApplicationController
  before_filter :ensure_login
 
  def index
    @admins = Admin.find(:all)
  end
 
  def show
    @admin = Admin.find(params[:id])
  end
 
  def new
    @admin = Admin.new
  end
 
  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      @session = @admin.sessions.create
      session[:id] = @session.id
      flash[:notice] = "Welcome #{@admin.name}, you are now registered"
      redirect_to(root_url)
    else
      render(:action => 'new')
    end
  end
 
  def edit
    @admin = Admin.find(params[:id])
  end
 
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      flash[:notice] = "Your account has been updated"
      redirect_to(root_url)
    else
      render(:action => 'edit')
    end
  end
 
  def destroy
    Admin.destroy(@admin)
    session[:id] = @user = nil
    flash[:notice] = "You are now unregistered"
    redirect_to(root_url)
  end
end