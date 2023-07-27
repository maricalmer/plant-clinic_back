class Comment < ActiveRecord::Base
  belongs_to :user, validate: true
  belongs_to :post, validate: true

  validates :content, presence: true, length: { minimum: 3 }
end
