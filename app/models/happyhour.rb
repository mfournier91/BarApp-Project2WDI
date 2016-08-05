class Happyhour < ApplicationRecord
  belongs_to :bar
  has_many :menu_items, dependent: :destroy
  validates :hours, presence: true
end
