require 'test_helper'

class ContactPointsControllerTest < ActionController::TestCase
  setup do
    @contact_point = contact_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_point" do
    assert_difference('ContactPoint.count') do
      post :create, :contact_point => @contact_point.attributes
    end

    assert_redirected_to contact_point_path(assigns(:contact_point))
  end

  test "should show contact_point" do
    get :show, :id => @contact_point.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @contact_point.to_param
    assert_response :success
  end

  test "should update contact_point" do
    put :update, :id => @contact_point.to_param, :contact_point => @contact_point.attributes
    assert_redirected_to contact_point_path(assigns(:contact_point))
  end

  test "should destroy contact_point" do
    assert_difference('ContactPoint.count', -1) do
      delete :destroy, :id => @contact_point.to_param
    end

    assert_redirected_to contact_points_path
  end
end
