require 'test_helper'

class TaxpayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxpayer = taxpayers(:one)
  end

 
  test "should get new" do
    get new_taxpayer_url
    assert_response :success
  end

  
end
