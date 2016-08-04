class Bar < ApplicationRecord
  has_many :happyhours
  validates :name, presence: true
  validates :address, presence: true
end
