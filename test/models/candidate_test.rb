require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "name" do
    one = Candidate.new(home: "Charlotte", district: "2", party: "independent", race_id: 1)
    refute one.save
  end

  test "home" do
    two = Candidate.new(name: "Howard Richard III", district: "2", party: "independent", race_id: 1)
    refute two.save
  end

  test "district" do
    three = Candidate.new(name: "Howard Richard III", home: "Raleigh", party: "independent", race_id: 2)
    refute three.save
  end

  test "party" do
    four = Candidate.new(name: "Howard Richard III", district: "2", home: "durham", race_id: 3)
    refute four.save
  end


  # test "vote association" do
  #   bill = Candidate.create(name: "Bill Watson", district: "1", home: "Chapel Hill", party: "democrat")
  #   bill_vote = Vote.create(candidate_id: bill.id, voter_id: 3)
  #   bill_vote2 = Vote.create(candidate_id: bill.id, voter_id: 2)
  #
  #   assert_equal 2, bill.count
  # end

  test "candidate total votes" do
    bob = Candidate.create(name: "Bob Richard III", district: "2", home: "durham", party: "independent", race_id: 3)
    jim = Candidate.create(name: "Jim Rich", district: "2", home: "durham", party: "democrat", race_id: 3)
    vote_1 = Vote.create(voter_id: 1, candidate_id: bob.id)
    vote_2 = Vote.create(voter_id: 1, candidate_id: jim.id)
    vote_3 = Vote.create(voter_id: 2, candidate_id: bob.id)
    assert_equal 2, bob.total_votes
    assert_equal 1, jim.total_votes
  end

end
