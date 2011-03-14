require 'rubygems'
require 'minitest/autorun'

require 'rails/all'
require 'rails/test_help'

require 'sasha'

module Sasha
  class Application < Rails::Application ; end
end

Sasha::Application.routes.draw do
  match '/:controller(/:action(/:id))'
end

ActionController::Base.send :include, Sasha::Application.routes.url_helpers

class MyController < ActionController::Base
  def index
    render :text => 'ok'
  end
end
