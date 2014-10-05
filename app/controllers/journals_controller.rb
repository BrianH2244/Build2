class JournalsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def journals
    if signed_in?
      @journal = Journal.new
      @eventfeed_items = current_user.eventfeed.paginate(:page => params[:page])
    end
  end

  def create
    @journal = current_user.journals.build(params[:journal])
    if @journal.save
      flash[:success] = "Journal entry created!"
      redirect_to journals_path
    else
      @eventfeed_items = []
      render 'journals/journals'
    end
  end

  def destroy
    @journal.destroy
    redirect_to journals_path
  end

  private

    def authorized_user
      @journal = current_user.journals.find_by_id(params[:id])
      redirect_to root_path if @journal.nil?
    end
end
