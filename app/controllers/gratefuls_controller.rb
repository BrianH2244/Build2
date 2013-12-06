class GratefulsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def gratefuls
    if signed_in?
      @grateful = Grateful.new
      @gratitudefeed_items = current_user.gratitudefeed.paginate(:page => params[:page])
    end
  end

  def create
    @grateful = current_user.gratefuls.build(params[:grateful])
    if @grateful.save
      flash[:success] = "Gratitude created!"
      redirect_to gratitude_path
    else
      @gratitudefeed_items = []
      render 'gratefuls/gratefuls'
    end
  end

  def destroy
    @grateful.destroy
    redirect_to gratitude_path
  end

  private

    def authorized_user
      @grateful = current_user.gratefuls.find_by_id(params[:id])
      redirect_to root_path if @grateful.nil?
    end
end
