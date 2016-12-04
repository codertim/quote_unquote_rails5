class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save!
      flash[:success] = "New Quote Saved"
      redirect_to user_quotes_path(current_user)
    end
  end

  def index
    @user = current_user
    # TODO: scope to user
    @quotes = Quote.all
  end

  private
    def quote_params
      params.require(:quote).permit(:saying, :source)
    end
end
