class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :articles

  def name
    "#{prenom} #{nom.upcase}"
  end

end
