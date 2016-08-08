class Bar < ApplicationRecord
  has_many :happyhours, dependent: :destroy
  has_many :favorites
  has_many :users, through: :favorites
  validates :name, presence: true
  validates :address, presence: true
end
