class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  before_filter :ensure_login, :except => [:new, :home]
  def index
    if !@admin.nil?
      if @admin.level == "Ward Leader"
        @users = User.find_all_by_ward(@admin.ward)
      else
        @users = User.find(:all)
      end
    else
      flash[:error] = 'You must be logged in to view the registrant list'
      format.html { redirect_to(root_url) }
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    if !@admin.nil?
      @user = User.new 

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @user }
      end
    else
      flash[:notice] = "<h2 class=\"error\">Registration has closed</h2><p>Unfortunatly, registration for Klein Stake's 2009 Youth Conference is now closed.  If you have any questions or concerns, please contact a member of your ward Young Men's or Young Women's Presidency.  Thank you!</p>"
      redirect_to(root_url)
    end
   
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html #{ redirect_to(root_url) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
  def home
    
  end
  
  def download
    
  end
end
