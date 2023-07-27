require 'test_helper'


class Resolvers::PostsSearchTest < ActiveSupport::TestCase
  def find(args)
    Resolvers::PostsSearch.call(nil, args, nil)
  end

  test 'filter option' do
    post1 = create :post, description: 'test1', title: 'Title test1'
    post2 = create :post, description: 'test2', title: 'Title test2'
    post3 = create :post, description: 'test3', title: 'Title test3'
    post4 = create :post, description: 'test4', title: 'Title test4'

    result = find(
      filter: {
        description_contains: 'test1',
        OR: [{
          title_contains: 'test2',
          OR: [{
            title_contains: 'test3'
          }]
        }, {
          description_contains: 'test2'
        }]
      }
    )

    assert_equal result.map(&:description).sort, [post1, post2, post3].map(&:description).sort
  end
end

