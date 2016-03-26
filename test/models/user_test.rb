require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should have the necessary required validators' do
    user = User.new
    assert_not user.valid?
    assert_equal %i(name email), user.errors.keys
  end
end
