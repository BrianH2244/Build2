class EnvironmentsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def environments
    if signed_in?
      @environment = Environment.new
      @changefeed_items = current_user.changefeed.paginate(:page => params[:page])
    end
  end

  def create
    @environment = current_user.environments.build(params[:environment])
    if @environment.save
      flash[:success] = "Environment created!"
      redirect_to enviroments_path
    else
      @changefeed_items = []
      render 'environments/environments'
    end
  end

  def destroy
    @environment.destroy
    redirect_to environments_path
  end

  private

    def authorized_user
      @environment = current_user.environments.find_by_id(params[:id])
      redirect_to root_path if @environment.nil?
    end
end
