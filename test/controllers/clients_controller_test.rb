require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { born_on: @client.born_on, city: @client.city, dependent1_born_on: @client.dependent1_born_on, dependent1_disabled: @client.dependent1_disabled, dependent1_home: @client.dependent1_home, dependent1_name: @client.dependent1_name, dependent1_relationship: @client.dependent1_relationship, dependent1_social: @client.dependent1_social, dependent1_student: @client.dependent1_student, dependent1_support: @client.dependent1_support, dependent2_born_on: @client.dependent2_born_on, dependent2_disabled: @client.dependent2_disabled, dependent2_home: @client.dependent2_home, dependent2_name: @client.dependent2_name, dependent2_relationship: @client.dependent2_relationship, dependent2_social: @client.dependent2_social, dependent2_student: @client.dependent2_student, dependent2_support: @client.dependent2_support, dependent3_born_on: @client.dependent3_born_on, dependent3_disabled: @client.dependent3_disabled, dependent3_home: @client.dependent3_home, dependent3_name: @client.dependent3_name, dependent3_relationship: @client.dependent3_relationship, dependent3_social: @client.dependent3_social, dependent3_student: @client.dependent3_student, dependent3_support: @client.dependent3_support, dependent4_born_on: @client.dependent4_born_on, dependent4_disabled: @client.dependent4_disabled, dependent4_home: @client.dependent4_home, dependent4_name: @client.dependent4_name, dependent4_relationship: @client.dependent4_relationship, dependent4_social: @client.dependent4_social, dependent4_student: @client.dependent4_student, dependent4_support: @client.dependent4_support, dependent5_born_on: @client.dependent5_born_on, dependent5_disabled: @client.dependent5_disabled, dependent5_home: @client.dependent5_home, dependent5_name: @client.dependent5_name, dependent5_relationship: @client.dependent5_relationship, dependent5_social: @client.dependent5_social, dependent5_student: @client.dependent5_student, dependent5_support: @client.dependent5_support, line1: @client.line1, line2: @client.line2, name: @client.name, occupation: @client.occupation, primary_social: @client.primary_social, spouse_born_on: @client.spouse_born_on, spouse_name: @client.spouse_name, spouse_occupation: @client.spouse_occupation, spouse_social: @client.spouse_social, state: @client.state, support: @client.support, you_dependent: @client.you_dependent, zip: @client.zip } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { born_on: @client.born_on, city: @client.city, dependent1_born_on: @client.dependent1_born_on, dependent1_disabled: @client.dependent1_disabled, dependent1_home: @client.dependent1_home, dependent1_name: @client.dependent1_name, dependent1_relationship: @client.dependent1_relationship, dependent1_social: @client.dependent1_social, dependent1_student: @client.dependent1_student, dependent1_support: @client.dependent1_support, dependent2_born_on: @client.dependent2_born_on, dependent2_disabled: @client.dependent2_disabled, dependent2_home: @client.dependent2_home, dependent2_name: @client.dependent2_name, dependent2_relationship: @client.dependent2_relationship, dependent2_social: @client.dependent2_social, dependent2_student: @client.dependent2_student, dependent2_support: @client.dependent2_support, dependent3_born_on: @client.dependent3_born_on, dependent3_disabled: @client.dependent3_disabled, dependent3_home: @client.dependent3_home, dependent3_name: @client.dependent3_name, dependent3_relationship: @client.dependent3_relationship, dependent3_social: @client.dependent3_social, dependent3_student: @client.dependent3_student, dependent3_support: @client.dependent3_support, dependent4_born_on: @client.dependent4_born_on, dependent4_disabled: @client.dependent4_disabled, dependent4_home: @client.dependent4_home, dependent4_name: @client.dependent4_name, dependent4_relationship: @client.dependent4_relationship, dependent4_social: @client.dependent4_social, dependent4_student: @client.dependent4_student, dependent4_support: @client.dependent4_support, dependent5_born_on: @client.dependent5_born_on, dependent5_disabled: @client.dependent5_disabled, dependent5_home: @client.dependent5_home, dependent5_name: @client.dependent5_name, dependent5_relationship: @client.dependent5_relationship, dependent5_social: @client.dependent5_social, dependent5_student: @client.dependent5_student, dependent5_support: @client.dependent5_support, line1: @client.line1, line2: @client.line2, name: @client.name, occupation: @client.occupation, primary_social: @client.primary_social, spouse_born_on: @client.spouse_born_on, spouse_name: @client.spouse_name, spouse_occupation: @client.spouse_occupation, spouse_social: @client.spouse_social, state: @client.state, support: @client.support, you_dependent: @client.you_dependent, zip: @client.zip } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
