require "application_system_test_case"

class AppsTest < ApplicationSystemTestCase
  setup do
    @douyin_panel_app = douyin_panel_apps(:one)
  end

  test "visiting the index" do
    visit douyin_panel_apps_url
    assert_selector "h1", text: "Apps"
  end

  test "should create app" do
    visit douyin_panel_apps_url
    click_on "New app"

    fill_in "Appid", with: @douyin_panel_app.appid
    fill_in "Name", with: @douyin_panel_app.name
    fill_in "Secret", with: @douyin_panel_app.secret
    click_on "Create App"

    assert_text "App was successfully created"
    click_on "Back"
  end

  test "should update App" do
    visit douyin_panel_app_url(@douyin_panel_app)
    click_on "Edit this app", match: :first

    fill_in "Appid", with: @douyin_panel_app.appid
    fill_in "Name", with: @douyin_panel_app.name
    fill_in "Secret", with: @douyin_panel_app.secret
    click_on "Update App"

    assert_text "App was successfully updated"
    click_on "Back"
  end

  test "should destroy App" do
    visit douyin_panel_app_url(@douyin_panel_app)
    click_on "Destroy this app", match: :first

    assert_text "App was successfully destroyed"
  end
end
