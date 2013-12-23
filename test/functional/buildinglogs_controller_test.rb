require 'test_helper'

class BuildinglogsControllerTest < ActionController::TestCase
  setup do
    @buildinglog = buildinglogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buildinglogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buildinglog" do
    assert_difference('Buildinglog.count') do
      post :create, buildinglog: { sign_in: @buildinglog.sign_in, sign_out: @buildinglog.sign_out }
    end

    assert_redirected_to buildinglog_path(assigns(:buildinglog))
  end

  test "should show buildinglog" do
    get :show, id: @buildinglog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buildinglog
    assert_response :success
  end

  test "should update buildinglog" do
    put :update, id: @buildinglog, buildinglog: { sign_in: @buildinglog.sign_in, sign_out: @buildinglog.sign_out }
    assert_redirected_to buildinglog_path(assigns(:buildinglog))
  end

  test "should destroy buildinglog" do
    assert_difference('Buildinglog.count', -1) do
      delete :destroy, id: @buildinglog
    end

    assert_redirected_to buildinglogs_path
  end
end
