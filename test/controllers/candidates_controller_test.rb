require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should be able to show" do
    clinton = Candidate.create(name: "Clinton Race", district: "4", home: "Youngsville", party: "Republican")
    reagan = Candidate.create(name: "Reagan Race", district: "4", home: "Durham", party: "Democrat")
      get :show, id: reagan.id
    assert response.body =~ /"Reagan Race"/
    refute response.body =~ /"Clinton Race"/
  end
end
