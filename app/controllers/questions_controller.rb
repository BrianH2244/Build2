class QuestionsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def questions
    if signed_in?
      @question = Question.new
      @whyfeed_items = current_user.whyfeed.paginate(:page => params[:page])
    end
  end

  def create
    @question = current_user.questions.build(params[:question])
    if @question.save
      flash[:success] = "Question entry created!"
      redirect_to questions_path
    else
      @whyfeed_items = []
      render 'questions/questions'
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

    def authorized_user
      @question = current_user.questions.find_by_id(params[:id])
      redirect_to root_path if @question.nil?
    end
end
