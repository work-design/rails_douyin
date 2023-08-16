require "test_helper"

class Douyin::Panel::AppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @douyin_panel_app = douyin_panel_apps(:one)
  end

  test "should get index" do
    get panel_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_panel_app_url
    assert_response :success
  end

  test "should create douyin_panel_app" do
    assert_difference("App.count") do
      post panel_apps_url, params: { douyin_panel_app: { appid: @douyin_panel_app.appid, name: @douyin_panel_app.name, secret: @douyin_panel_app.secret } }
    end

    assert_redirected_to panel_app_url(App.last)
  end

  test "should show douyin_panel_app" do
    get panel_app_url(@douyin_panel_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_panel_app_url(@douyin_panel_app)
    assert_response :success
  end

  test "should update douyin_panel_app" do
    patch panel_app_url(@douyin_panel_app), params: { douyin_panel_app: { appid: @douyin_panel_app.appid, name: @douyin_panel_app.name, secret: @douyin_panel_app.secret } }
    assert_redirected_to panel_app_url(@douyin_panel_app)
  end

  test "should destroy douyin_panel_app" do
    assert_difference("App.count", -1) do
      delete panel_app_url(@douyin_panel_app)
    end

    assert_redirected_to panel_apps_url
  end
end
