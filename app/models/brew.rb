class Brew < ApplicationRecord
  # validations here
  has_many :purchases
  has_many :customers, through: :purchases

  validates :blend_name, presence: true
  validates :origin, presence: true
  validates :notes, presence: true
  validates :strength, presence: true
end
