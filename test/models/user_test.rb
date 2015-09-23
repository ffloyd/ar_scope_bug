require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User.with_role('tenderlover') returns only Aaron" do
    assert_equal User.with_role('tenderlover'), [users(:aaron)]
  end

  test 'User.useless_join scope does nothing' do
    assert_equal User.useless_join.to_a, User.all.to_a
  end

  test "User.useless_join.with_role('tenderlover') returns only Aaron" do
    assert_equal User.useless_join.with_role('tenderlover'), [users(:aaron)]
  end
end
