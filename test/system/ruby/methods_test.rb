require "application_system_test_case"

class Ruby::MethodsTest < ApplicationSystemTestCase
  setup do
    @ruby_method = ruby_methods(:one)
  end

  test "visiting the index" do
    visit ruby_methods_url
    assert_selector "h1", text: "Ruby/Methods"
  end

  test "creating a Method" do
    visit ruby_methods_url
    click_on "New Ruby/Method"

    fill_in "Name", with: @ruby_method.name
    fill_in "Ruby class", with: @ruby_method.ruby_class_id
    fill_in "Type", with: @ruby_method.type
    click_on "Create Method"

    assert_text "Method was successfully created"
    click_on "Back"
  end

  test "updating a Method" do
    visit ruby_methods_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ruby_method.name
    fill_in "Ruby class", with: @ruby_method.ruby_class_id
    fill_in "Type", with: @ruby_method.type
    click_on "Update Method"

    assert_text "Method was successfully updated"
    click_on "Back"
  end

  test "destroying a Method" do
    visit ruby_methods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Method was successfully destroyed"
  end
end
