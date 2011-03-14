require 'test_helper'

class TestController < ActionController::TestCase
  def setup
    @controller = MyController.new
  end

  def test_header_included_in_request
    Sasha::Git.expects(:current_sha).returns('ABC123ABC123')
    get 'index'
    assert_equal 'ABC123ABC123', response.headers['X-Git-SHA']
  end
end
