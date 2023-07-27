module Mutations
  # Don't forget to change to Mutations::BaseMutation
  class DestroyLike < BaseMutation
    def ready?(**_args)
      if !context[:current_user]
        GraphQL::ExecutionError.new("You need to login!")
      else
        true
      end
    end

    field :id, ID, null: true
    argument :id, ID, required: true

    def resolve(id:)
      like = PlantClinicSchema.object_from_id(id, context)
      if like.user != context[:current_user]
        GraphQL::ExecutionError.new("You are not authorized!")
      end
      like.destroy
      {
        id: id,
      }
    end
  end
end
