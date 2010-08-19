require 'test_helper'

class Client::ContactPeopleControllerTest < ActionController::TestCase
  setup do
    @client_contact_person = client_contact_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_contact_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_contact_person" do
    assert_difference('Client::ContactPerson.count') do
      post :create, :client_contact_person => @client_contact_person.attributes
    end

    assert_redirected_to client_contact_person_path(assigns(:client_contact_person))
  end

  test "should show client_contact_person" do
    get :show, :id => @client_contact_person.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @client_contact_person.to_param
    assert_response :success
  end

  test "should update client_contact_person" do
    put :update, :id => @client_contact_person.to_param, :client_contact_person => @client_contact_person.attributes
    assert_redirected_to client_contact_person_path(assigns(:client_contact_person))
  end

  test "should destroy client_contact_person" do
    assert_difference('Client::ContactPerson.count', -1) do
      delete :destroy, :id => @client_contact_person.to_param
    end

    assert_redirected_to client_contact_people_path
  end
end
