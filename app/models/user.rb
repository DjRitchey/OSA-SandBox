class User < ApplicationRecord
  audited
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable
  validates :user_name, presence: true
  validates :phone, phone: { possible: false }


  has_many :posts
end
