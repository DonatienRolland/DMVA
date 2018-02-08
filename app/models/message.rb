class Message < ApplicationRecord
  validates :email, :nom, presence: true
end
