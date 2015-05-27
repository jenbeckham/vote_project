require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should be able to create" do
    assert_difference("Vote.count") do
      post :create, {voter_id: 2, candidate_id: 3}
    end
  end

end
