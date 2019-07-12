require 'test_helper'

class TaxpayerTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @taxpayer = @user.taxpayers.build(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @taxpayer.valid?
  end

  test "user id should be present" do
    @taxpayer.user_id = nil
    assert_not @taxpayer.valid?
  end
  
  test "content should be present" do
    @taxpayer.content = "   "
    assert_not @taxpayer.valid?
  end

  test "content should be at most 140 characters" do
    @taxpayer.content = "a" * 141
    assert_not @taxpayer.valid?
  end

end
