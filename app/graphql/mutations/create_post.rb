module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true

    type Types::PostType

    def resolve(description: nil, title: nil)
      puts "CONTEXT FROM CREATE POST: #{context}"
      puts "SESSION FROM CREATE POST: #{context[:session]}"
      puts "CURRENT_USER CREATE POST:"
      puts context[:current_user]
      Post.create!(
        description: description,
        title: title,
        user: context[:current_user]
        # ^^ to_be_removed and substituted by -> user: context[:current_user]
      )
      flash.now[:notice] = "Picture will take a second to be displayed. Refresh the page"

    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
