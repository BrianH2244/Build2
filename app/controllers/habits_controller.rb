class HabitsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @habit = current_user.habits.build(params[:habit])
    if @habit.save
      flash[:success] = "Habit created!"
      redirect_to reflect_path
    else
      @habitualfeed_items = []
      render 'static_pages/reflect'
    end
  end

  def destroy
    @habit.destroy
    redirect_to reflect_path
  end

  private

    def authorized_user
      @habit = current_user.habits.find_by_id(params[:id])
      redirect_to reflect_path if @habit.nil?
    end
end
