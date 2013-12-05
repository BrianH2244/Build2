class Procrastinate2sController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @procrastinate2 = current_user.procrastinate2s.build(params[:procrastinate2])
    if @procrastinate2.save
      flash[:success] = "Vision of future created!"
      redirect_to overcomingprocrastination_path
    else
      @procrastination2feed_items = []
      render 'static_pages/procrastination'
    end
  end

  def destroy
    @procrastinate2.destroy
    redirect_to overcomingprocrastination_path
  end

  private

    def authorized_user
      @procrastinate2 = current_user.procrastinate2s.find_by_id(params[:id])
      redirect_to root_path if @procrastinate2.nil?
    end
end
