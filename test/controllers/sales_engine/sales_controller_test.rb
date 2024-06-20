require "test_helper"

module SalesEngine
  class SalesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @sale = sales_engine_sales(:one)
    end

    test "should get index" do
      get sales_url
      assert_response :success
    end

    test "should get new" do
      get new_sale_url
      assert_response :success
    end

    test "should create sale" do
      assert_difference("Sale.count") do
        post sales_url, params: { sale: { amount: @sale.amount, product_name: @sale.product_name } }
      end

      assert_redirected_to sale_url(Sale.last)
    end

    test "should show sale" do
      get sale_url(@sale)
      assert_response :success
    end

    test "should get edit" do
      get edit_sale_url(@sale)
      assert_response :success
    end

    test "should update sale" do
      patch sale_url(@sale), params: { sale: { amount: @sale.amount, product_name: @sale.product_name } }
      assert_redirected_to sale_url(@sale)
    end

    test "should destroy sale" do
      assert_difference("Sale.count", -1) do
        delete sale_url(@sale)
      end

      assert_redirected_to sales_url
    end
  end
end
