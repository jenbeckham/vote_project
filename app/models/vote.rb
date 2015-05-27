class Vote < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :voter
  # belongs_to :race

  validates :voter_id, presence: true, uniqueness: {scope: :candidate_id}
  validates :candidate_id, presence: true

  # def self.display_list
  #   all.map {|| candidate_id total_votes}
  #
  # end

  # def candidate_total_votes(candidate_id)
  #   candidate_total = votes.select {|vote| vote.candidate_id}
  #   candidate_total.count
  # end
end
