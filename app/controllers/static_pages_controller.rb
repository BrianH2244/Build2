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

  def reflect
    if signed_in?
      @savor = Savor.new
      @savoringfeed_items = current_user.savoringfeed.paginate(:page => params[:page])
      @habit = Habit.new
      @habitualfeed_items = current_user.habitualfeed.paginate(:page => params[:page])
    end
  end
end
