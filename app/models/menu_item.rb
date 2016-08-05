class MenuItem < ApplicationRecord
  belongs_to :happyhour
  validates :name, presence: true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 10}
end
