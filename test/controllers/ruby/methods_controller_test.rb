require "test_helper"

class Ruby::MethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_method = ruby_methods(:one)
  end

  test "should get index" do
    get ruby_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_method_url
    assert_response :success
  end

  test "should create ruby_method" do
    assert_difference('Ruby::Method.count') do
      post ruby_methods_url, params: { ruby_method: { name: @ruby_method.name, ruby_class_id: @ruby_method.ruby_class_id, type: @ruby_method.type } }
    end

    assert_redirected_to ruby_method_url(Ruby::Method.last)
  end

  test "should show ruby_method" do
    get ruby_method_url(@ruby_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_method_url(@ruby_method)
    assert_response :success
  end

  test "should update ruby_method" do
    patch ruby_method_url(@ruby_method), params: { ruby_method: { name: @ruby_method.name, ruby_class_id: @ruby_method.ruby_class_id, type: @ruby_method.type } }
    assert_redirected_to ruby_method_url(@ruby_method)
  end

  test "should destroy ruby_method" do
    assert_difference('Ruby::Method.count', -1) do
      delete ruby_method_url(@ruby_method)
    end

    assert_redirected_to ruby_methods_url
  end
end
