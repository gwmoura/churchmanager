class UsersController < ApplicationController
  before_action :authenticate_user!
  skip_before_filter :require_no_authentication
  before_action :set_user, only: [:show, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def add
    @user = User.new(user_params)

    respond_to do |format|
      puts(@user)
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: users_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation,:chruch_id)
    end
end
