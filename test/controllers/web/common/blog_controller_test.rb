require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get blog" do
    get blog_url
    assert_response :success
  end

  test "should show show_article" do
    get show_article_url(@article)
    assert_response :success
  end

end
