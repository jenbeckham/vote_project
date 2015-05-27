class Race < ActiveRecord::Base
  has_many :votes
  has_many :candidates

  validates :name, presence: true
end
