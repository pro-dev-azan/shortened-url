class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true,
            format: /\A([\w\-.])+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, length: { maximum: 50 }
  validates_presence_of :name, :role, :password
  enum role: { regular_user: 0, admin: 1 }
end
