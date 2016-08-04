class Happyhour < ApplicationRecord
  belongs_to :bar
  validates :hours, presence: true
end
