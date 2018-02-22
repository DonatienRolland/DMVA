class Article < ApplicationRecord
  belongs_to :user, optional: true

  # validates :titre, presence: true
  # validates :photo, presence: true
  validates :description, presence: true

  mount_uploader :photo, PhotoUploader

private

  def article_params
    params.require(:product).permit(:name, :description, :photo, :photo_cache)
  end

end

