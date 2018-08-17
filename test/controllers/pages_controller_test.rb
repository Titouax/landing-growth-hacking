require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "website has 3 landing pages" do
    get pages_home_url
    assert_response :success

    get '/hometwo'
    assert_response :success

    get '/homethree'
    assert_response :success
  end

  test "each landing page has only one h1" do
    get pages_home_url
    assert_select "h1", :count => 1

    get '/hometwo'
    assert_select "h1", :count => 1

    get '/homethree'
    assert_select "h1", :count => 1
  end

  test "each landing page has a 'wrapper' section" do
    get pages_home_url
    assert_select "section.wrapper"

    get '/hometwo'
    assert_select "section.wrapper"

    get '/homethree'
    assert_select "section.wrapper"
  end

  test "each landing page has a 'container' div" do
    get pages_home_url
    assert_select "div.container"

    get '/hometwo'
    assert_select "div.container"

    get '/homethree'
    assert_select "div.container"
  end

  test "each landing page has a form" do
    get pages_home_url
    assert_select "form"

    get '/hometwo'
    assert_select "form"

    get '/homethree'
    assert_select "form"
  end

  
end
