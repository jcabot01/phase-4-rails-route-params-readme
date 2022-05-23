class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using id from URL:  use a byebug, find endpoint => request.url => params => params[:id] = "1"
    cheese = Cheese.find_by(id: params[:id])
    # send json response containing cheese object
    render json: cheese
  end

end
