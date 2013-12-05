class Procrastinate1sController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def procrastinate1s
    if signed_in?
      @procrastinate1 = Procrastinate1.new
      @procrastination1feed_items = current_user.procrastination1feed.paginate(:page => params[:page])
    end
  end

  def create
    @procrastinate1 = current_user.procrastinate1s.build(params[:procrastinate1])
    if @procrastinate1.save
      flash[:success] = "Pain of procrastination created!"
      redirect_to overcomingprocrastination_path
    else
      @procrastination1feed_items = []
      render 'static_pages/procrastination'
    end
  end

  def destroy
    @procrastinate1.destroy
    redirect_to overcomingprocrastination_path
  end

  private

    def authorized_user
      @procrastinate1 = current_user.procrastinate1s.find_by_id(params[:id])
      redirect_to root_path if @procrastinate1.nil?
    end
end
