require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "voter_id" do
    one = Vote.new(candidate_id: 3)
    refute one.save
  end

  test "candidate_id" do
    two = Vote.new(voter_id: 1)
    refute two.save
  end

  test "vote_id" do
    tom = Voter.create(name: "Tom", party: "Republican")
    vote_1 = Vote.new(voter_id: tom.id, candidate_id: 2)
    vote_2 = Vote.new(voter_id: tom.id, candidate_id: 3)
    assert vote_1.save
    refute vote_2.save
  end
end
