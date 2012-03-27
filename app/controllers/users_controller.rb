class UsersController < ApplicationController
  # GET /users
  require 'youtube_it'

  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @user_all = User.find(:all)
    @user_posts = @user.posts.find(:all)
    @client = YouTubeIt::Client.new(:dev_key => "AI39si6g5PLD2IWCBWBoqcZPdQ2Wo3YkQ_bX6i363THySiqqKmtxRfw6SEsyixMksqq4XWkooWeohleo7FdUfNwdZfykHUIWlg")
    @client_user ||= @client.videos_by(:user => @user.youtube_username.to_s)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
      5.times{@user.assets.build}
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
      5.times{@user.assets.build}
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  def add_post
      if !params[:post_object].nil?

         render :text => params[:post_object]
      else
          
         render :partial => 'add_post', :locals => {:post_object => Post.new}

        end
  end
end
