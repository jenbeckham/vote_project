class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name], party: params[:party], security_key: SecureRandom.hex)
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def show
    before_action :require_security_key
    render json: Voter.find_by_id(params[:id])
  end

  def update
    before_action :require_security_key
    voter = Voter.find_by_id(params[:id])
    voter.update({:name => voter.name, :party => voter.party})
    render json: voter
  end
end
