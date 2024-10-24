require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest
  test 'should get my_portfolio' do
    get stocks_my_portfolio_url
    assert_response :success
  end
end
