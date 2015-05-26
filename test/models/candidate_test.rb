require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "name" do
    one = Candidate.new(home: "Charlotte", district: "2", party: "independent")
    refute one.save
  end

  test "home" do
    two = Candidate.new(name: "Howard Richard III", district: "2", party: "independent")
    refute two.save
  end

  test "district" do
    three = Candidate.new(name: "Howard Richard III", home: "Raleigh", party: "independent")
    refute three.save
  end

  test "party" do
    four = Candidate.new(name: "Howard Richard III", district: "2", home: "durham")
    refute four.save
  end

  # test "vote association" do
  #   bill = Candidate.create(name: "Bill Watson", district: "1", home: "Chapel Hill", party: "democrat")
  #   bill_vote = Vote.create(candidate_id: bill.id, voter_id: 3)
  #   bill_vote2 = Vote.create(candidate_id: bill.id, voter_id: 2)
  #
  #   assert_equal 2, bill.count
  # end

end
