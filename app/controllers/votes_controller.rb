class VotesController < ApplicationController
  def index
    render json: Vote.all
  end
  # 
  # def create
  #   render json:
  # end
  #
  # def destroy
  #   render json:
  # end

end
