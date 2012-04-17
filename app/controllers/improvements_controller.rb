class ImprovementsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @improvement = current_user.improvements.build(params[:improvement])
    if @improvement.save
      flash[:success] = "Improvement created!"
      redirect_to reflect_path
    else
      @improvingfeed_items = []
      render 'static_pages/reflect'
    end
  end

  def destroy
    @improvement.destroy
    redirect_to reflect_path
  end

  private

    def authorized_user
      @improvement = current_user.improvements.find_by_id(params[:id])
      redirect_to reflect_path if @improvement.nil?
    end
end
