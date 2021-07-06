class WelcomeController < ApplicationController
  def index
    @quote = Quote.new
    @quotes = Quote.all
  end

  def create_quote 
    @quote = Quote.create(quote_params)
    redirect_to root_path
  end

  private 

  def quote_params
    params.require(:quote).permit(:content, :author_name)
  end  
end
