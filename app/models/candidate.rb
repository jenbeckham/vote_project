class Candidate < ActiveRecord::Base
  has_many :votes
  # belongs_to :race

  validates :name, presence: true
  validates :home, presence: true
  validates :district, presence: true
  validates :party, presence: true
  validates :race_id, precence: true

  def total_votes
    total = Vote.select {|vote| vote.candidate_id == self.id}
    total.count
  end
end
