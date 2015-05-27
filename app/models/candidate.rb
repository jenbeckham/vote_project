class Candidate < ActiveRecord::Base
  has_many :votes
  # belongs_to :race

  validates :name, presence: true
  validates :home, presence: true
  validates :district, presence: true
  validates :party, presence: true

  def candidate_total_votes
    candidate_total = Vote.select {|vote| vote.candidate_id == self.id}
    candidate_total.count
  end
end
