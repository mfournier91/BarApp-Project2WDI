class Bar < ApplicationRecord
  has_many :happyhours, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end
