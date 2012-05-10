class StaticPagesController < ApplicationController

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def goals
  end

  def savor
  end

  def habits
  end

  def improvement
  end

  def needs
  end

  def expand
  end

  def reflect
    if signed_in?
      @savor = Savor.new
      @savoringfeed_items = current_user.savoringfeed.paginate(:page => params[:page])
      @habit = Habit.new
      @habitualfeed_items = current_user.habitualfeed.paginate(:page => params[:page])
      @improvement = Improvement.new
      @improvingfeed_items = current_user.improvingfeed.paginate(:page => params[:page])
      @need = Need.new
      @needingfeed_items = current_user.needingfeed.paginate(:page => params[:page])
      @expansion = Expansion.new
      @expandingfeed_items = current_user.expandingfeed.paginate(:page => params[:page])
    end
  end
end
