require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should be able to show" do
   state_senate = Race.create(name: "State Senate")
   state_house = Race.create(name: "State House")
     get :show, id: state_senate.id
   assert response.body =~ /"State Senate"/
   refute response.body =~ /"State House"/
 end

end
