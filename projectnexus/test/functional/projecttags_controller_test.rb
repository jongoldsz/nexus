require 'test_helper'

class ProjecttagsControllerTest < ActionController::TestCase
  setup do
    @projecttag = projecttags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projecttags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projecttag" do
    assert_difference('Projecttag.count') do
      post :create, projecttag: { project_id: @projecttag.project_id, tag_id: @projecttag.tag_id }
    end

    assert_redirected_to projecttag_path(assigns(:projecttag))
  end

  test "should show projecttag" do
    get :show, id: @projecttag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projecttag
    assert_response :success
  end

  test "should update projecttag" do
    put :update, id: @projecttag, projecttag: { project_id: @projecttag.project_id, tag_id: @projecttag.tag_id }
    assert_redirected_to projecttag_path(assigns(:projecttag))
  end

  test "should destroy projecttag" do
    assert_difference('Projecttag.count', -1) do
      delete :destroy, id: @projecttag
    end

    assert_redirected_to projecttags_path
  end
end
