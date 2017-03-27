class Articulo < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  validate :image_size_validation
 
private
  def image_size_validation
    errors[:image] << "should be less than 1 MB" if image.size > 1.0.megabytes
  end
end
