require 'test_helper'

class TestController < ActionController::TestCase
  def setup
    @controller = MyController.new
  end

  def test_header_included_in_request
    Sasha::Git.expects(:current_sha).twice.returns('ABC123ABC123')
    get 'index'
    assert_equal 'ABC123ABC123', response.headers[Sasha::HEADER_NAME]
  end

  def test_warning
    Sasha::Git.expects(:current_sha).twice.returns(nil)
    @controller.expects(:warn).once.with(instance_of(String))
    get 'index'
    assert_equal nil, response.headers[Sasha::HEADER_NAME]
  end
end
