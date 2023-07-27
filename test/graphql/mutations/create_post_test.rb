require 'test_helper'

class Mutations::CreatePostTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreatePost.new(object: nil, field: nil, context: { current_user: user }).resolve(args)
  end

  test 'success' do
    user = FactoryBot.create(:user)

    post = perform(
      title: 'Example title',
      description: 'description',
      user: user
    )

    assert post.persisted?
    assert_equal post.description, 'description'
    assert_equal post.title, 'Example title'
    assert_equal post.user, user
  end

  test 'failure' do
    assert perform.is_a? GraphQL::ExecutionError
  end
end
