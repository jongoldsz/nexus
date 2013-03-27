require 'test_helper'

class BlogentriesControllerTest < ActionController::TestCase
  setup do
    @blogentry = blogentries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogentries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blogentry" do
    assert_difference('Blogentry.count') do
      post :create, blogentry: { content: @blogentry.content, highlighted: @blogentry.highlighted, title: @blogentry.title }
    end

    assert_redirected_to blogentry_path(assigns(:blogentry))
  end

  test "should show blogentry" do
    get :show, id: @blogentry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blogentry
    assert_response :success
  end

  test "should update blogentry" do
    put :update, id: @blogentry, blogentry: { content: @blogentry.content, highlighted: @blogentry.highlighted, title: @blogentry.title }
    assert_redirected_to blogentry_path(assigns(:blogentry))
  end

  test "should destroy blogentry" do
    assert_difference('Blogentry.count', -1) do
      delete :destroy, id: @blogentry
    end

    assert_redirected_to blogentries_path
  end
end
