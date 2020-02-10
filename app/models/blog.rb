class Blog < ApplicationRecord
  belongs_to :user

  # *Active Storage Upload
  # *upload one image
  has_one_attached :image

  # *upload multi image
  # has_many_attached :images

  validates :title, :body, presence: true
  validate :imageType
  # validates :body, presence: true

  private
  def imageType
    if image.attached? == false
      errors.add(:image, "can't be blank")
    else 
      if !image.content_type.in?(%('image/jpeg image/png'))
      errors.add(:image, 'needs to be JPEG or PNG')
      end
    end    
  end
end
