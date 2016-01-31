require 'test_helper'

class EmpathiesControllerTest < ActionController::TestCase
  setup do
    @empathy = empathies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empathies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empathy" do
    assert_difference('Empathy.count') do
      post :create, empathy: { interest_id: @empathy.interest_id, user_id: @empathy.user_id }
    end

    assert_redirected_to empathy_path(assigns(:empathy))
  end

  test "should show empathy" do
    get :show, id: @empathy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empathy
    assert_response :success
  end

  test "should update empathy" do
    patch :update, id: @empathy, empathy: { interest_id: @empathy.interest_id, user_id: @empathy.user_id }
    assert_redirected_to empathy_path(assigns(:empathy))
  end

  test "should destroy empathy" do
    assert_difference('Empathy.count', -1) do
      delete :destroy, id: @empathy
    end

    assert_redirected_to empathies_path
  end
end
