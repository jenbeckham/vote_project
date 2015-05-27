class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name], party: params[:party])
    if voter.save
      render json: voter
      #create auth key
    else
      render json: voter:errors
    end
  end

  def show
    render json: Voter.find_by_id(params[:id])
  end

  def update
  end
end
