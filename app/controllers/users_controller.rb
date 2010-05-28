class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:edit, :update, :show]
  
  # GET /users/new
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /users
  def show
    @user = current_user
  end  

  # GET /users/edit
  def edit
    @user = current_user
  end

  # POST /users
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(root_url, :notice => 'Registration successful.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /users/
  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(root_url, :notice => 'Your profile was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

end
