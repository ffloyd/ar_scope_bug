require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "with_role('tenderlover') returns only Aaron" do
    assert_equal User.with_role('tenderlover'), [users(:aaron)]
  end
end
