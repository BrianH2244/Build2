class FunsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def funs
    if signed_in?
      @fun = Fun.new
      @funnestfeed_items = current_user.funnestfeed.paginate(:page => params[:page])
    end
  end

  def create
    @fun = current_user.funs.build(params[:quote])
    if @fun.save
      flash[:success] = "Fun created!"
      redirect_to funs_path
    else
      @funnestfeed_items = []
      render 'funs/funs'
    end
  end

  def destroy
    @fun.destroy
    redirect_to funs_path
  end

  private

    def authorized_user
      @fun = current_user.funs.find_by_id(params[:id])
      redirect_to root_path if @fun.nil?
    end
end
