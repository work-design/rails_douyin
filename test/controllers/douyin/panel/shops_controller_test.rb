require 'test_helper'
class Douyin::Panel::ShopsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @shop = shops(:one)
  end

  test 'index ok' do
    get url_for(controller: 'douyin/panel/shops')

    assert_response :success
  end

  test 'new ok' do
    get url_for(controller: 'douyin/panel/shops')

    assert_response :success
  end

  test 'create ok' do
    assert_difference('Shop.count') do
      post(
        url_for(controller: 'douyin/panel/shops', action: 'create'),
        params: { shop: { name: @douyin_panel_shop.name, poi_id: @douyin_panel_shop.poi_id } },
        as: :turbo_stream
      )
    end

    assert_response :success
  end

  test 'show ok' do
    get url_for(controller: 'douyin/panel/shops', action: 'show', id: @shop.id)

    assert_response :success
  end

  test 'edit ok' do
    get url_for(controller: 'douyin/panel/shops', action: 'edit', id: @shop.id)

    assert_response :success
  end

  test 'update ok' do
    patch(
      url_for(controller: 'douyin/panel/shops', action: 'update', id: @shop.id),
      params: { shop: { name: @douyin_panel_shop.name, poi_id: @douyin_panel_shop.poi_id } },
      as: :turbo_stream
    )

    assert_response :success
  end

  test 'destroy ok' do
    assert_difference('Shop.count', -1) do
      delete url_for(controller: 'douyin/panel/shops', action: 'destroy', id: @shop.id), as: :turbo_stream
    end

    assert_response :success
  end

end
