class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader


private

  def article_params
    params.require(:product).permit(:name, :description, :photo, :photo_cache)
  end

end

