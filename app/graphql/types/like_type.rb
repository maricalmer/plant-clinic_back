# frozen_string_literal: true

module Types
  class LikeType < BaseNode
    field :created_at, DateTimeType, null: false
    field :user, UserType, null: false
    field :post, PostType, null: false
  end
end
