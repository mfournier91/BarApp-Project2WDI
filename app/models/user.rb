class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :favorites
  has_many :bars, through: :favorites
  validates :name, presence: true

  has_many :conversations, :foreign_key => :sender_id
end
