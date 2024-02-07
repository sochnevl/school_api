require "test_helper"

class ClassGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_group = class_groups(:one)
  end

  test "should get index" do
    get class_groups_url, as: :json
    assert_response :success
  end

  test "should create class_group" do
    assert_difference('ClassGroup.count') do
      post class_groups_url, params: { class_group: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show class_group" do
    get class_group_url(@class_group), as: :json
    assert_response :success
  end

  test "should update class_group" do
    patch class_group_url(@class_group), params: { class_group: {  } }, as: :json
    assert_response 200
  end

  test "should destroy class_group" do
    assert_difference('ClassGroup.count', -1) do
      delete class_group_url(@class_group), as: :json
    end

    assert_response 204
  end
end
