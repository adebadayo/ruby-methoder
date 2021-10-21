require "application_system_test_case"

class Ruby::ClassesTest < ApplicationSystemTestCase
  setup do
    @ruby_class = ruby_classes(:one)
  end

  test "visiting the index" do
    visit ruby_classes_url
    assert_selector "h1", text: "Ruby/Classes"
  end

  test "creating a Class" do
    visit ruby_classes_url
    click_on "New Ruby/Class"

    fill_in "Name", with: @ruby_class.name
    click_on "Create Class"

    assert_text "Class was successfully created"
    click_on "Back"
  end

  test "updating a Class" do
    visit ruby_classes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ruby_class.name
    click_on "Update Class"

    assert_text "Class was successfully updated"
    click_on "Back"
  end

  test "destroying a Class" do
    visit ruby_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class was successfully destroyed"
  end
end
