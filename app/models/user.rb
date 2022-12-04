class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
  has_many :urls

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end