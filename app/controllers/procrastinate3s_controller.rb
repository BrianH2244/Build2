class Procrastinate3sController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @procrastinate3 = current_user.procrastinate3s.build(params[:procrastinate3])
    if @procrastinate3.save
      flash[:success] = "Distracting urges created!"
      redirect_to overcomingprocrastination_path
    else
      @procrastination3feed_items = []
      render 'static_pages/procrastination'
    end
  end

  def destroy
    @procrastinate3.destroy
    redirect_to overcomingprocrastination_path
  end

  private

    def authorized_user
      @procrastinate3 = current_user.procrastinate3s.find_by_id(params[:id])
      redirect_to root_path if @procrastinate3.nil?
    end
end
