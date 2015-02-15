class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  validates_formatting_of :link, using: :url
  validates_formatting_of :imagen, using: :url
end
