class UsersController < ApplicationController
  before_filter :authenticate_user! 
  before_filter :admin_user,     only: [:destroy, :index]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find_by_name(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

  private

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
