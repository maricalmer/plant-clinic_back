class Like < ActiveRecord::Base
  belongs_to :post, validate: true
  belongs_to :user, validate: true

  validates :user_id, uniqueness: { scope: :post_id }
end
