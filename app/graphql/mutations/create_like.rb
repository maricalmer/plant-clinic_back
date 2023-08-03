module Mutations
  class CreateLike < BaseMutation
    argument :post_id, ID, required: false

    type Types::LikeType

    def resolve(post_id: nil)
      Like.create!(
        post: PlantClinicSchema.object_from_id(post_id, context),
        user: context[:current_user]
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
