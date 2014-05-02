class CardsController < ApplicationController

  def new
  	@card = Card.new
  end
  def show
  	 # @card = Card.find(:params[:id])
  	 @card = Card.find(params[:id])
  end
  def create

  end
  def index
  	@cards = Card.all
  end
end
