require 'test_helper'

class ContentfulConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contentful_config = contentful_configs(:one)
  end

  test "should get index" do
    get contentful_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_contentful_config_url
    assert_response :success
  end

  test "should create contentful_config" do
    assert_difference('ContentfulConfig.count') do
      post contentful_configs_url, params: { contentful_config: { access_token: @contentful_config.access_token, name: @contentful_config.name, space_id: @contentful_config.space_id } }
    end

    assert_redirected_to contentful_config_url(ContentfulConfig.last)
  end

  test "should show contentful_config" do
    get contentful_config_url(@contentful_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_contentful_config_url(@contentful_config)
    assert_response :success
  end

  test "should update contentful_config" do
    patch contentful_config_url(@contentful_config), params: { contentful_config: { access_token: @contentful_config.access_token, name: @contentful_config.name, space_id: @contentful_config.space_id } }
    assert_redirected_to contentful_config_url(@contentful_config)
  end

  test "should destroy contentful_config" do
    assert_difference('ContentfulConfig.count', -1) do
      delete contentful_config_url(@contentful_config)
    end

    assert_redirected_to contentful_configs_url
  end
end
