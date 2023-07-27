# frozen_string_literal: true

module Types
  class CommentType < BaseNode
    field :created_at, DateTimeType, null: false
    field :content, String, null: false
    field :commented_by, UserType, null: false, method: :user
    field :post, PostType, null: false
  end
end
