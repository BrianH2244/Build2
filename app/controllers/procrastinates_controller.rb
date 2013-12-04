class ProcrastinatesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def procrastinates
    if signed_in?
      @procrastinate = Procrastinate.new
      @procrastinationfeed_items = current_user.procrastinationfeed.paginate(:page => params[:page])
    end
  end

  def create
    @procrastinate = current_user.procrastinates.build(params[:procrastinate])
    if @procrastinate.save
      flash[:success] = "Overcoming procrastination created!"
      redirect_to overcomingprocrastination_path
    else
      @procrastinationfeed_items = []
      render 'procrastinates/procrastinates'
    end
  end

  def destroy
    @procrastinate.destroy
    redirect_to overcomingprocrastination_path
  end

  private

    def authorized_user
      @procrastinate = current_user.procrastinates.find_by_id(params[:id])
      redirect_to root_path if @procrastinate.nil?
    end
end
