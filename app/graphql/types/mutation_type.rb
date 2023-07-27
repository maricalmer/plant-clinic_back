module Types
  class MutationType < BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :create_post, mutation: Mutations::CreatePost
    field :create_comment, mutation: Mutations::CreateComment
    field :create_like, mutation: Mutations::CreateLike
    field :destroy_like, mutation: Mutations::DestroyLike
  end
end
