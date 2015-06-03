class PrinciplesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @principle = current_user.principles.build(params[:principle])
    if @principle.save
      flash[:success] = "Value created!"
      redirect_to questions_path
    else
      @valuefeed_items = []
      render 'questions/questions'
    end
  end

  def destroy
    @principle.destroy
    redirect_to questions_path
  end

  private

    def authorized_user
      @principle = current_user.principles.find_by_id(params[:id])
      redirect_to root_path if @principle.nil?
    end
end
