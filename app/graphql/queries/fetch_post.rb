# frozen_string_literal: true

module Queries
  class FetchPost < Queries::BaseQuery
    type Types::PostType, null: false
    argument :slug, String, required: true

    def resolve(slug:)
      Post.find_by(slug: slug)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Post does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
