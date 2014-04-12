require 'test_helper'

class MidTemplatesControllerTest < ActionController::TestCase
  setup do
    @mid_template = mid_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mid_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mid_template" do
    assert_difference('MidTemplate.count') do
      post :create, mid_template: {  }
    end

    assert_redirected_to mid_template_path(assigns(:mid_template))
  end

  test "should show mid_template" do
    get :show, id: @mid_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mid_template
    assert_response :success
  end

  test "should update mid_template" do
    patch :update, id: @mid_template, mid_template: {  }
    assert_redirected_to mid_template_path(assigns(:mid_template))
  end

  test "should destroy mid_template" do
    assert_difference('MidTemplate.count', -1) do
      delete :destroy, id: @mid_template
    end

    assert_redirected_to mid_templates_path
  end
end
