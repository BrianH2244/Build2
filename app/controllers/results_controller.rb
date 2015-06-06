class ResultsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def create
    @result = current_user.results.build(params[:result])
    if @result.save
      flash[:success] = "Result created!"
      redirect_to questions_path
    else
      @whatfeed_items = []
      render 'questions/questions'
    end
  end

  def destroy
    @result.destroy
    redirect_to questions_path
  end

  private

    def authorized_user
      @result = current_user.results.find_by_id(params[:id])
      redirect_to root_path if @result.nil?
    end
end
