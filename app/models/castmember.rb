class Castmember < ActiveRecord::Base
  belongs_to :actor
  belongs_to :tour

  validates :actor, presence: true
  validates :tour, presence: true
end