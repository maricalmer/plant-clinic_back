# frozen_string_literal: true

module Types
  class PostType < BaseNode
    field :created_at, DateTimeType, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :slug, String, null: false
    field :image_url, String, null: false
    field :posted_by, UserType, null: false, method: :user
    field :likes, [Types::LikeType], null: false
    field :comments, [Types::CommentType], null: false
  end
end
