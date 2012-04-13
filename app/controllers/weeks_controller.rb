class WeeksController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def weekly
    if signed_in?
      @week = Week.new
      @mitfeed_items = current_user.mitfeed.paginate(:page => params[:page])
    end
  end

  def create
    @week = current_user.weeks.build(params[:week])
    if @week.save
      flash[:success] = "Weekly most important task created!"
      redirect_to weekly_path
    else
      @mitfeed_items = []
      render 'static_pages/weekly'
    end
  end

  def destroy
    @week.destroy
    redirect_to weekly_path
  end

  private

    def authorized_user
      @week = current_user.weeks.find_by_id(params[:id])
      redirect_to weekly_path if @week.nil?
    end
end
