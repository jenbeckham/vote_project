require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should be able to create" do
    assert_difference("Voter.count") do
      post :create, {name: "Harold Sim", party: "Democrat"}
    end
  end

  test "should be able to show" do
    allen = Voter.create(name: "Allen Thomas", party: "Republican")
    ralph = Voter.create(name: "Ralph George", party: "Democrat")
      get :show, id: allen.id
    assert response.body =~ /"Allen Thomas"/
    refute response.body =~ /"Ralph George"/
  end

  test "should be able to update" do
    donna = Voter.create(name: "Donna Smith", party: "Democrat")
    assert_equal "Democrat", donna.party
    donna.update(party: "Republican")
    assert_equal "Republican", donna.party
    #patch :update, id: donna.id, party: "Republican"
  end
end
