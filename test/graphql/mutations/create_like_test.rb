require 'test_helper'

class Mutations::CreateLikeTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLike.new(object: nil, field: nil, context: { current_user: user }).resolve(args)
  end

  def record_id(record)
    PlantClinicSchema.id_from_object(record, nil, nil)
  end

  test 'success' do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post)

    like = perform(
      user: user,
      post_id: record_id(post)
    )

    assert like.persisted?
    assert_equal like.user, user
    assert_equal like.post, post
  end

  test 'failure' do
    assert perform.is_a? GraphQL::ExecutionError
  end
end
