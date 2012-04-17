class SavorsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @savor = current_user.savors.build(params[:savor])
    if @savor.save
      flash[:success] = "Savored moment created!"
      redirect_to reflect_path
    else
      @savoringfeed_items = []
      render 'static_pages/reflect'
    end
  end

  def destroy
    @savor.destroy
    redirect_to reflect_path
  end

  private

    def authorized_user
      @savor = current_user.savors.find_by_id(params[:id])
      redirect_to reflect_path if @savor.nil?
    end
end
