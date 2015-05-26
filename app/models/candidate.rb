class Candidate < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true
  validates :home, presence: true
  validates :district, presence: true
  validates :party, presence: true
end
