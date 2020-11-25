class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  validates :first_name, :last_name, presence: true
  has_one_attached :avatar

  def full_name
    "#{first_name} #{last_name}"
  end
end
