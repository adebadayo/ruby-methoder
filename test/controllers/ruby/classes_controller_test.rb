require "test_helper"

class Ruby::ClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_class = ruby_classes(:one)
  end

  test "should get index" do
    get ruby_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_class_url
    assert_response :success
  end

  test "should create ruby_class" do
    assert_difference('Ruby::Class.count') do
      post ruby_classes_url, params: { ruby_class: { name: @ruby_class.name } }
    end

    assert_redirected_to ruby_class_url(Ruby::Class.last)
  end

  test "should show ruby_class" do
    get ruby_class_url(@ruby_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_class_url(@ruby_class)
    assert_response :success
  end

  test "should update ruby_class" do
    patch ruby_class_url(@ruby_class), params: { ruby_class: { name: @ruby_class.name } }
    assert_redirected_to ruby_class_url(@ruby_class)
  end

  test "should destroy ruby_class" do
    assert_difference('Ruby::Class.count', -1) do
      delete ruby_class_url(@ruby_class)
    end

    assert_redirected_to ruby_classes_url
  end
end
