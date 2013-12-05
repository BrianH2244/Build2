class UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  before_filter :admin_user,     only: [:destroy, :index]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @savors = @user.savors.paginate(:page => params[:page])
    @habits = @user.habits.paginate(:page => params[:page])
    @improvements = @user.improvements.paginate(:page => params[:page])
    @needs = @user.needs.paginate(:page => params[:page])
    @expansions = @user.expansions.paginate(:page => params[:page])
    @projects = @user.projects.paginate(:page => params[:page])
    @weeks = @user.weeks.paginate(:page => params[:page])
    @quotes = @user.quotes.paginate(:page => params[:page])
    @funs = @user.funs.paginate(:page => params[:page])
    @mostimportants = @user.mostimportants.paginate(:page => params[:page])
    @procrastinates = @user.procrastinates.paginate(:page => params[:page])
    @procrastinate1s = @user.procrastinate1s.paginate(:page => params[:page])
    @procrastinate2s = @user.procrastinate2s.paginate(:page => params[:page])
    @procrastinate3s = @user.procrastinate3s.paginate(:page => params[:page])
    if request.path != user_path(@user)
      redirect_to @user, status: :moved_permanently
    end
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
