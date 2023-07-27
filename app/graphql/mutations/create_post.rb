module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true

    type Types::PostType

    def resolve(description: nil, title: nil)
      Post.create!(
        description: description,
        title: title,
        user: User.first
        # ^^ to_be_removed and substituted by -> user: context[:current_user]
      )

    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
