class MostimportantsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def mostimportants
    if signed_in?
      @mostimportant = Mostimportant.new
      @mostimportantlyfeed_items = current_user.mostimportantlyfeed.paginate(:page => params[:page])
    end
  end

  def create
    @mostimportant = current_user.mostimportants.build(params[:mostimportant])
    if @mostimportant.save
      flash[:success] = "Most important task created!"
      redirect_to mostimportants_path
    else
      @mostimportantlyfeed_items = []
      render 'mostimportants/mostimportants'
    end
  end

  def destroy
    @mostimportant.destroy
    redirect_to mostimportants_path
  end

  private

    def authorized_user
      @mostimportant = current_user.mostimportants.find_by_id(params[:id])
      redirect_to root_path if @mostimportant.nil?
    end
end
