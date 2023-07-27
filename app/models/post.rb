class Post < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :user, validate: true

  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :slug, uniqueness: true

  after_create :set_slug
  after_create :set_image_url

  private

  def set_slug
    Services::SlugGenerator.new(string: title, client: self).assign_slug
  end

  def set_image_url
    Services::ImageUrlGenerator.new(id: id, client: self).assign_image_url
  end
end
