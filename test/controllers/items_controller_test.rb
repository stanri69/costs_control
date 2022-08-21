require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_path
    assert_response :success
  end

  test "the item method creates a item" do
    post :create, item: {category: "MyString", price: 1}
    assert_redirected_to items_path
    assert_equal "MyString", assigns[:action].item.category
  end
end
