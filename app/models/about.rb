class About < ApplicationRecord
  belongs_to :user
 
  # *Active Storage Upload
  # *upload one image
  # has_one_attached :image

  # *upload multi image
  has_many_attached :images

end
