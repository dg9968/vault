require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @address = Address.new(addressable: @user, line1: "test")
  end

  test "should be valid" do
    assert @address.valid?
  end

  test "user id should be present" do
    @user =  nil
    assert_not @address.valid?
  end
end