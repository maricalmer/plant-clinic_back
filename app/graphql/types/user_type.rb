# frozen_string_literal: true

module Types
  class UserType < BaseNode
    field :created_at, DateTimeType, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :likes, [LikeType], null: false
    field :posts, [PostType], null: false
  end
end
