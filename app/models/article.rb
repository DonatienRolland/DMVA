class Article < ApplicationRecord
  belongs_to :user, optional: true
  # has_many :images, :dependent => :destroy
  validates :titre, presence: true
  validates :description, presence: true

  # validates :photo, presence: true
  mount_uploader :photo, PhotoUploader

private

  def article_params
    params.require(:article).permit(:titre, :description, :genre, :photo)
  end

end

