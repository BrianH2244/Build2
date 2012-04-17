class ExpansionsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @expansion = current_user.expansions.build(params[:expansion])
    if @expansion.save
      flash[:success] = "Expansion created!"
      redirect_to reflect_path
    else
      @expandingfeed_items = []
      render 'static_pages/reflect'
    end
  end

  def destroy
    @expansion.destroy
    redirect_to reflect_path
  end

  private

    def authorized_user
      @expansion = current_user.expansions.find_by_id(params[:id])
      redirect_to reflect_path if @expansion.nil?
    end
end
