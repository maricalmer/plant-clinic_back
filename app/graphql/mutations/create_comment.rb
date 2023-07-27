module Mutations
  class CreateComment < BaseMutation
    argument :content, String, required: true
    argument :post_id, ID, required: true

    type Types::CommentType

    def resolve(content: nil, post_id: nil)
      Comment.create!(
        content: content,
        post: PlantClinicSchema.object_from_id(post_id, context),
        user: User.first
        # ^^ to_be_removed and substituted by -> user: context[:current_user]
      )

    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
