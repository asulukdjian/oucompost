class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :appointment
end
