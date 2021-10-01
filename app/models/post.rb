class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many :comments, dependent:  :destroy
  paginates_per 3
  has_one_attached :thumbnail
  
  validates :title, length: {minimum: 5} 

  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
