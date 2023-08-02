require "test_helper"

class RohansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rohan = rohans(:one)
  end

  test "should get index" do
    get rohans_url
    assert_response :success
  end

  test "should get new" do
    get new_rohan_url
    assert_response :success
  end

  test "should create rohan" do
    assert_difference('Rohan.count') do
      post rohans_url, params: { rohan: { age: @rohan.age, name: @rohan.name } }
    end

    assert_redirected_to rohan_url(Rohan.last)
  end

  test "should show rohan" do
    get rohan_url(@rohan)
    assert_response :success
  end

  test "should get edit" do
    get edit_rohan_url(@rohan)
    assert_response :success
  end

  test "should update rohan" do
    patch rohan_url(@rohan), params: { rohan: { age: @rohan.age, name: @rohan.name } }
    assert_redirected_to rohan_url(@rohan)
  end

  test "should destroy rohan" do
    assert_difference('Rohan.count', -1) do
      delete rohan_url(@rohan)
    end

    assert_redirected_to rohans_url
  end
end
