require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_index_url
    assert_response :success
  end

  test "should get new" do
    get books_new_url
    assert_response :success
  end

  test "should get new book form" do
    get books_new_url
    assert_response :success
    assert_select "form[action=?]", books_path do
      assert_select "input[name=?]", "book[title]"
      assert_select "input[name=?]", "book[author]"
      assert_select "input[name=?]", "book[isbn]"
      assert_select "input[name=?]", "book[publisher]"
      assert_select "input[name=?]", "book[format]"
      assert_select "input[name=?]", "book[publication_year]"
      assert_select "input[type=submit]"
    end
  end
end
