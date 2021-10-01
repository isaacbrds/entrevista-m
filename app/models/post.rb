class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many :comments, dependent:  :destroy
end
