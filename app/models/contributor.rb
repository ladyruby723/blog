class Contributor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :name, presence: true
end
