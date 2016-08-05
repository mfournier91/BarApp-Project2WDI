class Happyhour < ApplicationRecord
  belongs_to :bar
  has_many :menu_items
  validates :hours, presence: true
end
