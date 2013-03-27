require 'test_helper'

class ProjectresourcesControllerTest < ActionController::TestCase
  setup do
    @projectresource = projectresources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectresources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectresource" do
    assert_difference('Projectresource.count') do
      post :create, projectresource: { project_id: @projectresource.project_id, resource_id: @projectresource.resource_id }
    end

    assert_redirected_to projectresource_path(assigns(:projectresource))
  end

  test "should show projectresource" do
    get :show, id: @projectresource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectresource
    assert_response :success
  end

  test "should update projectresource" do
    put :update, id: @projectresource, projectresource: { project_id: @projectresource.project_id, resource_id: @projectresource.resource_id }
    assert_redirected_to projectresource_path(assigns(:projectresource))
  end

  test "should destroy projectresource" do
    assert_difference('Projectresource.count', -1) do
      delete :destroy, id: @projectresource
    end

    assert_redirected_to projectresources_path
  end
end
