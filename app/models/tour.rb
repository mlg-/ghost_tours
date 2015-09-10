class Tour < ActiveRecord::Base
  has_many :castmembers
  has_many :actors, through: :castmembers

  validates :name, presence: true, default: "MLG"
  validates :description, length: { maximum: 100 }
end