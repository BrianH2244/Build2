class NeedsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @need = current_user.needs.build(params[:need])
    if @need.save
      flash[:success] = "Need created!"
      redirect_to reflect_path
    else
      @needingfeed_items = []
      render 'static_pages/reflect'
    end
  end

  def destroy
    @need.destroy
    redirect_to reflect_path
  end

  private

    def authorized_user
      @need = current_user.needs.find_by_id(params[:id])
      redirect_to reflect_path if @need.nil?
    end
end
