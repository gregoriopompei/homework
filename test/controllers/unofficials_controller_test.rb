require 'test_helper'

class UnofficialsControllerTest < ActionController::TestCase
  setup do
    @unofficial = unofficials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unofficials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unofficial" do
    assert_difference('Unofficial.count') do
      post :create, unofficial: { assigned_by: @unofficial.assigned_by, assigned_for: @unofficial.assigned_for, assigned_in: @unofficial.assigned_in, description: @unofficial.description, homework: @unofficial.homework, subject: @unofficial.subject }
    end

    assert_redirected_to unofficial_path(assigns(:unofficial))
  end

  test "should show unofficial" do
    get :show, id: @unofficial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unofficial
    assert_response :success
  end

  test "should update unofficial" do
    patch :update, id: @unofficial, unofficial: { assigned_by: @unofficial.assigned_by, assigned_for: @unofficial.assigned_for, assigned_in: @unofficial.assigned_in, description: @unofficial.description, homework: @unofficial.homework, subject: @unofficial.subject }
    assert_redirected_to unofficial_path(assigns(:unofficial))
  end

  test "should destroy unofficial" do
    assert_difference('Unofficial.count', -1) do
      delete :destroy, id: @unofficial
    end

    assert_redirected_to unofficials_path
  end
end
