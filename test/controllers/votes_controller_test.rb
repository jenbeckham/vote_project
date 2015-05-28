require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should be able to create" do
    assert_difference("Vote.count") do
      post :create, {voter_id: 2, candidate_id: 3, race_id: 4}
    end
  end

  test "should be able to destroy"
    assert_difference(Vote.count)
    delete :destroy, {voter_id: 1, candidate_id: 1, race_id: 2}
  end
end
