class QuotesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def quotes
    if signed_in?
      @quote = Quote.new
      @quotationfeed_items = current_user.quotationfeed.paginate(:page => params[:page])
    end
  end

  def create
    @quote = current_user.quotes.build(params[:quote])
    if @quote.save
      flash[:success] = "Quote created!"
      redirect_to quotes_path
    else
      @quotationfeed_items = []
      render 'quotes/quotes'
    end
  end

  def destroy
    @quote.destroy
    redirect_to quotes_path
  end

  private

    def authorized_user
      @quote = current_user.quotes.find_by_id(params[:id])
      redirect_to root_path if @quote.nil?
    end
end
