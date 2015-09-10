class Actor < ActiveRecord::Base
  has_many :castmembers
  has_many :tours, through: :castmembers

  validates :email, presence: true
  validates :phone_number, presence: true
end