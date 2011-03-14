require 'test_helper'

class TestController < ActionController::TestCase
  def setup
    @controller = MyController.new
  end

  def test_header_included_in_request
    get 'index'
    puts response.headers['X-Git-SHA']
    assert_not_nil response.headers['X-Git-SHA']
  end
end
