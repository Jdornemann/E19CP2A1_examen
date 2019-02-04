require 'test_helper'

class HolidaytasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holidaytask = holidaytasks(:one)
  end

  test "should get index" do
    get holidaytasks_url
    assert_response :success
  end

  test "should get new" do
    get new_holidaytask_url
    assert_response :success
  end

  test "should create holidaytask" do
    assert_difference('Holidaytask.count') do
      post holidaytasks_url, params: { holidaytask: { description: @holidaytask.description, done: @holidaytask.done, name: @holidaytask.name } }
    end

    assert_redirected_to holidaytask_url(Holidaytask.last)
  end

  test "should show holidaytask" do
    get holidaytask_url(@holidaytask)
    assert_response :success
  end

  test "should get edit" do
    get edit_holidaytask_url(@holidaytask)
    assert_response :success
  end

  test "should update holidaytask" do
    patch holidaytask_url(@holidaytask), params: { holidaytask: { description: @holidaytask.description, done: @holidaytask.done, name: @holidaytask.name } }
    assert_redirected_to holidaytask_url(@holidaytask)
  end

  test "should destroy holidaytask" do
    assert_difference('Holidaytask.count', -1) do
      delete holidaytask_url(@holidaytask)
    end

    assert_redirected_to holidaytasks_url
  end
end
