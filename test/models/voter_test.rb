require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "name" do
    one = Voter.new(party: "democrate")
    refute one.save
  end

  test "party" do
    two = Voter.new(name: "Heather Dom")
    refute two.save
  end
end
